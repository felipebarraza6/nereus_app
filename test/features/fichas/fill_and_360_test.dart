import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/config/app_config.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/customers/domain/client_models.dart';
import 'package:nereus_app/features/fichas/data/fixture_ficha_repository.dart';
import 'package:nereus_app/features/fichas/data/fixture_levantamiento_repository.dart';
import 'package:nereus_app/features/fichas/data/fixture_store.dart';
import 'package:nereus_app/features/fichas/domain/ensure_water_templates.dart';
import 'package:nereus_app/features/fichas/domain/water_templates.dart';
import 'package:nereus_app/features/fichas/presentation/client_360_screen.dart';
import 'package:nereus_app/features/fichas/presentation/levantamiento_fill_screen.dart';

void main() {
  late FixtureStore store;
  late FixtureFichaRepository fichas;
  late FixtureLevantamientoRepository levantamientos;

  setUp(() async {
    store = FixtureStore.seeded();
    fichas = FixtureFichaRepository(store);
    levantamientos = FixtureLevantamientoRepository(store);
    await ensureWaterTemplates(fichas: fichas, levantamientos: levantamientos);
  });

  Widget wrap(Widget home) {
    return ProviderScope(
      overrides: [
        appConfigProvider.overrideWithValue(
          const AppConfig(debug: true, dataMode: NereusDataMode.fixture),
        ),
        fixtureStoreProvider.overrideWithValue(store),
        dataModeProvider.overrideWithValue(NereusDataMode.fixture),
        fichaRepositoryProvider.overrideWithValue(fichas),
        levantamientoRepositoryProvider.overrideWithValue(levantamientos),
        customerClientsProvider.overrideWith(
          (ref) async => store.clients.values.map(ClientItem.fromJson).toList(),
        ),
        sessionProvider.overrideWith(_AdminSession.new),
      ],
      child: MaterialApp(
        theme: AppTheme.light(),
        home: home,
      ),
    );
  }

  testWidgets('fill asks for a predio before applying', (tester) async {
    final template = (await levantamientos.templates()).firstWhere(
      (item) => item.name == tenenciasTemplateName,
    );
    final published = await levantamientos.publish(
      title: template.name,
      questions: template.questions,
    );

    await tester.binding.setSurfaceSize(const Size(400, 1400));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      wrap(LevantamientoFillScreen(surveyId: published.id)),
    );
    await tester.pumpAndSettle();
    expect(find.text('Ficha de tenencias'), findsOneWidget);
    expect(find.text('Caudal otorgado'), findsOneWidget);
    final submit = find.text('Guardar en la ficha');
    await tester.ensureVisible(submit);
    await tester.tap(submit);
    await tester.pump();
    expect(find.textContaining('Elige un predio'), findsOneWidget);
  });

  testWidgets('360 shows tenencias and captacion for the predio', (tester) async {
    await tester.pumpWidget(
      wrap(const Client360Screen(clientId: FixtureStore.demoClientId)),
    );
    await tester.pumpAndSettle();
    expect(find.text('Agrícola Santa Rosa SpA'), findsWidgets);
    expect(find.text('Tenencias'), findsWidgets);
    expect(find.text('Captación'), findsWidgets);
    expect(find.text('Caudal otorgado'), findsOneWidget);
    expect(find.text('Descargar PDF'), findsOneWidget);
  });
}

class _AdminSession extends Session {
  @override
  FutureOr<AuthSession> build() => const AuthSession(
        token: 't',
        branchId: '1',
        enabledApps: ['customers'],
        branches: [BranchAssignment(branchId: 1, roleCode: 'ADM')],
      );
}
