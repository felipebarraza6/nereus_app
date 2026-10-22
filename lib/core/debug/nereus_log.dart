import 'package:flutter/foundation.dart';

void nereusLog(String where, Object error, [StackTrace? stack]) {
  if (kDebugMode) {
    debugPrint('Nereus[$where] $error');
    if (stack != null) debugPrint('$stack');
  }
}
