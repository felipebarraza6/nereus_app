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
        icon: Icons.inbox_outlined,
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
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(NereusTokens.spaceLg),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 380),
          child: GlassCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 28, color: muted),
                const SizedBox(height: 10),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: muted),
                ),
                if (action != null) ...[
                  const SizedBox(height: 12),
                  OutlinedButton(
                    onPressed: action,
                    child: const Text('Reintentar'),
                  ),
                ],
              ],
            ),
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
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemBuilder: (_, __) => Opacity(
            opacity: 0.45 + (_c.value * 0.35),
            child: const GlassCard(
              child: SizedBox(height: 64, width: double.infinity),
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
    final dark = Theme.of(context).brightness == Brightness.dark;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    return AnimatedSwitcher(
      duration: NereusTokens.motionFast,
      child: offline
          ? DecoratedBox(
              decoration: BoxDecoration(
                color: NereusTokens.amber.withValues(alpha: 0.14),
                border: Border(bottom: BorderSide(color: line)),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.cloud_off,
                      size: 16,
                      color: NereusTokens.amber,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Sin conexión. Mostramos datos en caché.',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: NereusTokens.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}

/// Filter pill styled after `SubTabs` in `nereus_smarthydro/src/components/desk.tsx`.
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
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final surface = dark ? NereusTokens.darkPanel : NereusTokens.surface;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;

    return Material(
      color: selected ? scheme.primary : surface,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: selected ? scheme.primary : line,
            ),
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
              color: selected ? scheme.onPrimary : muted,
            ),
          ),
        ),
      ),
    );
  }
}

/// Status badge styled after `Badge` in `nereus_smarthydro/src/components/desk.tsx`
/// (`rounded-full px-2.5 py-0.5 text-xs font-medium`).
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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        color: tone.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
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
            style: TextStyle(
              color: tone,
              fontSize: 11.5,
              fontWeight: FontWeight.w600,
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
      width: 6,
      height: 6,
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
