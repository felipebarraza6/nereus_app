import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/presentation/catalog_screen.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/customers/presentation/clients_screen.dart';
import 'package:nereus_app/features/devices/presentation/device_detail_screen.dart';
import 'package:nereus_app/features/devices/presentation/devices_screen.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/home/presentation/home_screen.dart';
import 'package:nereus_app/features/home/providers/dashboard_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:nereus_app/features/tickets/domain/ticket_models.dart';
import 'package:nereus_app/features/tour/presentation/tour_screen.dart';

import '../features/devices/device_detail_fixtures.dart';

void main() {
  testGoldens('desktop 1440 and mobile 390 chrome', (tester) async {
    final home = _frame(const HomeScreen(), wide: false, crumb: 'Inicio');
    final catalog = _frame(const CatalogScreen(), wide: false, crumb: 'Catálogo');
    final tour = _frame(const TourScreen(), wide: false, crumb: 'Recorrido');
    final homeWide = _frame(const HomeScreen(), wide: true, crumb: 'Inicio');
    final catalogWide =
        _frame(const CatalogScreen(), wide: true, crumb: 'Catálogo');
    final devicesWide =
        _frame(const DevicesScreen(), wide: true, crumb: 'Operación');
    final clientsWide =
        _frame(const ClientsScreen(), wide: true, crumb: 'Clientes');

    await tester.pumpWidgetBuilder(
      home,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(390, 844),
    );
    await screenMatchesGolden(tester, 'home_390');

    await tester.pumpWidgetBuilder(
      catalog,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(390, 844),
    );
    await screenMatchesGolden(tester, 'catalog_390');

    await tester.pumpWidgetBuilder(
      tour,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(390, 844),
    );
    await screenMatchesGolden(tester, 'tour_390');

    await tester.pumpWidgetBuilder(
      homeWide,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(1440, 900),
    );
    await screenMatchesGolden(tester, 'home_1440');

    await tester.pumpWidgetBuilder(
      catalogWide,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(1440, 900),
    );
    await screenMatchesGolden(tester, 'catalog_1440');

    await tester.pumpWidgetBuilder(
      devicesWide,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(1440, 900),
    );
    await screenMatchesGolden(tester, 'devices_1440');

    await tester.pumpWidgetBuilder(
      clientsWide,
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(1440, 900),
    );
    await screenMatchesGolden(tester, 'clients_1440');
  });
}

Widget _frame(Widget child, {required bool wide, required String crumb}) {
  return ProviderScope(
    overrides: [
      sessionProvider.overrideWith(_SessionOverride.new),
      dashboardProvider.overrideWith(_DashboardOverride.new),
      devicesProvider.overrideWith((ref) {
        return const [
          DeviceItem(
            id: 174,
            name: 'Pozo Norte',
            isOnline: true,
            projectName: 'Agricola Nahuen',
            deviceType: 'WELL',
          ),
          DeviceItem(
            id: 12,
            name: 'Estanque Sur',
            isOnline: false,
            projectName: 'Agricola Nahuen',
            deviceType: 'TANK',
          ),
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
      deviceConfigsProvider.overrideWith((ref, id) async => const <DeviceConfigItem>[]),
      deviceComplianceProvider.overrideWith(
        (ref, id) async => const <ComplianceSnapshot>[],
      ),
      productsProvider().overrideWith(
        (ref) => const [
          ProductItem(
            id: '9',
            name: 'SmartHydro MQTT',
            productType: 'IOT',
            code: 'SH-MQTT',
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
            GoRoute(
              path: '/',
              builder: (_, __) =>
                  _Shell(wide: wide, crumb: crumb, child: child),
            ),
            GoRoute(path: '/devices', builder: (_, __) => const SizedBox()),
            GoRoute(path: '/devices/:id', builder: (_, __) => const SizedBox()),
            GoRoute(path: '/alerts', builder: (_, __) => const SizedBox()),
            GoRoute(path: '/tickets/new', builder: (_, __) => const SizedBox()),
            GoRoute(path: '/tour', builder: (_, __) => const SizedBox()),
            GoRoute(path: '/catalog', builder: (_, __) => const SizedBox()),
          ],
        ),
      ),
    ),
  );
}

class _Shell extends StatelessWidget {
  const _Shell({required this.wide, required this.crumb, required this.child});

  final bool wide;
  final String crumb;
  final Widget child;

  static const _sections = [
    ('Monitoreo', ['Inicio', 'Operación', 'Tickets']),
    ('Activos', ['Catálogo', 'Inventario', 'Equipos']),
    ('Red', ['Clientes', 'Puntos']),
    ('Sistema', ['Ajustes']),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedWaterBackdrop(
      child: Scaffold(
        body: wide
            ? Row(
                children: [
                  Container(
                    width: 248,
                    margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    decoration: BoxDecoration(
                      color: const Color(0xF00F2A2C),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.fromLTRB(14, 16, 14, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(Icons.water_drop, color: Color(0xFF5EEAD4), size: 20),
                            SizedBox(width: 10),
                            Text(
                              'Nereus',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 12),
                          child: Text(
                            'Telemetría hídrica',
                            style: TextStyle(
                              color: Color(0xFF9EC9C4),
                              fontSize: 12,
                            ),
                          ),
                        ),
                        for (final section in _sections) ...[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 10, 4, 6),
                            child: Text(
                              section.$1,
                              style: const TextStyle(
                                color: Color(0xFF7AA8A3),
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.6,
                              ),
                            ),
                          ),
                          for (final label in section.$2)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 4),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: label == crumb
                                      ? const Color(0x3814B8A6)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      label,
                                      style: TextStyle(
                                        color: label == crumb
                                            ? Colors.white
                                            : const Color(0xFFE7F4F3),
                                        fontSize: 13.5,
                                        fontWeight: label == crumb
                                            ? FontWeight.w600
                                            : FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                        const Spacer(),
                        const Text(
                          'Recorrido',
                          style: TextStyle(
                            color: Color(0xFFE7F4F3),
                            fontSize: 13.5,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Ana Ríos',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                        const Text(
                          'Agricola Nahuen',
                          style: TextStyle(
                            color: Color(0xFF9EC9C4),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                          child: GlassSurface(
                            opacity: 0.9,
                            borderRadius: BorderRadius.circular(16),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            child: Row(
                              children: [
                                Text(crumb),
                                const SizedBox(width: 16),
                                const Expanded(
                                  child: Text(
                                    'Buscar equipos  (/)',
                                    style: TextStyle(
                                      color: Color(0xFF3F5B5E),
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                const Icon(Icons.notifications_outlined, size: 20),
                                const SizedBox(width: 8),
                                const Icon(Icons.route_outlined, size: 20),
                                const SizedBox(width: 8),
                                const CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Color(0x290F766E),
                                  child: Text(
                                    'A',
                                    style: TextStyle(
                                      color: Color(0xFF0F766E),
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: child),
                      ],
                    ),
                  ),
                ],
              )
            : SafeArea(bottom: false, child: child),
        bottomNavigationBar: wide
            ? null
            : GlassNavBar(
                selectedIndex: 0,
                onSelect: (_) {},
                destinations: const [
                  NavigationDestination(
                    icon: Icon(Icons.home_outlined),
                    label: 'Inicio',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.water_drop_outlined),
                    label: 'Operación',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.apartment_outlined),
                    label: 'Clientes',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.support_agent_outlined),
                    label: 'Tickets',
                  ),
                  NavigationDestination(
                    icon: Icon(Icons.settings_outlined),
                    label: 'Ajustes',
                  ),
                ],
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
        enabledApps: ['inventory', 'iot_telemetry', 'customers', 'equipment'],
        user: SessionUser(id: 1, email: 'ana@nahuen.cl', fullName: 'Ana Ríos'),
        branches: [
          BranchAssignment(
            branchId: 1,
            roleCode: 'ADM',
            branchName: 'Agricola Nahuen',
          ),
        ],
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
