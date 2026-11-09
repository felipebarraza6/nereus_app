import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/features/home/presentation/home_shell.dart';
import 'package:nereus_app/features/home/presentation/shell_sidebar.dart';
import 'package:nereus_app/features/strom/presentation/strom_chrome.dart';
import 'package:nereus_app/features/strom/presentation/strom_dev_screen.dart';

void main() {
  test('operaciones lists its eight screens', () {
    final labels = [
      for (final dest in shellDestinations)
        if (dest.section == 'Strøm — Operaciones') dest.label,
    ];
    expect(labels, [
      'Dev',
      'Proyectos',
      'Visitas',
      'Actividades',
      'Check de terreno',
      'Check técnico',
      'Aclaraciones',
      'Indicadores',
      'Configuración',
    ]);
  });

  testWidgets('the operaciones column stays within the reading width', (tester) async {
    tester.view.physicalSize = const Size(1440, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: StromChrome(
            title: 'Proyectos',
            child: Text('Instalación Norte'),
          ),
        ),
      ),
    );
    final box = tester.getRect(find.text('Instalación Norte'));
    expect(box.width, lessThan(StromChrome.maxWidth));
    expect(box.left, greaterThan(100));
  });

  testWidgets('strom stays closed until the menu is opened', (tester) async {
    tester.view.physicalSize = const Size(1440, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ShellDesktopSidebar(
            selected: 0,
            onSelect: (_) {},
            session: null,
            onLogout: () {},
          ),
        ),
      ),
    );
    expect(find.text('Strøm — Operaciones'), findsOneWidget);
    expect(find.text('Check de terreno'), findsNothing);
    await tester.tap(find.text('Strøm — Operaciones'));
    await tester.pumpAndSettle();
    expect(find.text('Proyectos'), findsOneWidget);
    expect(find.text('Configuración'), findsOneWidget);
  });

  testWidgets('dev lists the mvp and keeps pending steps closed', (tester) async {
    tester.view.physicalSize = const Size(390, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(
      MaterialApp.router(
        routerConfig: GoRouter(
          initialLocation: '/strom/dev',
          routes: [
            GoRoute(
              path: '/strom/dev',
              builder: (_, __) => const StromDevScreen(),
            ),
            GoRoute(
              path: '/strom',
              builder: (_, __) => const Text('Pantalla de proyectos'),
            ),
          ],
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Dev'), findsWidgets);
    expect(find.text('OT técnica distinta de la visita'), findsOneWidget);
    expect(find.text('Pendiente'), findsNWidgets(2));
    await tester.tap(find.text('Proyecto'));
    await tester.pumpAndSettle();
    expect(find.text('Pantalla de proyectos'), findsOneWidget);
  });
}
