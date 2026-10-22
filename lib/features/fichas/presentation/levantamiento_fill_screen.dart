import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/customers/domain/client_models.dart';
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
    final wide = fichaWide(context);

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
                  final questions = [
                    for (final question in survey.questions)
                      _QuestionField(
                        question: question,
                        onChanged: (value) => _answers[question.id] = value,
                      ),
                  ];
                  return ListView(
                    padding: const EdgeInsets.fromLTRB(
                      NereusTokens.spaceMd,
                      0,
                      NereusTokens.spaceMd,
                      NereusTokens.spaceLg,
                    ),
                    children: [
                      GlassCard(
                        child: SelectField<String>(
                          label: 'Predio',
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
                          onChanged: (value) =>
                              setState(() => _clientId = value),
                        ),
                      ),
                      const SizedBox(height: 12),
                      GlassCard(
                        child: FichaGrid(
                          maxColumns: 2,
                          children: questions,
                        ),
                      ),
                      if (!wide) ...[
                        const SizedBox(height: 16),
                        FilledButton(
                          onPressed: _busy ? null : () => _submit(survey),
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

  Future<void> _submit(Levantamiento survey) async {
    final clientId = _clientId;
    if (clientId == null) {
      showFriendlyError(
        context,
        const ApiError(message: 'Elige un predio para guardar la ficha.'),
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

class _QuestionField extends StatefulWidget {
  const _QuestionField({required this.question, required this.onChanged});

  final LevantamientoQuestion question;
  final ValueChanged<Object?> onChanged;

  @override
  State<_QuestionField> createState() => _QuestionFieldState();
}

class _QuestionFieldState extends State<_QuestionField> {
  bool _flag = false;
  String? _select;
  DateTime? _date;
  late final TextEditingController _dateText;
  final _dateFormat = DateFormat('dd-MM-yyyy');

  LevantamientoQuestion get question => widget.question;

  String get _label =>
      question.required ? '${question.label} *' : question.label;

  @override
  void initState() {
    super.initState();
    _dateText = TextEditingController();
  }

  @override
  void dispose() {
    _dateText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    switch (question.type) {
      case LevantamientoQuestionType.boolean:
        return SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(_label),
          value: _flag,
          onChanged: (value) {
            setState(() => _flag = value);
            widget.onChanged(value);
          },
        );
      case LevantamientoQuestionType.select:
        return SelectField<String>(
          label: _label,
          value: _select,
          items: question.options,
          onChanged: (value) {
            setState(() => _select = value);
            widget.onChanged(value);
          },
        );
      case LevantamientoQuestionType.date:
        return TextFormField(
          readOnly: true,
          controller: _dateText,
          decoration: InputDecoration(
            labelText: _label,
            suffixIcon: const Icon(Icons.event_outlined),
            hintText: 'Elige una fecha',
          ),
          onTap: () async {
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
            if (picked == null) return;
            setState(() => _date = picked);
            _dateText.text = _dateFormat.format(picked);
            widget.onChanged(_dateText.text);
          },
        );
      case LevantamientoQuestionType.number:
        return TextFormField(
          decoration: InputDecoration(labelText: _label),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          onChanged: (value) => widget.onChanged(num.tryParse(value) ?? value),
        );
      case LevantamientoQuestionType.url:
        return TextFormField(
          decoration: InputDecoration(
            labelText: _label,
            hintText: 'https://…',
          ),
          keyboardType: TextInputType.url,
          onChanged: widget.onChanged,
        );
      case LevantamientoQuestionType.file:
        return TextFormField(
          decoration: InputDecoration(
            labelText: _label,
            hintText: 'Referencia o nombre del archivo',
          ),
          onChanged: widget.onChanged,
        );
      case LevantamientoQuestionType.text:
        return TextFormField(
          decoration: InputDecoration(labelText: _label),
          onChanged: widget.onChanged,
        );
    }
  }
}
