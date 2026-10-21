import 'package:flutter/material.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_controller.g.dart';

class AppSettings {
  const AppSettings({
    this.themeMode = ThemeMode.system,
    this.locale = const Locale('es', 'CL'),
  });

  final ThemeMode themeMode;
  final Locale locale;
}

@Riverpod(keepAlive: true)
class Settings extends _$Settings {
  static const themeKey = 'settings.theme';
  static const localeKey = 'settings.locale';

  @override
  AppSettings build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    final theme = prefs.getString(themeKey);
    final locale = prefs.getString(localeKey) ?? 'es_CL';
    return AppSettings(
      themeMode: switch (theme) {
        'light' => ThemeMode.light,
        'dark' => ThemeMode.dark,
        _ => ThemeMode.system,
      },
      locale: locale.startsWith('en')
          ? const Locale('en')
          : const Locale('es', 'CL'),
    );
  }

  Future<void> setTheme(ThemeMode mode) async {
    await ref.read(sharedPreferencesProvider).setString(
          themeKey,
          switch (mode) {
            ThemeMode.light => 'light',
            ThemeMode.dark => 'dark',
            ThemeMode.system => 'system',
          },
        );
    state = AppSettings(themeMode: mode, locale: state.locale);
  }

  Future<void> setLocale(Locale locale) async {
    await ref.read(sharedPreferencesProvider).setString(
          localeKey,
          locale.countryCode == null
              ? locale.languageCode
              : '${locale.languageCode}_${locale.countryCode}',
        );
    state = AppSettings(themeMode: state.themeMode, locale: locale);
  }
}
