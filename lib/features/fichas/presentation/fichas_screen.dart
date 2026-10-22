import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/fichas/domain/ficha_mapping.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/water_templates.dart';
import 'package:nereus_app/features/fichas/presentation/ficha_ui.dart';
import 'package:nereus_app/features/fichas/providers/fichas_provider.dart';

class FichasScreen extends ConsumerWidget {
  const FichasScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sections = ref.watch(fichaSectionsProvider);
    final fields = ref.watch(fichaFieldsProvider);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const PageHeader(
            title: 'Fichas',
            subtitle: 'Tenencias de agua y datos de captación por predio',
          ),
          Expanded(
            child: AsyncBody(
              isLoading: sections.isLoading || fields.isLoading,
              hasError: sections.hasError && (sections.value ?? const []).isEmpty,
              isEmpty: (sections.value ?? const []).isEmpty,
              onRetry: () {
                ref.invalidate(waterTemplatesReadyProvider);
                ref.invalidate(fichaSectionsProvider);
                ref.invalidate(fichaFieldsProvider);
              },
              errorMessage: userFacingErrorMessage(
                sections.error ?? fields.error ?? const ApiError(message: ApiError.genericMessage),
              ),
              isNetworkError: isNetworkFailure(
                sections.error ?? fields.error ?? const ApiError(message: ''),
              ),
              emptyMessage: 'Aún no hay secciones de ficha en esta sucursal.',
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final allFields = fields.value ?? const <FichaField>[];
                  final allSections = sections.value ?? const <FichaSection>[];
                  List<FichaField> of(FichaSection section) => [
                        for (final field in allFields)
                          if (field.groupId == section.id ||
                              field.groupKey == section.key)
                            field,
                      ];
                  final tenenciaCount = [
                    for (final section in allSections)
                      if (section.isTenencias) ...of(section),
                  ].length;
                  return ListView(
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
                            label: 'Secciones',
                            value: '${allSections.length}',
                            icon: Icons.layers_outlined,
                            tone: NereusTokens.teal,
                          ),
                          FichaKpi(
                            label: 'Campos',
                            value: '${allFields.length}',
                            icon: Icons.list_alt_outlined,
                            tone: NereusTokens.lagoon,
                          ),
                          FichaKpi(
                            label: 'Tenencias',
                            value: '$tenenciaCount',
                            icon: Icons.water_drop_outlined,
                            tone: NereusTokens.lagoon,
                          ),
                          FichaKpi(
                            label: 'Predios',
                            value: 'Abrir',
                            icon: Icons.apartment_outlined,
                            onTap: () => context.go('/clients'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      FichaGrid(
                        maxColumns: 2,
                        children: [
                          for (final section in allSections)
                            FichaSectionCard(
                              section: section,
                              fields: of(section),
                              actionLabel: 'Completar en terreno',
                              onAction: () => _salirATerreno(
                                context,
                                ref,
                                section,
                                allFields,
                              ),
                              secondaryLabel: 'Ver predios',
                              onSecondary: () => context.go('/clients'),
                            ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _salirATerreno(
    BuildContext context,
    WidgetRef ref,
    FichaSection section,
    List<FichaField> allFields,
  ) async {
    final groupFields = [
      for (final field in allFields)
        if (field.groupId == section.id || field.groupKey == section.key) field,
    ];
    final title = section.isTenencias
        ? tenenciasTemplateName
        : section.isCaptacion
            ? captacionTemplateName
            : 'Levantamiento ${section.name}';
    try {
      final published = await ref.read(levantamientoRepositoryProvider).publish(
            title: title,
            questions: questionsFromFields(groupFields),
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
