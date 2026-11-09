import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';
import 'package:nereus_app/features/strom/presentation/strom_chrome.dart';
import 'package:nereus_app/features/strom/providers/strom_providers.dart';
import 'package:nereus_app/features/strom/providers/strom_setup.dart';

void _aviso(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}

class StromProjectCreateScreen extends ConsumerStatefulWidget {
  const StromProjectCreateScreen({super.key, this.ticketId});

  final String? ticketId;

  @override
  ConsumerState<StromProjectCreateScreen> createState() =>
      _StromProjectCreateScreenState();
}

class _StromProjectCreateScreenState extends ConsumerState<StromProjectCreateScreen> {
  final _subject = TextEditingController();
  final _client = TextEditingController();
  final _po = TextEditingController();
  final _committed = TextEditingController();
  final _responsible = TextEditingController();
  var _kind = 'PROYECTO';
  var _saving = false;
  var _loaded = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final id = widget.ticketId;
    if (_loaded || id == null) return;
    final projects = ref.read(stromProjectsProvider('')).asData?.value;
    final project = projects?.where((item) => item.id == id).firstOrNull;
    if (project == null) return;
    _loaded = true;
    _subject.text = project.subject;
    _client.text = lineValue(project.description, 'CLIENTE').isEmpty
        ? (project.clientName ?? '')
        : lineValue(project.description, 'CLIENTE');
    _po.text = lineValue(project.description, 'OC');
    _committed.text = lineValue(project.description, 'COMPROMISO');
    _responsible.text = lineValue(project.description, 'RESPONSABLE');
    final kind = projectKind(project);
    if (kind == 'SOPORTE' || kind == 'MANTENCION' || kind == 'PROYECTO') {
      _kind = kind;
    } else if (project.looksLikeSupport) {
      _kind = 'SOPORTE';
    }
  }

  @override
  void dispose() {
    _subject.dispose();
    _client.dispose();
    _po.dispose();
    _committed.dispose();
    _responsible.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_subject.text.trim().isEmpty) return;
    setState(() => _saving = true);
    try {
      final fields = (
        subject: _subject.text.trim(),
        kind: _kind,
        client: _client.text,
        po: _po.text,
        committed: _committed.text,
        responsible: _responsible.text,
      );
      final repo = ref.read(stromRepositoryProvider);
      final id = widget.ticketId;
      if (id == null) {
        await repo.createProject(
          subject: fields.subject,
          kind: fields.kind,
          client: fields.client,
          po: fields.po,
          committed: fields.committed,
          responsible: fields.responsible,
        );
      } else {
        await repo.updateProject(
          id: id,
          subject: fields.subject,
          kind: fields.kind,
          client: fields.client,
          po: fields.po,
          committed: fields.committed,
          responsible: fields.responsible,
        );
      }
      ref.invalidate(stromProjectsProvider);
      if (mounted) context.go(id == null ? '/strom' : '/strom/$id');
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
      body: StromChrome(
        title: widget.ticketId == null ? 'Crear proyecto' : 'Editar proyecto',
        child: StromForm(
          saving: _saving,
          onSubmit: _save,
          children: [
            DropdownButtonFormField<String>(
              initialValue: _kind,
              decoration: const InputDecoration(labelText: 'Tipo *'),
              items: const [
                DropdownMenuItem(value: 'PROYECTO', child: Text('Proyecto')),
                DropdownMenuItem(value: 'SOPORTE', child: Text('Soporte')),
                DropdownMenuItem(value: 'MANTENCION', child: Text('Mantención')),
              ],
              onChanged: (value) {
                if (value != null) setState(() => _kind = value);
              },
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _subject,
              decoration: const InputDecoration(labelText: 'Nombre *'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _client,
              decoration: const InputDecoration(labelText: 'Cliente'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _po,
              decoration: const InputDecoration(labelText: 'OC del cliente'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _committed,
              decoration: const InputDecoration(labelText: 'Fecha comprometida'),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _responsible,
              decoration: const InputDecoration(labelText: 'Responsable'),
            ),
          ],
        ),
      ),
    );
  }
}

class StromVisitsScreen extends ConsumerWidget {
  const StromVisitsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final visits = ref.watch(stromVisitsAllProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StromChrome(
        title: 'Visitas',
        action: StromCreateButton(onPressed: () => context.go('/strom/visitas/nueva')),
        child: visits.when(
          loading: () => const ShimmerList(),
          error: (error, _) => AsyncBody(
            isLoading: false,
            hasError: true,
            isEmpty: true,
            onRetry: () => ref.invalidate(stromVisitsAllProvider),
            errorMessage: userFacingErrorMessage(error),
            isNetworkError: isNetworkFailure(error),
            child: const SizedBox.shrink(),
          ),
          data: (items) {
            if (items.isEmpty) {
              return const Text('No hay visitas. Crea la primera.');
            }
            return ListView.separated(
              itemCount: items.length,
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final visit = items[index];
                final specialty = visit.specialty;
                return GlassCard(
                  onTap: () => context.go(
                    '/strom/${visit.ticketId}/visita/${visit.id}',
                  ),
                  child: ListTile(
                    title: Text(visit.number.isEmpty ? 'Visita' : visit.number),
                    subtitle: Text(
                      [
                        visit.ticketSubject,
                        if (specialty != null) specialtyLabel(specialty),
                        if (visit.crew.isNotEmpty) visit.crew,
                      ].where((part) => part.isNotEmpty).join(' · '),
                    ),
                    trailing: StatusChip(
                      label: visitStatusLabel(visit.status),
                      tone: NereusTokens.hydroOlive,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class StromVisitCreateScreen extends ConsumerStatefulWidget {
  const StromVisitCreateScreen({super.key});

  @override
  ConsumerState<StromVisitCreateScreen> createState() =>
      _StromVisitCreateScreenState();
}

class _StromVisitCreateScreenState extends ConsumerState<StromVisitCreateScreen> {
  final _address = TextEditingController();
  var _specialty = VisitSpecialty.hidraulica;
  String? _projectId;
  String? _crew;
  var _saving = false;

  @override
  void dispose() {
    _address.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final projectId = _projectId;
    final crew = _crew ?? (ref.read(stromSetupProvider).crews.isEmpty
        ? null
        : ref.read(stromSetupProvider).crews.first);
    if (projectId == null || crew == null) {
      _aviso(context, 'Elige el proyecto y la cuadrilla.');
      return;
    }
    setState(() => _saving = true);
    try {
      final visit = await ref.read(stromRepositoryProvider).createVisit(
            ticketId: projectId,
            scheduledDate: DateTime.now().add(const Duration(days: 1)),
            specialty: _specialty,
            crew: crew,
            address: _address.text,
            notes: '',
          );
      ref.invalidate(stromVisitsAllProvider);
      if (mounted) context.go('/strom/$projectId/visita/${visit.id}');
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
    final projects = ref.watch(stromProjectsProvider(''));
    final crews = ref.watch(stromSetupProvider).crews;
    final crew = _crew ?? (crews.isEmpty ? null : crews.first);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StromChrome(
        title: 'Crear visita',
        child: projects.when(
          loading: () => const ShimmerList(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) {
            return StromForm(
              saving: _saving,
              onSubmit: _save,
              children: [
                DropdownButtonFormField<String>(
                  initialValue: _projectId,
                  decoration: const InputDecoration(labelText: 'Proyecto *'),
                  items: [
                    for (final project in items)
                      DropdownMenuItem(
                        value: project.id,
                        child: Text(project.subject),
                      ),
                  ],
                  onChanged: (value) => setState(() => _projectId = value),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<VisitSpecialty>(
                  initialValue: _specialty,
                  decoration: const InputDecoration(labelText: 'Especialidad *'),
                  items: const [
                    DropdownMenuItem(
                      value: VisitSpecialty.hidraulica,
                      child: Text('Hidráulica'),
                    ),
                    DropdownMenuItem(
                      value: VisitSpecialty.electrica,
                      child: Text('Eléctrica'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) setState(() => _specialty = value);
                  },
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  key: ValueKey(crew),
                  initialValue: crew,
                  decoration: const InputDecoration(labelText: 'Cuadrilla *'),
                  items: [
                    for (final name in crews)
                      DropdownMenuItem(value: name, child: Text(name)),
                  ],
                  onChanged: (value) => setState(() => _crew = value),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _address,
                  decoration: const InputDecoration(labelText: 'Dirección'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class StromActivitiesScreen extends ConsumerStatefulWidget {
  const StromActivitiesScreen({super.key});

  @override
  ConsumerState<StromActivitiesScreen> createState() =>
      _StromActivitiesScreenState();
}

class _StromActivitiesScreenState extends ConsumerState<StromActivitiesScreen> {
  String? _visitId;
  String? _template;

  Future<void> _add() async {
    final visitId = _visitId;
    final template = _template ??
        (ref.read(stromSetupProvider).templates.isEmpty
            ? null
            : ref.read(stromSetupProvider).templates.first);
    if (visitId == null || template == null) {
      _aviso(context, 'Elige la visita y la plantilla.');
      return;
    }
    await ref.read(stromRepositoryProvider).addActivity(
          workOrderId: visitId,
          description: template,
        );
    ref.invalidate(stromVisitProvider(visitId));
    ref.invalidate(stromVisitsAllProvider);
  }

  Future<void> _record(StromActivity item) async {
    final visitId = _visitId;
    if (visitId == null) return;
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
                    DropdownMenuItem(
                      value: value,
                      child: Text(resultLabel(value)),
                    ),
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
    if (saved == true) {
      await ref.read(stromRepositoryProvider).recordActivity(
            itemId: item.id,
            result: result,
            measurement: measurement.text,
            observation: observation.text,
          );
      ref.invalidate(stromVisitProvider(visitId));
    }
    measurement.dispose();
    observation.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final visits = ref.watch(stromVisitsAllProvider);
    final templates = ref.watch(stromSetupProvider).templates;
    final template = _template ?? (templates.isEmpty ? null : templates.first);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StromChrome(
        title: 'Actividades',
        child: visits.when(
          loading: () => const ShimmerList(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) {
            final visitId = _visitId ?? (items.isEmpty ? null : items.first.id);
            final detail = visitId == null
                ? null
                : ref.watch(stromVisitProvider(visitId)).asData?.value;
            final selected = items.where((visit) => visit.id == visitId);
            final current = detail ?? (selected.isEmpty ? null : selected.first);
            return StromForm(
              onSubmit: _add,
              submitLabel: 'Agregar actividad',
              children: [
                DropdownButtonFormField<String>(
                  initialValue: visitId,
                  decoration: const InputDecoration(labelText: 'Visita *'),
                  items: [
                    for (final visit in items)
                      DropdownMenuItem(
                        value: visit.id,
                        child: Text(visit.number.isEmpty ? visit.id : visit.number),
                      ),
                  ],
                  onChanged: (value) => setState(() => _visitId = value),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  key: ValueKey(template),
                  initialValue: template,
                  decoration: const InputDecoration(labelText: 'Plantilla *'),
                  items: [
                    for (final name in templates)
                      DropdownMenuItem(value: name, child: Text(name)),
                  ],
                  onChanged: (value) => setState(() => _template = value),
                ),
                const SizedBox(height: 16),
                if (current != null)
                  for (final item in current.items)
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      onTap: () => _record(item),
                      title: Text(item.description),
                      subtitle: Text(
                        item.result == null ? 'Sin resultado' : resultLabel(item.result!),
                      ),
                      trailing: const Icon(Icons.edit_outlined),
                    ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class StromFieldScreen extends ConsumerStatefulWidget {
  const StromFieldScreen({super.key});

  @override
  ConsumerState<StromFieldScreen> createState() => _StromFieldScreenState();
}

class _StromFieldScreenState extends ConsumerState<StromFieldScreen> {
  String? _visitId;

  Future<void> _record(StromVisit visit, StromActivity item) async {
    final measurement = TextEditingController(text: item.measurement);
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
      return;
    }
    await ref.read(stromRepositoryProvider).recordActivity(
          itemId: item.id,
          result: result,
          measurement: measurement.text,
          observation: '',
        );
    measurement.dispose();
    ref.invalidate(stromVisitProvider(visit.id));
    if (mounted) _aviso(context, 'Resultado guardado. El proyecto sigue abierto.');
  }

  @override
  Widget build(BuildContext context) {
    final visits = ref.watch(stromVisitsAllProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StromChrome(
        title: 'Check de terreno',
        subtitle: 'Strøm — Operaciones. Registrar el check no cierra el proyecto.',
        child: visits.when(
          loading: () => const ShimmerList(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) {
            if (items.isEmpty) return const Text('No hay visitas.');
            final visitId = _visitId ?? items.first.id;
            final visit = ref.watch(stromVisitProvider(visitId)).asData?.value ??
                items.firstWhere((item) => item.id == visitId);
            return ListView(
              children: [
                DropdownButtonFormField<String>(
                  initialValue: visitId,
                  decoration: const InputDecoration(labelText: 'Visita'),
                  items: [
                    for (final item in items)
                      DropdownMenuItem(
                        value: item.id,
                        child: Text(item.number.isEmpty ? item.id : item.number),
                      ),
                  ],
                  onChanged: (value) => setState(() => _visitId = value),
                ),
                const SizedBox(height: 12),
                for (final item in visit.items)
                  ListTile(
                    title: Text(item.description),
                    subtitle: Text(
                      item.result == null ? 'Sin resultado' : resultLabel(item.result!),
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => _record(visit, item),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class StromTechnicalScreen extends ConsumerStatefulWidget {
  const StromTechnicalScreen({super.key});

  @override
  ConsumerState<StromTechnicalScreen> createState() => _StromTechnicalScreenState();
}

class _StromTechnicalScreenState extends ConsumerState<StromTechnicalScreen> {
  String? _visitId;
  var _decision = TechnicalDecision.aprobada;
  final _note = TextEditingController();
  var _saving = false;

  @override
  void dispose() {
    _note.dispose();
    super.dispose();
  }

  Future<void> _save(StromVisit visit, {required bool markExecuted}) async {
    setState(() => _saving = true);
    try {
      await ref.read(stromRepositoryProvider).saveTechnicalCheck(
            current: visit,
            decision: _decision,
            note: _note.text,
            markExecuted: markExecuted,
          );
      ref.invalidate(stromVisitProvider(visit.id));
      ref.invalidate(stromVisitsAllProvider);
      if (mounted) {
        _aviso(
          context,
          markExecuted ? 'Visita ejecutada.' : 'Check técnico guardado.',
        );
      }
    } on Object catch (error) {
      if (mounted) _aviso(context, userFacingErrorMessage(error));
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final visits = ref.watch(stromVisitsAllProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StromChrome(
        title: 'Check técnico',
        subtitle: 'Strøm — Operaciones. El líder confirma la visita ejecutada.',
        child: visits.when(
          loading: () => const ShimmerList(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) {
            if (items.isEmpty) return const Text('No hay visitas.');
            final visitId = _visitId ?? items.first.id;
            final visit = ref.watch(stromVisitProvider(visitId)).asData?.value ??
                items.firstWhere((item) => item.id == visitId);
            final ready = canMarkVisitExecuted(visit.items);
            return ListView(
              children: [
                DropdownButtonFormField<String>(
                  initialValue: visitId,
                  decoration: const InputDecoration(labelText: 'Visita'),
                  items: [
                    for (final item in items)
                      DropdownMenuItem(
                        value: item.id,
                        child: Text(item.number.isEmpty ? item.id : item.number),
                      ),
                  ],
                  onChanged: (value) => setState(() => _visitId = value),
                ),
                const SizedBox(height: 12),
                Text(
                  ready
                      ? 'Lista para el check del líder.'
                      : 'Falta resultado en alguna actividad.',
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<TechnicalDecision>(
                  initialValue: _decision,
                  decoration: const InputDecoration(labelText: 'Decisión'),
                  items: const [
                    DropdownMenuItem(
                      value: TechnicalDecision.aprobada,
                      child: Text('Aprobada'),
                    ),
                    DropdownMenuItem(
                      value: TechnicalDecision.observaciones,
                      child: Text('Con observaciones'),
                    ),
                    DropdownMenuItem(
                      value: TechnicalDecision.correccion,
                      child: Text('Corrección'),
                    ),
                  ],
                  onChanged: (value) {
                    if (value != null) setState(() => _decision = value);
                  },
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _note,
                  decoration: const InputDecoration(labelText: 'Nota'),
                ),
                const SizedBox(height: 12),
                FilledButton(
                  onPressed: _saving || !ready ? null : () => _save(visit, markExecuted: true),
                  child: const Text('Dejar la visita ejecutada'),
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: _saving ? null : () => _save(visit, markExecuted: false),
                  child: const Text('Guardar check técnico'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class StromClarificationsScreen extends ConsumerStatefulWidget {
  const StromClarificationsScreen({super.key});

  @override
  ConsumerState<StromClarificationsScreen> createState() =>
      _StromClarificationsScreenState();
}

class _StromClarificationsScreenState
    extends ConsumerState<StromClarificationsScreen> {
  final _text = TextEditingController();
  String? _projectId;
  var _saving = false;

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final projectId = _projectId;
    if (projectId == null || _text.text.trim().isEmpty) {
      _aviso(context, 'Elige el proyecto y escribe la aclaración.');
      return;
    }
    setState(() => _saving = true);
    try {
      await ref.read(stromRepositoryProvider).addClarification(
            ticketId: projectId,
            content: _text.text,
          );
      _text.clear();
      ref.invalidate(stromCommentsProvider(projectId));
      if (mounted) _aviso(context, 'Aclaración guardada');
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
    final projects = ref.watch(stromProjectsProvider(''));
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StromChrome(
        title: 'Aclaraciones',
        child: projects.when(
          loading: () => const ShimmerList(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) {
            final notes = _projectId == null
                ? const AsyncValue<List<Map<String, dynamic>>>.data([])
                : ref.watch(stromCommentsProvider(_projectId!));
            return ListView(
              children: [
                DropdownButtonFormField<String>(
                  initialValue: _projectId,
                  decoration: const InputDecoration(labelText: 'Proyecto *'),
                  items: [
                    for (final project in items)
                      DropdownMenuItem(
                        value: project.id,
                        child: Text(project.subject),
                      ),
                  ],
                  onChanged: (value) => setState(() => _projectId = value),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _text,
                  minLines: 3,
                  maxLines: 6,
                  decoration: const InputDecoration(labelText: 'Aclaración *'),
                ),
                const SizedBox(height: 12),
                FilledButton(
                  onPressed: _saving ? null : _save,
                  child: Text(_saving ? 'Guardando' : 'Guardar'),
                ),
                const SizedBox(height: 16),
                notes.when(
                  loading: () => const Text('Cargando aclaraciones'),
                  error: (error, _) => Text(userFacingErrorMessage(error)),
                  data: (rows) {
                    if (rows.isEmpty) return const Text('Sin aclaraciones.');
                    return Column(
                      children: [
                        for (final row in rows)
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text('${row['content'] ?? ''}'),
                          ),
                      ],
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class StromAuditScreen extends ConsumerStatefulWidget {
  const StromAuditScreen({super.key});

  @override
  ConsumerState<StromAuditScreen> createState() => _StromAuditScreenState();
}

class _StromAuditScreenState extends ConsumerState<StromAuditScreen> {
  String? _projectId;

  @override
  Widget build(BuildContext context) {
    final projects = ref.watch(stromProjectsProvider(''));
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StromChrome(
        title: 'Auditoría',
        subtitle: 'Strøm — Operaciones. Aclaraciones y reprogramaciones guardadas.',
        child: projects.when(
          loading: () => const ShimmerList(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) {
            if (items.isEmpty) return const Text('No hay proyectos.');
            final projectId = _projectId ?? items.first.id;
            final notes = ref.watch(stromCommentsProvider(projectId));
            return ListView(
              children: [
                DropdownButtonFormField<String>(
                  initialValue: projectId,
                  decoration: const InputDecoration(labelText: 'Proyecto'),
                  items: [
                    for (final project in items)
                      DropdownMenuItem(
                        value: project.id,
                        child: Text(project.subject),
                      ),
                  ],
                  onChanged: (value) => setState(() => _projectId = value),
                ),
                const SizedBox(height: 12),
                notes.when(
                  loading: () => const Text('Cargando'),
                  error: (error, _) => Text(userFacingErrorMessage(error)),
                  data: (rows) {
                    if (rows.isEmpty) {
                      return const Text('Todavía no hay movimientos.');
                    }
                    return Column(
                      children: [
                        for (final row in rows)
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text('${row['content'] ?? ''}'),
                            subtitle: Text('${row['created'] ?? ''}'),
                          ),
                      ],
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class StromIndicatorsScreen extends ConsumerWidget {
  const StromIndicatorsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projects = ref.watch(stromProjectsProvider(''));
    final visits = ref.watch(stromVisitsAllProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StromChrome(
        title: 'Indicadores',
        child: projects.when(
          loading: () => const ShimmerList(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (projectItems) => visits.when(
            loading: () => const ShimmerList(),
            error: (error, _) => Text(userFacingErrorMessage(error)),
            data: (visitItems) {
              final open = projectItems
                  .where((item) => item.status != 'CLOSED' && item.status != 'CANCELLED')
                  .length;
              final scheduled = visitItems.where((item) => !item.isCompleted).length;
              final done = visitItems.where((item) => item.isCompleted).length;
              final pending = visitItems
                  .expand((item) => item.items)
                  .where((item) => item.result == null)
                  .length;
              return ListView(
                children: [
                  _Metric('Proyectos abiertos', open),
                  _Metric('Visitas programadas', scheduled),
                  _Metric('Visitas ejecutadas', done),
                  _Metric('Actividades sin resultado', pending),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Metric extends StatelessWidget {
  const _Metric(this.label, this.value);

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(label),
      trailing: Text('$value', style: Theme.of(context).textTheme.headlineSmall),
    );
  }
}

class StromConfigScreen extends ConsumerStatefulWidget {
  const StromConfigScreen({super.key});

  @override
  ConsumerState<StromConfigScreen> createState() => _StromConfigScreenState();
}

class _StromConfigScreenState extends ConsumerState<StromConfigScreen> {
  final _crew = TextEditingController();
  final _template = TextEditingController();

  @override
  void dispose() {
    _crew.dispose();
    _template.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final setup = ref.watch(stromSetupProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: StromChrome(
        title: 'Configuración',
        subtitle: 'Strøm — Operaciones. Estas listas quedan en esta sesión.',
        child: StromForm(
          onSubmit: () {
            if (_crew.text.trim().isEmpty && _template.text.trim().isEmpty) {
              _aviso(context, 'Escribe una cuadrilla o una plantilla.');
              return;
            }
            ref.read(stromSetupProvider.notifier).addCrew(_crew.text);
            ref.read(stromSetupProvider.notifier).addTemplate(_template.text);
            _crew.clear();
            _template.clear();
          },
          children: [
            Text('Cuadrillas', style: Theme.of(context).textTheme.titleMedium),
            for (final name in setup.crews)
              ListTile(
                title: Text(name),
                trailing: IconButton(
                  tooltip: 'Quitar',
                  onPressed: () =>
                      ref.read(stromSetupProvider.notifier).removeCrew(name),
                  icon: const Icon(Icons.close),
                ),
              ),
            TextField(
              controller: _crew,
              decoration: const InputDecoration(labelText: 'Nueva cuadrilla'),
            ),
            const SizedBox(height: 16),
            Text('Plantillas de actividad', style: Theme.of(context).textTheme.titleMedium),
            for (final name in setup.templates)
              ListTile(
                title: Text(name),
                trailing: IconButton(
                  tooltip: 'Quitar',
                  onPressed: () => ref
                      .read(stromSetupProvider.notifier)
                      .removeTemplate(name),
                  icon: const Icon(Icons.close),
                ),
              ),
            TextField(
              controller: _template,
              decoration: const InputDecoration(labelText: 'Nueva plantilla'),
            ),
          ],
        ),
      ),
    );
  }
}
