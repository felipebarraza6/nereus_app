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
    final dark = Theme.of(context).brightness == Brightness.dark;
    final panel = dark ? NereusTokens.darkRaised : NereusTokens.surface;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final ink = dark ? NereusTokens.darkInk : NereusTokens.ink;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
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
              color: panel,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
                side: BorderSide(color: line),
              ),
              child: InkWell(
                onTap: pending ? null : () => context.go(step.path!),
                splashFactory: NoSplash.splashFactory,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: pending ? line : NereusTokens.hydroOlive,
                        foregroundColor: pending ? muted : Colors.white,
                        child: Text('${index + 1}'),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              step.title,
                              style: TextStyle(
                                color: ink,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              step.detail,
                              style: TextStyle(color: muted),
                            ),
                          ],
                        ),
                      ),
                      if (pending)
                        Text(
                          'Pendiente',
                          style: TextStyle(
                            color: muted,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      else
                        Icon(Icons.chevron_right, color: muted),
                    ],
                  ),
                ),
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
