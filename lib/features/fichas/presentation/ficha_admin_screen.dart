import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/breakpoints.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/water_templates.dart';
import 'package:nereus_app/features/fichas/presentation/ficha_ui.dart';
import 'package:nereus_app/features/fichas/providers/fichas_provider.dart';

part 'ficha_admin_dialogs.dart';

class FichaAdminScreen extends ConsumerWidget {
  const FichaAdminScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sections = ref.watch(fichaSectionsProvider);
    final fields = ref.watch(fichaFieldsProvider);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          PageHeader(
            kicker: 'Configuración',
            title: 'Administrar fichas',
            subtitle: 'Crea y edita secciones y campos de ficha del cliente',
            actions: [
              FilledButton.icon(
                onPressed: () => _showSectionForm(context, ref),
                icon: const Icon(Icons.add, size: 16),
                label: const Text('Sección'),
              ),
            ],
          ),
          Expanded(
            child: AsyncBody(
              isLoading: sections.isLoading || fields.isLoading,
              hasError: sections.hasError || fields.hasError,
              isEmpty: (sections.value ?? const []).isEmpty,
              onRetry: () {
                ref.invalidate(fichaSectionsProvider);
                ref.invalidate(fichaFieldsProvider);
              },
              errorMessage: userFacingErrorMessage(
                sections.error ?? fields.error ?? const ApiError(message: ''),
              ),
              isNetworkError: isNetworkFailure(
                sections.error ?? fields.error ?? const ApiError(message: ''),
              ),
              emptyMessage: 'Aún no hay secciones de ficha.',
              child: ListView(
                padding: const EdgeInsets.fromLTRB(
                  NereusTokens.spaceMd,
                  0,
                  NereusTokens.spaceMd,
                  NereusTokens.spaceLg,
                ),
                children: [
                  for (final section
                      in sections.value ?? const <FichaSection>[])
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: NereusTokens.spaceMd,
                      ),
                      child: _SectionCard(
                        section: section,
                        fields: [
                          for (final field
                              in fields.value ?? const <FichaField>[])
                            if (field.groupId == section.id ||
                                field.groupKey == section.key)
                              field,
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showSectionForm(
    BuildContext context,
    WidgetRef ref, {
    FichaSection? section,
  }) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (context) => _SectionForm(section: section),
    );
  }
}

class _SectionCard extends ConsumerWidget {
  const _SectionCard({required this.section, required this.fields});

  final FichaSection section;
  final List<FichaField> fields;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tone = tonoSeccion(section.key);
    return GlassCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: tone.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(iconoSeccion(section.key), size: 17, color: tone),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      section.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    if (section.description != null)
                      Text(
                        section.description!,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () => _edit(context, ref),
                icon: const Icon(Icons.edit_outlined, size: 18),
              ),
              IconButton(
                onPressed: () => _delete(context, ref),
                icon: const Icon(Icons.delete_outline, size: 18),
              ),
            ],
          ),
          const SizedBox(height: 12),
          if (fields.isEmpty)
            Text('Sin campos', style: Theme.of(context).textTheme.bodyMedium)
          else
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final field in fields) FichaFieldChip(field: field),
              ],
            ),
          const SizedBox(height: 12),
          Row(
            children: [
              OutlinedButton.icon(
                onPressed: () => _addField(context, ref),
                icon: const Icon(Icons.add, size: 16),
                label: const Text('Campo'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _edit(BuildContext context, WidgetRef ref) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (_) => _SectionForm(section: section),
    );
  }

  Future<void> _delete(BuildContext context, WidgetRef ref) async {
    final confirmed = await confirmAction(
      context,
      title: 'Eliminar sección',
      message: 'Se eliminará "${section.name}" y todos sus campos.',
      destructive: true,
    );
    if (!confirmed) return;
    try {
      await ref.read(fichaRepositoryProvider).deleteSection(section.id);
      invalidateFichaCache(ref);
    } on Object catch (error) {
      if (context.mounted) showFriendlyError(context, error);
    }
  }

  Future<void> _addField(BuildContext context, WidgetRef ref) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (_) => _FieldForm(sectionId: section.id),
    );
  }
}
