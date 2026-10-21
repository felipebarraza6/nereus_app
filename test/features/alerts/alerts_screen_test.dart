import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/alerts/data/alerts_repository.dart';
import 'package:nereus_app/features/alerts/presentation/alerts_screen.dart';
import 'package:nereus_app/features/alerts/providers/alerts_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

void main() {
  testWidgets('alerts empty state', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          alertsProvider.overrideWith((ref) async => <AlertItem>[]),
          alertBadgeProvider.overrideWith(_Badge.new),
        ],
        child: const MaterialApp(
          home: Scaffold(body: AlertsScreen()),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('No hay alertas con este filtro.'), findsOneWidget);
  });
}

class _Badge extends AlertBadge {
  @override
  Future<AlertSummary> build() async => const AlertSummary();
}
