part of 'client_360_screen.dart';

class _EditableSectionCard extends StatelessWidget {
  const _EditableSectionCard({
    required this.section,
    required this.fields,
    required this.values,
    this.actionLabel,
    this.onAction,
    required this.onEditField,
  });

  final FichaSection section;
  final List<FichaField> fields;
  final List<FichaValue> values;
  final String? actionLabel;
  final VoidCallback? onAction;
  final ValueChanged<FichaField> onEditField;

  @override
  Widget build(BuildContext context) {
    return FichaSectionCard(
      section: section,
      fields: fields,
      values: values,
      actionLabel: actionLabel,
      onAction: onAction,
      secondaryLabel: 'Editar valores',
      onSecondary: () => _editSection(context),
    );
  }

  Future<void> _editSection(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        expand: false,
        builder: (context, scrollController) {
          return ListView(
            controller: scrollController,
            padding: const EdgeInsets.all(NereusTokens.spaceMd),
            children: [
              Text(
                'Editar ${section.name}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              for (final field in fields)
                _EditableFieldLine(
                  field: field,
                  values: values,
                  onEdit: () => onEditField(field),
                ),
            ],
          );
        },
      ),
    );
  }
}

class _EditableFieldLine extends StatelessWidget {
  const _EditableFieldLine({
    required this.field,
    required this.values,
    required this.onEdit,
  });

  final FichaField field;
  final List<FichaValue> values;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    String? value;
    for (final item in values) {
      if (item.fieldId == field.id || item.fieldKey == field.key) {
        value = item.displayValue;
        break;
      }
    }
    return InkWell(
      onTap: onEdit,
      borderRadius: BorderRadius.circular(NereusTokens.radiusSm),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: FichaFieldLine(field: field, value: value),
      ),
    );
  }
}

class _FieldValueDialog extends StatefulWidget {
  const _FieldValueDialog({required this.field, this.initialValue});

  final FichaField field;
  final String? initialValue;

  @override
  State<_FieldValueDialog> createState() => _FieldValueDialogState();
}

class _FieldValueDialogState extends State<_FieldValueDialog> {
  late final _controller = TextEditingController(
    text: widget.initialValue ?? '',
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.field.name),
      content: TextField(
        controller: _controller,
        decoration: InputDecoration(
          hintText: 'Ingresa el valor',
          suffixText: widget.field.unit,
        ),
        autofocus: true,
        maxLines: widget.field.fieldType.toUpperCase() == 'TEXT' ? 4 : 1,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancelar'),
        ),
        FilledButton(
          onPressed: () => Navigator.of(context).pop(_controller.text.trim()),
          child: const Text('Guardar'),
        ),
      ],
    );
  }
}

class _HistoryTile extends StatefulWidget {
  const _HistoryTile({
    required this.respuesta,
    required this.dateFormat,
  });

  final LevantamientoRespuesta respuesta;
  final DateFormat dateFormat;

  @override
  State<_HistoryTile> createState() => _HistoryTileState();
}

class _HistoryTileState extends State<_HistoryTile> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final answers = widget.respuesta.answers.entries.toList();
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const Icon(Icons.task_alt_outlined),
          title: Text('Levantamiento ${widget.respuesta.surveyId}'),
          subtitle: Text(
            widget.respuesta.createdAt == null
                ? 'Sin fecha'
                : widget.dateFormat.format(widget.respuesta.createdAt!),
          ),
          trailing: IconButton(
            onPressed: () => setState(() => _expanded = !_expanded),
            icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
          ),
        ),
        if (_expanded && answers.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 40, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final entry in answers)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            entry.key,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            '${entry.value}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
