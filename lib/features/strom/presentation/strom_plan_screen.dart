import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';
import 'package:nereus_app/features/strom/providers/strom_providers.dart';

class StromPlanScreen extends ConsumerStatefulWidget {
  const StromPlanScreen({super.key, required this.ticketId});

  final String ticketId;

  @override
  ConsumerState<StromPlanScreen> createState() => _StromPlanScreenState();
}

class _StromPlanScreenState extends ConsumerState<StromPlanScreen> {
  final _address = TextEditingController();
  final _crew = TextEditingController();
  final _notes = TextEditingController();
  var _specialty = VisitSpecialty.hidraulica;
  DateTime _when = DateTime.now().add(const Duration(days: 1));
  var _saving = false;

  @override
  void dispose() {
    _address.dispose();
    _crew.dispose();
    _notes.dispose();
    super.dispose();
  }

  Future<void> _pickWhen() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _when,
      firstDate: DateTime.now().subtract(const Duration(days: 1)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (date == null || !mounted) return;
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_when),
    );
    if (time == null) return;
    setState(() {
      _when = DateTime(date.year, date.month, date.day, time.hour, time.minute);
    });
  }

  Future<void> _save() async {
    setState(() => _saving = true);
    try {
      final created = await ref.read(stromRepositoryProvider).createVisit(
            ticketId: widget.ticketId,
            scheduledDate: _when,
            specialty: _specialty,
            crew: _crew.text,
            address: _address.text,
            notes: _notes.text,
          );
      ref.invalidate(stromVisitsProvider(widget.ticketId));
      if (mounted) {
        context.go('/strom/${widget.ticketId}/visita/${created.id}');
      }
    } on Object catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(userFacingErrorMessage(error))),
        );
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          const PageHeader(
            title: 'Planificar visita',
            subtitle: 'La hidráulica y la eléctrica no se esperan',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: NereusTokens.spaceMd),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SegmentedButton<VisitSpecialty>(
                  segments: const [
                    ButtonSegment(
                      value: VisitSpecialty.hidraulica,
                      label: Text('Hidráulica'),
                    ),
                    ButtonSegment(
                      value: VisitSpecialty.electrica,
                      label: Text('Eléctrica'),
                    ),
                  ],
                  selected: {_specialty},
                  onSelectionChanged: (value) {
                    setState(() => _specialty = value.first);
                  },
                ),
                const SizedBox(height: 12),
                OutlinedButton.icon(
                  onPressed: _pickWhen,
                  icon: const Icon(Icons.event),
                  label: Text(
                    '${_when.day}/${_when.month}/${_when.year} ${_when.hour.toString().padLeft(2, '0')}:${_when.minute.toString().padLeft(2, '0')}',
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _crew,
                  decoration: const InputDecoration(
                    labelText: 'Cuadrilla o contratista',
                    helperText: 'Queda como dato. No necesita cuenta.',
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _address,
                  decoration: const InputDecoration(labelText: 'Dirección'),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _notes,
                  minLines: 2,
                  maxLines: 4,
                  decoration: const InputDecoration(labelText: 'Notas'),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: _saving ? null : _save,
                  child: Text(_saving ? 'Guardando' : 'Crear visita'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
