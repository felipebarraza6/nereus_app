import 'package:flutter/material.dart';

/// Design tokens for IKOLU3 · Smart Hydro (`nereus_smarthydro` + shadcn/ui).
///
/// Exact CSS custom properties from `nereus_smarthydro/src/styles.css`:
/// - `--color-bg`: `#F4F6F8`
/// - `--color-surface`: `#FFFFFF`
/// - `--color-surface-2`: `#EEF1F5`
/// - `--color-fg`: `#193665`
/// - `--color-muted`: `#5D6672`
/// - `--color-line`: `#E1E6EE`
/// - `--color-primary`: `#193665`
/// - `--color-accent`: `#D6DB12`
/// - `--color-ok`: `#638110`
/// - `--color-warn`: `#8A5A12`
abstract final class NereusTokens {
  // Smart Hydro / IKOLU3 primary palette
  static const Color navy = Color(0xFF193665);
  static const Color hydroBlue = Color(0xFF2D5FAE);
  static const Color hydroLime = Color(0xFFD6DB12);
  static const Color hydroOlive = Color(0xFF638110);

  // Legacy aliases mapped to IKOLU3 / shadcn palette so all screens stay cohesive
  static const Color teal = Color(0xFF193665);
  static const Color tealBright = Color(0xFF2D5FAE);
  static const Color mint = Color(0xFF38D9C0);
  static const Color seaGreen = Color(0xFF638110);

  // Light surfaces (exact nereus_smarthydro/src/styles.css)
  static const Color bg = Color(0xFFF4F6F8);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surface2 = Color(0xFFEEF1F5);
  static const Color line = Color(0xFFE1E6EE);

  static const Color foam = bg;
  static const Color cloud = surface;
  static const Color mist = surface2;

  // Typography (exact nereus_smarthydro/src/styles.css)
  static const Color ink = Color(0xFF193665);
  static const Color inkMuted = Color(0xFF5D6672);
  static const Color inkFaint = Color(0xFF8A94A0);

  // Semantics
  static const Color emerald = Color(0xFF638110);
  static const Color coral = Color(0xFFDC2626);
  static const Color danger = coral;
  static const Color amber = Color(0xFF8A5A12);
  static const Color lagoon = Color(0xFF2D5FAE);
  static const Color slateMuted = inkMuted;

  // Dark theme (exact nereus_smarthydro screenshots/centro.png)
  static const Color darkCanvas = Color(0xFF071318);
  static const Color darkPanel = Color(0xFF0D1F26);
  static const Color darkRaised = Color(0xFF122932);
  static const Color darkLine = Color(0xFF1B353E);
  static const Color darkInk = Color(0xFFEAF4F4);
  static const Color darkMuted = Color(0xFF8AB0B8);
  static const Color darkFaint = Color(0xFF5E838B);

  // Radius (shadcn/ui + nereus_smarthydro --radius-panel: 1rem = 16px)
  static const double radiusSm = 8;
  static const double radiusMd = 12;
  static const double radiusLg = 16;
  static const double radiusXl = 22;
  static const double radiusPill = 999;

  // Spacing
  static const double spaceXs = 4;
  static const double spaceSm = 8;
  static const double spaceMd = 16;
  static const double spaceLg = 24;
  static const double spaceXl = 32;
  static const double space2xl = 48;

  // Surface / Border
  static const double blurSigma = 16;
  static const double glassOpacity = 0.98;
  static const double glassOpacityDark = 0.96;
  static const double borderWidth = 1;

  // Motion
  static const Duration fast = Duration(milliseconds: 150);
  static const Duration motionFast = fast;
  static const Duration motion = Duration(milliseconds: 220);

  // Crisp shadcn shadow-sm
  static const List<BoxShadow> elevation1 = [
    BoxShadow(
      color: Color(0x0A193665),
      blurRadius: 3,
      offset: Offset(0, 1),
    ),
  ];

  static const List<BoxShadow> elevation2 = [
    BoxShadow(
      color: Color(0x14071318),
      blurRadius: 8,
      offset: Offset(0, 2),
    ),
  ];
}
