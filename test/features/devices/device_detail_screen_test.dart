import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/devices/presentation/device_detail_screen.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

import 'device_detail_fixtures.dart';

Widget _app({required DeviceDetail Function() detail}) {
  return ProviderScope(
    overrides: [
      sessionProvider.overrideWith(_AdminSession.new),
      deviceConfigsProvider.overrideWith((ref, id) async => const <DeviceConfigItem>[]),
      deviceComplianceProvider.overrideWith((ref, id) async => const <ComplianceSnapshot>[]),
      deviceDetailProvider.overrideWith((ref, id) => detail()),
      deviceCalendarProvider.overrideWith(
        (ref, id) => DeviceCalendar.fromJson(
          Map<String, dynamic>.from(deviceCalendarRuntimeJson),
        ),
      ),
      deviceDailyProvider.overrideWith(
        (ref, id) => [
          const DailyPoint(date: '2026-10-21', avgValue: 3.1, recordsCount: 8),
        ],
      ),
      deviceEventsProvider.overrideWith((ref, id) => []),
    ],
    child: MaterialApp.router(
      theme: AppTheme.light(),
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (_, __) => const DeviceDetailScreen(deviceId: 42),
          ),
          GoRoute(
            path: '/tickets/new',
            builder: (_, __) => const SizedBox(),
          ),
        ],
      ),
    ),
  );
}

void main() {
  testWidgets('device detail renders runtime-shaped readings', (tester) async {
    await tester.pumpWidget(
      _app(
        detail: () => DeviceDetail.fromJson(
          Map<String, dynamic>.from(deviceDetailRuntimeJson),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Pozo Norte'), findsOneWidget);
    expect(find.text('3.50 L/s'), findsOneWidget);
    expect(find.text('Caudal'), findsOneWidget);
    expect(find.text(ApiError.genericMessage), findsNothing);
    expect(find.byIcon(Icons.wifi_off_rounded), findsNothing);
  });

  testWidgets('parse errors show a generic card, not TypeError or wifi-off',
      (tester) async {
    await tester.pumpWidget(
      _app(detail: () => throw TypeError()),
    );
    await tester.pumpAndSettle();
    expect(find.text(ApiError.genericMessage), findsOneWidget);
    expect(find.byIcon(Icons.error_outline_rounded), findsOneWidget);
    expect(find.byIcon(Icons.wifi_off_rounded), findsNothing);
    expect(find.textContaining('TypeError'), findsNothing);
    expect(find.textContaining('10074'), findsNothing);
  });

  testWidgets('network errors show the offline icon', (tester) async {
    await tester.pumpWidget(
      _app(
        detail: () => throw const ApiError(
          message: ApiError.networkMessage,
          isNetwork: true,
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text(ApiError.networkMessage), findsOneWidget);
    expect(find.byIcon(Icons.wifi_off_rounded), findsOneWidget);
    expect(find.byIcon(Icons.error_outline_rounded), findsNothing);
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
