import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/home/presentation/home_screen.dart';
import 'package:nereus_app/features/home/providers/dashboard_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

void main() {
  testWidgets('home shows KPI labels', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sessionProvider.overrideWith(_SessionOverride.new),
          dashboardProvider.overrideWith(_DashboardOverride.new),
        ],
        child: MaterialApp.router(
          theme: AppTheme.light(),
          routerConfig: GoRouter(
            routes: [
              GoRoute(path: '/', builder: (_, __) => const HomeScreen()),
              GoRoute(path: '/devices', builder: (_, __) => const SizedBox()),
              GoRoute(path: '/alerts', builder: (_, __) => const SizedBox()),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('En línea'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('Alertas activas'), findsOneWidget);
  });
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
    );
  }
}
