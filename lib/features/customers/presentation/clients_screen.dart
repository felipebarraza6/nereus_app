import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';

class ClientsScreen extends ConsumerWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clients = ref.watch(clientsProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const PageHeader(
            title: 'Clientes',
            subtitle: 'Organizaciones y predios de esta sucursal',
          ),
          Expanded(
            child: clients.when(
              skipLoadingOnReload: true,
              skipLoadingOnRefresh: true,
              loading: () => const ShimmerList(),
              error: (error, _) => AsyncBody(
                isLoading: false,
                hasError: true,
                isEmpty: true,
                onRetry: () => ref.invalidate(clientsProvider),
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
                    emptyMessage: 'No hay clientes en esta sucursal.',
                    child: SizedBox.shrink(),
                  );
                }
                return ListView.separated(
                  padding: const EdgeInsets.all(NereusTokens.spaceMd),
                  itemCount: items.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    final client = items[index];
                    return GlassCard(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(client.name),
                        subtitle: Text(
                          [
                            if (client.branchName != null) client.branchName!,
                            if (client.email != null) client.email!,
                            if (client.address != null) client.address!,
                          ].join(' · '),
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
