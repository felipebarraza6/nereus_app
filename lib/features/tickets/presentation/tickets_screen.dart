import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/features/tickets/providers/tickets_provider.dart';

class TicketsScreen extends ConsumerWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tickets = ref.watch(ticketsProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
      children: [
        GlassAppBar(
          title: const Text('Tickets'),
          actions: [
            IconButton(
              tooltip: 'Crear ticket',
              onPressed: () => context.go('/tickets/new'),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        Expanded(
          child: tickets.when(
            loading: () => const ShimmerList(),
            error: (error, _) => AsyncBody(
              isLoading: false,
              hasError: true,
              isEmpty: true,
              onRetry: () => ref.invalidate(ticketsProvider),
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
                  emptyMessage: 'Aún no tienes tickets.',
                  child: SizedBox.shrink(),
                );
              }
              return ListView.separated(
                padding: const EdgeInsets.all(NereusTokens.spaceMd),
                itemCount: items.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final ticket = items[index];
                  return GlassCard(
                    onTap: () => context.go('/tickets/${ticket.id}'),
                    child: ListTile(
                      title: Text(ticket.subject),
                      subtitle: Text(
                        '${ticket.ticketNumber} · ${ticket.status ?? ''}',
                      ),
                      trailing: StatusChip(
                        label: ticket.priority?.value ?? '',
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
