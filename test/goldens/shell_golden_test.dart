import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/customers/presentation/clients_screen.dart';
import 'package:nereus_app/features/devices/presentation/device_detail_screen.dart';
import 'package:nereus_app/features/devices/presentation/devices_screen.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/home/presentation/home_screen.dart';
import 'package:nereus_app/features/home/providers/dashboard_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:nereus_app/features/tickets/domain/ticket_models.dart';

import '../features/devices/device_detail_fixtures.dart';

void main() {
  testGoldens('home devices detail clients light glass', (tester) async {
    final home = _frame(const HomeScreen(), wide: false);
    final devices = _frame(const DevicesScreen(), wide: false);
    final detail = _frame(
      const DeviceDetailScreen(deviceId: 42),
      wide: false,
    );
    final clients = _frame(const ClientsScreen(), wide: false);
    final homeWide = _frame(const HomeScreen(), wide: true);

    await tester.pumpWidgetBuilder(
      home,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(360, 800),
    );
    await screenMatchesGolden(tester, 'home_mobile');

    await tester.pumpWidgetBuilder(
      devices,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(360, 800),
    );
    await screenMatchesGolden(tester, 'devices_mobile');

    await tester.pumpWidgetBuilder(
      detail,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(360, 800),
    );
    await screenMatchesGolden(tester, 'device_detail_mobile');

    await tester.pumpWidgetBuilder(
      clients,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(360, 800),
    );
    await screenMatchesGolden(tester, 'clients_mobile');

    await tester.pumpWidgetBuilder(
      homeWide,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(1280, 800),
    );
    await screenMatchesGolden(tester, 'home_desktop');
  });
}

Widget _frame(Widget child, {required bool wide}) {
  return ProviderScope(
    overrides: [
      sessionProvider.overrideWith(_SessionOverride.new),
      dashboardProvider.overrideWith(_DashboardOverride.new),
      devicesProvider.overrideWith((ref) {
        return const [
          DeviceItem(id: 174, name: 'Pozo Norte', isOnline: true, projectName: 'Agricola Nahuen'),
          DeviceItem(id: 12, name: 'Estanque Sur', isOnline: false, projectName: 'Agricola Nahuen'),
        ];
      }),
      deviceDetailProvider.overrideWith(
        (ref, id) => DeviceDetail.fromJson(
          Map<String, dynamic>.from(deviceDetailRuntimeJson),
        ),
      ),
      deviceCalendarProvider.overrideWith(
        (ref, id) => DeviceCalendar.fromJson(
          Map<String, dynamic>.from(deviceCalendarRuntimeJson),
        ),
      ),
      deviceDailyProvider.overrideWith(
        (ref, id) => const [
          DailyPoint(date: '2026-10-19', avgValue: 2.1, recordsCount: 4),
          DailyPoint(date: '2026-10-20', avgValue: 2.8, recordsCount: 6),
          DailyPoint(date: '2026-10-21', avgValue: 3.1, recordsCount: 8),
        ],
      ),
      deviceEventsProvider.overrideWith(
        (ref, id) => const [
          DeviceEvent(
            id: '1',
            title: 'Lectura recuperada',
            eventType: 'RECONNECT',
            eventTypeDisplay: 'Reconexión',
          ),
        ],
      ),
      clientsProvider.overrideWith(
        (ref) => const [
          ClientItem(
            id: '41',
            name: 'Agricola Nahuen',
            email: 'contacto@nahuen.cl',
            address: 'Camino Los Pozos 100',
          ),
        ],
      ),
    ],
    child: TickerMode(
      enabled: false,
      child: MaterialApp.router(
        theme: AppTheme.light(),
        routerConfig: GoRouter(
          routes: [
            GoRoute(path: '/', builder: (_, __) => _Shell(wide: wide, child: child)),
            GoRoute(path: '/devices', builder: (_, __) => const SizedBox()),
            GoRoute(path: '/devices/:id', builder: (_, __) => const SizedBox()),
            GoRoute(path: '/alerts', builder: (_, __) => const SizedBox()),
            GoRoute(path: '/tickets/new', builder: (_, __) => const SizedBox()),
          ],
        ),
      ),
    ),
  );
}

class _Shell extends StatelessWidget {
  const _Shell({required this.wide, required this.child});

  final bool wide;
  final Widget child;

  static const _destinations = [
    NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Inicio'),
    NavigationDestination(icon: Icon(Icons.water_drop_outlined), label: 'Dispositivos'),
    NavigationDestination(icon: Icon(Icons.apartment_outlined), label: 'Clientes'),
    NavigationDestination(icon: Icon(Icons.notifications_outlined), label: 'Alertas'),
    NavigationDestination(icon: Icon(Icons.support_agent_outlined), label: 'Tickets'),
    NavigationDestination(icon: Icon(Icons.person_outline), label: 'Perfil'),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedWaterBackdrop(
      child: Scaffold(
        body: wide
            ? Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 248,
                      child: GlassSurface(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Nereus', style: Theme.of(context).textTheme.headlineMedium),
                            const SizedBox(height: 16),
                            for (final dest in _destinations)
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(dest.label),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: child),
                ],
              )
            : SafeArea(bottom: false, child: child),
        bottomNavigationBar: wide
            ? null
            : GlassNavBar(
                selectedIndex: 0,
                onSelect: (_) {},
                destinations: _destinations,
              ),
      ),
    );
  }
}

class _SessionOverride extends Session {
  @override
  FutureOr<AuthSession> build() => const AuthSession(
        token: 't',
        branchId: '1',
      );
}

class _DashboardOverride extends Dashboard {
  @override
  FutureOr<DeviceOverview> build() {
    return const DeviceOverview(
      total: 4,
      online: 3,
      offline: 1,
      openAlerts: 2,
      readingsToday: 40,
      projects: [
        ProjectSummary(id: '41', name: 'Agricola Nahuen', deviceCount: 1),
      ],
    );
  }
}
