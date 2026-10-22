import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/tour/presentation/tour_screen.dart';

void main() {
  testWidgets('recorrido stepper advances and links to catalog', (tester) async {
    final router = GoRouter(
      initialLocation: '/tour',
      routes: [
        GoRoute(path: '/tour', builder: (_, __) => const TourScreen()),
        GoRoute(path: '/catalog', builder: (_, __) => const Text('catalogo')),
        GoRoute(path: '/inventory', builder: (_, __) => const Text('inventario')),
        GoRoute(path: '/clients', builder: (_, __) => const Text('clientes')),
        GoRoute(path: '/devices', builder: (_, __) => const Text('operacion')),
        GoRoute(path: '/home', builder: (_, __) => const Text('inicio')),
      ],
    );
    await tester.pumpWidget(
      MaterialApp.router(
        theme: AppTheme.light(),
        routerConfig: router,
      ),
    );
    expect(find.textContaining('Crear producto IoT'), findsOneWidget);
    await tester.tap(find.text('Siguiente'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Unidad de inventario'), findsOneWidget);
    expect(find.textContaining('no tiene endpoint REST'), findsOneWidget);
    await tester.tap(find.text('Anterior'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Ir al catálogo'));
    await tester.pumpAndSettle();
    expect(find.text('catalogo'), findsOneWidget);
  });
}
