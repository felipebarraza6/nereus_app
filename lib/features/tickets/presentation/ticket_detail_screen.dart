import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/features/tickets/providers/tickets_provider.dart';

class TicketDetailScreen extends ConsumerWidget {
  const TicketDetailScreen({super.key, required this.ticketId});

  final String ticketId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticket = ref.watch(ticketDetailProvider(ticketId));
    return ticket.when(
      loading: () => const Scaffold(body: ShimmerList()),
      error: (error, _) => Scaffold(
        appBar: const GlassAppBar(title: Text('Ticket')),
        body: AsyncBody(
          isLoading: false,
          hasError: true,
          isEmpty: true,
          onRetry: () => ref.invalidate(ticketDetailProvider(ticketId)),
          errorMessage: userFacingErrorMessage(error),
          isNetworkError: isNetworkFailure(error),
          child: const SizedBox.shrink(),
        ),
      ),
      data: (data) {
        return Scaffold(
          appBar: GlassAppBar(title: Text(data.ticketNumber)),
          body: ListView(
            padding: const EdgeInsets.all(NereusTokens.spaceMd),
            children: [
              GlassCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.subject, style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 8),
                    Text(data.description),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      children: [
                        StatusChip(
                          label: data.status.isEmpty ? 'OPEN' : data.status,
                          tone: NereusTokens.teal,
                        ),
                        StatusChip(
                          label: data.priority.isEmpty ? 'MEDIUM' : data.priority,
                          tone: NereusTokens.amber,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
