import 'dart:async';

import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_provider.g.dart';

@riverpod
class Dashboard extends _$Dashboard {
  Timer? _timer;

  @override
  Future<DeviceOverview> build() async {
    ref.onDispose(() => _timer?.cancel());
    final session = ref.watch(sessionProvider).value;
    if (session?.branchId == null) {
      return const DeviceOverview();
    }
    _timer ??= Timer.periodic(const Duration(seconds: 30), (_) {
      ref.invalidateSelf();
    });
    return ref.watch(telemetryRepositoryProvider).overview();
  }
}
