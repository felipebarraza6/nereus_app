// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Dashboard)
const dashboardProvider = DashboardProvider._();

final class DashboardProvider
    extends $AsyncNotifierProvider<Dashboard, DeviceOverview> {
  const DashboardProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'dashboardProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardHash();

  @$internal
  @override
  Dashboard create() => Dashboard();
}

String _$dashboardHash() => r'3039db574d1434dad43ca22cdb337bc315733a59';

abstract class _$Dashboard extends $AsyncNotifier<DeviceOverview> {
  FutureOr<DeviceOverview> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<DeviceOverview>, DeviceOverview>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DeviceOverview>, DeviceOverview>,
              AsyncValue<DeviceOverview>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
