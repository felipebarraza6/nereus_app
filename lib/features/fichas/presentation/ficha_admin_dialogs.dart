part of 'ficha_admin_screen.dart';

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
