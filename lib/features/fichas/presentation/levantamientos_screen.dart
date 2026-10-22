import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/presentation/ficha_ui.dart';
import 'package:nereus_app/features/fichas/providers/fichas_provider.dart';

class LevantamientosScreen extends ConsumerWidget {
  const LevantamientosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final templates = ref.watch(levantamientoTemplatesProvider);
    final published = ref.watch(levantamientosProvider);
    final text = Theme.of(context).textTheme;
    final plantillas = templates.value ?? const <LevantamientoTemplate>[];
    final listos = published.value ?? const <Levantamiento>[];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const PageHeader(
            title: 'Levantamientos',
            subtitle: 'Formularios de terreno para tenencias y captación',
          ),
          Expanded(
            child: AsyncBody(
              isLoading: templates.isLoading || published.isLoading,
              hasError: templates.hasError || published.hasError,
              isEmpty: false,
              onRetry: () {
                ref.invalidate(levantamientoTemplatesProvider);
                ref.invalidate(levantamientosProvider);
              },
              child: ListView(
                padding: const EdgeInsets.fromLTRB(
                  NereusTokens.spaceMd,
                  0,
                  NereusTokens.spaceMd,
                  NereusTokens.spaceLg,
                ),
                children: [
                  FichaGrid(
                    maxColumns: 4,
                    children: [
                      FichaKpi(
                        label: 'Plantillas',
                        value: '${plantillas.length}',
                        icon: Icons.auto_awesome_outlined,
                      ),
                      FichaKpi(
                        label: 'Listos',
                        value: '${listos.length}',
                        icon: Icons.fact_check_outlined,
                        tone: NereusTokens.lagoon,
                      ),
                      FichaKpi(
                        label: 'Activos',
                        value: '${listos.where((item) => item.isActive).length}',
                        icon: Icons.play_circle_outline,
                      ),
                      FichaKpi(
                        label: 'Preguntas',
                        value:
                            '${plantillas.fold<int>(0, (sum, item) => sum + item.questions.length)}',
                        icon: Icons.help_outline,
                        tone: NereusTokens.lagoon,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text('Plantillas', style: text.titleLarge),
                  const SizedBox(height: 4),
                  Text(
                    'Ármalas una vez y úsalas en cada predio.',
                    style: text.bodyMedium,
                  ),
                  const SizedBox(height: 12),
                  if (plantillas.isEmpty)
                    const GlassCard(
                      child: Text(
                        'No hay plantillas todavía. Ábrelas desde Fichas.',
                      ),
                    )
                  else
                    FichaGrid(
                      maxColumns: 2,
                      children: [
                        for (final template in plantillas)
                          GlassCard(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: NereusTokens.teal
                                          .withValues(alpha: 0.14),
                                      foregroundColor: NereusTokens.teal,
                                      child: const Icon(
                                        Icons.fact_check_outlined,
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Text(
                                        template.name,
                                        style: text.titleMedium,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  '${template.questions.length} pregunta${template.questions.length == 1 ? '' : 's'}',
                                  style: text.bodyMedium,
                                ),
                                const SizedBox(height: 16),
                                FilledButton.tonal(
                                  onPressed: () =>
                                      _usarPlantilla(context, ref, template),
                                  child: const Text('Usar en terreno'),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  const SizedBox(height: 24),
                  Text('Listos para completar', style: text.titleLarge),
                  const SizedBox(height: 12),
                  if (listos.isEmpty)
                    const GlassCard(
                      child: Text(
                        'Cuando publiques una plantilla, aparece acá para llenarla en el predio.',
                      ),
                    )
                  else
                    FichaGrid(
                      maxColumns: 2,
                      children: [
                        for (final item in listos)
                          GlassCard(
                            onTap: () =>
                                context.go('/levantamientos/fill/${item.id}'),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(item.title, style: text.titleMedium),
                                      const SizedBox(height: 4),
                                      Text(
                                        '${item.questions.length} pregunta${item.questions.length == 1 ? '' : 's'}',
                                        style: text.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ),
                                StatusChip(
                                  label: levantamientoEstado(item.status),
                                  tone: item.isActive
                                      ? NereusTokens.teal
                                      : NereusTokens.inkMuted,
                                ),
                                const Icon(Icons.chevron_right),
                              ],
                            ),
                          ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _usarPlantilla(
    BuildContext context,
    WidgetRef ref,
    LevantamientoTemplate template,
  ) async {
    try {
      final published = await ref.read(levantamientoRepositoryProvider).publish(
            title: template.name,
            questions: template.questions,
          );
      ref.invalidate(levantamientosProvider);
      if (context.mounted) {
        showFriendlyOk(context, 'Formulario listo para terreno');
        context.go('/levantamientos/fill/${published.id}');
      }
    } on Object catch (error) {
      if (context.mounted) showFriendlyError(context, error);
    }
  }
}
