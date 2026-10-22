import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/presentation/login_screen.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';

void main() {
  testWidgets('login screen validates empty fields', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: TickerMode(
          enabled: false,
          child: MaterialApp(
            home: LoginScreen(),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Entrar'));
    await tester.pump();
    expect(find.text('Ingresa un correo válido'), findsOneWidget);
    expect(find.text('Ingresa tu contraseña'), findsOneWidget);
  });

  testWidgets('login screen shows API errors', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sessionProvider.overrideWith(_FailingSession.new),
        ],
        child: TickerMode(
          enabled: false,
          child: MaterialApp(
            theme: AppTheme.light(),
            home: const LoginScreen(),
          ),
        ),
      ),
    );
    await tester.enterText(find.byType(TextFormField).first, 'ana@smarthydro.app');
    await tester.enterText(find.byType(TextFormField).last, 'secret');
    await tester.tap(find.text('Entrar'));
    await tester.pump();
    expect(find.text('Credenciales Invalidas'), findsOneWidget);
  });
}

class _FailingSession extends Session {
  @override
  Future<AuthSession> build() async => const AuthSession();

  @override
  Future<LoginComplete> login(String email, String password) async {
    throw const ApiError(message: 'Credenciales Invalidas');
  }
}
