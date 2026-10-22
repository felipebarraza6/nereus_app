import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/data/auth_repository.dart';
import 'package:nereus_app/features/auth/presentation/reset_password_screen.dart';

class _FakeAuthRepository extends Fake implements AuthRepository {
  String? token;
  String? newPassword;
  String? confirmPassword;
  int calls = 0;
  Exception? toThrow;

  @override
  Future<void> resetPasswordConfirm({
    required String token,
    required String newPassword,
    required String confirmPassword,
  }) async {
    this.token = token;
    this.newPassword = newPassword;
    this.confirmPassword = confirmPassword;
    calls += 1;
    final error = toThrow;
    if (error != null) {
      throw error;
    }
  }
}

void main() {
  late _FakeAuthRepository repo;

  Widget app({String token = 'reset-token'}) {
    final router = GoRouter(
      initialLocation: '/reset-password/$token',
      routes: [
        GoRoute(
          path: '/login',
          builder: (_, __) => const Scaffold(
            body: Text('login-screen'),
          ),
        ),
        GoRoute(
          path: '/reset-password/:token',
          builder: (_, state) => ResetPasswordScreen(
            token: state.pathParameters['token'] ?? '',
          ),
        ),
      ],
    );
    return ProviderScope(
      overrides: [
        authRepositoryProvider.overrideWithValue(repo),
      ],
      child: TickerMode(
        enabled: false,
        child: MaterialApp.router(
          theme: AppTheme.light(),
          routerConfig: router,
        ),
      ),
    );
  }

  setUp(() {
    repo = _FakeAuthRepository();
  });

  testWidgets('validates length and matching passwords', (tester) async {
    await tester.pumpWidget(app());
    await tester.tap(find.byKey(const Key('reset-password-submit')));
    await tester.pump();
    expect(find.text('Mínimo 8 caracteres'), findsOneWidget);
    expect(repo.calls, 0);

    await tester.enterText(
      find.byKey(const Key('reset-password-new')),
      'password1',
    );
    await tester.enterText(
      find.byKey(const Key('reset-password-confirm')),
      'password2',
    );
    await tester.tap(find.byKey(const Key('reset-password-submit')));
    await tester.pump();
    expect(find.text('Las contraseñas no coinciden'), findsOneWidget);
    expect(repo.calls, 0);
  });

  testWidgets('shows a strength hint as the password grows', (tester) async {
    await tester.pumpWidget(app());
    expect(find.text('Usa al menos 8 caracteres'), findsOneWidget);

    await tester.enterText(
      find.byKey(const Key('reset-password-new')),
      'short',
    );
    await tester.pump();
    expect(find.text('Muy corta — mínimo 8 caracteres'), findsOneWidget);

    await tester.enterText(
      find.byKey(const Key('reset-password-new')),
      'password1',
    );
    await tester.pump();
    expect(find.text('Contraseña aceptable'), findsOneWidget);

    await tester.enterText(
      find.byKey(const Key('reset-password-new')),
      'password1234',
    );
    await tester.pump();
    expect(find.text('Contraseña fuerte'), findsOneWidget);
  });

  testWidgets('toggles password visibility', (tester) async {
    await tester.pumpWidget(app());
    TextField field() {
      return tester.widget<TextField>(
        find.descendant(
          of: find.byKey(const Key('reset-password-new')),
          matching: find.byType(TextField),
        ),
      );
    }

    expect(field().obscureText, isTrue);
    await tester.tap(find.byKey(const Key('reset-password-toggle-new')));
    await tester.pump();
    expect(field().obscureText, isFalse);
  });

  testWidgets('shows the API error message', (tester) async {
    repo.toThrow = const ApiError(message: 'Token inválido o expirado.');
    await tester.pumpWidget(app());
    await tester.enterText(
      find.byKey(const Key('reset-password-new')),
      'password1',
    );
    await tester.enterText(
      find.byKey(const Key('reset-password-confirm')),
      'password1',
    );
    await tester.tap(find.byKey(const Key('reset-password-submit')));
    await tester.pump();
    expect(find.byKey(const Key('reset-password-error')), findsOneWidget);
    expect(find.text('Token inválido o expirado.'), findsOneWidget);
    expect(repo.calls, 1);
    expect(repo.token, 'reset-token');
  });

  testWidgets('shows success snackbar and goes to login', (tester) async {
    await tester.pumpWidget(app(token: 'abc123'));
    await tester.enterText(
      find.byKey(const Key('reset-password-new')),
      'password1',
    );
    await tester.enterText(
      find.byKey(const Key('reset-password-confirm')),
      'password1',
    );
    await tester.tap(find.byKey(const Key('reset-password-submit')));
    await tester.pump();
    await tester.pump();
    expect(repo.calls, 1);
    expect(repo.token, 'abc123');
    expect(repo.newPassword, 'password1');
    expect(repo.confirmPassword, 'password1');
    expect(find.text(ResetPasswordScreen.successMessage), findsWidgets);
    expect(find.text('login-screen'), findsOneWidget);
  });
}
