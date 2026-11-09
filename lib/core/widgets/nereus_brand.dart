import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/tokens.dart';

/// Exact vector implementation of `ikolu3-mark.svg` and `favicon.svg`
/// from `nereus_smarthydro`.
class NereusLogoMark extends StatelessWidget {
  const NereusLogoMark({
    super.key,
    this.size = 40,
    this.showBadge = false,
  });

  final double size;
  final bool showBadge;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _Ikolu3MarkPainter(dark: dark, showBadge: showBadge),
      ),
    );
  }
}

class _Ikolu3MarkPainter extends CustomPainter {
  const _Ikolu3MarkPainter({required this.dark, required this.showBadge});

  final bool dark;
  final bool showBadge;

  @override
  void paint(Canvas canvas, Size size) {
    final scale = size.width / 64.0;
    canvas
      ..save()
      ..scale(scale, scale);

    if (showBadge) {
      // Exact favicon.svg rounded navy square (64x64, rx=14, fill=#193665)
      final rrect = RRect.fromRectAndRadius(
        const Rect.fromLTWH(0, 0, 64, 64),
        const Radius.circular(14),
      );
      canvas.drawRRect(
        rrect,
        Paint()..color = const Color(0xFF193665),
      );
    }

    final onDark = showBadge || dark;
    final navyNodeColor =
        onDark ? const Color(0xFFC7D8F3) : const Color(0xFF193665);
    final linePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.7
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..color = onDark
          ? const Color(0xFFC7D8F3).withValues(alpha: 0.72)
          : const Color(0xFF193665);

    // Exact 7 path segments from ikolu3-mark.svg
    final p1 = Path()
      ..moveTo(14, 18)
      ..lineTo(32, 11)
      ..lineTo(50, 22);
    final p2 = Path()
      ..moveTo(14, 18)
      ..lineTo(20, 36)
      ..lineTo(10, 50);
    final p3 = Path()
      ..moveTo(20, 36)
      ..lineTo(40, 34)
      ..lineTo(50, 22);
    final p4 = Path()
      ..moveTo(40, 34)
      ..lineTo(52, 48)
      ..lineTo(34, 54)
      ..lineTo(10, 50);

    canvas
      ..drawPath(p1, linePaint)
      ..drawPath(p2, linePaint)
      ..drawPath(p3, linePaint)
      ..drawPath(p4, linePaint)
      ..drawLine(const Offset(20, 36), const Offset(34, 54), linePaint)
      ..drawLine(const Offset(40, 34), const Offset(34, 54), linePaint)
      ..drawLine(const Offset(50, 22), const Offset(52, 48), linePaint);

    // Exact 8 nodes from ikolu3-mark.svg
    void node(double cx, double cy, double r, Color color) {
      canvas.drawCircle(Offset(cx, cy), r, Paint()..color = color);
    }

    node(14, 18, 4.2, const Color(0xFF2D5FAE));
    node(32, 11, 3.2, navyNodeColor);
    node(50, 22, 5.2, const Color(0xFFD6DB12));
    node(40, 34, 3.4, const Color(0xFF2D5FAE));
    node(20, 36, 4, navyNodeColor);
    node(10, 50, 3, const Color(0xFF638110));
    node(34, 54, 4.6, navyNodeColor);
    node(52, 48, 3.3, const Color(0xFF2D5FAE));

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _Ikolu3MarkPainter oldDelegate) =>
      oldDelegate.dark != dark || oldDelegate.showBadge != showBadge;
}

/// Exact brand lockup matching `desk.tsx` and `ikolu3-lockup.svg` from
/// `nereus_smarthydro`.
class NereusBrandLockup extends StatelessWidget {
  const NereusBrandLockup({
    super.key,
    this.markSize = 24,
    this.compact = false,
    this.showBrandLogo = false,
    this.subtitle,
  });

  final double markSize;
  final bool compact;
  final bool showBrandLogo;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final fg = dark ? NereusTokens.darkInk : NereusTokens.navy;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showBrandLogo && !compact) ...[
          Container(
            padding: dark
                ? const EdgeInsets.symmetric(horizontal: 8, vertical: 4)
                : EdgeInsets.zero,
            decoration: dark
                ? BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.92),
                    borderRadius: BorderRadius.circular(8),
                  )
                : null,
            child: Image.asset(
              'assets/images/brand_logo.png',
              height: 28,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => const SizedBox.shrink(),
            ),
          ),
          const SizedBox(height: 8),
        ],
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            NereusLogoMark(size: markSize),
            if (!compact) ...[
              const SizedBox(width: 8),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'IKOLU3',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.2,
                        color: fg,
                        height: 1.1,
                      ),
                    ),
                    if (subtitle != null && subtitle!.isNotEmpty)
                      Text(
                        subtitle!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.4,
                          color: dark
                              ? NereusTokens.darkMuted
                              : NereusTokens.inkMuted,
                          height: 1.2,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}

/// Exact bottom attribution from `nereus_smarthydro/src/routes/conexion.tsx`:
/// `brand-logo.png` + `"Un producto de Smart Hydro"`.
class SmartHydroAttribution extends StatelessWidget {
  const SmartHydroAttribution({super.key, this.logoHeight = 28});

  final double logoHeight;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.9,
          child: Container(
            padding: dark
                ? const EdgeInsets.symmetric(horizontal: 10, vertical: 4)
                : EdgeInsets.zero,
            decoration: dark
                ? BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.92),
                    borderRadius: BorderRadius.circular(8),
                  )
                : null,
            child: Image.asset(
              'assets/images/brand_logo.png',
              height: logoHeight,
              fit: BoxFit.contain,
              errorBuilder: (_, __, ___) => const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  NereusLogoMark(size: 18),
                  SizedBox(width: 6),
                  Text(
                    'Smart Hydro',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: NereusTokens.navy,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          'Un producto de Smart Hydro',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11,
            color: dark ? NereusTokens.darkMuted : NereusTokens.inkMuted,
          ),
        ),
      ],
    );
  }
}

/// Exact port of `WaterField` (`nereus_smarthydro/src/components/fluid.tsx`).
///
/// 18 radial streams converging into the central IKOLU3 core triangle with
/// traveling droplets and a breathing basin ring.
class WaterBasinPainter extends CustomPainter {
  const WaterBasinPainter({
    required this.progress,
    required this.dark,
    this.showCenterCore = false,
  });

  final double progress;
  final bool dark;
  final bool showCenterCore;

  static const int _streamCount = 18;
  static const List<Color> _streamColors = [
    Color(0xFF2D5FAE),
    Color(0xFF193665),
    Color(0xFF638110),
    Color(0xFFD6DB12),
  ];

  Offset _streamPoint(
    double cx,
    double cy,
    double reach,
    int index,
    double t,
  ) {
    final baseAngle = (index / _streamCount) * math.pi * 2 -
        math.pi +
        (index.isOdd ? 0.08 : -0.06);
    final bend = ((index % 5) - 2) * 0.28;
    final radius = reach * (1 - t);
    final sway = math.sin(t * math.pi + bend) * 0.22;
    final angle = baseAngle + sway * (1 - t);
    return Offset(
      cx + math.cos(angle) * radius,
      cy + math.sin(angle) * radius * 0.78,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width * 0.5;
    final cy = size.height * 0.5;
    final reach =
        math.sqrt(size.width * size.width + size.height * size.height) * 0.52;
    final center = Offset(cx, cy);

    // Center pulse ring & basin glow from fluid.tsx
    final pulse = (math.sin(progress * math.pi * 2) + 1) * 0.5;
    final ringR = 118.0 + pulse * 10.0;
    final glowRect = Rect.fromCircle(center: center, radius: ringR * 1.6);
    final glowPaint = Paint()
      ..shader = RadialGradient(
        colors: [
          const Color(0xFF2D5FAE).withValues(alpha: dark ? 0.16 : 0.12),
          const Color(0xFFD6DB12).withValues(alpha: dark ? 0.06 : 0.08),
          const Color(0xFF193665).withValues(alpha: 0),
        ],
        stops: const [0.0, 0.55, 1.0],
      ).createShader(glowRect);
    canvas
      ..drawCircle(center, ringR * 1.6, glowPaint)
      ..drawCircle(
        center,
        ringR,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.0
          ..color = (dark ? const Color(0xFFC7D8F3) : const Color(0xFF193665))
              .withValues(alpha: 0.12 + pulse * 0.14),
      );

    // 18 radial streams + traveling drops from fluid.tsx
    const steps = 28;
    for (var i = 0; i < _streamCount; i++) {
      final color = _streamColors[i % _streamColors.length];
      final path = Path();
      for (var s = 0; s <= steps; s++) {
        final pt = _streamPoint(cx, cy, reach, i, s / steps);
        if (s == 0) {
          path.moveTo(pt.dx, pt.dy);
        } else {
          path.lineTo(pt.dx, pt.dy);
        }
      }
      canvas.drawPath(
        path,
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.1
          ..color = color.withValues(alpha: dark ? 0.22 : 0.26),
      );

      for (var d = 0; d < 2; d++) {
        final phase = (i * 0.173 + d * 0.48 + progress * 2.0) % 1.0;
        if (phase > 0.86) continue;
        final pt = _streamPoint(cx, cy, reach, i, phase);
        final fade = phase < 0.6 ? 1.0 : 1.0 - (phase - 0.6) / 0.26;
        final radius = d == 0 ? 2.6 : 1.9;
        canvas.drawCircle(
          pt,
          radius,
          Paint()
            ..color = color.withValues(
              alpha: 0.55 * fade.clamp(0.0, 1.0),
            ),
        );
      }
    }

    if (showCenterCore) {
      final p1 = Offset(cx - 10, cy - 6);
      final p2 = Offset(cx + 8, cy - 2);
      final p3 = Offset(cx - 2, cy + 8);
      final corePath = Path()
        ..moveTo(p1.dx, p1.dy)
        ..lineTo(p2.dx, p2.dy)
        ..lineTo(p3.dx, p3.dy)
        ..close();
      canvas
        ..drawPath(
          corePath,
          Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1.2
            ..color = (dark ? const Color(0xFFC7D8F3) : const Color(0xFF193665))
                .withValues(alpha: 0.35),
        )
        ..drawCircle(p1, 2.6, Paint()..color = const Color(0xFF2D5FAE))
        ..drawCircle(p2, 3, Paint()..color = const Color(0xFFD6DB12))
        ..drawCircle(
          p3,
          2.6,
          Paint()
            ..color = dark ? const Color(0xFFC7D8F3) : const Color(0xFF193665),
        );
    }
  }

  @override
  bool shouldRepaint(covariant WaterBasinPainter oldDelegate) =>
      oldDelegate.progress != progress ||
      oldDelegate.dark != dark ||
      oldDelegate.showCenterCore != showCenterCore;
}
