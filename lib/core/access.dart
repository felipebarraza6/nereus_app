import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';

/// Module keys as returned in `permissions.enabled_apps`.
abstract final class NereusModules {
  static const inventory = 'inventory';
  static const customers = 'customers';
  static const iotTelemetry = 'iot_telemetry';
  static const equipment = 'equipment';
  static const support = 'support';
  static const branches = 'branches';
  static const accounts = 'accounts';
}

class Access {
  const Access(this.session);

  final AuthSession? session;

  bool get isAuthenticated => session?.isAuthenticated ?? false;

  bool get isClient => session?.isClient ?? true;

  bool get isSuperuser => session?.user?.isSuperuser ?? false;

  bool moduleEnabled(String module) {
    if (isSuperuser) return true;
    final apps = session?.enabledApps ?? const [];
    if (apps.isEmpty) return true;
    return apps.contains(module);
  }

  bool canRead(String module) => isAuthenticated && moduleEnabled(module);

  bool canWrite(String module) {
    if (!canRead(module)) return false;
    if (isClient) return false;
    return true;
  }
}
