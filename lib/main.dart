import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:nereus_app/app.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/alerts/data/alert_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();
  final prefs = await SharedPreferences.getInstance();
  final notifications = AlertNotifications();
  await notifications.init();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: const NereusApp(),
    ),
  );
}
