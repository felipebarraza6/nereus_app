import 'package:flutter/material.dart';

/// Design tokens for Nereus glass-light.
abstract final class NereusTokens {
  static const Color teal = Color(0xFF0F766E);
  static const Color tealBright = Color(0xFF14B8A6);
  static const Color mint = Color(0xFF5EEAD4);
  static const Color mist = Color(0xFFE7F6F3);
  static const Color foam = Color(0xFFF7FCFB);
  static const Color ink = Color(0xFF0F2A2C);
  static const Color inkMuted = Color(0xFF3F5B5E);
  static const Color coral = Color(0xFFE11D48);
  static const Color amber = Color(0xFFD97706);
  static const Color lagoon = Color(0xFF0284C7);

  static const Color darkCanvas = Color(0xFF071416);
  static const Color darkPanel = Color(0xFF102426);
  static const Color darkInk = Color(0xFFE7F4F3);

  static const double radiusSm = 12;
  static const double radiusMd = 18;
  static const double radiusLg = 28;
  static const double radiusPill = 999;

  static const double spaceXs = 4;
  static const double spaceSm = 8;
  static const double spaceMd = 16;
  static const double spaceLg = 24;
  static const double spaceXl = 32;

  static const double blurSigma = 22;
  static const double glassOpacity = 0.78;
  static const double glassOpacityDark = 0.22;
  static const double borderWidth = 1;

  static const Duration motionFast = Duration(milliseconds: 180);
  static const Duration motion = Duration(milliseconds: 280);

  static const List<BoxShadow> elevation1 = [
    BoxShadow(
      color: Color(0x140F766E),
      blurRadius: 18,
      offset: Offset(0, 8),
    ),
  ];

  static const List<BoxShadow> elevation2 = [
    BoxShadow(
      color: Color(0x1A0F2A2C),
      blurRadius: 28,
      offset: Offset(0, 14),
    ),
  ];
}
