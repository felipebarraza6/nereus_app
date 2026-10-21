import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
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

@riverpod
Future<List<AlertItem>> alerts(Ref ref) {
  final filter = ref.watch(alertsFilterProvider);
  return ref.watch(alertsRepositoryProvider).list(acknowledged: filter);
}

@riverpod
class AlertBadge extends _$AlertBadge {
  Timer? _timer;

  @override
  Future<AlertSummary> build() async {
    ref.onDispose(() => _timer?.cancel());
    _timer ??= Timer.periodic(const Duration(seconds: 45), (_) {
      ref.invalidateSelf();
    });
    return ref.watch(alertsRepositoryProvider).summary();
  }
}
