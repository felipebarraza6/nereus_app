import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
            title: 'Administrar fichas',
            subtitle: 'Crea y edita secciones y campos de ficha de predio',
            actions: [
              FilledButton.icon(
                onPressed: () => _showSectionForm(context, ref),
                icon: const Icon(Icons.add),
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
                  for (final section in sections.value ?? const <FichaSection>[])
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

  Future<void> _showSectionForm(BuildContext context, WidgetRef ref,
      {FichaSection? section}) async {
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
              CircleAvatar(
                backgroundColor: tone.withValues(alpha: 0.16),
                foregroundColor: tone,
                child: Icon(iconoSeccion(section.key)),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(section.name,
                        style: Theme.of(context).textTheme.titleMedium),
                    if (section.description != null)
                      Text(section.description!,
                          style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
              ),
              IconButton(
                onPressed: () => _edit(context, ref),
                icon: const Icon(Icons.edit_outlined),
              ),
              IconButton(
                onPressed: () => _delete(context, ref),
                icon: const Icon(Icons.delete_outline),
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
              TextButton.icon(
                onPressed: () => _addField(context, ref),
                icon: const Icon(Icons.add),
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

class _SectionForm extends ConsumerStatefulWidget {
  const _SectionForm({this.section});

  final FichaSection? section;

  @override
  ConsumerState<_SectionForm> createState() => _SectionFormState();
}

class _SectionFormState extends ConsumerState<_SectionForm> {
  late final _name = TextEditingController(text: widget.section?.name ?? '');
  late final _key = TextEditingController(text: widget.section?.key ?? '');
  late final _description =
      TextEditingController(text: widget.section?.description ?? '');
  bool _busy = false;

  @override
  void dispose() {
    _name.dispose();
    _key.dispose();
    _description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final compact = context.isCompact;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        NereusTokens.spaceMd,
        NereusTokens.spaceMd,
        NereusTokens.spaceMd,
        MediaQuery.of(context).viewInsets.bottom + NereusTokens.spaceMd,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.section == null ? 'Nueva sección' : 'Editar sección',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _name,
            decoration: const InputDecoration(labelText: 'Nombre'),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _key,
            decoration: const InputDecoration(
              labelText: 'Key',
              hintText: 'ej: derechos_agua',
            ),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _description,
            decoration: const InputDecoration(labelText: 'Descripción'),
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: _busy ? null : _save,
            child: _busy
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Guardar'),
          ),
          if (compact) const SizedBox(height: 12),
        ],
      ),
    );
  }

  Future<void> _save() async {
    final name = _name.text.trim();
    final key = _key.text.trim();
    if (name.isEmpty || key.isEmpty) {
      showFriendlyError(
        context,
        const ApiError(message: 'Nombre y key son obligatorios.'),
      );
      return;
    }
    setState(() => _busy = true);
    try {
      final spec = WaterSectionSpec(
        key: key,
        name: name,
        description: _description.text.trim(),
        fields: const [],
      );
      final repo = ref.read(fichaRepositoryProvider);
      if (widget.section == null) {
        await repo.createSection(spec);
      } else {
        await repo.updateSection(widget.section!.id, spec);
      }
      invalidateFichaCache(ref);
      if (mounted) Navigator.of(context).pop();
    } on Object catch (error) {
      if (mounted) showFriendlyError(context, error);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }
}

class _FieldForm extends ConsumerStatefulWidget {
  const _FieldForm({required this.sectionId});

  final String sectionId;

  @override
  ConsumerState<_FieldForm> createState() => _FieldFormState();
}

class _FieldFormState extends ConsumerState<_FieldForm> {
  late final _name = TextEditingController();
  late final _key = TextEditingController();
  late final _unit = TextEditingController();
  late final _options = TextEditingController();
  String _type = 'TEXT';
  bool _required = false;
  bool _busy = false;

  static const _types = [
    'TEXT',
    'NUMBER',
    'INTEGER',
    'DECIMAL',
    'BOOLEAN',
    'SELECT',
    'MULTISELECT',
    'DATE',
    'DATETIME',
    'URL',
    'EMAIL',
    'PHONE',
    'FILE',
    'IMAGE',
  ];

  @override
  void dispose() {
    _name.dispose();
    _key.dispose();
    _unit.dispose();
    _options.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final compact = context.isCompact;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        NereusTokens.spaceMd,
        NereusTokens.spaceMd,
        NereusTokens.spaceMd,
        MediaQuery.of(context).viewInsets.bottom + NereusTokens.spaceMd,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Nuevo campo',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: _name,
            decoration: const InputDecoration(labelText: 'Nombre'),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _key,
            decoration: const InputDecoration(
              labelText: 'Key',
              hintText: 'ej: caudal_otorgado',
            ),
          ),
          const SizedBox(height: 12),
          SelectField<String>(
            label: 'Tipo',
            value: _type,
            items: _types,
            onChanged: (value) {
              if (value != null) setState(() => _type = value);
            },
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _unit,
            decoration: const InputDecoration(
              labelText: 'Unidad (opcional)',
              hintText: 'ej: L/s',
            ),
          ),
          const SizedBox(height: 12),
          TextFormField(
            controller: _options,
            decoration: const InputDecoration(
              labelText: 'Opciones (solo SELECT, separadas por coma)',
              hintText: 'Opción 1, Opción 2',
            ),
          ),
          const SizedBox(height: 8),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Obligatorio'),
            value: _required,
            onChanged: (value) => setState(() => _required = value),
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: _busy ? null : _save,
            child: _busy
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Text('Guardar'),
          ),
          if (compact) const SizedBox(height: 12),
        ],
      ),
    );
  }

  Future<void> _save() async {
    final name = _name.text.trim();
    final key = _key.text.trim();
    if (name.isEmpty || key.isEmpty) {
      showFriendlyError(
        context,
        const ApiError(message: 'Nombre y key son obligatorios.'),
      );
      return;
    }
    setState(() => _busy = true);
    try {
      final options = _options.text
          .split(',')
          .map((s) => s.trim())
          .where((s) => s.isNotEmpty)
          .toList();
      final spec = WaterFieldSpec(
        key: key,
        name: name,
        fieldType: _type,
        unit: _unit.text.trim().isEmpty ? null : _unit.text.trim(),
        options: options,
        required: _required,
      );
      await ref
          .read(fichaRepositoryProvider)
          .createField(groupId: widget.sectionId, spec: spec);
      invalidateFichaCache(ref);
      if (mounted) Navigator.of(context).pop();
    } on Object catch (error) {
      if (mounted) showFriendlyError(context, error);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }
}
