// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeviceQueryController)
const deviceQueryControllerProvider = DeviceQueryControllerProvider._();

final class DeviceQueryControllerProvider
    extends $NotifierProvider<DeviceQueryController, DeviceQuery> {
  const DeviceQueryControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'deviceQueryControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deviceQueryControllerHash();

  @$internal
  @override
  DeviceQueryController create() => DeviceQueryController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DeviceQuery value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DeviceQuery>(value),
    );
  }
}

String _$deviceQueryControllerHash() =>
    r'6b90cbeec9179c484daeb4da24bed7ee1df93dbd';

abstract class _$DeviceQueryController extends $Notifier<DeviceQuery> {
  DeviceQuery build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<DeviceQuery, DeviceQuery>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<DeviceQuery, DeviceQuery>,
              DeviceQuery,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(devices)
const devicesProvider = DevicesProvider._();

final class DevicesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<DeviceItem>>,
          List<DeviceItem>,
          FutureOr<List<DeviceItem>>
        >
    with $FutureModifier<List<DeviceItem>>, $FutureProvider<List<DeviceItem>> {
  const DevicesProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'devicesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$devicesHash();

  @$internal
  @override
  $FutureProviderElement<List<DeviceItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<DeviceItem>> create(Ref ref) {
    return devices(ref);
  }
}

String _$devicesHash() => r'a6cf3c02bf3153b346900d928e1cd5a4884d0b13';

@ProviderFor(deviceDetail)
const deviceDetailProvider = DeviceDetailFamily._();

final class DeviceDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<DeviceDetail>,
          DeviceDetail,
          FutureOr<DeviceDetail>
        >
    with $FutureModifier<DeviceDetail>, $FutureProvider<DeviceDetail> {
  const DeviceDetailProvider._({
    required DeviceDetailFamily super.from,
    required int super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'deviceDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deviceDetailHash();

  @override
  String toString() {
    return r'deviceDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DeviceDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DeviceDetail> create(Ref ref) {
    final argument = this.argument as int;
    return deviceDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deviceDetailHash() => r'8384bbba978b1b7be63e8769db37ea4c40da7962';

final class DeviceDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DeviceDetail>, int> {
  const DeviceDetailFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'deviceDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DeviceDetailProvider call(int id) =>
      DeviceDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'deviceDetailProvider';
}

@ProviderFor(deviceCalendar)
const deviceCalendarProvider = DeviceCalendarFamily._();

final class DeviceCalendarProvider
    extends
        $FunctionalProvider<
          AsyncValue<DeviceCalendar>,
          DeviceCalendar,
          FutureOr<DeviceCalendar>
        >
    with $FutureModifier<DeviceCalendar>, $FutureProvider<DeviceCalendar> {
  const DeviceCalendarProvider._({
    required DeviceCalendarFamily super.from,
    required int super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'deviceCalendarProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deviceCalendarHash();

  @override
  String toString() {
    return r'deviceCalendarProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DeviceCalendar> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DeviceCalendar> create(Ref ref) {
    final argument = this.argument as int;
    return deviceCalendar(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceCalendarProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deviceCalendarHash() => r'02dbd0bb4da23995144de1653e126e8f6624ad01';

final class DeviceCalendarFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DeviceCalendar>, int> {
  const DeviceCalendarFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'deviceCalendarProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DeviceCalendarProvider call(int id) =>
      DeviceCalendarProvider._(argument: id, from: this);

  @override
  String toString() => r'deviceCalendarProvider';
}

@ProviderFor(deviceDaily)
const deviceDailyProvider = DeviceDailyFamily._();

final class DeviceDailyProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<DailyPoint>>,
          List<DailyPoint>,
          FutureOr<List<DailyPoint>>
        >
    with $FutureModifier<List<DailyPoint>>, $FutureProvider<List<DailyPoint>> {
  const DeviceDailyProvider._({
    required DeviceDailyFamily super.from,
    required int super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'deviceDailyProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deviceDailyHash();

  @override
  String toString() {
    return r'deviceDailyProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<DailyPoint>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<DailyPoint>> create(Ref ref) {
    final argument = this.argument as int;
    return deviceDaily(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceDailyProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deviceDailyHash() => r'a4f0af3f16722b9dcbd0a979fa76e02a1be4e3ff';

final class DeviceDailyFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<DailyPoint>>, int> {
  const DeviceDailyFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'deviceDailyProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DeviceDailyProvider call(int id) =>
      DeviceDailyProvider._(argument: id, from: this);

  @override
  String toString() => r'deviceDailyProvider';
}

@ProviderFor(latestReadings)
const latestReadingsProvider = LatestReadingsFamily._();

final class LatestReadingsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LatestValue>>,
          List<LatestValue>,
          FutureOr<List<LatestValue>>
        >
    with
        $FutureModifier<List<LatestValue>>,
        $FutureProvider<List<LatestValue>> {
  const LatestReadingsProvider._({
    required LatestReadingsFamily super.from,
    required List<int> super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'latestReadingsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$latestReadingsHash();

  @override
  String toString() {
    return r'latestReadingsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<LatestValue>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LatestValue>> create(Ref ref) {
    final argument = this.argument as List<int>;
    return latestReadings(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LatestReadingsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$latestReadingsHash() => r'4259f4ef014accc4316a54cd8a1388ecbd66f4ab';

final class LatestReadingsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<LatestValue>>, List<int>> {
  const LatestReadingsFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'latestReadingsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LatestReadingsProvider call(List<int> ids) =>
      LatestReadingsProvider._(argument: ids, from: this);

  @override
  String toString() => r'latestReadingsProvider';
}

@ProviderFor(deviceEvents)
const deviceEventsProvider = DeviceEventsFamily._();

final class DeviceEventsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<DeviceEvent>>,
          List<DeviceEvent>,
          FutureOr<List<DeviceEvent>>
        >
    with
        $FutureModifier<List<DeviceEvent>>,
        $FutureProvider<List<DeviceEvent>> {
  const DeviceEventsProvider._({
    required DeviceEventsFamily super.from,
    required int super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'deviceEventsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deviceEventsHash();

  @override
  String toString() {
    return r'deviceEventsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<DeviceEvent>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<DeviceEvent>> create(Ref ref) {
    final argument = this.argument as int;
    return deviceEvents(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceEventsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deviceEventsHash() => r'33377df10d5505ee0f67f0ee0e800d4c8e62145e';

final class DeviceEventsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<DeviceEvent>>, int> {
  const DeviceEventsFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'deviceEventsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DeviceEventsProvider call(int id) =>
      DeviceEventsProvider._(argument: id, from: this);

  @override
  String toString() => r'deviceEventsProvider';
}

@ProviderFor(clients)
const clientsProvider = ClientsProvider._();

final class ClientsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ClientItem>>,
          List<ClientItem>,
          FutureOr<List<ClientItem>>
        >
    with $FutureModifier<List<ClientItem>>, $FutureProvider<List<ClientItem>> {
  const ClientsProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'clientsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clientsHash();

  @$internal
  @override
  $FutureProviderElement<List<ClientItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ClientItem>> create(Ref ref) {
    return clients(ref);
  }
}

String _$clientsHash() => r'6fbfcc17f4506f697e77cfc9150350eddea90529';
