import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/data/auth_repository.dart';
import 'package:nereus_app/features/auth/presentation/forgot_password_screen.dart';

class _FakeAuthRepository extends Fake implements AuthRepository {
  String? lastEmail;
  int calls = 0;
  Exception? toThrow;

  @override
  Future<void> forgotPassword(String email) async {
    lastEmail = email;
    calls += 1;
    final error = toThrow;
    if (error != null) {
      throw error;
    }
  }
}

void main() {
  late _FakeAuthRepository repo;

  Widget app() {
    return ProviderScope(
      overrides: [
        authRepositoryProvider.overrideWithValue(repo),
      ],
      child: TickerMode(
        enabled: false,
        child: MaterialApp(
          theme: AppTheme.light(),
          home: const ForgotPasswordScreen(),
        ),
      ),
    );
  }

  setUp(() {
    repo = _FakeAuthRepository();
  });

  testWidgets('validates email before calling the API', (tester) async {
    await tester.pumpWidget(app());
    await tester.tap(find.byKey(const Key('forgot-password-submit')));
    await tester.pump();
    expect(find.text('Ingresa un correo válido'), findsOneWidget);
    expect(repo.calls, 0);
  });

  testWidgets('shows success snackbar after send', (tester) async {
    await tester.pumpWidget(app());
    await tester.enterText(
      find.byKey(const Key('forgot-password-email')),
      'ana@smarthydro.app',
    );
    await tester.tap(find.byKey(const Key('forgot-password-submit')));
    await tester.pump();
    await tester.pump();
    expect(repo.calls, 1);
    expect(repo.lastEmail, 'ana@smarthydro.app');
    expect(
      find.text(ForgotPasswordScreen.successMessage),
      findsWidgets,
    );
    expect(find.byKey(const Key('forgot-password-success')), findsOneWidget);
  });

  testWidgets('shows visible error when the API fails', (tester) async {
    repo.toThrow = const ApiError(message: 'Demasiados intentos. Espera un momento.');
    await tester.pumpWidget(app());
    await tester.enterText(
      find.byKey(const Key('forgot-password-email')),
      'ana@smarthydro.app',
    );
    await tester.tap(find.byKey(const Key('forgot-password-submit')));
    await tester.pump();
    expect(find.byKey(const Key('forgot-password-error')), findsOneWidget);
    expect(find.text('Demasiados intentos. Espera un momento.'), findsOneWidget);
    expect(find.byKey(const Key('forgot-password-success')), findsNothing);
  });
}
