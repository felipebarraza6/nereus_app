import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/crm/presentation/prospectos_screen.dart';
import 'package:nereus_app/features/crm/providers/crm_providers.dart';

void main() {
  testWidgets('empty prospectos offers Nuevo prospecto', (tester) async {
    await _pump(tester, _AdminSession.new);
    expect(find.text('Nuevo prospecto'), findsWidgets);
    expect(find.text('Sin prospectos'), findsOneWidget);

    await tester.tap(find.widgetWithText(FilledButton, 'Nuevo prospecto').first);
    await tester.pumpAndSettle();
    expect(find.text('Nombre'), findsOneWidget);
  });

  testWidgets('a reloaded session without a role still offers create', (tester) async {
    await _pump(tester, _TokenSession.new);
    expect(find.text('Nuevo prospecto'), findsWidgets);
  });

  testWidgets('a client does not see create', (tester) async {
    await _pump(tester, _ClientSession.new);
    expect(find.text('Nuevo prospecto'), findsNothing);
    expect(find.text('Sin prospectos'), findsOneWidget);
  });
}

Future<void> _pump(WidgetTester tester, Session Function() create) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        sessionProvider.overrideWith(create),
        leadsProvider.overrideWith((ref) async => const []),
      ],
      child: MaterialApp(
        theme: AppTheme.light(),
        home: const ProspectosScreen(),
      ),
    ),
  );
  await tester.pumpAndSettle();
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

class _TokenSession extends Session {
  @override
  FutureOr<AuthSession> build() => const AuthSession(token: 't');
}

class _ClientSession extends Session {
  @override
  FutureOr<AuthSession> build() => const AuthSession(
        token: 't',
        branchId: '1',
        branches: [BranchAssignment(branchId: 1, roleCode: 'CL')],
      );
}
