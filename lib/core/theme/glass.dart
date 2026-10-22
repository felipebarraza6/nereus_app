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

bool _isDark(BuildContext context) =>
    Theme.of(context).brightness == Brightness.dark;

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
    final dark = _isDark(context);
    final glass = shouldUseGlass(context);
    final tint = dark
        ? NereusTokens.darkPanel.withValues(
            alpha: opacity ?? NereusTokens.glassOpacityDark,
          )
        : NereusTokens.cloud.withValues(
            alpha: opacity ?? NereusTokens.glassOpacity,
          );

    final panel = DecoratedBox(
      decoration: BoxDecoration(
        color: glass
            ? tint
            : scheme.surface.withValues(alpha: dark ? 0.95 : 0.92),
        borderRadius: borderRadius,
        border: Border.all(
          width: NereusTokens.borderWidth,
          color: dark
              ? NereusTokens.darkMuted.withValues(alpha: 0.16)
              : NereusTokens.mint.withValues(alpha: 0.45),
        ),
        boxShadow: dark ? NereusTokens.elevation2 : NereusTokens.elevation1,
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
        ? const [
            NereusTokens.darkCanvas,
            NereusTokens.darkPanel,
            NereusTokens.darkRaised,
          ]
        : const [
            NereusTokens.foam,
            NereusTokens.mist,
            Color(0xFFD7EAF7),
          ];

    if (reduce) {
      return DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const Alignment(-0.3, -1),
            end: const Alignment(0.3, 1),
            colors: colors,
          ),
        ),
        child: widget.child,
      );
    }

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final t = _controller.value;
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

/// A sidebar shell that adapts its tint to the current brightness.
///
/// The desktop rail/sidebar uses a stronger surface than cards so navigation
/// remains readable against the animated backdrop.
class GlassSidebar extends StatelessWidget {
  const GlassSidebar({
    super.key,
    required this.child,
    this.width = 248,
    this.margin = const EdgeInsets.fromLTRB(10, 10, 0, 10),
  });

  final Widget child;
  final double width;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final dark = _isDark(context);
    return AnimatedContainer(
      duration: NereusTokens.motionFast,
      width: width,
      margin: margin,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: dark
              ? NereusTokens.darkPanel.withValues(alpha: 0.92)
              : NereusTokens.cloud.withValues(alpha: 0.78),
          borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
          border: Border.all(
            color: dark
                ? NereusTokens.darkMuted.withValues(alpha: 0.12)
                : NereusTokens.mint.withValues(alpha: 0.35),
          ),
          boxShadow: dark ? NereusTokens.elevation2 : NereusTokens.elevation1,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
          child: child,
        ),
      ),
    );
  }
}
