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

/// Exact port of `nereus_smarthydro/src/routes/centro.tsx`.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider).value;
    final overview = ref.watch(dashboardProvider);
    final isClient = session?.isClient ?? true;
    final name = session?.currentBranch?.branchName ??
        session?.user?.fullName ??
        'Smart Hydro';

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
              padding: const EdgeInsets.only(bottom: NereusTokens.spaceXl),
              children: [
                PageHeader(
                  kicker: 'Hoy',
                  title: isClient ? 'Mi monitoreo' : 'Centro',
                  subtitle: name,
                  actions: [
                    OutlinedButton.icon(
                      onPressed: () => context.go('/tour'),
                      icon: const Icon(Icons.route_outlined, size: 16),
                      label: const Text('Recorrido guiado'),
                    ),
                  ],
                ),
                if (!isClient) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: NereusTokens.spaceMd,
                    ),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        final cols = constraints.maxWidth >= 900
                            ? 4
                            : constraints.maxWidth >= 560
                                ? 2
                                : 1;
                        const gap = 12.0;
                        final width =
                            (constraints.maxWidth - gap * (cols - 1)) / cols;
                        return Wrap(
                          spacing: gap,
                          runSpacing: gap,
                          children: [
                            for (final beat in _operationalBeats)
                              SizedBox(
                                width: width,
                                child: _BeatCard(beat: beat),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
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
                              hint: '${data.total} registrados · ${data.offline} sin señal',
                              tone: NereusTokens.emerald,
                              onTap: () => context.go('/devices'),
                            ),
                          ),
                          cell(
                            _Kpi(
                              label: 'Silenciosos',
                              value: '${data.offline}',
                              hint: 'Equipos sin reporte reciente',
                              tone: NereusTokens.slateMuted,
                              onTap: () => context.go('/devices'),
                            ),
                          ),
                          cell(
                            _Kpi(
                              label: 'Alertas activas',
                              value: '${data.openAlerts}',
                              hint: data.openAlerts > 0
                                  ? 'Requieren revisión'
                                  : 'Todo en rango',
                              tone: data.openAlerts > 0
                                  ? NereusTokens.amber
                                  : NereusTokens.emerald,
                              onTap: () => context.go('/alerts'),
                            ),
                          ),
                          cell(
                            _Kpi(
                              label: 'Lecturas hoy',
                              value: '${data.readingsToday}',
                              hint: 'Telemetría acumulada del día',
                              tone: NereusTokens.navy,
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
                    16,
                    NereusTokens.spaceMd,
                    0,
                  ),
                  child: GlassCard(
                    onTap: () => context.go('/tour'),
                    child: Row(
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: NereusTokens.surface2,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.route_outlined,
                            size: 18,
                            color: NereusTokens.navy,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recorrido guiado',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                'Producto · unidad · cliente · configuración · operación',
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Abrir →',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ),
                if (data.projects.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: NereusTokens.spaceMd,
                    ),
                    child: GlassCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Proyectos',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 10),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              for (final project in data.projects)
                                StatusChip(
                                  label:
                                      '${project.name} · ${project.deviceCount}',
                                  tone: NereusTokens.navy,
                                ),
                            ],
                          ),
                        ],
                      ),
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

class _OperationalBeat {
  const _OperationalBeat({
    required this.n,
    required this.title,
    required this.body,
    required this.route,
  });

  final String n;
  final String title;
  final String body;
  final String route;
}

/// Exact `BEATS` from `nereus_smarthydro/src/routes/centro.tsx`.
const _operationalBeats = <_OperationalBeat>[
  _OperationalBeat(
    n: '01',
    title: 'Dispositivos',
    body: 'Telemetría de pozos, canales y caudales en vivo.',
    route: '/devices',
  ),
  _OperationalBeat(
    n: '02',
    title: 'Clientes',
    body: 'Cada cliente con su ficha, equipos y personas.',
    route: '/clients',
  ),
  _OperationalBeat(
    n: '03',
    title: 'Negocios',
    body: 'Prospectos, oportunidades, seguimiento y propuestas.',
    route: '/pipeline',
  ),
  _OperationalBeat(
    n: '04',
    title: 'Terreno',
    body: 'Levantamientos con fotos y notas que alimentan la ficha.',
    route: '/surveys',
  ),
];

/// Beat card styled 1:1 after `nereus_smarthydro/src/routes/centro.tsx`:
/// `rounded-2xl border border-line bg-surface p-4 shadow-sm` +
/// `rounded-full bg-accent px-2 py-0.5 text-[11px] font-semibold text-fg`.
class _BeatCard extends StatelessWidget {
  const _BeatCard({required this.beat});

  final _OperationalBeat beat;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    return GlassCard(
      onTap: () => context.go(beat.route),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                beat.n,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.8,
                  color: muted,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: NereusTokens.hydroLime,
                  borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
                ),
                child: const Text(
                  'En vivo',
                  style: TextStyle(
                    fontSize: 10.5,
                    fontWeight: FontWeight.w600,
                    color: NereusTokens.navy,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(beat.title, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 4),
          Text(
            beat.body,
            style: TextStyle(fontSize: 12, color: muted, height: 1.4),
          ),
        ],
      ),
    );
  }
}

/// KPI card styled 1:1 after `Kpi` in `nereus_smarthydro/src/components/desk.tsx`.
class _Kpi extends StatelessWidget {
  const _Kpi({
    required this.label,
    required this.value,
    required this.tone,
    this.hint,
    this.onTap,
  });

  final String label;
  final String value;
  final String? hint;
  final Color tone;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    return GlassCard(
      onTap: onTap,
      semanticLabel: '$label $value',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 11.5,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.8,
              color: muted,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6),
          Text(
            value,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: tone,
                  fontWeight: FontWeight.w600,
                ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (hint != null) ...[
            const SizedBox(height: 4),
            Text(
              hint!,
              style: TextStyle(fontSize: 11.5, color: muted),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ],
      ),
    );
  }
}
