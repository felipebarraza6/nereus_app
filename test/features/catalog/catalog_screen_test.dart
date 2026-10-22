import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/presentation/catalog_screen.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';

void main() {
  testWidgets('catalog hides create for client role', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sessionProvider.overrideWith(_ClientSession.new),
          productsProvider().overrideWith(
            (ref) async => const [
              ProductItem(id: '9', name: 'SmartHydro MQTT', productType: 'IOT'),
            ],
          ),
        ],
        child: MaterialApp(
          theme: AppTheme.light(),
          home: const CatalogScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('SmartHydro MQTT'), findsOneWidget);
    expect(find.text('Producto'), findsNothing);
  });

  testWidgets('catalog shows create for admin', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sessionProvider.overrideWith(_AdminSession.new),
          productsProvider().overrideWith(
            (ref) async => const [
              ProductItem(id: '9', name: 'SmartHydro MQTT', productType: 'IOT'),
            ],
          ),
        ],
        child: MaterialApp(
          theme: AppTheme.light(),
          home: const CatalogScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Producto'), findsWidgets);
  });
}

class _ClientSession extends Session {
  @override
  AuthSession build() => const AuthSession(
        token: 't',
        branchId: '1',
        enabledApps: ['inventory'],
        branches: [BranchAssignment(branchId: 1, roleCode: 'CL')],
      );
}

class _AdminSession extends Session {
  @override
  AuthSession build() => const AuthSession(
        token: 't',
        branchId: '1',
        enabledApps: ['inventory'],
        branches: [BranchAssignment(branchId: 1, roleCode: 'ADM')],
      );
}
