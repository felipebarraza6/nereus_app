import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:nereus_app/core/config/app_config.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/presentation/login_screen.dart';

void main() {
  testGoldens('login glass light', (tester) async {
    await tester.pumpWidgetBuilder(
      ProviderScope(
        overrides: [
          appConfigProvider.overrideWithValue(const AppConfig()),
        ],
        child: const TickerMode(enabled: false, child: LoginScreen()),
      ),
      wrapper: materialAppWrapper(theme: AppTheme.light()),
      surfaceSize: const Size(390, 844),
    );
    await screenMatchesGolden(tester, 'login_light');
  });
}
