import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/crm/domain/crm_models.dart';
import 'package:nereus_app/features/crm/presentation/opportunity_actions.dart';
import 'package:nereus_app/features/crm/presentation/opportunity_form.dart';
import 'package:nereus_app/features/crm/providers/crm_providers.dart';
import 'package:nereus_app/features/customers/domain/client_models.dart';

part 'opportunity_panels.dart';

String _when(DateTime value) {
  final hour = value.hour.toString().padLeft(2, '0');
  final minute = value.minute.toString().padLeft(2, '0');
  return '${value.day}/${value.month}/${value.year} $hour:$minute';
}

class OpportunityScreen extends ConsumerWidget {
  const OpportunityScreen({super.key, required this.opportunityId});

  final String opportunityId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = Access(ref.watch(sessionProvider).value);
    final canWrite = access.canWrite(NereusModules.customers);
    final detail = ref.watch(opportunityDetailProvider(opportunityId));
    final stages = ref.watch(opportunityStagesProvider);
    final activities = ref.watch(opportunityActivitiesProvider(opportunityId));
    final proposals = ref.watch(opportunityProposalsProvider(opportunityId));
    final clients = ref.watch(customerClientsProvider);
    final deal = detail.value;

    Future<void> reload() async {
      ref.invalidate(opportunityDetailProvider(opportunityId));
      ref.invalidate(opportunityActivitiesProvider(opportunityId));
      ref.invalidate(opportunityProposalsProvider(opportunityId));
      ref.invalidate(opportunitiesProvider());
      ref.invalidate(crmSummaryProvider);
    }

    Future<void> move(String stageId) async {
      try {
        await ref.read(crmRepositoryProvider).move(
              id: opportunityId,
              stageId: stageId,
            );
        await reload();
      } on Object catch (error) {
        if (context.mounted) showFriendlyError(context, error);
      }
    }

    Future<void> editDeal() async {
      if (deal == null) return;
      final saved = await showEntitySheet<bool>(
        context: context,
        title: 'Editar oportunidad',
        child: OpportunityForm(
          stages: stages.value ?? const <OpportunityStageItem>[],
          clients: clients.value ?? const <ClientItem>[],
          initial: deal,
        ),
      );
      if (saved ?? false) await reload();
    }

    Future<void> deleteDeal() async {
      if (deal == null) return;
      final ok = await confirmAction(
        context,
        title: 'Eliminar oportunidad',
        message: '¿Seguro que deseas eliminar "${deal.title}"?',
        confirmLabel: 'Eliminar',
        destructive: true,
      );
      if (!ok || !context.mounted) return;
      try {
        await ref.read(crmRepositoryProvider).deleteOpportunity(opportunityId);
        ref.invalidate(opportunitiesProvider());
        ref.invalidate(crmSummaryProvider);
        if (context.mounted) context.go('/pipeline');
      } on Object catch (error) {
        if (context.mounted) showFriendlyError(context, error);
      }
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          PageHeader(
            kicker: 'Negocio',
            title: deal?.title ?? 'Oportunidad',
            subtitle: [
              if (deal?.clientName != null) deal!.clientName!,
              if (deal != null) clp(deal.estimatedValue),
              if (deal?.expectedCloseDate != null)
                'Cierre ${deal!.expectedCloseDate}',
            ].join(' · '),
            actions: [
              OutlinedButton.icon(
                onPressed: () => context.go('/pipeline'),
                icon: const Icon(Icons.arrow_back, size: 16),
                label: const Text('Pipeline'),
              ),
              if (deal?.clientId != null)
                OutlinedButton.icon(
                  onPressed: () => context.go('/clients/${deal!.clientId}'),
                  icon: const Icon(Icons.assignment_ind_outlined, size: 16),
                  label: const Text('Ficha 360'),
                ),
              if (canWrite && deal != null) ...[
                OutlinedButton.icon(
                  onPressed: editDeal,
                  icon: const Icon(Icons.edit_outlined, size: 16),
                  label: const Text('Editar'),
                ),
                IconButton(
                  tooltip: 'Eliminar oportunidad',
                  onPressed: deleteDeal,
                  icon: const Icon(Icons.delete_outline, size: 18),
                ),
              ],
            ],
          ),
          Expanded(
            child: AsyncBody(
              isLoading: detail.isLoading,
              hasError: detail.hasError,
              isEmpty: detail.hasError || detail.isLoading,
              errorMessage: userFacingErrorMessage(detail.error ?? 'Error'),
              isNetworkError: isNetworkFailure(detail.error ?? 'Error'),
              onRetry: reload,
              child: ListView(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
                children: [
                  if (deal != null)
                    _StagePicker(
                      stages: stages.value ?? const [],
                      currentId: deal.stageId,
                      notes: deal.notes,
                      enabled: canWrite,
                      onMove: move,
                    ),
                  const SizedBox(height: 16),
                  _Proposals(
                    items: proposals.value ?? const [],
                    loading: proposals.isLoading,
                    onAdd: canWrite
                        ? () => _addProposal(context, ref, reload)
                        : null,
                    onDelete: canWrite
                        ? (id) => _deleteProposal(context, ref, id, reload)
                        : null,
                  ),
                  const SizedBox(height: 16),
                  _FollowUps(
                    items: activities.value ?? const [],
                    loading: activities.isLoading,
                    onAdd: canWrite
                        ? () => _addFollowUp(context, ref, reload)
                        : null,
                    onComplete: canWrite
                        ? (id) => _complete(context, ref, id, reload)
                        : null,
                    onDelete: canWrite
                        ? (id) => _deleteActivity(context, ref, id, reload)
                        : null,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _addProposal(
    BuildContext context,
    WidgetRef ref,
    Future<void> Function() reload,
  ) async {
    var products = const <ProductItem>[];
    try {
      products = await ref.read(productsProvider().future);
    } on Object {
      products = const [];
    }
    if (!context.mounted) return;
    final saved = await showEntitySheet<bool>(
      context: context,
      title: 'Agregar a la propuesta',
      child: ProposalForm(
        opportunityId: opportunityId,
        products: products,
      ),
    );
    if (saved ?? false) await reload();
  }

  Future<void> _deleteProposal(
    BuildContext context,
    WidgetRef ref,
    String id,
    Future<void> Function() reload,
  ) async {
    try {
      await ref.read(crmRepositoryProvider).deleteProposal(id);
      await reload();
    } on Object catch (error) {
      if (context.mounted) showFriendlyError(context, error);
    }
  }

  Future<void> _addFollowUp(
    BuildContext context,
    WidgetRef ref,
    Future<void> Function() reload,
  ) async {
    final saved = await showEntitySheet<bool>(
      context: context,
      title: 'Nuevo seguimiento',
      child: FollowUpForm(opportunityId: opportunityId),
    );
    if (saved ?? false) await reload();
  }

  Future<void> _complete(
    BuildContext context,
    WidgetRef ref,
    String id,
    Future<void> Function() reload,
  ) async {
    try {
      await ref.read(crmRepositoryProvider).completeActivity(id);
      await reload();
    } on Object catch (error) {
      if (context.mounted) showFriendlyError(context, error);
    }
  }

  Future<void> _deleteActivity(
    BuildContext context,
    WidgetRef ref,
    String id,
    Future<void> Function() reload,
  ) async {
    try {
      await ref.read(crmRepositoryProvider).deleteActivity(id);
      await reload();
    } on Object catch (error) {
      if (context.mounted) showFriendlyError(context, error);
    }
  }
}
