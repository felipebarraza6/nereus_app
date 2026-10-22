import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/tokens.dart';

abstract final class AppTheme {
  static ThemeData light() {
    final scheme = ColorScheme.fromSeed(
      seedColor: NereusTokens.teal,
      brightness: Brightness.light,
      primary: NereusTokens.teal,
      onPrimary: Colors.white,
      secondary: NereusTokens.lagoon,
      onSecondary: Colors.white,
      tertiary: NereusTokens.tealBright,
      onTertiary: NereusTokens.ink,
      error: NereusTokens.coral,
      onError: Colors.white,
      surface: NereusTokens.foam,
      onSurface: NereusTokens.ink,
    );
    return _theme(scheme, dark: false);
  }

  static ThemeData dark() {
    const scheme = ColorScheme(
      brightness: Brightness.dark,
      primary: NereusTokens.mint,
      onPrimary: NereusTokens.ink,
      secondary: Color(0xFF7DD3FC),
      onSecondary: NereusTokens.ink,
      tertiary: NereusTokens.tealBright,
      onTertiary: NereusTokens.ink,
      error: Color(0xFFFB7185),
      onError: NereusTokens.ink,
      surface: NereusTokens.darkCanvas,
      onSurface: NereusTokens.darkInk,
      surfaceContainerHighest: NereusTokens.darkPanel,
      outline: Color(0x665EEAD4),
    );
    return _theme(scheme, dark: true);
  }

  static ThemeData _theme(ColorScheme scheme, {required bool dark}) {
    final text = TextTheme(
      displaySmall: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.8,
        color: scheme.onSurface,
        height: 1.1,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.4,
        color: scheme.onSurface,
        height: 1.15,
      ),
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.2,
        color: scheme.onSurface,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: scheme.onSurface,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        height: 1.45,
        color: scheme.onSurface,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        height: 1.45,
        color: dark ? const Color(0xFFB7D4D1) : NereusTokens.inkMuted,
      ),
      labelLarge: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.15,
      ),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      textTheme: text,
      fontFamily: 'Roboto',
      scaffoldBackgroundColor: Colors.transparent,
      visualDensity: VisualDensity.standard,
      dataTableTheme: DataTableThemeData(
        headingTextStyle: text.labelLarge,
        dataTextStyle: text.bodyMedium?.copyWith(fontSize: 13),
        headingRowHeight: 36,
        dataRowMinHeight: 36,
        dataRowMaxHeight: 44,
        dividerThickness: 0.6,
      ),
      splashFactory: InkSparkle.splashFactory,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        foregroundColor: scheme.onSurface,
        titleTextStyle: text.titleLarge,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: dark
            ? const Color(0x66FFFFFF)
            : const Color(0x99FFFFFF),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          borderSide: BorderSide(color: scheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          borderSide: BorderSide(color: scheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          borderSide: BorderSide(color: scheme.primary, width: 1.4),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: NereusTokens.spaceMd,
          vertical: 14,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(48, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          ),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: Colors.transparent,
        indicatorColor: scheme.primary.withValues(alpha: 0.16),
        labelTextStyle: WidgetStatePropertyAll(
          text.labelLarge?.copyWith(fontSize: 12),
        ),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: Colors.transparent,
        indicatorColor: scheme.primary.withValues(alpha: 0.16),
        selectedIconTheme: IconThemeData(color: scheme.primary),
      ),
      chipTheme: ChipThemeData(
        selectedColor: scheme.primary.withValues(alpha: 0.14),
        checkmarkColor: scheme.primary,
        labelStyle: TextStyle(
          color: scheme.onSurface,
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),
        secondaryLabelStyle: TextStyle(
          color: scheme.primary,
          fontWeight: FontWeight.w600,
          fontSize: 13,
        ),
        side: BorderSide(color: scheme.outline),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
        ),
        showCheckmark: false,
      ),
    );
  }
}
