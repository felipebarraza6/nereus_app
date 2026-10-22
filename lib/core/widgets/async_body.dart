import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';

class AsyncBody extends StatelessWidget {
  const AsyncBody({
    super.key,
    required this.isLoading,
    required this.hasError,
    required this.isEmpty,
    required this.onRetry,
    required this.child,
    this.errorMessage = 'No pudimos cargar los datos.',
    this.emptyMessage = 'No hay información para mostrar.',
    this.skeleton,
    this.isNetworkError = false,
  });

  final bool isLoading;
  final bool hasError;
  final bool isEmpty;
  final VoidCallback onRetry;
  final Widget child;
  final String errorMessage;
  final String emptyMessage;
  final Widget? skeleton;
  final bool isNetworkError;

  @override
  Widget build(BuildContext context) {
    if (isLoading && isEmpty) {
      return skeleton ?? const ShimmerList();
    }
    if (hasError && isEmpty) {
      return _Message(
        icon: isNetworkError
            ? Icons.wifi_off_rounded
            : Icons.error_outline_rounded,
        title: errorMessage,
        action: onRetry,
      );
    }
    if (isEmpty) {
      return _Message(
        icon: Icons.water_drop_outlined,
        title: emptyMessage,
      );
    }
    return child;
  }
}

class _Message extends StatelessWidget {
  const _Message({
    required this.icon,
    required this.title,
    this.action,
  });

  final IconData icon;
  final String title;
  final VoidCallback? action;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(NereusTokens.spaceLg),
        child: GlassCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 36, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 12),
              Text(title, textAlign: TextAlign.center),
              if (action != null) ...[
                const SizedBox(height: 12),
                FilledButton(onPressed: action, child: const Text('Reintentar')),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class ShimmerList extends StatefulWidget {
  const ShimmerList({super.key, this.count = 4});

  final int count;

  @override
  State<ShimmerList> createState() => _ShimmerListState();
}

class _ShimmerListState extends State<ShimmerList>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1200),
  )..repeat();

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _c,
      builder: (context, _) {
        return ListView.separated(
          padding: const EdgeInsets.all(NereusTokens.spaceMd),
          itemCount: widget.count,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (_, __) => Opacity(
            opacity: 0.45 + (_c.value * 0.35),
            child: const GlassCard(
              child: SizedBox(height: 72, width: double.infinity),
            ),
          ),
        );
      },
    );
  }
}

class OfflineBanner extends StatelessWidget {
  const OfflineBanner({super.key, required this.offline});

  final bool offline;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: NereusTokens.motionFast,
      child: offline
          ? Material(
              color: Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.85),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  children: [
                    Icon(Icons.cloud_off, size: 18),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text('Sin conexión. Mostramos datos en caché.'),
                    ),
                  ],
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}

class FilterPill extends StatelessWidget {
  const FilterPill({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final dark = scheme.brightness == Brightness.dark;
    return Material(
      color: selected
          ? scheme.primary.withValues(alpha: 0.14)
          : (dark
              ? scheme.surfaceContainerHighest.withValues(alpha: 0.6)
              : NereusTokens.cloud.withValues(alpha: 0.72)),
      borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
            border: Border.all(
              color: selected
                  ? scheme.primary.withValues(alpha: 0.45)
                  : scheme.outline,
            ),
          ),
          child: Text(
            label,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: selected ? scheme.primary : scheme.onSurface,
                ),
          ),
        ),
      ),
    );
  }
}

class StatusChip extends StatelessWidget {
  const StatusChip({
    super.key,
    required this.label,
    required this.tone,
    this.dot = false,
    this.pulse = false,
  });

  final String label;
  final Color tone;
  final bool dot;
  final bool pulse;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: tone.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
        border: Border.all(color: tone.withValues(alpha: 0.35)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (dot) ...[
            _StatusDot(color: tone, pulse: pulse),
            const SizedBox(width: 6),
          ],
          Text(
            label,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: tone,
                  fontSize: 12,
                ),
          ),
        ],
      ),
    );
  }
}

class _StatusDot extends StatelessWidget {
  const _StatusDot({required this.color, this.pulse = false});

  final Color color;
  final bool pulse;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 7,
      height: 7,
      child: pulse
          ? _PulsingDot(color: color)
          : DecoratedBox(
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            ),
    );
  }
}

class _PulsingDot extends StatefulWidget {
  const _PulsingDot({required this.color});

  final Color color;

  @override
  State<_PulsingDot> createState() => _PulsingDotState();
}

class _PulsingDotState extends State<_PulsingDot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final reduce = MediaQuery.of(context).disableAnimations;
    if (reduce) {
      return DecoratedBox(
        decoration: BoxDecoration(color: widget.color, shape: BoxShape.circle),
      );
    }
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: 0.4 * (1 - _controller.value),
              child: Transform.scale(
                scale: 1 + _controller.value * 0.8,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: widget.color,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: widget.color,
                shape: BoxShape.circle,
              ),
            ),
          ],
        );
      },
    );
  }
}
