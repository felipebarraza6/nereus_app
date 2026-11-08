import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/features/strom/presentation/strom_projects_screen.dart';

/// Escritorio de Strøm: lista a la izquierda y la ficha a la derecha.
class StromDesk extends StatelessWidget {
  const StromDesk({super.key, required this.location, required this.child});

  final String location;
  final Widget child;

  static const wideWidth = 1100.0;

  bool get _atList => location == '/strom' || location == '/strom/';

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.sizeOf(context).width >= wideWidth;
    if (!wide) {
      if (_atList) return const StromProjectsScreen();
      return child;
    }
    return Row(
      children: [
        const SizedBox(width: 420, child: StromProjectsScreen()),
        const VerticalDivider(width: 1),
        Expanded(
          child: _atList
              ? const _PickProject()
              : child,
        ),
      ],
    );
  }
}

class StromReadingColumn extends StatelessWidget {
  const StromReadingColumn({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 720),
        child: child,
      ),
    );
  }
}

class _PickProject extends StatelessWidget {
  const _PickProject();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(NereusTokens.spaceMd),
        child: Text(
          'Elige un proyecto para ver sus visitas.',
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
