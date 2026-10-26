import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/tokens.dart';

/// Crisp shadcn/ui + `nereus_smarthydro` theme (zero Material 3 bloat).
abstract final class AppTheme {
  static ThemeData light() {
    const scheme = ColorScheme(
      brightness: Brightness.light,
      primary: NereusTokens.navy,
      onPrimary: Colors.white,
      primaryContainer: NereusTokens.surface2,
      onPrimaryContainer: NereusTokens.navy,
      secondary: NereusTokens.hydroBlue,
      onSecondary: Colors.white,
      secondaryContainer: NereusTokens.surface2,
      onSecondaryContainer: NereusTokens.navy,
      tertiary: NereusTokens.hydroOlive,
      onTertiary: Colors.white,
      error: NereusTokens.coral,
      onError: Colors.white,
      surface: NereusTokens.surface,
      onSurface: NereusTokens.ink,
      onSurfaceVariant: NereusTokens.inkMuted,
      surfaceContainerHighest: NereusTokens.surface2,
      outline: NereusTokens.line,
      outlineVariant: NereusTokens.line,
    );
    return _theme(scheme, dark: false);
  }

  static ThemeData dark() {
    const scheme = ColorScheme(
      brightness: Brightness.dark,
      primary: NereusTokens.mint,
      onPrimary: NereusTokens.darkCanvas,
      primaryContainer: NereusTokens.darkRaised,
      onPrimaryContainer: NereusTokens.darkInk,
      secondary: Color(0xFF38BDF8),
      onSecondary: NereusTokens.darkCanvas,
      secondaryContainer: NereusTokens.darkRaised,
      onSecondaryContainer: NereusTokens.darkInk,
      tertiary: NereusTokens.hydroLime,
      onTertiary: NereusTokens.darkCanvas,
      error: Color(0xFFFB7185),
      onError: NereusTokens.darkCanvas,
      surface: NereusTokens.darkPanel,
      onSurface: NereusTokens.darkInk,
      onSurfaceVariant: NereusTokens.darkMuted,
      surfaceContainerHighest: NereusTokens.darkRaised,
      outline: NereusTokens.darkLine,
      outlineVariant: NereusTokens.darkLine,
    );
    return _theme(scheme, dark: true);
  }

  static ThemeData _theme(ColorScheme scheme, {required bool dark}) {
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final surface = dark ? NereusTokens.darkPanel : NereusTokens.surface;
    final surface2 = dark ? NereusTokens.darkRaised : NereusTokens.surface2;

    final text = TextTheme(
      displaySmall: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.7,
        color: scheme.onSurface,
        height: 1.12,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.5,
        color: scheme.onSurface,
        height: 1.18,
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.2,
        color: scheme.onSurface,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: -0.1,
        color: scheme.onSurface,
      ),
      bodyLarge: TextStyle(
        fontSize: 14,
        height: 1.5,
        color: scheme.onSurface,
      ),
      bodyMedium: TextStyle(
        fontSize: 13,
        height: 1.45,
        color: muted,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        height: 1.4,
        color: muted,
      ),
      labelLarge: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1,
        color: scheme.onSurface,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2,
        color: muted,
      ),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      textTheme: text,
      fontFamily: 'Inter',
      fontFamilyFallback: const ['system-ui', 'Roboto', 'sans-serif'],
      scaffoldBackgroundColor: dark ? NereusTokens.darkCanvas : NereusTokens.bg,
      visualDensity: VisualDensity.compact,
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      hoverColor: surface2.withValues(alpha: 0.65),
      dividerColor: line,
      dividerTheme: DividerThemeData(
        color: line,
        thickness: 1,
        space: 1,
      ),
      cardTheme: CardThemeData(
        color: surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
          side: BorderSide(color: line),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: surface,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
          side: BorderSide(color: line),
        ),
        titleTextStyle: text.titleLarge,
        contentTextStyle: text.bodyMedium,
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: surface,
        elevation: 4,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          side: BorderSide(color: line),
        ),
      ),
      dataTableTheme: DataTableThemeData(
        headingTextStyle: text.labelSmall,
        dataTextStyle: text.bodyMedium?.copyWith(color: scheme.onSurface),
        headingRowHeight: 36,
        dataRowMinHeight: 38,
        dataRowMaxHeight: 46,
        dividerThickness: 1,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        foregroundColor: scheme.onSurface,
        titleTextStyle: text.titleLarge,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        isDense: true,
        fillColor: surface,
        hintStyle: TextStyle(color: muted.withValues(alpha: 0.7), fontSize: 13),
        labelStyle: TextStyle(
          color: muted,
          fontSize: 12.5,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          borderSide: BorderSide(color: line),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          borderSide: BorderSide(color: line),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          borderSide: BorderSide(color: scheme.primary, width: 1.4),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          borderSide: BorderSide(color: scheme.error),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 11,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          elevation: 0,
          backgroundColor: scheme.primary,
          foregroundColor: scheme.onPrimary,
          minimumSize: const Size(0, 38),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          textStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          backgroundColor: surface,
          foregroundColor: scheme.onSurface,
          minimumSize: const Size(0, 38),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          side: BorderSide(color: line),
          textStyle: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: scheme.onSurface,
          minimumSize: const Size(0, 34),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          textStyle: const TextStyle(
            fontSize: 12.5,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(NereusTokens.radiusSm),
          ),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: surface,
        surfaceTintColor: Colors.transparent,
        indicatorColor: scheme.primary,
        iconTheme: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return IconThemeData(color: scheme.onPrimary, size: 18);
          }
          return IconThemeData(color: muted, size: 18);
        }),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final selected = states.contains(WidgetState.selected);
          return TextStyle(
            fontSize: 11,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
            color: selected ? scheme.onSurface : muted,
          );
        }),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: surface,
        selectedColor: scheme.primary,
        secondarySelectedColor: scheme.primary,
        checkmarkColor: scheme.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        labelStyle: TextStyle(
          color: scheme.onSurface,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
        secondaryLabelStyle: TextStyle(
          color: scheme.onPrimary,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        side: BorderSide(color: line),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
        ),
        showCheckmark: false,
      ),
    );
  }
}
