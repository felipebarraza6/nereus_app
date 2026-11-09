import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/app.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/network/dio_factory.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/core/storage/secure_store.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  testWidgets('demo entry stays in the app when my-profile returns 401', (tester) async {
    tester.view.physicalSize = const Size(1440, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final store = SecureStore.memory({
      SecureStore.tokenKey: 'fixture-token',
      SecureStore.profileKey: jsonEncode({
        'user': {
          'id': 1,
          'email': 'demo@smarthydro.app',
          'full_name': 'Demo Nereus',
          'is_superuser': true,
        },
        'branches': [
          {
            'branch_id': 1,
            'branch_name': 'Sucursal demo',
            'role_code': 'ADM',
            'role_name': 'Administrador',
            'is_active': true,
          },
        ],
        'permissions': {
          'enabled_apps': ['iot_telemetry', 'support'],
        },
      }),
    });
    final prefs = await SharedPreferences.getInstance();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(prefs),
          secureStoreProvider.overrideWithValue(store),
          readCacheProvider.overrideWithValue(ReadCache.memory()),
          dioProvider.overrideWith((ref) {
            final session = ref.watch(sessionControllerProvider);
            return createNereusDio(
              baseUrl: 'https://gateway.smarthydro.app',
              session: session,
            )..httpClientAdapter = _Adapter((options) async {
                return _json('{"detail":"Token inválido"}', 401);
              });
          }),
        ],
        child: const NereusApp(),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('Entrar con datos de demostración'), findsNothing);
    expect(find.text('Centro'), findsWidgets);
    refInvalidate(tester);
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    expect(find.text('Centro'), findsWidgets);
  });

  testWidgets('a real login stays after a following 401', (tester) async {
    tester.view.physicalSize = const Size(1440, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final store = SecureStore.memory();
    final prefs = await SharedPreferences.getInstance();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sharedPreferencesProvider.overrideWithValue(prefs),
          secureStoreProvider.overrideWithValue(store),
          readCacheProvider.overrideWithValue(ReadCache.memory()),
          dioProvider.overrideWith((ref) {
            final session = ref.watch(sessionControllerProvider);
            return createNereusDio(
              baseUrl: 'https://gateway.smarthydro.app',
              session: session,
            )..httpClientAdapter = _Adapter((options) {
                if (options.path.contains('login_complete')) {
                  return Future.value(_json(
                    jsonEncode({
                      'token': 'fresh-token',
                      'user': {
                        'id': 7,
                        'email': 'ana@smarthydro.app',
                        'full_name': 'Ana',
                        'is_superuser': true,
                      },
                      'branches': [
                        {
                          'branch_id': 3,
                          'branch_name': 'Ñuble',
                          'role_code': 'ADM',
                          'role_name': 'Administrador',
                          'is_active': true,
                        },
                      ],
                      'permissions': {
                        'enabled_apps': ['iot_telemetry', 'support'],
                      },
                    }),
                    200,
                  ));
                }
                return Future.value(_json('{"detail":"Token inválido"}', 401));
              });
          }),
        ],
        child: const NereusApp(),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));
    await tester.enterText(find.byType(TextFormField).at(0), 'ana@smarthydro.app');
    await tester.enterText(find.byType(TextFormField).at(1), 'secreta');
    await tester.tap(find.widgetWithText(FilledButton, 'Entrar'));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    expect(find.text('Centro'), findsWidgets);
    expect(await store.readToken(), 'fresh-token');
    await tester.pumpWidget(const SizedBox.shrink());
    for (var i = 0; i < 6; i++) {
      await tester.pump(const Duration(milliseconds: 1));
    }
  });
}

void refInvalidate(WidgetTester tester) {
  final context = tester.element(find.text('Centro').first);
  ProviderScope.containerOf(context).invalidate(sessionProvider);
}

ResponseBody _json(String body, int status) {
  return ResponseBody.fromString(
    body,
    status,
    headers: {
      Headers.contentTypeHeader: ['application/json'],
    },
  );
}

class _Adapter implements HttpClientAdapter {
  _Adapter(this._handler);
  final Future<ResponseBody> Function(RequestOptions options) _handler;

  @override
  void close({bool force = false}) {}

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<List<int>>? requestStream,
    Future<void>? cancelFuture,
  ) {
    return _handler(options);
  }
}
