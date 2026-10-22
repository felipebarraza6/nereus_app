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

String _$dashboardHash() => r'dad75acf5bc47c7d305c1d45f0861a6de213cfeb';

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
