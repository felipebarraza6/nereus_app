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
                if (items.isEmpty) {
                  return const AsyncBody(
                    isLoading: false,
                    hasError: false,
                    isEmpty: true,
                    onRetry: _noop,
                    emptyMessage: 'Todavía no hay visitas. Planifica la primera.',
                    child: SizedBox.shrink(),
                  );
                }
                final format = DateFormat.yMMMd().add_Hm();
                return ListView.separated(
                  padding: const EdgeInsets.all(NereusTokens.spaceMd),
                  itemCount: items.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final visit = items[index];
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
                          label: visit.status,
                          tone: visit.isCompleted
                              ? NereusTokens.lagoon
                              : NereusTokens.inkMuted,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void _noop() {}
