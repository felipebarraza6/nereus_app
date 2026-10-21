import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/presentation/login_screen.dart';

void main() {
  testGoldens('login glass light', (tester) async {
    await tester.pumpWidgetBuilder(
      const TickerMode(enabled: false, child: LoginScreen()),
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(390, 844),
    );
    await screenMatchesGolden(tester, 'login_light');
  });
}
