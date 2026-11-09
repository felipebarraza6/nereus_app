part of 'levantamiento_fill_screen.dart';

class _ReadOnlyBanner extends StatelessWidget {
  const _ReadOnlyBanner({required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: GlassCard(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Row(
          children: [
            Icon(
              Icons.lock_outline,
              size: 16,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                'Este levantamiento está ${levantamientoEstado(status).toLowerCase()} y no se puede editar.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  const _ProgressBar({required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final clamped = progress.clamp(0.0, 1.0);
    return GlassCard(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Progreso: ${(clamped * 100).round()}%',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
            child: LinearProgressIndicator(
              value: clamped,
              minHeight: 6,
              backgroundColor: scheme.surfaceContainerHighest,
              valueColor: AlwaysStoppedAnimation<Color>(scheme.primary),
            ),
          ),
        ],
      ),
    );
  }
}

class _QuestionField extends StatefulWidget {
  const _QuestionField({
    super.key,
    required this.question,
    required this.onChanged,
    this.enabled = true,
    this.error,
  });

  final LevantamientoQuestion question;
  final ValueChanged<Object?> onChanged;
  final bool enabled;
  final String? error;

  @override
  State<_QuestionField> createState() => _QuestionFieldState();
}

class _QuestionFieldState extends State<_QuestionField> {
  bool _flag = false;
  String? _select;
  final _selected = <String>{};
  DateTime? _date;
  TimeOfDay? _time;
  late final TextEditingController _dateText;
  late final TextEditingController _text;
  final _dateFormat = DateFormat('dd-MM-yyyy');
  final _dateTimeFormat = DateFormat('dd-MM-yyyy HH:mm');

  LevantamientoQuestion get question => widget.question;

  String get _label =>
      question.required ? '${question.label} *' : question.label;

  @override
  void initState() {
    super.initState();
    _dateText = TextEditingController();
    _text = TextEditingController();
  }

  @override
  void dispose() {
    _dateText.dispose();
    _text.dispose();
    super.dispose();
  }

  InputDecoration _decoration({String? hint}) {
    return InputDecoration(
      labelText: _label,
      hintText: hint,
      errorText: widget.error,
    );
  }

  @override
  Widget build(BuildContext context) {
    final enabled = widget.enabled;
    switch (question.type) {
      case LevantamientoQuestionType.boolean:
        return SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(_label),
          value: _flag,
          onChanged: enabled
              ? (value) {
                  setState(() => _flag = value);
                  widget.onChanged(value);
                }
              : null,
        );
      case LevantamientoQuestionType.select:
        return SelectField<String>(
          label: _label,
          value: _select,
          items: question.options,
          onChanged: enabled
              ? (value) {
                  setState(() => _select = value);
                  widget.onChanged(value);
                }
              : null,
        );
      case LevantamientoQuestionType.multiselect:
        return _MultiSelectField(
          label: _label,
          options: question.options,
          selected: _selected,
          enabled: enabled,
          onChanged: (value) {
            setState(() => _selected
              ..clear()
              ..addAll(value));
            widget.onChanged(value.toList());
          },
        );
      case LevantamientoQuestionType.date:
        return TextFormField(
          readOnly: true,
          enabled: enabled,
          controller: _dateText,
          decoration: _decoration(hint: 'Elige una fecha'),
          onTap: enabled ? _pickDate : null,
        );
      case LevantamientoQuestionType.datetime:
        return TextFormField(
          readOnly: true,
          enabled: enabled,
          controller: _dateText,
          decoration: _decoration(hint: 'Elige fecha y hora'),
          onTap: enabled ? _pickDateTime : null,
        );
      case LevantamientoQuestionType.number:
      case LevantamientoQuestionType.decimal:
        return TextFormField(
          decoration: _decoration(),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          enabled: enabled,
          onChanged: (value) => widget.onChanged(num.tryParse(value) ?? value),
        );
      case LevantamientoQuestionType.integer:
        return TextFormField(
          decoration: _decoration(),
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          enabled: enabled,
          onChanged: (value) => widget.onChanged(int.tryParse(value) ?? value),
        );
      case LevantamientoQuestionType.url:
        return TextFormField(
          decoration: _decoration(hint: 'https://…'),
          keyboardType: TextInputType.url,
          enabled: enabled,
          onChanged: widget.onChanged,
        );
      case LevantamientoQuestionType.email:
        return TextFormField(
          decoration: _decoration(hint: 'correo@ejemplo.cl'),
          keyboardType: TextInputType.emailAddress,
          enabled: enabled,
          onChanged: widget.onChanged,
        );
      case LevantamientoQuestionType.phone:
        return TextFormField(
          decoration: _decoration(hint: '+56 9 1234 5678'),
          keyboardType: TextInputType.phone,
          enabled: enabled,
          onChanged: widget.onChanged,
        );
      case LevantamientoQuestionType.file:
      case LevantamientoQuestionType.image:
        return TextFormField(
          decoration: _decoration(
            hint: question.type == LevantamientoQuestionType.image
                ? 'Referencia o nombre de la imagen'
                : 'Referencia o nombre del archivo',
          ),
          enabled: enabled,
          onChanged: widget.onChanged,
        );
      case LevantamientoQuestionType.text:
        return TextFormField(
          decoration: _decoration(),
          enabled: enabled,
          onChanged: widget.onChanged,
        );
    }
  }

  Future<void> _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _date ?? DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
      helpText: 'Fecha',
      cancelText: 'Cancelar',
      confirmText: 'Listo',
      fieldLabelText: 'Fecha',
    );
    if (picked == null || !mounted) return;
    setState(() => _date = picked);
    _dateText.text = _dateFormat.format(picked);
    widget.onChanged(_dateText.text);
  }

  Future<void> _pickDateTime() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: _date ?? DateTime.now(),
      firstDate: DateTime(1970),
      lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
      helpText: 'Fecha',
      cancelText: 'Cancelar',
      confirmText: 'Listo',
    );
    if (pickedDate == null || !mounted) return;
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: _time ?? TimeOfDay.now(),
      cancelText: 'Cancelar',
      confirmText: 'Listo',
    );
    if (pickedTime == null || !mounted) return;
    setState(() {
      _date = pickedDate;
      _time = pickedTime;
    });
    final combined = DateTime(
      pickedDate.year,
      pickedDate.month,
      pickedDate.day,
      pickedTime.hour,
      pickedTime.minute,
    );
    _dateText.text = _dateTimeFormat.format(combined);
    widget.onChanged(_dateText.text);
  }
}

class _MultiSelectField extends StatelessWidget {
  const _MultiSelectField({
    required this.label,
    required this.options,
    required this.selected,
    required this.enabled,
    required this.onChanged,
  });

  final String label;
  final List<String> options;
  final Set<String> selected;
  final bool enabled;
  final ValueChanged<Set<String>> onChanged;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      child: Wrap(
        spacing: 6,
        runSpacing: 6,
        children: [
          for (final option in options)
            FilterPill(
              label: option,
              selected: selected.contains(option),
              onTap: () {
                if (!enabled) return;
                final next = Set<String>.from(selected);
                if (next.contains(option)) {
                  next.remove(option);
                } else {
                  next.add(option);
                }
                onChanged(next);
              },
            ),
        ],
      ),
    );
  }
}
