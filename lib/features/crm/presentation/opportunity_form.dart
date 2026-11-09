import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/features/crm/domain/crm_models.dart';
import 'package:nereus_app/features/crm/providers/crm_providers.dart';
import 'package:nereus_app/features/customers/domain/client_models.dart';

class OpportunityForm extends ConsumerStatefulWidget {
  const OpportunityForm({
    super.key,
    required this.stages,
    required this.clients,
    this.initialClientId,
    this.initial,
  });

  final List<OpportunityStageItem> stages;
  final List<ClientItem> clients;
  final String? initialClientId;
  final OpportunityItem? initial;

  @override
  ConsumerState<OpportunityForm> createState() => _OpportunityFormState();
}

class _OpportunityFormState extends ConsumerState<OpportunityForm> {
  late final _title = TextEditingController(text: widget.initial?.title ?? '');
  late final _value = TextEditingController(
    text: widget.initial != null && widget.initial!.estimatedValue > 0
        ? widget.initial!.estimatedValue.round().toString()
        : '',
  );
  late final _notes = TextEditingController(text: widget.initial?.notes ?? '');
  late String? _stageId =
      widget.initial?.stageId ??
      (widget.stages.isEmpty ? null : widget.stages.first.id);
  late String? _clientId = widget.initial?.clientId ?? widget.initialClientId;
  late DateTime? _closeDate = widget.initial?.expectedCloseDate != null
      ? DateTime.tryParse(widget.initial!.expectedCloseDate!)
      : null;
  var _busy = false;
  String? _error;

  @override
  void dispose() {
    _title.dispose();
    _value.dispose();
    _notes.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final initial = _closeDate ?? now;
    final picked = await showDatePicker(
      context: context,
      initialDate: initial.isBefore(now.subtract(const Duration(days: 365)))
          ? now
          : initial,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: now.add(const Duration(days: 365 * 3)),
    );
    if (picked != null && mounted) setState(() => _closeDate = picked);
  }

  Future<void> _save() async {
    final title = _title.text.trim();
    final stageId = _stageId;
    if (title.isEmpty || stageId == null) {
      setState(() => _error = 'Título y etapa son obligatorios.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final close = _closeDate;
      final closeStr = close == null
          ? null
          : '${close.year.toString().padLeft(4, '0')}-'
                '${close.month.toString().padLeft(2, '0')}-'
                '${close.day.toString().padLeft(2, '0')}';
      final estValue =
          double.tryParse(_value.text.replaceAll('.', '')) ?? 0;
      final repo = ref.read(crmRepositoryProvider);
      if (widget.initial == null) {
        await repo.createOpportunity(
          title: title,
          stageId: stageId,
          clientId: _clientId,
          estimatedValue: estValue,
          expectedCloseDate: closeStr,
          notes: _notes.text.trim(),
        );
      } else {
        await repo.updateOpportunity(
          id: widget.initial!.id,
          title: title,
          stageId: stageId,
          clientId: _clientId,
          estimatedValue: estValue,
          expectedCloseDate: closeStr,
          notes: _notes.text.trim(),
        );
      }
      if (mounted) Navigator.pop(context, true);
    } on Object catch (error) {
      if (!mounted) return;
      setState(() {
        _busy = false;
        _error = userFacingErrorMessage(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final close = _closeDate;
    final stageIds = {for (final s in widget.stages) s.id};
    final validStageId = stageIds.contains(_stageId)
        ? _stageId
        : (widget.stages.isEmpty ? null : widget.stages.first.id);
    final clientIds = {for (final c in widget.clients) c.id};
    final validClientId = clientIds.contains(_clientId) ? _clientId : null;

    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: _save,
      submitLabel: widget.initial == null ? 'Crear' : 'Guardar',
      children: [
        TextField(
          controller: _title,
          decoration: const InputDecoration(labelText: 'Título'),
          textInputAction: TextInputAction.next,
        ),
        DropdownButtonFormField<String>(
          isExpanded: true,
          // This Flutter SDK still reads `value` on DropdownButtonFormField.
          // ignore: deprecated_member_use
          value: validStageId,
          decoration: const InputDecoration(labelText: 'Etapa'),
          items: [
            for (final stage in widget.stages)
              DropdownMenuItem(value: stage.id, child: Text(stage.name)),
          ],
          onChanged: (value) => setState(() => _stageId = value),
        ),
        DropdownButtonFormField<String?>(
          isExpanded: true,
          // This Flutter SDK still reads `value` on DropdownButtonFormField.
          // ignore: deprecated_member_use
          value: validClientId,
          decoration: const InputDecoration(labelText: 'Cliente'),
          items: [
            const DropdownMenuItem(value: null, child: Text('Sin cliente')),
            for (final client in widget.clients)
              DropdownMenuItem(value: client.id, child: Text(client.name)),
          ],
          onChanged: widget.initialClientId == null
              ? (value) => setState(() => _clientId = value)
              : null,
        ),
        TextField(
          controller: _value,
          decoration: const InputDecoration(labelText: 'Valor estimado (CLP)'),
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Cierre esperado'),
          subtitle: Text(
            close == null
                ? 'Sin fecha'
                : '${close.day}/${close.month}/${close.year}',
          ),
          trailing: const Icon(Icons.event),
          onTap: _pickDate,
        ),
        TextField(
          controller: _notes,
          decoration: const InputDecoration(labelText: 'Notas técnicas o comerciales'),
          maxLines: 2,
        ),
      ],
    );
  }
}
