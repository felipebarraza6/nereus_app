import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nereus_app/core/polling/foreground_poll.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/home/providers/dashboard_provider.dart';
import 'package:nereus_app/features/telemetry/data/telemetry_repository.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

class _FakeTelemetry extends Fake implements TelemetryRepository {
  int overviewCalls = 0;

  @override
  Future<DeviceOverview> overview({bool allowStale = true}) async {
    overviewCalls += 1;
    return const DeviceOverview(online: 3, offline: 1, openAlerts: 2);
  }
}

class _SessionOverride extends Session {
  @override
  Future<AuthSession> build() async => const AuthSession(
        token: 't',
        branchId: '1',
      );
}

class _ForegroundOverride extends AppForeground {
  @override
  bool build() => true;
}

class _Probe extends ConsumerWidget {
  const _Probe();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(dashboardProvider);
    return const SizedBox.shrink();
  }
}

void main() {
  testWidgets('overview is fetched once on mount and not again within 25s',
      (tester) async {
    final repo = _FakeTelemetry();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sessionProvider.overrideWith(_SessionOverride.new),
          telemetryRepositoryProvider.overrideWithValue(repo),
          appForegroundProvider.overrideWith(_ForegroundOverride.new),
        ],
        child: const MaterialApp(home: _Probe()),
      ),
    );
    await tester.pump();
    await tester.pump();
    expect(repo.overviewCalls, 1);

    await tester.pump(const Duration(seconds: 25));
    expect(repo.overviewCalls, 1);

    await tester.pump(const Duration(seconds: 5));
    expect(repo.overviewCalls, 2);
  });
}
