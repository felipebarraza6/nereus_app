import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/breakpoints.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/customers/domain/client_models.dart';
import 'package:nereus_app/features/fichas/domain/ficha_mapping.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/presentation/ficha_ui.dart';
import 'package:nereus_app/features/fichas/providers/fichas_provider.dart';

class LevantamientoFillScreen extends ConsumerStatefulWidget {
  const LevantamientoFillScreen({
    super.key,
    required this.surveyId,
    this.clientId,
  });

  final String surveyId;
  final String? clientId;

  @override
  ConsumerState<LevantamientoFillScreen> createState() =>
      _LevantamientoFillScreenState();
}

class _LevantamientoFillScreenState
    extends ConsumerState<LevantamientoFillScreen> {
  final _answers = <String, Object?>{};
  final _errors = <String, String?>{};
  String? _clientId;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _clientId = widget.clientId;
  }

  @override
  Widget build(BuildContext context) {
    final detail = ref.watch(levantamientoDetailProvider(widget.surveyId));
    final clients = ref.watch(customerClientsProvider);
    final wide = context.screenWidth >= 960;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          PageHeader(
            title: detail.value?.title ?? 'Levantamiento',
            subtitle: 'Completa los datos. Se guardan en la ficha del predio.',
            actions: [
              if (wide)
                FilledButton(
                  onPressed: _busy || detail.value == null
                      ? null
                      : () => _submit(detail.value!),
                  child: const Text('Guardar en la ficha'),
                ),
            ],
          ),
          Expanded(
            child: AsyncBody(
              isLoading: detail.isLoading,
              hasError: detail.hasError,
              isEmpty: detail.value == null,
              onRetry: () =>
                  ref.invalidate(levantamientoDetailProvider(widget.surveyId)),
              emptyMessage: 'No encontramos este formulario.',
              child: Builder(
                builder: (context) {
                  final survey = detail.value!;
                  final isReadOnly = survey.status.toUpperCase() != 'ACTIVE';
                  final questions = survey.questions;
                  final progress = _progressFor(questions);
                  return ListView(
                    padding: const EdgeInsets.fromLTRB(
                      NereusTokens.spaceMd,
                      0,
                      NereusTokens.spaceMd,
                      NereusTokens.spaceLg,
                    ),
                    children: [
                      if (isReadOnly)
                        _ReadOnlyBanner(status: survey.status),
                      GlassCard(
                        child: SelectField<String>(
                          label: 'Predio *',
                          value: _clientId,
                          items: [
                            for (final client
                                in clients.value ?? const <ClientItem>[])
                              client.id,
                          ],
                          itemLabel: (id) {
                            final match =
                                (clients.value ?? const <ClientItem>[])
                                    .where((c) => c.id == id);
                            if (match.isEmpty) return 'Predio';
                            final client = match.first;
                            final code = client.clientCode;
                            return code == null || code.isEmpty
                                ? client.name
                                : '${client.name} · $code';
                          },
                          onChanged: isReadOnly
                              ? null
                              : (value) =>
                                  setState(() => _clientId = value),
                        ),
                      ),
                      const SizedBox(height: 12),
                      _ProgressBar(progress: progress),
                      const SizedBox(height: 12),
                      GlassCard(
                        child: FichaGrid(
                          maxColumns: context.isCompact ? 1 : 2,
                          children: [
                            for (final question in questions)
                              _QuestionField(
                                key: ValueKey(question.id),
                                question: question,
                                enabled: !isReadOnly,
                                error: _errors[question.id],
                                onChanged: (value) => _setAnswer(
                                  question: question,
                                  value: value,
                                ),
                              ),
                          ],
                        ),
                      ),
                      if (!wide) ...[
                        const SizedBox(height: 16),
                        FilledButton(
                          onPressed: _busy || isReadOnly
                              ? null
                              : () => _submit(survey),
                          child: _busy
                              ? const SizedBox(
                                  width: 18,
                                  height: 18,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Text('Guardar en la ficha'),
                        ),
                      ],
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

  double _progressFor(List<LevantamientoQuestion> questions) {
    if (questions.isEmpty) return 1;
    final requiredOnly = questions.where((q) => q.required);
    final target = requiredOnly.isEmpty ? questions : requiredOnly;
    var filled = 0;
    for (final question in target) {
      if (!isBlank(_answers[question.id])) filled++;
    }
    return filled / target.length;
  }

  void _setAnswer({
    required LevantamientoQuestion question,
    required Object? value,
  }) {
    setState(() {
      _answers[question.id] = value;
      _errors[question.id] = validateAnswer(question, value);
    });
  }

  bool _validateAll(List<LevantamientoQuestion> questions) {
    var valid = true;
    setState(() {
      for (final question in questions) {
        final error = validateAnswer(question, _answers[question.id]);
        _errors[question.id] = error;
        if (error != null) valid = false;
      }
    });
    return valid;
  }

  Future<void> _submit(Levantamiento survey) async {
    final clientId = _clientId;
    if (clientId == null) {
      showFriendlyError(
        context,
        const ApiError(message: 'Elige un predio para guardar la ficha.'),
      );
      return;
    }
    if (!_validateAll(survey.questions)) {
      showFriendlyError(
        context,
        const ApiError(message: 'Revisa los campos marcados.'),
      );
      return;
    }
    setState(() => _busy = true);
    try {
      await ref.read(levantamientoRepositoryProvider).submit(
            surveyId: survey.id,
            answers: Map<String, Object?>.from(_answers),
            clientId: clientId,
          );
      final result = await ref.read(fichaRepositoryProvider).applyAnswers(
            clientId: clientId,
            answers: Map<String, Object?>.from(_answers),
          );
      ref.invalidate(clientFichaValuesProvider(clientId));
      if (!mounted) return;
      showFriendlyOk(
        context,
        result.applied == 0
            ? 'Guardado. Completa al menos un campo para verlo en la ficha.'
            : 'Guardado. ${result.applied} dato${result.applied == 1 ? '' : 's'} en la ficha.',
      );
      context.go('/clients/$clientId');
    } on Object catch (error) {
      if (mounted) showFriendlyError(context, error);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }
}

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
            Icon(Icons.lock_outline,
                color: Theme.of(context).colorScheme.primary),
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
              minHeight: 8,
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
          onChanged: (value) =>
              widget.onChanged(num.tryParse(value) ?? value),
        );
      case LevantamientoQuestionType.integer:
        return TextFormField(
          decoration: _decoration(),
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          enabled: enabled,
          onChanged: (value) =>
              widget.onChanged(int.tryParse(value) ?? value),
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
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final option in options)
            FilterChip(
              label: Text(option),
              selected: selected.contains(option),
              onSelected: enabled
                  ? (value) {
                      final next = Set<String>.from(selected);
                      if (value) {
                        next.add(option);
                      } else {
                        next.remove(option);
                      }
                      onChanged(next);
                    }
                  : null,
            ),
        ],
      ),
    );
  }
}
