import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/config/app_config.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/fichas/data/fixture_ficha_repository.dart';
import 'package:nereus_app/features/fichas/data/fixture_levantamiento_repository.dart';
import 'package:nereus_app/features/fichas/data/fixture_store.dart';
import 'package:nereus_app/features/fichas/domain/ensure_water_templates.dart';
import 'package:nereus_app/features/fichas/presentation/fichas_screen.dart';

void main() {
  testWidgets('fichas screen shows tenencias and captacion sections', (tester) async {
    final store = FixtureStore.seeded();
    final fichas = FixtureFichaRepository(store);
    final levantamientos = FixtureLevantamientoRepository(store);
    await ensureWaterTemplates(fichas: fichas, levantamientos: levantamientos);

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          appConfigProvider.overrideWithValue(
            const AppConfig(debug: true, dataMode: NereusDataMode.fixture),
          ),
          fixtureStoreProvider.overrideWithValue(store),
          dataModeProvider.overrideWithValue(NereusDataMode.fixture),
          fichaRepositoryProvider.overrideWithValue(fichas),
          levantamientoRepositoryProvider.overrideWithValue(levantamientos),
          sessionProvider.overrideWith(_AdminSession.new),
        ],
        child: MaterialApp(
          theme: AppTheme.light(),
          home: const FichasScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Tenencias'), findsWidgets);
    expect(find.text('Captación'), findsWidgets);
    expect(find.textContaining('{id:'), findsNothing);
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
