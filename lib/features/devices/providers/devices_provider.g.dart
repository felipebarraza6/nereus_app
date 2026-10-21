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
        retry: null,
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
    r'f61aa9d609bb07c40858ee2556f151364fedae6c';

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
        retry: null,
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

String _$devicesHash() => r'247fc26c3aeb7640aaef67b67183d9c06cf6f9f2';

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
         retry: null,
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

String _$deviceDetailHash() => r'2c74fdc31a64426bc132e71955e43d4692f0c6ef';

final class DeviceDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DeviceDetail>, int> {
  const DeviceDetailFamily._()
    : super(
        retry: null,
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
         retry: null,
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

String _$deviceCalendarHash() => r'8e58a63b10bdf43fd9e5cbf20b8face3eb900f0e';

final class DeviceCalendarFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DeviceCalendar>, int> {
  const DeviceCalendarFamily._()
    : super(
        retry: null,
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
         retry: null,
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

String _$deviceDailyHash() => r'9d6500fb7b07ffb14b00529efc2580c601f50f3f';

final class DeviceDailyFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<DailyPoint>>, int> {
  const DeviceDailyFamily._()
    : super(
        retry: null,
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
         retry: null,
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

String _$latestReadingsHash() => r'805d5f18491c14c6ce15fc6d4c4e2b89cbddf581';

final class LatestReadingsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<LatestValue>>, List<int>> {
  const LatestReadingsFamily._()
    : super(
        retry: null,
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
