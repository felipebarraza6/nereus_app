import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/customers/presentation/clients_screen.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/tickets/domain/ticket_models.dart';

void main() {
  testWidgets('clients list renders names, not raw maps', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          clientsProvider.overrideWith(
            (ref) async => const [
              ClientItem(
                id: '41',
                name: 'Agricola Nahuen',
                email: 'contacto@nahuen.cl',
              ),
            ],
          ),
        ],
        child: MaterialApp(
          theme: AppTheme.light(),
          home: const ClientsScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Agricola Nahuen'), findsOneWidget);
    expect(find.textContaining('{id:'), findsNothing);
  });
}
