import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/home/providers/dashboard_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider).value;
    final overview = ref.watch(dashboardProvider);
    final isClient = session?.isClient ?? true;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
      children: [
        GlassAppBar(
          title: Text(isClient ? 'Mi monitoreo' : 'Operación'),
        ),
        Expanded(
          child: overview.when(
            skipLoadingOnReload: true,
            skipLoadingOnRefresh: true,
            loading: () => const ShimmerList(),
            error: (error, _) => AsyncBody(
              isLoading: false,
              hasError: true,
              isEmpty: true,
              onRetry: () => ref.invalidate(dashboardProvider),
              errorMessage: '$error',
              child: const SizedBox.shrink(),
            ),
            data: (data) {
              return RefreshIndicator(
                onRefresh: () async => ref.invalidate(dashboardProvider),
                child: GridView.count(
                  padding: const EdgeInsets.all(NereusTokens.spaceMd),
                  crossAxisCount: MediaQuery.sizeOf(context).width > 700 ? 4 : 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.25,
                  children: [
                    _Kpi(
                      label: 'En línea',
                      value: '${data.online}',
                      icon: Icons.wifi,
                      onTap: () => context.go('/devices'),
                    ),
                    _Kpi(
                      label: 'Silenciosos',
                      value: '${data.offline}',
                      icon: Icons.wifi_off,
                      onTap: () => context.go('/devices'),
                    ),
                    _Kpi(
                      label: 'Alertas activas',
                      value: '${data.openAlerts}',
                      icon: Icons.notification_important_outlined,
                      onTap: () => context.go('/alerts'),
                    ),
                    _Kpi(
                      label: 'Lecturas hoy',
                      value: '${data.readingsToday}',
                      icon: Icons.speed,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
      ),
    );
  }
}

class _Kpi extends StatelessWidget {
  const _Kpi({
    required this.label,
    required this.value,
    required this.icon,
    this.onTap,
  });

  final String label;
  final String value;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      onTap: onTap,
      semanticLabel: '$label $value',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.primary),
          const Spacer(),
          FittedBox(
            child: Text(
              value,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Text(label),
        ],
      ),
    );
  }
}
