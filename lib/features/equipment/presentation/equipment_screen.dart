import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/crud_page.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/core/widgets/nereus_table.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';

class EquipmentScreen extends ConsumerStatefulWidget {
  const EquipmentScreen({super.key});

  @override
  ConsumerState<EquipmentScreen> createState() => _EquipmentScreenState();
}

class _EquipmentScreenState extends ConsumerState<EquipmentScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabs = TabController(length: 2, vsync: this);

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final access = Access(ref.watch(sessionProvider).value);
    final canWrite = access.canWrite(NereusModules.equipment);
    final profiles = ref.watch(equipmentProfilesProvider);
    final assignments = ref.watch(equipmentAssignmentsProvider);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          TabBar(
            controller: _tabs,
            tabs: const [
              Tab(text: 'Perfiles'),
              Tab(text: 'Asignaciones'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabs,
              children: [
                CrudPage<EquipmentProfileItem>(
                  title: 'Equipos',
                  subtitle:
                      'Perfiles de TOOL / EQUIPMENT / IOT. La asignación es a un usuario, no a un cliente.',
                  value: profiles,
                  onRetry: () => ref.invalidate(equipmentProfilesProvider),
                  canWrite: canWrite,
                  createLabel: 'Perfil',
                  onCreate: canWrite
                      ? () => showEntitySheet<void>(
                            context: context,
                            title: 'Nuevo perfil',
                            child: const _ProfileForm(),
                          )
                      : null,
                  emptyMessage: 'No hay perfiles de equipo.',
                  rowTitle: (row) => row.productName ?? 'Equipo ${row.id}',
                  rowSubtitle: (row) =>
                      [row.serialNumber, row.status].whereType<String>().join(' · '),
                  columns: [
                    NereusColumn(
                      id: 'product',
                      label: 'Producto',
                      cell: (r) => r.productName ?? r.id,
                    ),
                    NereusColumn(
                      id: 'serial',
                      label: 'Serie (perfil)',
                      cell: (r) => r.serialNumber ?? '—',
                    ),
                    NereusColumn(
                      id: 'model',
                      label: 'Modelo',
                      cell: (r) => r.modelNumber ?? '—',
                    ),
                    NereusColumn(
                      id: 'status',
                      label: 'Estado',
                      cell: (r) => r.status ?? '—',
                    ),
                  ],
                  detailBuilder: (row) => ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      Text(
                        row.productName ?? 'Equipo',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text('Serie: ${row.serialNumber ?? '—'}'),
                      Text('Fabricante: ${row.manufacturer ?? '—'}'),
                      if (canWrite)
                        TextButton(
                          onPressed: () async {
                            final ok = await confirmAction(
                              context,
                              title: 'Eliminar perfil',
                              message: '¿Eliminar este perfil?',
                              destructive: true,
                              confirmLabel: 'Eliminar',
                            );
                            if (!ok) return;
                            try {
                              await ref
                                  .read(equipmentRepositoryProvider)
                                  .deleteProfile(row.id);
                              ref.invalidate(equipmentProfilesProvider);
                            } on Object catch (error) {
                              if (context.mounted) {
                                showFriendlyError(context, error);
                              }
                            }
                          },
                          child: const Text('Eliminar'),
                        ),
                    ],
                  ),
                ),
                CrudPage<EquipmentAssignmentItem>(
                  title: 'Asignaciones',
                  subtitle: 'Equipo asignado a un usuario de la sucursal',
                  value: assignments,
                  onRetry: () => ref.invalidate(equipmentAssignmentsProvider),
                  canWrite: canWrite,
                  createLabel: 'Asignar',
                  onCreate: canWrite
                      ? () => showEntitySheet<void>(
                            context: context,
                            title: 'Asignar equipo',
                            child: const _AssignmentForm(),
                          )
                      : null,
                  emptyMessage: 'No hay asignaciones.',
                  rowTitle: (row) => row.productName ?? 'Equipo',
                  rowSubtitle: (row) => row.userName ?? '—',
                  columns: [
                    NereusColumn(
                      id: 'product',
                      label: 'Producto',
                      cell: (r) => r.productName ?? '—',
                    ),
                    NereusColumn(
                      id: 'user',
                      label: 'Usuario',
                      cell: (r) => r.userName ?? '—',
                    ),
                    NereusColumn(
                      id: 'active',
                      label: 'Activa',
                      cell: (r) => r.isActive ? 'Sí' : 'No',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileForm extends ConsumerStatefulWidget {
  const _ProfileForm();

  @override
  ConsumerState<_ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends ConsumerState<_ProfileForm> {
  String? _productId;
  final _serial = TextEditingController();
  final _model = TextEditingController();
  final _manufacturer = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _serial.dispose();
    _model.dispose();
    _manufacturer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(productsProvider());
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: () async {
        if (_productId == null) {
          setState(() => _error = 'Elige un producto.');
          return;
        }
        setState(() {
          _busy = true;
          _error = null;
        });
        final nav = Navigator.of(context);
        try {
          await ref.read(equipmentRepositoryProvider).createProfile({
            'product': int.tryParse(_productId!) ?? _productId,
            'serial_number': _serial.text.trim(),
            'model_number': _model.text.trim(),
            'manufacturer': _manufacturer.text.trim(),
          });
          ref.invalidate(equipmentProfilesProvider);
          if (!mounted) return;
          nav.pop();
        } on Object catch (error) {
          setState(() => _error = userFacingErrorMessage(error));
        } finally {
          if (mounted) setState(() => _busy = false);
        }
      },
      children: [
        products.when(
          skipLoadingOnReload: true,
          skipLoadingOnRefresh: true,
          loading: () => const LinearProgressIndicator(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) {
            final filtered = items
                .where((p) =>
                    p.productType == 'IOT' ||
                    p.productType == 'TOOL' ||
                    p.productType == 'EQUIPMENT')
                .toList();
            return SelectField<String>(
              label: 'Producto',
              value: filtered.any((p) => p.id == _productId) ? _productId : null,
              items: filtered.map((p) => p.id).toList(),
              itemLabel: (id) =>
                  filtered.firstWhere((p) => p.id == id).name,
              onChanged: (value) => setState(() => _productId = value),
            );
          },
        ),
        TextField(
          controller: _serial,
          decoration: const InputDecoration(
            labelText: 'N° de serie (perfil de equipo)',
          ),
        ),
        TextField(
          controller: _model,
          decoration: const InputDecoration(labelText: 'Modelo'),
        ),
        TextField(
          controller: _manufacturer,
          decoration: const InputDecoration(labelText: 'Fabricante'),
        ),
      ],
    );
  }
}

class _AssignmentForm extends ConsumerStatefulWidget {
  const _AssignmentForm();

  @override
  ConsumerState<_AssignmentForm> createState() => _AssignmentFormState();
}

class _AssignmentFormState extends ConsumerState<_AssignmentForm> {
  String? _productId;
  String? _userId;
  final _notes = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _notes.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final products = ref.watch(productsProvider());
    final members = ref.watch(branchMembersProvider);
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: () async {
        if (_productId == null || _userId == null) {
          setState(() => _error = 'Producto y usuario son obligatorios.');
          return;
        }
        setState(() {
          _busy = true;
          _error = null;
        });
        final nav = Navigator.of(context);
        try {
          await ref.read(equipmentRepositoryProvider).createAssignment({
            'product': int.tryParse(_productId!) ?? _productId,
            'user': int.tryParse(_userId!) ?? _userId,
            'notes': _notes.text.trim(),
            'is_active': true,
          });
          ref.invalidate(equipmentAssignmentsProvider);
          if (!mounted) return;
          nav.pop();
        } on Object catch (error) {
          setState(() => _error = userFacingErrorMessage(error));
        } finally {
          if (mounted) setState(() => _busy = false);
        }
      },
      children: [
        products.when(
          skipLoadingOnReload: true,
          skipLoadingOnRefresh: true,
          loading: () => const LinearProgressIndicator(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) => SelectField<String>(
            label: 'Producto',
            value: items.any((p) => p.id == _productId) ? _productId : null,
            items: items.map((p) => p.id).toList(),
            itemLabel: (id) => items.firstWhere((p) => p.id == id).name,
            onChanged: (value) => setState(() => _productId = value),
          ),
        ),
        members.when(
          skipLoadingOnReload: true,
          skipLoadingOnRefresh: true,
          loading: () => const LinearProgressIndicator(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) => SelectField<String>(
            label: 'Usuario',
            value: items.any((m) => m.userId == _userId) ? _userId : null,
            items: [
              for (final member in items)
                if (member.userId != null) member.userId!,
            ],
            itemLabel: (id) {
              final member = items.firstWhere((m) => m.userId == id);
              return member.userName ?? member.userEmail ?? id;
            },
            onChanged: (value) => setState(() => _userId = value),
          ),
        ),
        TextField(
          controller: _notes,
          decoration: const InputDecoration(labelText: 'Notas'),
        ),
      ],
    );
  }
}
