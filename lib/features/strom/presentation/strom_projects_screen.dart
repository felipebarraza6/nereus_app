import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';
import 'package:nereus_app/features/strom/providers/strom_providers.dart';

class StromProjectsScreen extends ConsumerStatefulWidget {
  const StromProjectsScreen({super.key});

  @override
  ConsumerState<StromProjectsScreen> createState() => _StromProjectsScreenState();
}

class _StromProjectsScreenState extends ConsumerState<StromProjectsScreen> {
  var _filter = 'todos';

  @override
  Widget build(BuildContext context) {
    final projects = ref.watch(stromProjectsProvider(''));
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const PageHeader(
            title: 'Strøm',
            subtitle: 'Proyectos y visitas de operaciones',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: NereusTokens.spaceMd),
            child: SegmentedButton<String>(
              segments: const [
                ButtonSegment(value: 'todos', label: Text('Todos')),
                ButtonSegment(value: 'proyecto', label: Text('Proyecto')),
                ButtonSegment(value: 'soporte', label: Text('Soporte')),
              ],
              selected: {_filter},
              onSelectionChanged: (value) => setState(() => _filter = value.first),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: projects.when(
              loading: () => const ShimmerList(),
              error: (error, _) => AsyncBody(
                isLoading: false,
                hasError: true,
                isEmpty: true,
                onRetry: () => ref.invalidate(stromProjectsProvider('')),
                errorMessage: userFacingErrorMessage(error),
                isNetworkError: isNetworkFailure(error),
                child: const SizedBox.shrink(),
              ),
              data: (items) {
                final visible = items.where((item) {
                  if (_filter == 'soporte') return item.looksLikeSupport;
                  if (_filter == 'proyecto') return !item.looksLikeSupport;
                  return true;
                }).toList();
                if (visible.isEmpty) {
                  return const AsyncBody(
                    isLoading: false,
                    hasError: false,
                    isEmpty: true,
                    onRetry: _noop,
                    emptyMessage: 'No hay proyectos en esta sucursal.',
                    child: SizedBox.shrink(),
                  );
                }
                return ListView.separated(
                  padding: const EdgeInsets.all(NereusTokens.spaceMd),
                  itemCount: visible.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final project = visible[index];
                    return GlassCard(
                      onTap: () => context.go('/strom/${project.id}'),
                      child: ListTile(
                        title: Text(project.subject),
                        subtitle: Text(
                          '${project.ticketNumber} · ${project.clientName ?? 'Sin cliente'}',
                        ),
                        trailing: StatusChip(
                          label: projectStatusLabel(project.status),
                          tone: NereusTokens.lagoon,
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
