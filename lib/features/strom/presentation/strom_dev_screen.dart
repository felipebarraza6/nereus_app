import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/features/strom/presentation/strom_chrome.dart';

class StromDevScreen extends StatelessWidget {
  const StromDevScreen({super.key});

  static const steps = [
    _Step('Proyecto', 'Se muestra. Nace de un ticket.', '/strom'),
    _Step('Visita', 'Se muestra. Es la orden de trabajo.', '/strom/visitas'),
    _Step('Actividad', 'Se muestra. Checklist.', '/strom/actividades'),
    _Step(
      'Check de terreno',
      'Se muestra. No cierra el proyecto.',
      '/strom/terreno',
    ),
    _Step(
      'Check técnico',
      'Se muestra. El líder confirma.',
      '/strom/tecnico',
    ),
    _Step('Aclaración', 'Se muestra. Comentario interno.', '/strom/aclaraciones'),
    _Step('Indicadores', 'Se muestra. Cuatro conteos.', '/strom/indicadores'),
    _Step(
      'Instalación y punto de captación',
      'En la API. Todavía no en esta demo.',
      null,
    ),
    _Step(
      'OT técnica distinta de la visita',
      'Pendiente. La visita sigue siendo la orden de trabajo.',
      null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StromChrome(
        title: 'Dev',
        subtitle: 'Strøm — Operaciones. Flujo del MVP para validar.',
        child: ListView.separated(
          itemCount: steps.length,
          separatorBuilder: (_, __) => const SizedBox(height: 8),
          itemBuilder: (context, index) {
            final step = steps[index];
            final pending = step.path == null;
            return Material(
              color: scheme.surface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
                side: BorderSide(color: scheme.outlineVariant),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: pending
                      ? scheme.surfaceContainerHighest
                      : scheme.primary,
                  foregroundColor: pending
                      ? scheme.onSurface
                      : scheme.onPrimary,
                  child: Text('${index + 1}'),
                ),
                title: Text(step.title),
                subtitle: Text(step.detail),
                trailing: pending ? const Text('Pendiente') : const Icon(Icons.chevron_right),
                onTap: pending ? null : () => context.go(step.path!),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _Step {
  const _Step(this.title, this.detail, this.path);

  final String title;
  final String detail;
  final String? path;
}
