import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/features/home/presentation/home_shell.dart';
import 'package:nereus_app/features/strom/presentation/strom_chrome.dart';

void main() {
  test('operaciones lists its eight screens', () {
    final labels = [
      for (final dest in shellDestinations)
        if (dest.section == 'Strøm — Operaciones') dest.label,
    ];
    expect(labels, [
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
}
