import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';
import 'package:nereus_app/features/strom/presentation/strom_desk.dart';
import 'package:nereus_app/features/strom/providers/strom_providers.dart';

class StromVisitScreen extends ConsumerWidget {
  const StromVisitScreen({
    super.key,
    required this.ticketId,
    required this.visitId,
  });

  final String ticketId;
  final String visitId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visit = ref.watch(stromVisitProvider(visitId));
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: visit.when(
        loading: () => const ShimmerList(),
        error: (error, _) => AsyncBody(
          isLoading: false,
          hasError: true,
          isEmpty: true,
          onRetry: () => ref.invalidate(stromVisitProvider(visitId)),
          errorMessage: userFacingErrorMessage(error),
          isNetworkError: isNetworkFailure(error),
          child: const SizedBox.shrink(),
        ),
        data: (item) => _VisitBody(ticketId: ticketId, visit: item),
      ),
    );
  }
}

class _VisitBody extends ConsumerStatefulWidget {
  const _VisitBody({required this.ticketId, required this.visit});

  final String ticketId;
  final StromVisit visit;

  @override
  ConsumerState<_VisitBody> createState() => _VisitBodyState();
}

class _VisitBodyState extends ConsumerState<_VisitBody> {
  final _activity = TextEditingController();
  final _checkNote = TextEditingController();
  var _decision = TechnicalDecision.aprobada;
  var _busy = false;

  @override
  void dispose() {
    _activity.dispose();
    _checkNote.dispose();
    super.dispose();
  }

  StromVisit get visit => widget.visit;

  Future<void> _run(Future<void> Function() action) async {
    setState(() => _busy = true);
    try {
      await action();
      ref.invalidate(stromVisitProvider(visit.id));
      ref.invalidate(stromVisitsProvider(widget.ticketId));
    } on Object catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(userFacingErrorMessage(error))),
        );
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _addActivity() async {
    final text = _activity.text.trim();
    if (text.isEmpty) return;
    await _run(() async {
      await ref.read(stromRepositoryProvider).addActivity(
            workOrderId: visit.id,
            description: text,
          );
      _activity.clear();
    });
  }

  Future<void> _record(StromActivity item) async {
    final measurement = TextEditingController(text: item.measurement);
    final observation = TextEditingController(text: item.observation);
    var result = item.result ?? ActivityResult.completa;
    final saved = await showDialog<bool>(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setLocal) => AlertDialog(
          title: Text(item.description),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButton<ActivityResult>(
                value: result,
                isExpanded: true,
                items: [
                  for (final value in ActivityResult.values)
                    DropdownMenuItem(value: value, child: Text(resultLabel(value))),
                ],
                onChanged: (value) {
                  if (value != null) setLocal(() => result = value);
                },
              ),
              TextField(
                controller: measurement,
                decoration: const InputDecoration(labelText: 'Medición'),
              ),
              TextField(
                controller: observation,
                decoration: const InputDecoration(labelText: 'Observación'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancelar'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
    if (saved != true) {
      measurement.dispose();
      observation.dispose();
      return;
    }
    final measurementText = measurement.text;
    final observationText = observation.text;
    measurement.dispose();
    observation.dispose();
    await _run(() {
      return ref.read(stromRepositoryProvider).recordActivity(
            itemId: item.id,
            result: result,
            measurement: measurementText,
            observation: observationText,
          );
    });
  }

  Future<void> _photo() async {
    final picked = await FilePicker.platform.pickFiles(withData: true);
    final file = picked?.files.single;
    final bytes = file?.bytes;
    if (file == null || bytes == null) return;
    await _run(() {
      return ref.read(stromRepositoryProvider).uploadPhoto(
            workOrderId: visit.id,
            bytes: bytes,
            filename: file.name,
          );
    });
  }

  Future<void> _reschedule() async {
    final reason = TextEditingController();
    var when = visit.scheduledDate?.toLocal() ?? DateTime.now();
    final saved = await showDialog<bool>(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setLocal) => AlertDialog(
          title: const Text('Reagendar'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: when,
                    firstDate: DateTime.now().subtract(const Duration(days: 1)),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  );
                  if (date != null) setLocal(() => when = date);
                },
                child: Text(DateFormat.yMMMd().format(when)),
              ),
              TextField(
                controller: reason,
                decoration: const InputDecoration(labelText: 'Motivo'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancelar'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, reason.text.trim().isNotEmpty),
              child: const Text('Guardar'),
            ),
          ],
        ),
      ),
    );
    final reasonText = reason.text;
    reason.dispose();
    if (saved != true) return;
    await _run(() {
      return ref.read(stromRepositoryProvider).reschedule(
            current: visit,
            scheduledDate: when,
            reason: reasonText,
          );
    });
  }

  Future<void> _check({required bool markExecuted}) async {
    await _run(() {
      return ref.read(stromRepositoryProvider).saveTechnicalCheck(
            current: visit,
            decision: _decision,
            note: _checkNote.text,
            markExecuted: markExecuted,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final when = visit.scheduledDate == null
        ? 'Sin fecha'
        : DateFormat.yMMMd().add_Hm().format(visit.scheduledDate!.toLocal());
    final specialty = visit.specialty;
    final ready = canMarkVisitExecuted(visit.items);
    return ListView(
      padding: const EdgeInsets.only(bottom: 32),
      children: [
        PageHeader(
          title: visit.number.isEmpty ? 'Visita' : visit.number,
          subtitle: [
            when,
            if (specialty != null) specialtyLabel(specialty),
            if (visit.crew.isNotEmpty) visit.crew,
          ].join(' · '),
        ),
        StromReadingColumn(
          child: Padding(
          padding: EdgeInsets.symmetric(horizontal: NereusTokens.spaceMd),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Registrar el check de terreno no cierra el proyecto.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 8),
              OutlinedButton(
                onPressed: _busy ? null : _reschedule,
                child: const Text('Reagendar con motivo'),
              ),
              const SizedBox(height: 16),
              Text('Check terreno', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              for (final item in visit.items)
                GlassCard(
                  onTap: _busy ? null : () => _record(item),
                  child: ListTile(
                    title: Text(item.description),
                    subtitle: Text(
                      item.result == null
                          ? 'Sin resultado'
                          : [
                              resultLabel(item.result!),
                              if (item.measurement.isNotEmpty) item.measurement,
                            ].join(' · '),
                    ),
                  ),
                ),
              const SizedBox(height: 8),
              TextField(
                controller: _activity,
                decoration: const InputDecoration(
                  labelText: 'Actividad por pozo',
                ),
              ),
              const SizedBox(height: 8),
              OutlinedButton(
                onPressed: _busy ? null : _addActivity,
                child: const Text('Agregar actividad'),
              ),
              const SizedBox(height: 8),
              OutlinedButton.icon(
                onPressed: _busy ? null : _photo,
                icon: const Icon(Icons.photo_camera_outlined),
                label: Text('Foto (${visit.attachmentCount})'),
              ),
              const SizedBox(height: 24),
              Text('Check técnico', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              DropdownButton<TechnicalDecision>(
                value: visit.decision ?? _decision,
                isExpanded: true,
                items: [
                  for (final value in TechnicalDecision.values)
                    DropdownMenuItem(
                      value: value,
                      child: Text(decisionLabel(value)),
                    ),
                ],
                onChanged: _busy
                    ? null
                    : (value) {
                        if (value != null) setState(() => _decision = value);
                      },
              ),
              TextField(
                controller: _checkNote,
                decoration: const InputDecoration(labelText: 'Observación del líder'),
              ),
              const SizedBox(height: 8),
              OutlinedButton(
                onPressed: _busy ? null : () => _check(markExecuted: false),
                child: const Text('Guardar check técnico'),
              ),
              const SizedBox(height: 8),
              FilledButton(
                onPressed: _busy || !ready ? null : () => _check(markExecuted: true),
                child: const Text('Dejar la visita ejecutada'),
              ),
              if (!ready)
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'Hace falta un resultado en cada actividad antes de ejecutar la visita.',
                  ),
                ),
            ],
          ),
        ),
        ),
      ],
    );
  }
}
