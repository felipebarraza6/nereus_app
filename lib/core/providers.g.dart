// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appConfig)
const appConfigProvider = AppConfigProvider._();

final class AppConfigProvider
    extends $FunctionalProvider<AppConfig, AppConfig, AppConfig>
    with $Provider<AppConfig> {
  const AppConfigProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appConfigProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appConfigHash();

  @$internal
  @override
  $ProviderElement<AppConfig> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppConfig create(Ref ref) {
    return appConfig(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppConfig value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppConfig>(value),
    );
  }
}

String _$appConfigHash() => r'87f9d20a2d92252672162b2ce97547b7b2479239';

@ProviderFor(sessionController)
const sessionControllerProvider = SessionControllerProvider._();

final class SessionControllerProvider
    extends
        $FunctionalProvider<
          SessionController,
          SessionController,
          SessionController
        >
    with $Provider<SessionController> {
  const SessionControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sessionControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sessionControllerHash();

  @$internal
  @override
  $ProviderElement<SessionController> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SessionController create(Ref ref) {
    return sessionController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SessionController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SessionController>(value),
    );
  }
}

String _$sessionControllerHash() => r'aec9c8b17f689aec09cec7486847cdbb1922a76e';

@ProviderFor(secureStore)
const secureStoreProvider = SecureStoreProvider._();

final class SecureStoreProvider
    extends $FunctionalProvider<SecureStore, SecureStore, SecureStore>
    with $Provider<SecureStore> {
  const SecureStoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'secureStoreProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$secureStoreHash();

  @$internal
  @override
  $ProviderElement<SecureStore> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SecureStore create(Ref ref) {
    return secureStore(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SecureStore value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SecureStore>(value),
    );
  }
}

String _$secureStoreHash() => r'3f4e88b2a8f1f8c5b4c895ef73576effb9d889c2';

@ProviderFor(appDatabase)
const appDatabaseProvider = AppDatabaseProvider._();

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  const AppDatabaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appDatabaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'98a09c6cfd43966155dfbdb0787fa18c85438e13';

@ProviderFor(readCache)
const readCacheProvider = ReadCacheProvider._();

final class ReadCacheProvider
    extends $FunctionalProvider<ReadCache, ReadCache, ReadCache>
    with $Provider<ReadCache> {
  const ReadCacheProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'readCacheProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$readCacheHash();

  @$internal
  @override
  $ProviderElement<ReadCache> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ReadCache create(Ref ref) {
    return readCache(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReadCache value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ReadCache>(value),
    );
  }
}

String _$readCacheHash() => r'863393cf4e926b68790b19416923ceb0fa080197';

@ProviderFor(sharedPreferences)
const sharedPreferencesProvider = SharedPreferencesProvider._();

final class SharedPreferencesProvider
    extends
        $FunctionalProvider<
          SharedPreferences,
          SharedPreferences,
          SharedPreferences
        >
    with $Provider<SharedPreferences> {
  const SharedPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesHash();

  @$internal
  @override
  $ProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SharedPreferences create(Ref ref) {
    return sharedPreferences(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SharedPreferences value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SharedPreferences>(value),
    );
  }
}

String _$sharedPreferencesHash() => r'2953b5eb26aee610d4b0932ab9d10cfa9935a84d';

@ProviderFor(dio)
const dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'caa143f409534bc2a98f15c4de704d3ddc2dbaf8';

@ProviderFor(fixtureStore)
const fixtureStoreProvider = FixtureStoreProvider._();

final class FixtureStoreProvider
    extends $FunctionalProvider<FixtureStore, FixtureStore, FixtureStore>
    with $Provider<FixtureStore> {
  const FixtureStoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fixtureStoreProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fixtureStoreHash();

  @$internal
  @override
  $ProviderElement<FixtureStore> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FixtureStore create(Ref ref) {
    return fixtureStore(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FixtureStore value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FixtureStore>(value),
    );
  }
}

String _$fixtureStoreHash() => r'5bf93044b475b8f7e00d1b58eab008066a7e48ac';

@ProviderFor(DataMode)
const dataModeProvider = DataModeProvider._();

final class DataModeProvider
    extends $NotifierProvider<DataMode, NereusDataMode> {
  const DataModeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dataModeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dataModeHash();

  @$internal
  @override
  DataMode create() => DataMode();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NereusDataMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NereusDataMode>(value),
    );
  }
}

String _$dataModeHash() => r'f2d3f1b1b6d278936cec0e40df949cf5f092d410';

abstract class _$DataMode extends $Notifier<NereusDataMode> {
  NereusDataMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<NereusDataMode, NereusDataMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<NereusDataMode, NereusDataMode>,
              NereusDataMode,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(authRepository)
const authRepositoryProvider = AuthRepositoryProvider._();

final class AuthRepositoryProvider
    extends $FunctionalProvider<AuthRepository, AuthRepository, AuthRepository>
    with $Provider<AuthRepository> {
  const AuthRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AuthRepository create(Ref ref) {
    return authRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthRepository>(value),
    );
  }
}

String _$authRepositoryHash() => r'5b936c83d4433f1d252d0da6887473b0f176d72b';

@ProviderFor(telemetryRepository)
const telemetryRepositoryProvider = TelemetryRepositoryProvider._();

final class TelemetryRepositoryProvider
    extends
        $FunctionalProvider<
          TelemetryRepository,
          TelemetryRepository,
          TelemetryRepository
        >
    with $Provider<TelemetryRepository> {
  const TelemetryRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'telemetryRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$telemetryRepositoryHash();

  @$internal
  @override
  $ProviderElement<TelemetryRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TelemetryRepository create(Ref ref) {
    return telemetryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TelemetryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TelemetryRepository>(value),
    );
  }
}

String _$telemetryRepositoryHash() =>
    r'ccab83a171e0a4a4c15ef7cb00dca626c4d68e69';

@ProviderFor(alertsRepository)
const alertsRepositoryProvider = AlertsRepositoryProvider._();

final class AlertsRepositoryProvider
    extends
        $FunctionalProvider<
          AlertsRepository,
          AlertsRepository,
          AlertsRepository
        >
    with $Provider<AlertsRepository> {
  const AlertsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alertsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alertsRepositoryHash();

  @$internal
  @override
  $ProviderElement<AlertsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AlertsRepository create(Ref ref) {
    return alertsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlertsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlertsRepository>(value),
    );
  }
}

String _$alertsRepositoryHash() => r'7444982d0f4eb947f6d5687ba9472b3ecdc0a5a2';

@ProviderFor(ticketsRepository)
const ticketsRepositoryProvider = TicketsRepositoryProvider._();

final class TicketsRepositoryProvider
    extends
        $FunctionalProvider<
          TicketsRepository,
          TicketsRepository,
          TicketsRepository
        >
    with $Provider<TicketsRepository> {
  const TicketsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ticketsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ticketsRepositoryHash();

  @$internal
  @override
  $ProviderElement<TicketsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TicketsRepository create(Ref ref) {
    return ticketsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TicketsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TicketsRepository>(value),
    );
  }
}

String _$ticketsRepositoryHash() => r'1c6dba18083c4582a67cfb8e507f9d333d81a3e8';

@ProviderFor(inventoryRepository)
const inventoryRepositoryProvider = InventoryRepositoryProvider._();

final class InventoryRepositoryProvider
    extends
        $FunctionalProvider<
          InventoryRepository,
          InventoryRepository,
          InventoryRepository
        >
    with $Provider<InventoryRepository> {
  const InventoryRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inventoryRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inventoryRepositoryHash();

  @$internal
  @override
  $ProviderElement<InventoryRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InventoryRepository create(Ref ref) {
    return inventoryRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InventoryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InventoryRepository>(value),
    );
  }
}

String _$inventoryRepositoryHash() =>
    r'b07c4ca4ce1e0763fa227b1d50623e81aaad8a44';

@ProviderFor(customersRepository)
const customersRepositoryProvider = CustomersRepositoryProvider._();

final class CustomersRepositoryProvider
    extends
        $FunctionalProvider<
          CustomersRepository,
          CustomersRepository,
          CustomersRepository
        >
    with $Provider<CustomersRepository> {
  const CustomersRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'customersRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$customersRepositoryHash();

  @$internal
  @override
  $ProviderElement<CustomersRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CustomersRepository create(Ref ref) {
    return customersRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CustomersRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CustomersRepository>(value),
    );
  }
}

String _$customersRepositoryHash() =>
    r'd0b225560db4b957aba2431c2d8097a4e068f4b2';

@ProviderFor(fichaRepository)
const fichaRepositoryProvider = FichaRepositoryProvider._();

final class FichaRepositoryProvider
    extends
        $FunctionalProvider<FichaRepository, FichaRepository, FichaRepository>
    with $Provider<FichaRepository> {
  const FichaRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fichaRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fichaRepositoryHash();

  @$internal
  @override
  $ProviderElement<FichaRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FichaRepository create(Ref ref) {
    return fichaRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FichaRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FichaRepository>(value),
    );
  }
}

String _$fichaRepositoryHash() => r'8f8c3fab71e296c3ba053288a2a23e508e251a22';

@ProviderFor(levantamientoRepository)
const levantamientoRepositoryProvider = LevantamientoRepositoryProvider._();

final class LevantamientoRepositoryProvider
    extends
        $FunctionalProvider<
          LevantamientoRepository,
          LevantamientoRepository,
          LevantamientoRepository
        >
    with $Provider<LevantamientoRepository> {
  const LevantamientoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'levantamientoRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$levantamientoRepositoryHash();

  @$internal
  @override
  $ProviderElement<LevantamientoRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  LevantamientoRepository create(Ref ref) {
    return levantamientoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LevantamientoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LevantamientoRepository>(value),
    );
  }
}

String _$levantamientoRepositoryHash() =>
    r'895f5287cb88ba9b65a4e5709138c2bb88e11fab';

@ProviderFor(equipmentRepository)
const equipmentRepositoryProvider = EquipmentRepositoryProvider._();

final class EquipmentRepositoryProvider
    extends
        $FunctionalProvider<
          EquipmentRepository,
          EquipmentRepository,
          EquipmentRepository
        >
    with $Provider<EquipmentRepository> {
  const EquipmentRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'equipmentRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$equipmentRepositoryHash();

  @$internal
  @override
  $ProviderElement<EquipmentRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  EquipmentRepository create(Ref ref) {
    return equipmentRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EquipmentRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EquipmentRepository>(value),
    );
  }
}

String _$equipmentRepositoryHash() =>
    r'6402b0885dd5e69b2770e25596f40a6b81f630b1';

@ProviderFor(orgRepository)
const orgRepositoryProvider = OrgRepositoryProvider._();

final class OrgRepositoryProvider
    extends $FunctionalProvider<OrgRepository, OrgRepository, OrgRepository>
    with $Provider<OrgRepository> {
  const OrgRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'orgRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$orgRepositoryHash();

  @$internal
  @override
  $ProviderElement<OrgRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  OrgRepository create(Ref ref) {
    return orgRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(OrgRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<OrgRepository>(value),
    );
  }
}

String _$orgRepositoryHash() => r'1444d30bcceecd07ae952f0c0216201985243edb';

@ProviderFor(isOffline)
const isOfflineProvider = IsOfflineProvider._();

final class IsOfflineProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, Stream<bool>>
    with $FutureModifier<bool>, $StreamProvider<bool> {
  const IsOfflineProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isOfflineProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isOfflineHash();

  @$internal
  @override
  $StreamProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<bool> create(Ref ref) {
    return isOffline(ref);
  }
}

String _$isOfflineHash() => r'e05d597256568d0e53c42f7fbcc4b7747b9923e7';
