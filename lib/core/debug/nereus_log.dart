import 'package:flutter/foundation.dart';

void nereusLog(String where, Object error, [StackTrace? stack]) {
  debugPrint('Nereus[$where] $error');
  if (kDebugMode && stack != null) {
    debugPrint('$stack');
  }
}
