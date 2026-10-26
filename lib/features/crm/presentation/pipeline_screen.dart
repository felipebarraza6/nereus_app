import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/breakpoints.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/crm/domain/crm_models.dart';
import 'package:nereus_app/features/crm/presentation/opportunity_form.dart';
import 'package:nereus_app/features/crm/providers/crm_providers.dart';
import 'package:nereus_app/features/customers/domain/client_models.dart';

part 'pipeline_board.dart';

class PipelineScreen extends ConsumerStatefulWidget {
  const PipelineScreen({super.key, this.clientId});

  final String? clientId;

  @override
  ConsumerState<PipelineScreen> createState() => _PipelineScreenState();
}

class _PipelineScreenState extends ConsumerState<PipelineScreen> {
  final _searchCtrl = TextEditingController();
  var _query = '';
  var _hideClosed = false;
  var _seeding = false;

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  Future<void> _reload() async {
    ref.invalidate(opportunityStagesProvider);
    ref.invalidate(opportunitiesProvider(clientId: widget.clientId));
    ref.invalidate(crmSummaryProvider);
  }

  Future<void> _moveDeal(String id, String stageId) async {
    try {
      await ref.read(crmRepositoryProvider).move(id: id, stageId: stageId);
      await _reload();
    } on Object catch (error) {
      if (mounted) showFriendlyError(context, error);
    }
  }

  Future<void> _seed() async {
    if (_seeding) return;
    setState(() => _seeding = true);
    try {
      await ref.read(crmRepositoryProvider).seedWaterStages();
      await _reload();
    } on Object catch (error) {
      if (mounted) showFriendlyError(context, error);
    } finally {
      if (mounted) setState(() => _seeding = false);
    }
  }

  Future<void> _create(
    List<OpportunityStageItem> stageList,
    List<ClientItem> clientList,
  ) async {
    final created = await showEntitySheet<bool>(
      context: context,
      title: 'Nueva oportunidad',
      child: OpportunityForm(
        stages: stageList,
        clients: clientList,
        initialClientId: widget.clientId,
      ),
    );
    if (created ?? false) await _reload();
  }

  @override
  Widget build(BuildContext context) {
    final access = Access(ref.watch(sessionProvider).value);
    final canWrite = access.canWrite(NereusModules.customers);
    final stages = ref.watch(opportunityStagesProvider);
    final deals = ref.watch(opportunitiesProvider(clientId: widget.clientId));
    final summary = ref.watch(crmSummaryProvider).value;
    final clients = ref.watch(customerClientsProvider);
    final wide = context.screenWidth >= 960;
    final stageList = stages.value ?? const <OpportunityStageItem>[];
    final allItems = deals.value ?? const <OpportunityItem>[];
    final loading = stages.isLoading || deals.isLoading;
    final failed = stages.hasError || deals.hasError;

    final needle = _query.trim().toLowerCase();
    final filteredItems = [
      for (final item in allItems)
        if (!_hideClosed || (!item.isWon && !item.isLost))
          if (needle.isEmpty ||
              item.title.toLowerCase().contains(needle) ||
              (item.clientName?.toLowerCase().contains(needle) ?? false))
            item,
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          PageHeader(
            kicker: 'Comercial',
            title: 'Pipeline',
            subtitle: widget.clientId == null
                ? 'Embudo comercial hídrico · contacto, terreno, propuesta y cierre'
                : 'Oportunidades asociadas a este cliente',
            actions: [
              if (widget.clientId != null)
                OutlinedButton.icon(
                  onPressed: () => context.go('/pipeline'),
                  icon: const Icon(Icons.filter_alt_off_outlined, size: 16),
                  label: const Text('Ver todas'),
                ),
              if (canWrite && stageList.isNotEmpty)
                FilledButton.icon(
                  onPressed: () =>
                      _create(stageList, clients.value ?? const <ClientItem>[]),
                  icon: const Icon(Icons.add, size: 16),
                  label: const Text('Oportunidad'),
                ),
            ],
          ),
          if (stageList.isNotEmpty)
            _PipelineMetricsBar(
              stages: stageList,
              items: allItems,
              summary: summary,
              searchController: _searchCtrl,
              hideClosed: _hideClosed,
              onSearchChanged: (v) => setState(() => _query = v),
              onToggleHideClosed: (v) => setState(() => _hideClosed = v),
            ),
          Expanded(
            child: _PipelineBody(
              wide: wide,
              loading: loading,
              failed: failed,
              seeding: _seeding,
              stageError: stages.error,
              dealError: deals.error,
              stageList: stageList,
              items: filteredItems,
              canWrite: canWrite,
              onRetry: _reload,
              onSeed: _seed,
              onOpen: (id) => context.go('/pipeline/$id'),
              onMove: canWrite ? _moveDeal : null,
            ),
          ),
        ],
      ),
    );
  }
}

class _PipelineMetricsBar extends StatelessWidget {
  const _PipelineMetricsBar({
    required this.stages,
    required this.items,
    required this.summary,
    required this.searchController,
    required this.hideClosed,
    required this.onSearchChanged,
    required this.onToggleHideClosed,
  });

  final List<OpportunityStageItem> stages;
  final List<OpportunityItem> items;
  final CrmDashboardSummary? summary;
  final TextEditingController searchController;
  final bool hideClosed;
  final ValueChanged<String> onSearchChanged;
  final ValueChanged<bool> onToggleHideClosed;

  @override
  Widget build(BuildContext context) {
    final stageMap = {for (final s in stages) s.id: s};
    var openValue = 0.0;
    var weightedValue = 0.0;
    var wonValue = 0.0;
    var wonCount = 0;

    for (final item in items) {
      final st = stageMap[item.stageId];
      final isWon = item.isWon || (st?.isWon ?? false);
      final isLost = item.isLost || (st?.isLost ?? false);
      if (isWon) {
        wonValue += item.estimatedValue;
        wonCount++;
      } else if (!isLost) {
        openValue += item.estimatedValue;
        final prob = st?.probability ?? item.probability;
        weightedValue += item.estimatedValue * (prob / 100.0);
      }
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _MetricPill(
                  label: 'En juego',
                  value: clp(openValue),
                  accent: NereusTokens.navy,
                ),
                const SizedBox(width: 10),
                _MetricPill(
                  label: 'Ponderado',
                  value: clp(weightedValue),
                  accent: NereusTokens.hydroBlue,
                ),
                const SizedBox(width: 10),
                _MetricPill(
                  label: 'Ganadas ($wonCount)',
                  value: clp(wonValue),
                  accent: NereusTokens.emerald,
                ),
                if (summary != null) ...[
                  const SizedBox(width: 10),
                  _MetricPill(
                    label: 'Seguimientos hoy',
                    value: '${summary!.activitiesDueToday}',
                    accent: NereusTokens.amber,
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: TextField(
                    controller: searchController,
                    onChanged: onSearchChanged,
                    style: const TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                      hintText: 'Filtrar por proyecto o cliente...',
                      prefixIcon: const Icon(Icons.search, size: 16),
                      suffixIcon: searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.close, size: 15),
                              onPressed: () {
                                searchController.clear();
                                onSearchChanged('');
                              },
                            )
                          : null,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              FilterPill(
                label: 'Solo en curso',
                selected: hideClosed,
                onTap: () => onToggleHideClosed(!hideClosed),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MetricPill extends StatelessWidget {
  const _MetricPill({
    required this.label,
    required this.value,
    required this.accent,
  });

  final String label;
  final String value;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final bg = dark ? NereusTokens.darkPanel : NereusTokens.surface;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
        border: Border.all(color: line),
        boxShadow: dark ? NereusTokens.elevation2 : NereusTokens.elevation1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 10.5,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.8,
              color: muted,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: accent,
            ),
          ),
        ],
      ),
    );
  }
}
