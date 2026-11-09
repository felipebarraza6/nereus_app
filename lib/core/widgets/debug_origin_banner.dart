import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/config/app_config.dart';
import 'package:nereus_app/core/providers.dart';

class DebugOriginBanner extends ConsumerWidget {
  const DebugOriginBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(appConfigProvider);
    if (!config.debug) return const SizedBox.shrink();
    final mode = ref.watch(dataModeProvider);
    final label = mode == NereusDataMode.fixture
        ? 'Usando datos de demostración'
        : 'Conectado a ${config.originLabel}';
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Theme.of(context).colorScheme.outline,
            ),
      ),
    );
  }
}
