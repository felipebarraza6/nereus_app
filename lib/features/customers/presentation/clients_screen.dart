import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/crud_page.dart';
import 'package:nereus_app/core/widgets/nereus_table.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/customers/presentation/client_form.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/tickets/domain/ticket_models.dart';

class ClientsScreen extends ConsumerWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = Access(ref.watch(sessionProvider).value);
    final canWrite = access.canWrite(NereusModules.customers);
    final clients = ref.watch(clientsProvider);

    Future<void> openForm([ClientItem? existing]) async {
      await showEntitySheet<bool>(
        context: context,
        title: existing == null ? 'Nuevo cliente' : 'Editar cliente',
        child: ClientForm(existing: existing),
      );
    }

    return CrudPage<ClientItem>(
      title: 'Clientes',
      subtitle: 'Organizaciones y predios de esta sucursal',
      value: clients,
      onRetry: () => ref.invalidate(clientsProvider),
      canWrite: canWrite,
      createLabel: 'Cliente',
      onCreate: canWrite ? openForm : null,
      emptyMessage: 'No hay clientes en esta sucursal.',
      rowTitle: (row) => row.name,
      rowSubtitle: (row) => [
        if (row.clientCode != null) row.clientCode!,
        if (row.email != null) row.email!,
        if (row.address != null) row.address!,
      ].join(' · '),
      columns: [
        NereusColumn(id: 'name', label: 'Nombre', cell: (r) => r.name),
        NereusColumn(id: 'code', label: 'Código', cell: (r) => r.clientCode ?? '—'),
        NereusColumn(id: 'dni', label: 'RUT', cell: (r) => r.dni ?? '—'),
        NereusColumn(id: 'email', label: 'Email', cell: (r) => r.email ?? '—'),
        NereusColumn(id: 'phone', label: 'Teléfono', cell: (r) => r.phone ?? '—'),
        NereusColumn(
          id: 'active',
          label: 'Estado',
          cell: (r) => r.isActive ? 'Activo' : 'Inactivo',
        ),
      ],
      onOpen: canWrite ? openForm : null,
      detailBuilder: (row) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(row.name, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(row.email ?? 'Sin email'),
          Text(row.phone ?? 'Sin teléfono'),
          Text(row.address ?? 'Sin dirección'),
          if (canWrite) ...[
            const SizedBox(height: 16),
            FilledButton.tonal(
              onPressed: () => openForm(row),
              child: const Text('Editar'),
            ),
            TextButton(
              onPressed: () async {
                final ok = await confirmAction(
                  context,
                  title: 'Eliminar cliente',
                  message: '¿Eliminar ${row.name}?',
                  confirmLabel: 'Eliminar',
                  destructive: true,
                );
                if (!ok) return;
                try {
                  await ref.read(customersRepositoryProvider).delete(row.id);
                  ref.invalidate(clientsProvider);
                  ref.invalidate(customerClientsProvider);
                  if (context.mounted) {
                    showFriendlyOk(context, 'Cliente eliminado');
                  }
                } on Object catch (error) {
                  if (context.mounted) showFriendlyError(context, error);
                }
              },
              child: const Text('Eliminar'),
            ),
          ],
        ],
      ),
    );
  }
}
