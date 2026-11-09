import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/nereus_brand.dart';

bool shouldUseGlass(BuildContext context) {
  final mq = MediaQuery.of(context);
  if (mq.disableAnimations) return false;
  if (mq.accessibleNavigation) return false;
  if (mq.size.shortestSide < 320) return false;
  return true;
}

bool _isDark(BuildContext context) =>
    Theme.of(context).brightness == Brightness.dark;

/// Crisp shadcn/ui + `nereus_smarthydro` surface panel (`rounded-2xl border
/// border-line bg-surface shadow-sm`).
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
    final dark = _isDark(context);
    final bg = dark ? NereusTokens.darkPanel : NereusTokens.surface;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: opacity != null ? bg.withValues(alpha: opacity) : bg,
        borderRadius: borderRadius,
        border: Border.all(
          width: NereusTokens.borderWidth,
          color: line,
        ),
        boxShadow: dark ? NereusTokens.elevation2 : NereusTokens.elevation1,
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: padding == null ? child : Padding(padding: padding!, child: child),
      ),
    );
  }
}

/// Crisp shadcn/ui card (`border border-line bg-surface rounded-2xl p-4 shadow-sm`).
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
      borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
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
          borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
          child: card,
        ),
      ),
    );
  }
}

/// Top header bar matching `desk.tsx` (`border-b border-line bg-surface`).
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
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final dark = _isDark(context);
    final bg = dark ? NereusTokens.darkPanel : NereusTokens.surface;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bg,
        border: Border(bottom: BorderSide(color: line)),
      ),
      child: SafeArea(
        bottom: false,
        child: SizedBox(
          height: 56,
          child: NavigationToolbar(
            leading: leading ??
                (Navigator.of(context).canPop() ? const BackButton() : null),
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

/// Compact bottom bar for mobile viewports (`border-t border-line bg-surface`).
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
    final dark = _isDark(context);
    final bg = dark ? NereusTokens.darkPanel : NereusTokens.surface;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final compact = MediaQuery.sizeOf(context).width < 420;
    final scheme = Theme.of(context).colorScheme;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bg,
        border: Border(top: BorderSide(color: line)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: compact ? 58 : 62,
          child: Row(
            children: [
              for (var i = 0; i < destinations.length; i++)
                Expanded(
                  child: InkWell(
                    onTap: () => onSelect(i),
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconTheme(
                          data: IconThemeData(
                            size: 18,
                            color: i == selectedIndex ? scheme.primary : muted,
                          ),
                          child: i == selectedIndex
                              ? (destinations[i].selectedIcon ?? destinations[i].icon)
                              : destinations[i].icon,
                        ),
                        if (!compact || i == selectedIndex) ...[
                          const SizedBox(height: 2),
                          Text(
                            destinations[i].label,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: i == selectedIndex
                                  ? FontWeight.w600
                                  : FontWeight.w500,
                              color: i == selectedIndex
                                  ? scheme.onSurface
                                  : muted,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Canvas backdrop used across the app shell (`#F4F6F8` in light, `#071318` in
/// dark) and animated `WaterField` (`fluid.tsx`) on the login stage.
class AnimatedWaterBackdrop extends StatefulWidget {
  const AnimatedWaterBackdrop({
    super.key,
    required this.child,
    this.showWaterField = false,
  });

  final Widget child;
  final bool showWaterField;

  @override
  State<AnimatedWaterBackdrop> createState() => _AnimatedWaterBackdropState();
}

class _AnimatedWaterBackdropState extends State<AnimatedWaterBackdrop>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 16),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final bg = dark ? NereusTokens.darkCanvas : NereusTokens.bg;

    if (!widget.showWaterField) {
      return ColoredBox(color: bg, child: widget.child);
    }

    final reduce = MediaQuery.of(context).disableAnimations;
    if (reduce) {
      return ColoredBox(
        color: bg,
        child: CustomPaint(
          painter: WaterBasinPainter(
            progress: 0.25,
            dark: dark,
            showCenterCore: true,
          ),
          child: widget.child,
        ),
      );
    }

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ColoredBox(
          color: bg,
          child: CustomPaint(
            painter: WaterBasinPainter(
              progress: _controller.value,
              dark: dark,
              showCenterCore: true,
            ),
            child: child,
          ),
        );
      },
      child: widget.child,
    );
  }
}

/// Desktop sidebar matching `nereus_smarthydro/src/components/desk.tsx`
/// (`<aside class="w-64 shrink-0 border-r border-line bg-surface">`).
class GlassSidebar extends StatelessWidget {
  const GlassSidebar({
    super.key,
    required this.child,
    this.width = 256,
    this.margin = EdgeInsets.zero,
  });

  final Widget child;
  final double width;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final dark = _isDark(context);
    final bg = dark ? NereusTokens.darkPanel : NereusTokens.surface;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    return AnimatedContainer(
      duration: NereusTokens.motionFast,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
        color: bg,
        border: Border(right: BorderSide(color: line)),
      ),
      child: child,
    );
  }
}
