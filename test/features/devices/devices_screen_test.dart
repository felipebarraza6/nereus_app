import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/devices/presentation/devices_screen.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

void main() {
  testWidgets('devices list shows status chips', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sessionProvider.overrideWith(_AdminSession.new),
          devicesProvider.overrideWith((ref) async {
            return const [
              DeviceItem(id: 1, name: 'Pozo A', isOnline: true),
              DeviceItem(id: 2, name: 'Pozo B', isOnline: false),
            ];
          }),
        ],
        child: MaterialApp.router(
          theme: AppTheme.light(),
          routerConfig: GoRouter(
            routes: [
              GoRoute(path: '/', builder: (_, __) => const DevicesScreen()),
              GoRoute(
                path: '/devices/:id',
                builder: (_, __) => const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Pozo A'), findsOneWidget);
    expect(find.text('En línea'), findsWidgets);
    expect(find.text('Silencioso'), findsOneWidget);
  });
}

class _AdminSession extends Session {
  @override
  FutureOr<AuthSession> build() => const AuthSession(
        token: 't',
        branchId: '1',
        enabledApps: ['iot_telemetry'],
        branches: [BranchAssignment(branchId: 1, roleCode: 'ADM')],
      );
}
