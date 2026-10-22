import 'dart:async';

import 'package:nereus_app/core/polling/foreground_poll.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_provider.g.dart';

@Riverpod(keepAlive: true, retry: nereusNoRetry)
class Dashboard extends _$Dashboard {
  static const pollInterval = Duration(seconds: 30);

  Future<DeviceOverview>? _inFlight;

  @override
  FutureOr<DeviceOverview> build() async {
    ref.watch(foregroundPollProvider(pollInterval));
    final branchId = ref.watch(sessionProvider).value?.branchId;
    if (branchId == null || branchId.isEmpty) {
      return const DeviceOverview();
    }
    return _load();
  }

  Future<DeviceOverview> _load() {
    final existing = _inFlight;
    if (existing != null) return existing;
    final future = ref.read(telemetryRepositoryProvider).overview();
    _inFlight = future;
    return future.whenComplete(() {
      if (identical(_inFlight, future)) _inFlight = null;
    });
  }
}
