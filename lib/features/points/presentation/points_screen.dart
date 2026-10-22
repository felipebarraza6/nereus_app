import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/crud_page.dart';
import 'package:nereus_app/core/widgets/nereus_table.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/points/presentation/point_form.dart';

class PointsScreen extends ConsumerWidget {
  const PointsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = Access(ref.watch(sessionProvider).value);
    final canWrite = access.canWrite(NereusModules.inventory);
    final points = ref.watch(measurementPointsProvider);

    Future<void> openForm([MeasurementPointItem? existing]) async {
      await showEntitySheet<bool>(
        context: context,
        title: existing == null ? 'Nuevo punto APR' : 'Editar punto',
        child: PointForm(existing: existing),
      );
    }

    return CrudPage<MeasurementPointItem>(
      title: 'Puntos',
      subtitle:
          'Puntos de medición APR (MEASUREMENT_MATERIAL + cliente). Los pozos IoT son dispositivos en Operación.',
      value: points,
      onRetry: () => ref.invalidate(measurementPointsProvider),
      canWrite: canWrite,
      createLabel: 'Punto APR',
      onCreate: canWrite ? openForm : null,
      emptyMessage: 'No hay puntos de medición APR.',
      rowTitle: (row) => row.label,
      rowSubtitle: (row) =>
          [if (row.clientName != null) row.clientName!, if (row.productName != null) row.productName!]
              .join(' · '),
      columns: [
        NereusColumn(id: 'label', label: 'Punto', cell: (r) => r.label),
        NereusColumn(id: 'code', label: 'Código', cell: (r) => r.code ?? '—'),
        NereusColumn(
          id: 'client',
          label: 'Cliente',
          cell: (r) => r.clientName ?? '—',
        ),
        NereusColumn(
          id: 'product',
          label: 'Medidor',
          cell: (r) => r.productName ?? '—',
        ),
      ],
      onOpen: canWrite ? openForm : null,
      actions: [
        TextButton(
          onPressed: () => context.go('/devices'),
          child: const Text('Ver pozos IoT'),
        ),
      ],
      detailBuilder: (row) => ListView(
        padding: const EdgeInsets.all(NereusTokens.spaceMd),
        children: [
          Text(row.label, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text('Cliente: ${row.clientName ?? '—'}'),
          Text('Producto: ${row.productName ?? '—'}'),
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
                  title: 'Eliminar punto',
                  message: '¿Eliminar ${row.label}?',
                  confirmLabel: 'Eliminar',
                  destructive: true,
                );
                if (!ok) return;
                try {
                  await ref
                      .read(inventoryRepositoryProvider)
                      .deleteMeasurementPoint(row.id);
                  ref.invalidate(measurementPointsProvider);
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
