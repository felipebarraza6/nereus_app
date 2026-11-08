import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';
import 'package:nereus_app/features/strom/presentation/strom_desk.dart';
import 'package:nereus_app/features/strom/providers/strom_providers.dart';

void main() {
  testWidgets('desktop keeps the project list beside the sheet', (tester) async {
    tester.view.physicalSize = const Size(1440, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    const projects = [
      StromProject(
        id: 'p1',
        subject: 'Instalación Norte',
        ticketNumber: 'T-1042',
        status: 'OPEN',
        typeName: 'Proyecto',
        clientName: 'Agrícola Santa Rosa SpA',
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
            initialLocation: '/strom/p1',
            routes: [
              ShellRoute(
                builder: (context, state, child) => StromDesk(
                  location: state.uri.path,
                  child: child,
                ),
                routes: [
                  GoRoute(
                    path: '/strom',
                    builder: (_, __) => const SizedBox.shrink(),
                    routes: [
                      GoRoute(
                        path: ':id',
                        builder: (_, __) => const Text('Ficha del proyecto'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Instalación Norte'), findsOneWidget);
    expect(find.text('Abierto'), findsOneWidget);
    expect(find.text('Ficha del proyecto'), findsOneWidget);
  });
}
