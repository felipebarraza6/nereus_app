import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';
import 'package:nereus_app/features/strom/presentation/strom_projects_screen.dart';
import 'package:nereus_app/features/strom/providers/strom_providers.dart';

void main() {
  testWidgets('strom lists a project and filters support', (tester) async {
    const projects = [
      StromProject(
        id: 'p1',
        subject: 'Instalación Norte',
        ticketNumber: 'T-1',
        status: 'OPEN',
        typeName: 'Proyecto',
      ),
      StromProject(
        id: 'p2',
        subject: 'Falla logger',
        ticketNumber: 'T-2',
        status: 'OPEN',
        typeName: 'Soporte',
      ),
    ];
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          stromProjectsProvider.overrideWith((ref, search) async => projects),
        ],
        child: MaterialApp.router(
          theme: AppTheme.light(),
          routerConfig: GoRouter(
            routes: [
              GoRoute(path: '/', builder: (_, __) => const StromProjectsScreen()),
              GoRoute(
                path: '/strom/:id',
                builder: (_, __) => const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Instalación Norte'), findsOneWidget);
    expect(find.text('Falla logger'), findsOneWidget);

    await tester.tap(find.text('Soporte'));
    await tester.pumpAndSettle();
    expect(find.text('Falla logger'), findsOneWidget);
    expect(find.text('Instalación Norte'), findsNothing);
  });
}
