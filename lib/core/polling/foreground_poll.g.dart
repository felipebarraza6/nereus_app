// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foreground_poll.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// True while the app is in the foreground / the browser tab is visible.

@ProviderFor(AppForeground)
const appForegroundProvider = AppForegroundProvider._();

/// True while the app is in the foreground / the browser tab is visible.
final class AppForegroundProvider
    extends $NotifierProvider<AppForeground, bool> {
  /// True while the app is in the foreground / the browser tab is visible.
  const AppForegroundProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'appForegroundProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appForegroundHash();

  @$internal
  @override
  AppForeground create() => AppForeground();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$appForegroundHash() => r'cbc31732fa33e8b8694ad4125246257ef9401d42';

/// True while the app is in the foreground / the browser tab is visible.

abstract class _$AppForeground extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// Increments once per [interval] while [appForegroundProvider] is true.
///
/// Uses [ref.listen] (not [ref.watch]) so pausing the app does not rebuild
/// this provider and reset the timer. The first increment is after one
/// interval; the watching provider's own first `build` is the mount fetch.

@ProviderFor(ForegroundPoll)
const foregroundPollProvider = ForegroundPollFamily._();

/// Increments once per [interval] while [appForegroundProvider] is true.
///
/// Uses [ref.listen] (not [ref.watch]) so pausing the app does not rebuild
/// this provider and reset the timer. The first increment is after one
/// interval; the watching provider's own first `build` is the mount fetch.
final class ForegroundPollProvider
    extends $NotifierProvider<ForegroundPoll, int> {
  /// Increments once per [interval] while [appForegroundProvider] is true.
  ///
  /// Uses [ref.listen] (not [ref.watch]) so pausing the app does not rebuild
  /// this provider and reset the timer. The first increment is after one
  /// interval; the watching provider's own first `build` is the mount fetch.
  const ForegroundPollProvider._({
    required ForegroundPollFamily super.from,
    required Duration super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'foregroundPollProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$foregroundPollHash();

  @override
  String toString() {
    return r'foregroundPollProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ForegroundPoll create() => ForegroundPoll();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ForegroundPollProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$foregroundPollHash() => r'8a83c5775aeee3f651c8f1a983111dc171533063';

/// Increments once per [interval] while [appForegroundProvider] is true.
///
/// Uses [ref.listen] (not [ref.watch]) so pausing the app does not rebuild
/// this provider and reset the timer. The first increment is after one
/// interval; the watching provider's own first `build` is the mount fetch.

final class ForegroundPollFamily extends $Family
    with $ClassFamilyOverride<ForegroundPoll, int, int, int, Duration> {
  const ForegroundPollFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'foregroundPollProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  /// Increments once per [interval] while [appForegroundProvider] is true.
  ///
  /// Uses [ref.listen] (not [ref.watch]) so pausing the app does not rebuild
  /// this provider and reset the timer. The first increment is after one
  /// interval; the watching provider's own first `build` is the mount fetch.

  ForegroundPollProvider call(Duration interval) =>
      ForegroundPollProvider._(argument: interval, from: this);

  @override
  String toString() => r'foregroundPollProvider';
}

/// Increments once per [interval] while [appForegroundProvider] is true.
///
/// Uses [ref.listen] (not [ref.watch]) so pausing the app does not rebuild
/// this provider and reset the timer. The first increment is after one
/// interval; the watching provider's own first `build` is the mount fetch.

abstract class _$ForegroundPoll extends $Notifier<int> {
  late final _$args = ref.$arg as Duration;
  Duration get interval => _$args;

  int build(Duration interval);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
