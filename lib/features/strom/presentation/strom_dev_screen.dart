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
            final tone = pending ? NereusTokens.inkMuted : NereusTokens.hydroOlive;
            return Material(
              color: NereusTokens.surface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
                side: BorderSide(
                  color: pending ? NereusTokens.line : NereusTokens.hydroOlive,
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: pending
                      ? NereusTokens.surface2
                      : NereusTokens.hydroOlive,
                  foregroundColor: pending ? tone : Colors.white,
                  child: Text('${index + 1}'),
                ),
                title: Text(
                  step.title,
                  style: TextStyle(
                    color: pending ? tone : NereusTokens.ink,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  step.detail,
                  style: const TextStyle(color: NereusTokens.inkMuted),
                ),
                trailing: pending
                    ? const Text(
                        'Pendiente',
                        style: TextStyle(
                          color: NereusTokens.inkMuted,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    : Icon(Icons.chevron_right, color: scheme.primary),
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
