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
  });

  final bool isLoading;
  final bool hasError;
  final bool isEmpty;
  final VoidCallback onRetry;
  final Widget child;
  final String errorMessage;
  final String emptyMessage;
  final Widget? skeleton;

  @override
  Widget build(BuildContext context) {
    if (isLoading && isEmpty) {
      return skeleton ?? const ShimmerList();
    }
    if (hasError && isEmpty) {
      return _Message(
        icon: Icons.wifi_off_rounded,
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

class StatusChip extends StatelessWidget {
  const StatusChip({
    super.key,
    required this.label,
    required this.tone,
  });

  final String label;
  final Color tone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: tone.withValues(alpha: 0.16),
        borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
        border: Border.all(color: tone.withValues(alpha: 0.4)),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: tone,
              fontSize: 12,
            ),
      ),
    );
  }
}
