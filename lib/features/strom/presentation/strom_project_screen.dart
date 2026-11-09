import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';
import 'package:nereus_app/features/strom/providers/strom_providers.dart';

class StromProjectScreen extends ConsumerWidget {
  const StromProjectScreen({super.key, required this.ticketId});

  final String ticketId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visits = ref.watch(stromVisitsProvider(ticketId));
    final projects = ref.watch(stromProjectsProvider(''));
    final project = projects.maybeWhen(
      data: (items) => items.where((item) => item.id == ticketId).firstOrNull,
      orElse: () => null,
    );
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          PageHeader(
            title: project?.subject ?? 'Proyecto',
            subtitle: project == null
                ? 'Visitas de la orden'
                : '${project.ticketNumber} · ${project.clientName ?? 'Sin cliente'}',
            actions: [
              IconButton(
                tooltip: 'Editar',
                onPressed: () => context.go('/strom/$ticketId/editar'),
                icon: const Icon(Icons.edit_outlined),
              ),
              IconButton(
                tooltip: 'Planificar visita',
                onPressed: () => context.go('/strom/$ticketId/visita/nueva'),
                icon: const Icon(Icons.add_circle_outline),
              ),
            ],
          ),
          Expanded(
            child: visits.when(
              loading: () => const ShimmerList(),
              error: (error, _) => AsyncBody(
                isLoading: false,
                hasError: true,
                isEmpty: true,
                onRetry: () => ref.invalidate(stromVisitsProvider(ticketId)),
                errorMessage: userFacingErrorMessage(error),
                isNetworkError: isNetworkFailure(error),
                child: const SizedBox.shrink(),
              ),
              data: (items) {
                final format = DateFormat.yMMMd().add_Hm();
                return ListView(
                  padding: const EdgeInsets.all(NereusTokens.spaceMd),
                  children: [
                    if (project != null) _ProjectFacts(project: project),
                    if (items.isEmpty)
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Todavía no hay visitas. Planifica la primera.'),
                      ),
                    for (final visit in items) ...[
                      const SizedBox(height: 8),
                      Builder(builder: (context) {
                    final specialty = visit.specialty;
                    final when = visit.scheduledDate == null
                        ? 'Sin fecha'
                        : format.format(visit.scheduledDate!.toLocal());
                    return GlassCard(
                      onTap: () => context.go('/strom/$ticketId/visita/${visit.id}'),
                      child: ListTile(
                        title: Text('${visit.number} · $when'),
                        subtitle: Text(
                          [
                            if (specialty != null) specialtyLabel(specialty),
                            if (visit.crew.isNotEmpty) visit.crew,
                            visit.address,
                          ].where((part) => part.isNotEmpty).join(' · '),
                        ),
                        trailing: StatusChip(
                          label: visitStatusLabel(visit.status),
                          tone: visit.isCompleted
                              ? NereusTokens.hydroOlive
                              : NereusTokens.lagoon,
                        ),
                      ),
                    );
                      }),
                    ],
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectFacts extends StatelessWidget {
  const _ProjectFacts({required this.project});

  final StromProject project;

  @override
  Widget build(BuildContext context) {
    final client = lineValue(project.description, 'CLIENTE');
    final po = lineValue(project.description, 'OC');
    final committed = lineValue(project.description, 'COMPROMISO');
    final responsible = lineValue(project.description, 'RESPONSABLE');
    return GlassCard(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            _Fact('Tipo', projectKindLabel(project)),
            _Fact('Estado', projectStatusLabel(project.status)),
            _Fact('Cliente', client.isEmpty ? (project.clientName ?? 'Sin cliente') : client),
            _Fact('OC del cliente', po.isEmpty ? 'Sin OC' : po),
            _Fact('Fecha comprometida', committed.isEmpty ? 'Sin fecha' : committed),
            _Fact('Responsable', responsible.isEmpty ? 'Sin responsable' : responsible),
          ],
        ),
      ),
    );
  }
}

class _Fact extends StatelessWidget {
  const _Fact(this.label, this.value);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final narrow = MediaQuery.sizeOf(context).width < 840;
    final labelStyle = Theme.of(context).textTheme.bodyMedium;
    if (narrow) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: labelStyle),
            const SizedBox(height: 2),
            Text(value),
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          SizedBox(width: 160, child: Text(label, style: labelStyle)),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
