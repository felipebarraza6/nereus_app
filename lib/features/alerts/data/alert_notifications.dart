import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

class AlertNotifications {
  AlertNotifications({FlutterLocalNotificationsPlugin? plugin})
      : _plugin = plugin ?? FlutterLocalNotificationsPlugin();

  final FlutterLocalNotificationsPlugin _plugin;
  int? _lastOpen;

  Future<void> init() async {
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    const ios = DarwinInitializationSettings();
    await _plugin.initialize(
      const InitializationSettings(android: android, iOS: ios),
    );
  }

  Future<void> sync(AlertSummary summary) async {
    if (_lastOpen != null && summary.openUnacknowledged > _lastOpen!) {
      await _plugin.show(
        1,
        'Nereus',
        'Hay ${summary.openUnacknowledged} alertas activas',
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'alerts',
            'Alertas',
            importance: Importance.high,
          ),
          iOS: DarwinNotificationDetails(),
        ),
      );
    }
    _lastOpen = summary.openUnacknowledged;
  }
}
