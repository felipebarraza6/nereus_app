import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:nereus_app/app.dart';
import 'package:nereus_app/core/cache/app_database.dart';
import 'package:nereus_app/core/config/app_config.dart';
import 'package:nereus_app/core/network/dio_factory.dart';
import 'package:nereus_app/core/network/session_controller.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/storage/secure_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MemoryStore extends SecureStore {
  final map = <String, String>{};

  @override
  Future<String?> readToken() async => map[SecureStore.tokenKey];

  @override
  Future<void> writeToken(String token) async =>
      map[SecureStore.tokenKey] = token;

  @override
  Future<String?> readBranchId() async => map[SecureStore.branchKey];

  @override
  Future<void> writeBranchId(String branchId) async =>
      map[SecureStore.branchKey] = branchId;

  @override
  Future<void> clearSession() async => map.clear();
}

class MockAdapter implements HttpClientAdapter {
  @override
  void close({bool force = false}) {}

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<List<int>>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    final path = options.uri.path;
    Object payload;
    if (path.contains('login_complete')) {
      payload = {
        'token': 'tok',
        'user': {'id': 1, 'email': 'demo@smarthydro.app', 'full_name': 'Demo'},
        'branches': [
          {
            'branch_id': 1,
            'branch_name': 'APR Demo',
            'role_code': 'OWNER',
            'role_name': 'Propietario',
          },
        ],
        'permissions': {
          'enabled_apps': ['iot_telemetry'],
        },
      };
    } else if (path.endsWith('/devices/') && options.method == 'GET') {
      payload = {
        'count': 1,
        'results': [
          {
            'id': 9,
            'name': 'Pozo Norte',
            'device_type': 'WELL',
            'is_online': true,
            'project_name': 'Red Sur',
            'lat': -33.4,
            'lon': -70.6,
          },
        ],
      };
    } else if (path.contains('/devices/9/calendar')) {
      payload = {
        'device_id': '9',
        'calendar': [
          {'date': '2026-10-21', 'has_data': true, 'records_count': 10},
        ],
      };
    } else if (path.contains('/devices/9/')) {
      payload = {
        'id': 9,
        'name': 'Pozo Norte',
        'device_type': 'WELL',
        'is_online': true,
        'variables': [
          {'id': 1, 'name': 'Caudal', 'variable_type': 'FLOW', 'unit': 'l/s'},
        ],
        'latest_readings': [
          {
            'processed_value': 1.2,
            'variable_id': '1',
            'variable_name': 'Caudal',
            'unit': 'l/s',
          },
        ],
      };
    } else if (path.contains('overview')) {
      payload = {
        'devices': {'total': 1, 'online': 1, 'offline': 0},
        'alerts': {'open_unacknowledged': 0},
        'readings_today': {'count': 12, 'errors': 0},
      };
    } else if (path.contains('daily')) {
      payload = {
        'days': [
          {
            'date': '2026-10-21',
            'devices': [
              {'avg_value': 1.1, 'records_count': 10},
            ],
          },
        ],
      };
    } else {
      payload = {'count': 0, 'results': []};
    }
    return ResponseBody.fromString(
      jsonEncode(payload),
      200,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('login, devices and device detail', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final prefs = await SharedPreferences.getInstance();
    final session = SessionController();
    final dio = createNereusDio(
      baseUrl: 'https://gateway.smarthydro.app',
      session: session,
    )..httpClientAdapter = MockAdapter();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(prefs),
          sessionControllerProvider.overrideWithValue(session),
          dioProvider.overrideWithValue(dio),
          secureStoreProvider.overrideWithValue(MemoryStore()),
          appDatabaseProvider.overrideWithValue(
            AppDatabase(executor: NativeDatabase.memory()),
          ),
          appConfigProvider.overrideWithValue(
            const AppConfig(apiBase: 'https://gateway.smarthydro.app'),
          ),
        ],
        child: const NereusApp(),
      ),
    );
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextFormField).at(0), 'demo@smarthydro.app');
    await tester.enterText(find.byType(TextFormField).at(1), 'secret');
    await tester.tap(find.text('Entrar'));
    await tester.pumpAndSettle();

    expect(find.textContaining('Operación'), findsOneWidget);

    await tester.tap(find.text('Dispositivos'));
    await tester.pumpAndSettle();
    expect(find.text('Pozo Norte'), findsOneWidget);

    await tester.tap(find.text('Pozo Norte'));
    await tester.pumpAndSettle();
    expect(find.text('FLOW'), findsOneWidget);
  });
}
