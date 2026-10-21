import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/features/alerts/providers/alerts_provider.dart';

class AlertsScreen extends ConsumerStatefulWidget {
  const AlertsScreen({super.key});

  @override
  ConsumerState<AlertsScreen> createState() => _AlertsScreenState();
}

class _AlertsScreenState extends ConsumerState<AlertsScreen> {
  final _selected = <int>{};

  @override
  Widget build(BuildContext context) {
    final alerts = ref.watch(alertsProvider);
    final filter = ref.watch(alertsFilterProvider);
    final summary = ref.watch(alertBadgeProvider).value;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
      children: [
        GlassAppBar(
          title: const Text('Alertas'),
          actions: [
            if (summary != null)
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: StatusChip(
                  label: '${summary.openUnacknowledged} abiertas',
                  tone: NereusTokens.coral,
                ),
              ),
          ],
        ),
        Wrap(
          spacing: 8,
          children: [
            ChoiceChip(
              label: const Text('Abiertas'),
              selected: filter == false,
              onSelected: (_) =>
                  ref.read(alertsFilterProvider.notifier).setAcknowledged(false),
            ),
            ChoiceChip(
              label: const Text('Reconocidas'),
              selected: filter ?? false,
              onSelected: (_) =>
                  ref.read(alertsFilterProvider.notifier).setAcknowledged(true),
            ),
            ChoiceChip(
              label: const Text('Todas'),
              selected: filter == null,
              onSelected: (_) =>
                  ref.read(alertsFilterProvider.notifier).setAcknowledged(null),
            ),
          ],
        ),
        if (_selected.isNotEmpty)
          Padding(
            padding: const EdgeInsets.all(8),
            child: FilledButton(
              onPressed: () async {
                await ref
                    .read(alertsRepositoryProvider)
                    .acknowledgeBulk(_selected.toList());
                _selected.clear();
                ref.invalidate(alertsProvider);
                ref.invalidate(alertBadgeProvider);
              },
              child: Text('Reconocer ${_selected.length}'),
            ),
          ),
        Expanded(
          child: alerts.when(
            loading: () => const ShimmerList(),
            error: (error, _) => AsyncBody(
              isLoading: false,
              hasError: true,
              isEmpty: true,
              onRetry: () => ref.invalidate(alertsProvider),
              errorMessage: '$error',
              child: const SizedBox.shrink(),
            ),
            data: (items) {
              if (items.isEmpty) {
                return const AsyncBody(
                  isLoading: false,
                  hasError: false,
                  isEmpty: true,
                  onRetry: _noop,
                  emptyMessage: 'No hay alertas con este filtro.',
                  child: SizedBox.shrink(),
                );
              }
              return ListView.separated(
                padding: const EdgeInsets.all(NereusTokens.spaceMd),
                itemCount: items.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final alert = items[index];
                  return GlassCard(
                    child: CheckboxListTile(
                      value: _selected.contains(alert.id),
                      onChanged: (value) {
                        setState(() {
                          if (value ?? false) {
                            _selected.add(alert.id);
                          } else {
                            _selected.remove(alert.id);
                          }
                        });
                      },
                      title: Text(alert.ruleName),
                      subtitle: Text(
                        '${alert.deviceName}\n${alert.triggeredAt ?? ''}',
                      ),
                      secondary: alert.isAcknowledged
                          ? null
                          : IconButton(
                              tooltip: 'Reconocer',
                              onPressed: () async {
                                await ref
                                    .read(alertsRepositoryProvider)
                                    .acknowledge(alert.id);
                                ref.invalidate(alertsProvider);
                                ref.invalidate(alertBadgeProvider);
                              },
                              icon: const Icon(Icons.check),
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
