import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/cache/app_database.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/config/app_config.dart';
import 'package:nereus_app/core/debug/nereus_log.dart';
import 'package:nereus_app/core/network/dio_factory.dart';
import 'package:nereus_app/core/network/session_controller.dart';
import 'package:nereus_app/core/storage/secure_store.dart';
import 'package:nereus_app/features/alerts/data/alerts_repository.dart';
import 'package:nereus_app/features/auth/data/auth_repository.dart';
import 'package:nereus_app/features/telemetry/data/telemetry_repository.dart';
import 'package:nereus_app/features/tickets/data/tickets_repository.dart';
import 'package:nereus_api_client/nereus_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
AppConfig appConfig(Ref ref) => AppConfig.fromEnvironment();

@Riverpod(keepAlive: true)
SessionController sessionController(Ref ref) => SessionController();

@Riverpod(keepAlive: true)
SecureStore secureStore(Ref ref) {
  if (kIsWeb) {
    try {
      return SecureStore(prefs: ref.watch(sharedPreferencesProvider));
    } on Object catch (error, stack) {
      nereusLog('secureStoreProvider', error, stack);
      return SecureStore.memory();
    }
  }
  return SecureStore();
}

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) => AppDatabase();

@Riverpod(keepAlive: true)
ReadCache readCache(Ref ref) {
  // driftDatabase() requires wasm worker files on web and throws ArgumentError
  // if they are omitted. Auth must not depend on that.
  if (kIsWeb) {
    return ReadCache.memory();
  }
  try {
    return ReadCache(ref.watch(appDatabaseProvider));
  } on Object catch (error, stack) {
    nereusLog('readCacheProvider', error, stack);
    return ReadCache.memory();
  }
}

@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(Ref ref) =>
    throw StateError('SharedPreferences must be overridden');

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  return createNereusDio(
    baseUrl: ref.watch(appConfigProvider).apiBase,
    session: ref.watch(sessionControllerProvider),
  );
}

@Riverpod(keepAlive: true)
NereusApiClient apiClient(Ref ref) {
  return NereusApiClient(
    dio: ref.watch(dioProvider),
    interceptors: <Interceptor>[],
  );
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepository(
    dio: ref.watch(dioProvider),
    store: ref.watch(secureStoreProvider),
    session: ref.watch(sessionControllerProvider),
    cache: ref.watch(readCacheProvider),
  );
}

@Riverpod(keepAlive: true)
TelemetryRepository telemetryRepository(Ref ref) {
  return TelemetryRepository(
    api: ref.watch(apiClientProvider).getIotTelemetryApi(),
    dio: ref.watch(dioProvider),
    cache: ref.watch(readCacheProvider),
  );
}

@Riverpod(keepAlive: true)
AlertsRepository alertsRepository(Ref ref) {
  return AlertsRepository(
    api: ref.watch(apiClientProvider).getAlertsApi(),
    dio: ref.watch(dioProvider),
    cache: ref.watch(readCacheProvider),
  );
}

@Riverpod(keepAlive: true)
TicketsRepository ticketsRepository(Ref ref) {
  final client = ref.watch(apiClientProvider);
  return TicketsRepository(
    api: client.getSupportApi(),
    customersApi: client.getCustomersApi(),
    cache: ref.watch(readCacheProvider),
  );
}

@riverpod
Stream<bool> isOffline(Ref ref) async* {
  final connectivity = Connectivity();
  yield (await connectivity.checkConnectivity()).contains(ConnectivityResult.none);
  yield* connectivity.onConnectivityChanged.map(
    (event) => event.contains(ConnectivityResult.none),
  );
}
