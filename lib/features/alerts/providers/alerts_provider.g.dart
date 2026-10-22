// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alerts_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlertsFilter)
const alertsFilterProvider = AlertsFilterProvider._();

final class AlertsFilterProvider
    extends $NotifierProvider<AlertsFilter, bool?> {
  const AlertsFilterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alertsFilterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alertsFilterHash();

  @$internal
  @override
  AlertsFilter create() => AlertsFilter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool?>(value),
    );
  }
}

String _$alertsFilterHash() => r'0b1203e99288e53612b967175cd8776ead49f7be';

abstract class _$AlertsFilter extends $Notifier<bool?> {
  bool? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool?, bool?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool?, bool?>,
              bool?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(alerts)
const alertsProvider = AlertsProvider._();

final class AlertsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<AlertItem>>,
          List<AlertItem>,
          FutureOr<List<AlertItem>>
        >
    with $FutureModifier<List<AlertItem>>, $FutureProvider<List<AlertItem>> {
  const AlertsProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'alertsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alertsHash();

  @$internal
  @override
  $FutureProviderElement<List<AlertItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<AlertItem>> create(Ref ref) {
    return alerts(ref);
  }
}

String _$alertsHash() => r'479f7b4cbfedb5ff8b52d2f3b8392761a852bef5';

@ProviderFor(AlertBadge)
const alertBadgeProvider = AlertBadgeProvider._();

final class AlertBadgeProvider
    extends $AsyncNotifierProvider<AlertBadge, AlertSummary> {
  const AlertBadgeProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'alertBadgeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alertBadgeHash();

  @$internal
  @override
  AlertBadge create() => AlertBadge();
}

String _$alertBadgeHash() => r'ca8d600689e5e561a131b97a6cd84d52bb47fe62';

abstract class _$AlertBadge extends $AsyncNotifier<AlertSummary> {
  FutureOr<AlertSummary> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<AlertSummary>, AlertSummary>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AlertSummary>, AlertSummary>,
              AsyncValue<AlertSummary>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
