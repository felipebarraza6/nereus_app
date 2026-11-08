import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/page_header.dart';

/// Columna de lectura de Strøm — Operaciones. No se estira al borde.
class StromChrome extends StatelessWidget {
  const StromChrome({
    super.key,
    required this.title,
    required this.child,
    this.subtitle = 'Strøm — Operaciones',
    this.action,
  });

  final String title;
  final String subtitle;
  final Widget? action;
  final Widget child;

  static const maxWidth = 1120.0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: maxWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PageHeader(
              title: title,
              subtitle: subtitle,
              actions: [if (action != null) action!],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                  NereusTokens.spaceMd,
                  0,
                  NereusTokens.spaceMd,
                  NereusTokens.spaceMd,
                ),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StromCreateButton extends StatelessWidget {
  const StromCreateButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.add),
      label: const Text('Crear'),
    );
  }
}

/// Mismo bloque para crear y para configurar.
class StromForm extends StatelessWidget {
  const StromForm({
    super.key,
    required this.children,
    required this.onSubmit,
    this.saving = false,
    this.submitLabel = 'Guardar',
  });

  final List<Widget> children;
  final VoidCallback? onSubmit;
  final bool saving;
  final String submitLabel;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...children,
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerLeft,
          child: FilledButton(
            onPressed: saving ? null : onSubmit,
            child: Text(saving ? 'Guardando' : submitLabel),
          ),
        ),
      ],
    );
  }
}
