import 'package:flutter/material.dart';

/// Design tokens for Nereus glass-light UI.
///
/// Palette is inspired by SmartHydro's water identity: clean teal, mint,
/// mist and foam surfaces, with a dark option close to the nxord nordic
/// theme (deep charcoal with sea-green accent).
abstract final class NereusTokens {
  // Brand
  static const Color teal = Color(0xFF0F766E);
  static const Color tealBright = Color(0xFF14B8A6);
  static const Color mint = Color(0xFF5EEAD4);
  static const Color seaGreen = Color(0xFF7FB6A4);

  // Light surfaces
  static const Color mist = Color(0xFFE7F6F3);
  static const Color foam = Color(0xFFF7FCFB);
  static const Color cloud = Color(0xFFFFFFFF);

  // Text
  static const Color ink = Color(0xFF0F2A2C);
  static const Color inkMuted = Color(0xFF3F5B5E);
  static const Color inkFaint = Color(0xFF6B8A8D);

  // Semantics
  static const Color coral = Color(0xFFE11D48);
  static const Color amber = Color(0xFFD97706);
  static const Color lagoon = Color(0xFF0284C7);

  // Dark theme (nxord-style)
  static const Color darkCanvas = Color(0xFF071416);
  static const Color darkPanel = Color(0xFF102426);
  static const Color darkRaised = Color(0xFF15383A);
  static const Color darkInk = Color(0xFFE7F4F3);
  static const Color darkMuted = Color(0xFF9EC9C4);
  static const Color darkFaint = Color(0xFF7AA8A3);

  // Radius
  static const double radiusSm = 10;
  static const double radiusMd = 14;
  static const double radiusLg = 22;
  static const double radiusXl = 28;
  static const double radiusPill = 999;

  // Spacing
  static const double spaceXs = 4;
  static const double spaceSm = 8;
  static const double spaceMd = 16;
  static const double spaceLg = 24;
  static const double spaceXl = 32;
  static const double space2xl = 48;

  // Glass
  static const double blurSigma = 22;
  static const double glassOpacity = 0.82;
  static const double glassOpacityDark = 0.18;
  static const double borderWidth = 1;

  // Motion
  static const Duration motionFast = Duration(milliseconds: 180);
  static const Duration motion = Duration(milliseconds: 260);

  // Elevation
  static const List<BoxShadow> elevation1 = [
    BoxShadow(
      color: Color(0x120F766E),
      blurRadius: 16,
      offset: Offset(0, 6),
    ),
  ];

  static const List<BoxShadow> elevation2 = [
    BoxShadow(
      color: Color(0x1A0F2A2C),
      blurRadius: 28,
      offset: Offset(0, 14),
    ),
    BoxShadow(
      color: Color(0x0D0F766E),
      blurRadius: 8,
      offset: Offset(0, 2),
    ),
  ];
}
