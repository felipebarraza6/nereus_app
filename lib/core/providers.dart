import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/cache/app_database.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/config/app_config.dart';
import 'package:nereus_app/features/fichas/data/fixture_ficha_repository.dart';
import 'package:nereus_app/features/fichas/data/fixture_levantamiento_repository.dart';
import 'package:nereus_app/features/fichas/data/fixture_store.dart';
import 'package:nereus_app/features/fichas/data/yggdra_ficha_repository.dart';
import 'package:nereus_app/features/fichas/data/yggdra_levantamiento_repository.dart';
import 'package:nereus_app/features/fichas/domain/ficha_repository.dart';
import 'package:nereus_app/core/debug/nereus_log.dart';
import 'package:nereus_app/core/network/dio_factory.dart';
import 'package:nereus_app/core/network/session_controller.dart';
import 'package:nereus_app/core/storage/secure_store.dart';
import 'package:nereus_app/features/alerts/data/alerts_repository.dart';
import 'package:nereus_app/features/auth/data/auth_repository.dart';
import 'package:nereus_app/features/catalog/data/inventory_repository.dart';
import 'package:nereus_app/features/customers/data/customers_repository.dart';
import 'package:nereus_app/features/equipment/data/equipment_repository.dart';
import 'package:nereus_app/features/org/data/org_repository.dart';
import 'package:nereus_app/features/telemetry/data/telemetry_repository.dart';
import 'package:nereus_app/features/tickets/data/tickets_repository.dart';
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
FixtureStore fixtureStore(Ref ref) => FixtureStore.seeded();

@Riverpod(keepAlive: true)
class DataMode extends _$DataMode {
  @override
  NereusDataMode build() => ref.watch(appConfigProvider).dataMode;

  void useFixture() => state = NereusDataMode.fixture;
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepository(
    dio: ref.watch(dioProvider),
    store: ref.watch(secureStoreProvider),
    session: ref.watch(sessionControllerProvider),
    cache: ref.watch(readCacheProvider),
    isFixture: ref.watch(dataModeProvider) == NereusDataMode.fixture,
  );
}

@Riverpod(keepAlive: true)
TelemetryRepository telemetryRepository(Ref ref) {
  return TelemetryRepository(
    dio: ref.watch(dioProvider),
    cache: ref.watch(readCacheProvider),
  );
}

@Riverpod(keepAlive: true)
AlertsRepository alertsRepository(Ref ref) {
  return AlertsRepository(
    dio: ref.watch(dioProvider),
    cache: ref.watch(readCacheProvider),
  );
}

@Riverpod(keepAlive: true)
TicketsRepository ticketsRepository(Ref ref) {
  return TicketsRepository(
    dio: ref.watch(dioProvider),
    cache: ref.watch(readCacheProvider),
  );
}

@Riverpod(keepAlive: true)
InventoryRepository inventoryRepository(Ref ref) {
  return InventoryRepository(
    dio: ref.watch(dioProvider),
    cache: ref.watch(readCacheProvider),
  );
}

@Riverpod(keepAlive: true)
CustomersRepository customersRepository(Ref ref) {
  if (ref.watch(dataModeProvider) == NereusDataMode.fixture) {
    return CustomersRepository.fixture(ref.watch(fixtureStoreProvider));
  }
  return CustomersRepository(
    dio: ref.watch(dioProvider),
    cache: ref.watch(readCacheProvider),
  );
}

@Riverpod(keepAlive: true)
FichaRepository fichaRepository(Ref ref) {
  if (ref.watch(dataModeProvider) == NereusDataMode.fixture) {
    return FixtureFichaRepository(ref.watch(fixtureStoreProvider));
  }
  return YggdraFichaRepository(
    dio: ref.watch(dioProvider),
    cache: ref.watch(readCacheProvider),
  );
}

@Riverpod(keepAlive: true)
LevantamientoRepository levantamientoRepository(Ref ref) {
  if (ref.watch(dataModeProvider) == NereusDataMode.fixture) {
    return FixtureLevantamientoRepository(ref.watch(fixtureStoreProvider));
  }
  return YggdraLevantamientoRepository(dio: ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
EquipmentRepository equipmentRepository(Ref ref) {
  return EquipmentRepository(dio: ref.watch(dioProvider));
}

@Riverpod(keepAlive: true)
OrgRepository orgRepository(Ref ref) {
  return OrgRepository(dio: ref.watch(dioProvider));
}

@riverpod
Stream<bool> isOffline(Ref ref) async* {
  final connectivity = Connectivity();
  yield (await connectivity.checkConnectivity()).contains(ConnectivityResult.none);
  yield* connectivity.onConnectivityChanged.map(
    (event) => event.contains(ConnectivityResult.none),
  );
}
