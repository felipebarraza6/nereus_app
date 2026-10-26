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
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/crm/domain/crm_models.dart';
import 'package:nereus_app/features/crm/providers/crm_providers.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';

part 'prospectos_widgets.dart';

class ProspectosScreen extends ConsumerStatefulWidget {
  const ProspectosScreen({super.key});

  @override
  ConsumerState<ProspectosScreen> createState() => _ProspectosScreenState();
}

class _ProspectosScreenState extends ConsumerState<ProspectosScreen> {
  final _searchCtrl = TextEditingController();
  var _query = '';
  var _filter = 'ACTIVE';

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  Future<void> _reload() async {
    ref.invalidate(leadsProvider);
    ref.invalidate(crmSummaryProvider);
    ref.invalidate(clientsProvider);
    ref.invalidate(customerClientsProvider);
  }

  Future<void> _openForm([LeadItem? initial]) async {
    final saved = await showEntitySheet<bool>(
      context: context,
      title: initial == null ? 'Nuevo prospecto' : 'Editar prospecto',
      child: LeadForm(initial: initial),
    );
    if ((saved ?? false) && mounted) await _reload();
  }

  bool _matchesFilter(LeadItem lead) {
    return switch (_filter) {
      'ACTIVE' => lead.status != 'CONVERTED' &&
          lead.status != 'ARCHIVED' &&
          lead.status != 'LOST',
      'ALL' => true,
      _ => lead.status == _filter,
    };
  }

  @override
  Widget build(BuildContext context) {
    final access = Access(ref.watch(sessionProvider).value);
    final canWrite = _canCreateProspect(access);
    final leads = ref.watch(leadsProvider);
    final allLeads = leads.value ?? const <LeadItem>[];
    final needle = _query.trim().toLowerCase();
    final items = [
      for (final lead in allLeads)
        if (_matchesFilter(lead))
          if (needle.isEmpty ||
              lead.name.toLowerCase().contains(needle) ||
              (lead.company?.toLowerCase().contains(needle) ?? false) ||
              (lead.email?.toLowerCase().contains(needle) ?? false))
            lead,
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          PageHeader(
            kicker: 'Comercial',
            title: 'Prospectos',
            subtitle:
                'Contactos comerciales e hídricos antes de convertir en cliente',
            actions: [
              if (canWrite)
                FilledButton.icon(
                  onPressed: _openForm,
                  icon: const Icon(Icons.add, size: 16),
                  label: Text(context.isCompact ? 'Nuevo' : 'Nuevo prospecto'),
                ),
            ],
          ),
          if (allLeads.isNotEmpty)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 36,
                    child: TextField(
                      controller: _searchCtrl,
                      onChanged: (v) => setState(() => _query = v),
                      style: const TextStyle(fontSize: 13),
                      decoration: const InputDecoration(
                        hintText: 'Buscar por nombre, empresa o correo...',
                        prefixIcon: Icon(Icons.search, size: 16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (final entry in const [
                          ('ACTIVE', 'En gestión'),
                          ('NEW', 'Nuevos'),
                          ('CONTACTED', 'Contactados'),
                          ('QUALIFIED', 'Calificados'),
                          ('CONVERTED', 'Clientes'),
                          ('LOST', 'Perdidos'),
                          ('ALL', 'Todos'),
                        ]) ...[
                          FilterPill(
                            label: entry.$2,
                            selected: _filter == entry.$1,
                            onTap: () => setState(() => _filter = entry.$1),
                          ),
                          const SizedBox(width: 6),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: leads.isLoading && allLeads.isEmpty
                ? AsyncBody(
                    isLoading: true,
                    hasError: false,
                    isEmpty: true,
                    onRetry: _reload,
                    child: const SizedBox.shrink(),
                  )
                : leads.hasError && allLeads.isEmpty
                    ? AsyncBody(
                        isLoading: false,
                        hasError: true,
                        isEmpty: true,
                        errorMessage:
                            userFacingErrorMessage(leads.error ?? 'Error'),
                        isNetworkError:
                            isNetworkFailure(leads.error ?? 'Error'),
                        onRetry: _reload,
                        child: const SizedBox.shrink(),
                      )
                    : items.isEmpty
                        ? _EmptyProspectos(
                            onCreate: canWrite ? _openForm : null,
                          )
                        : ListView(
                            padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
                            children: [
                              for (final lead in items) ...[
                                _LeadCard(
                                  lead: lead,
                                  canWrite: canWrite,
                                  onChanged: _reload,
                                  onEdit: () => _openForm(lead),
                                ),
                                const SizedBox(height: 8),
                              ],
                            ],
                          ),
          ),
        ],
      ),
    );
  }
}

bool _canCreateProspect(Access access) {
  if (!access.isAuthenticated) return false;
  if (access.isSuperuser) return true;
  if (access.session?.branches.isEmpty ?? true) return true;
  return !access.isClient;
}
