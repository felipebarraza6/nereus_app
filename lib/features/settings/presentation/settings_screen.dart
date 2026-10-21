import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/features/settings/providers/settings_controller.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    return Scaffold(
      appBar: const GlassAppBar(title: Text('Ajustes')),
      body: ListView(
        padding: const EdgeInsets.all(NereusTokens.spaceMd),
        children: [
          GlassCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Tema'),
                RadioGroup<ThemeMode>(
                  groupValue: settings.themeMode,
                  onChanged: (value) {
                    if (value != null) {
                      ref.read(settingsProvider.notifier).setTheme(value);
                    }
                  },
                  child: const Column(
                    children: [
                      RadioListTile<ThemeMode>(
                        value: ThemeMode.system,
                        title: Text('Sistema'),
                      ),
                      RadioListTile<ThemeMode>(
                        value: ThemeMode.light,
                        title: Text('Claro'),
                      ),
                      RadioListTile<ThemeMode>(
                        value: ThemeMode.dark,
                        title: Text('Oscuro'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          GlassCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Idioma'),
                RadioGroup<Locale>(
                  groupValue: settings.locale,
                  onChanged: (value) {
                    if (value != null) {
                      ref.read(settingsProvider.notifier).setLocale(value);
                    }
                  },
                  child: const Column(
                    children: [
                      RadioListTile<Locale>(
                        value: Locale('es', 'CL'),
                        title: Text('Español (Chile)'),
                      ),
                      RadioListTile<Locale>(
                        value: Locale('en'),
                        title: Text('English'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
