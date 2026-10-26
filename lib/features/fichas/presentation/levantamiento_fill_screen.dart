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

part 'levantamiento_fill_widgets.dart';

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
            kicker: 'Terreno',
            title: detail.value?.title ?? 'Levantamiento',
            subtitle: 'Completa los datos. Se guardan en la ficha del cliente.',
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
                      if (isReadOnly) _ReadOnlyBanner(status: survey.status),
                      GlassCard(
                        child: SelectField<String>(
                          label: 'Cliente *',
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
                            if (match.isEmpty) return 'Cliente';
                            final client = match.first;
                            final code = client.clientCode;
                            return code == null || code.isEmpty
                                ? client.name
                                : '${client.name} · $code';
                          },
                          onChanged: isReadOnly
                              ? null
                              : (value) => setState(() => _clientId = value),
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
        const ApiError(message: 'Elige un cliente para guardar la ficha.'),
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
