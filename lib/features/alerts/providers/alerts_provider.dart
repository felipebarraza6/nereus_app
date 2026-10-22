import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/polling/foreground_poll.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/alerts/data/alerts_repository.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'alerts_provider.g.dart';

@riverpod
class AlertsFilter extends _$AlertsFilter {
  @override
  bool? build() => false;

  void setAcknowledged(bool? value) => state = value;
}

@Riverpod(retry: nereusNoRetry)
Future<List<AlertItem>> alerts(Ref ref) {
  final filter = ref.watch(alertsFilterProvider);
  return ref.watch(alertsRepositoryProvider).list(acknowledged: filter);
}

@Riverpod(keepAlive: true, retry: nereusNoRetry)
class AlertBadge extends _$AlertBadge {
  static const pollInterval = Duration(seconds: 45);

  Future<AlertSummary>? _inFlight;

  @override
  Future<AlertSummary> build() async {
    ref.watch(foregroundPollProvider(pollInterval));
    return _load();
  }

  Future<AlertSummary> _load() {
    final existing = _inFlight;
    if (existing != null) return existing;
    final future = ref.read(alertsRepositoryProvider).summary();
    _inFlight = future;
    return future.whenComplete(() {
      if (identical(_inFlight, future)) _inFlight = null;
    });
  }
}
