import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/home/providers/dashboard_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider).value;
    final overview = ref.watch(dashboardProvider);
    final isClient = session?.isClient ?? true;
    final name = session?.currentBranch?.branchName ??
        session?.user?.fullName ??
        'Nereus';
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: overview.when(
        skipLoadingOnReload: true,
        skipLoadingOnRefresh: true,
        loading: () => const ShimmerList(),
        error: (error, _) => AsyncBody(
          isLoading: false,
          hasError: true,
          isEmpty: true,
          onRetry: () => ref.invalidate(dashboardProvider),
          errorMessage: userFacingErrorMessage(error),
          isNetworkError: isNetworkFailure(error),
          child: const SizedBox.shrink(),
        ),
        data: (data) {
          return RefreshIndicator(
            onRefresh: () async => ref.invalidate(dashboardProvider),
            child: ListView(
              padding: const EdgeInsets.only(bottom: NereusTokens.spaceLg),
              children: [
                PageHeader(
                  title: isClient ? 'Mi monitoreo' : 'Inicio',
                  subtitle: name,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: NereusTokens.spaceMd,
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final cols = constraints.maxWidth > 700 ? 4 : 2;
                      const gap = 12.0;
                      final itemWidth =
                          (constraints.maxWidth - gap * (cols - 1)) / cols;
                      Widget cell(_Kpi kpi) =>
                          SizedBox(width: itemWidth, child: kpi);
                      return Wrap(
                        spacing: gap,
                        runSpacing: gap,
                        children: [
                          cell(
                            _Kpi(
                              label: 'En línea',
                              value: '${data.online}',
                              icon: Icons.wifi,
                              onTap: () => context.go('/devices'),
                            ),
                          ),
                          cell(
                            _Kpi(
                              label: 'Silenciosos',
                              value: '${data.offline}',
                              icon: Icons.wifi_off,
                              onTap: () => context.go('/devices'),
                            ),
                          ),
                          cell(
                            _Kpi(
                              label: 'Alertas activas',
                              value: '${data.openAlerts}',
                              icon: Icons.notification_important_outlined,
                              onTap: () => context.go('/alerts'),
                            ),
                          ),
                          cell(
                            _Kpi(
                              label: 'Lecturas hoy',
                              value: '${data.readingsToday}',
                              icon: Icons.speed,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    NereusTokens.spaceMd,
                    20,
                    NereusTokens.spaceMd,
                    0,
                  ),
                  child: GlassCard(
                    onTap: () => context.go('/tour'),
                    child: const ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.route_outlined),
                      title: Text('Recorrido guiado'),
                      subtitle: Text(
                        'Producto · unidad · cliente · configuración · operación',
                      ),
                      trailing: Icon(Icons.chevron_right),
                    ),
                  ),
                ),
                if (data.projects.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: NereusTokens.spaceMd,
                    ),
                    child: Text(
                      'Proyectos',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: NereusTokens.spaceMd,
                    ),
                    child: Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        for (final project in data.projects)
                          StatusChip(
                            label:
                                '${project.name} · ${project.deviceCount}',
                            tone: NereusTokens.teal,
                          ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
          );
        },
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
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.primary, size: 22),
          const SizedBox(height: 8),
          Text(
            value,
            style: Theme.of(context).textTheme.headlineMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
