import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/features/crm/domain/crm_models.dart';
import 'package:nereus_app/features/crm/providers/crm_providers.dart';

class ClientDealsCard extends ConsumerWidget {
  const ClientDealsCard({super.key, required this.clientId});

  final String clientId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deals = ref.watch(opportunitiesProvider(clientId: clientId));
    final items = deals.value ?? const <OpportunityItem>[];
    if (deals.isLoading && items.isEmpty) {
      return const SizedBox.shrink();
    }
    if (deals.hasError && items.isEmpty) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: GlassCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Oportunidades',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                TextButton(
                  onPressed: () => context.go('/pipeline?client=$clientId'),
                  child: const Text('Pipeline'),
                ),
              ],
            ),
            if (items.isEmpty)
              const Text('Este cliente no tiene oportunidades abiertas.')
            else
              for (final item in items)
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(item.title),
                  subtitle: Text(
                    [
                      if (item.stageName != null) item.stageName!,
                      clp(item.estimatedValue),
                    ].join(' · '),
                  ),
                  onTap: () => context.go('/pipeline/${item.id}'),
                ),
          ],
        ),
      ),
    );
  }
}
