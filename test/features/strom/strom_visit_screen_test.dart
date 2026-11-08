import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';
import 'package:nereus_app/features/strom/presentation/strom_visit_screen.dart';
import 'package:nereus_app/features/strom/providers/strom_providers.dart';

void main() {
  testWidgets('visit check does not offer execution without results', (tester) async {
    final visit = StromVisit(
      id: 'v1',
      number: 'OT-1',
      ticketId: 't1',
      scheduledDate: DateTime(2026, 11, 8, 10),
      items: const [
        StromActivity(
          id: 'a1',
          workOrderId: 'v1',
          description: 'Medir caudal',
        ),
      ],
    );
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          stromVisitProvider.overrideWith((ref, id) async => visit),
        ],
        child: MaterialApp(
          theme: AppTheme.light(),
          home: const StromVisitScreen(ticketId: 't1', visitId: 'v1'),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Registrar el check de terreno no cierra el proyecto.'), findsOneWidget);
    expect(find.text('Medir caudal'), findsOneWidget);
    final button = tester.widget<FilledButton>(
      find.widgetWithText(FilledButton, 'Dejar la visita ejecutada'),
    );
    expect(button.onPressed, isNull);
  });
}
