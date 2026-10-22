import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/tokens.dart';

bool shouldUseGlass(BuildContext context) {
  final mq = MediaQuery.of(context);
  if (mq.disableAnimations) return false;
  if (mq.accessibleNavigation) return false;
  if (mq.size.shortestSide < 320) return false;
  return true;
}

class GlassSurface extends StatelessWidget {
  const GlassSurface({
    super.key,
    required this.child,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(NereusTokens.radiusLg),
    ),
    this.padding,
    this.opacity,
    this.blur = NereusTokens.blurSigma,
  });

  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? opacity;
  final double blur;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final glass = shouldUseGlass(context);
    final tint = scheme.brightness == Brightness.dark
        ? Colors.white.withValues(alpha: opacity ?? NereusTokens.glassOpacityDark)
        : Colors.white.withValues(alpha: opacity ?? NereusTokens.glassOpacity);

    final panel = DecoratedBox(
      decoration: BoxDecoration(
        color: glass ? tint : scheme.surface.withValues(alpha: 0.92),
        borderRadius: borderRadius,
        border: Border.all(
          width: NereusTokens.borderWidth,
          color: Colors.white.withValues(
            alpha: scheme.brightness == Brightness.dark ? 0.18 : 0.62,
          ),
        ),
        boxShadow: NereusTokens.elevation1,
      ),
      child: padding == null ? child : Padding(padding: padding!, child: child),
    );

    if (!glass) {
      return ClipRRect(borderRadius: borderRadius, child: panel);
    }

    return RepaintBoundary(
      child: ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: panel,
        ),
      ),
    );
  }
}

class GlassCard extends StatelessWidget {
  const GlassCard({
    super.key,
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(NereusTokens.spaceMd),
    this.semanticLabel,
  });

  final Widget child;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final card = GlassSurface(
      borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
      padding: padding,
      child: child,
    );
    if (onTap == null) {
      return Semantics(label: semanticLabel, child: card);
    }
    return Semantics(
      button: true,
      label: semanticLabel,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
          child: card,
        ),
      ),
    );
  }
}

class GlassAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlassAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
  });

  final Widget title;
  final List<Widget>? actions;
  final Widget? leading;

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    return GlassSurface(
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(NereusTokens.radiusMd),
      ),
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: 56,
          child: NavigationToolbar(
            leading: leading ?? (Navigator.of(context).canPop()
                ? const BackButton()
                : null),
            middle: DefaultTextStyle.merge(
              style: Theme.of(context).textTheme.titleLarge,
              child: title,
            ),
            trailing: actions == null
                ? null
                : Row(mainAxisSize: MainAxisSize.min, children: actions!),
          ),
        ),
      ),
    );
  }
}

class GlassNavBar extends StatelessWidget {
  const GlassNavBar({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
    required this.destinations,
  });

  final int selectedIndex;
  final ValueChanged<int> onSelect;
  final List<NavigationDestination> destinations;

  @override
  Widget build(BuildContext context) {
    final compact = MediaQuery.sizeOf(context).width < 420;
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      child: GlassSurface(
        borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
        child: NavigationBar(
          selectedIndex: selectedIndex,
          destinations: destinations,
          onDestinationSelected: onSelect,
          height: compact ? 60 : 68,
          labelBehavior: compact
              ? NavigationDestinationLabelBehavior.onlyShowSelected
              : NavigationDestinationLabelBehavior.alwaysShow,
        ),
      ),
    );
  }
}

class AnimatedWaterBackdrop extends StatefulWidget {
  const AnimatedWaterBackdrop({super.key, required this.child});

  final Widget child;

  @override
  State<AnimatedWaterBackdrop> createState() => _AnimatedWaterBackdropState();
}

class _AnimatedWaterBackdropState extends State<AnimatedWaterBackdrop>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 18),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final reduce = MediaQuery.of(context).disableAnimations;
    final colors = dark
        ? const [Color(0xFF071416), Color(0xFF0C2C2E), Color(0xFF12363A)]
        : const [Color(0xFFF4FBFA), Color(0xFFE3F4F0), Color(0xFFD7EAF7)];

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final t = reduce ? 0.35 : _controller.value;
        return DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1 + t, -1),
              end: Alignment(1 - t, 1),
              colors: colors,
            ),
          ),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}
