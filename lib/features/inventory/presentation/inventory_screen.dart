import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/crud_page.dart';
import 'package:nereus_app/core/widgets/nereus_table.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';

class InventoryScreen extends ConsumerWidget {
  const InventoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stock = ref.watch(stockRowsProvider);
    return CrudPage<StockRow>(
      title: 'Inventario',
      subtitle: 'Stock de bodega. Los productos IOT/TOOL/EQUIPMENT no tienen movimientos de almacén.',
      value: stock,
      onRetry: () => ref.invalidate(stockRowsProvider),
      emptyMessage: 'No hay stock de bodega (o solo hay equipos IoT, que no usan este endpoint).',
      rowTitle: (row) => row.name,
      rowSubtitle: (row) =>
          '${row.productType ?? '—'} · ${row.quantity?.toString() ?? '—'}',
      columns: [
        NereusColumn(id: 'name', label: 'Producto', cell: (r) => r.name),
        NereusColumn(id: 'type', label: 'Tipo', cell: (r) => r.productType ?? '—'),
        NereusColumn(
          id: 'qty',
          label: 'Cantidad',
          numeric: true,
          cell: (r) => r.quantity?.toString() ?? '—',
        ),
        NereusColumn(
          id: 'wh',
          label: 'Bodega',
          cell: (r) => r.warehouse ?? '—',
        ),
      ],
      actions: const [
        _SerialNote(),
      ],
      detailBuilder: (row) => ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(row.name, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text('Cantidad: ${row.quantity ?? '—'}'),
          Text('Bodega: ${row.warehouse ?? '—'}'),
        ],
      ),
    );
  }
}

class _SerialNote extends StatelessWidget {
  const _SerialNote();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Números de serie',
      onPressed: () {
        showDialog<void>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Unidades serializadas'),
              content: const Text(
                'ProductSerial existe en el backend (IN_STOCK, SOLD, IN_USE…) pero no hay ViewSet REST. Las unidades operables se crean como dispositivos de telemetría en Operación, vinculadas a un producto IOT.',
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Entendido'),
                ),
              ],
            );
          },
        );
      },
      icon: const Icon(Icons.info_outline),
    );
  }
}

class WarehousesStrip extends ConsumerWidget {
  const WarehousesStrip({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final warehouses = ref.watch(warehousesProvider);
    return warehouses.maybeWhen(
      data: (items) {
        if (items.isEmpty) return const SizedBox.shrink();
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Wrap(
            spacing: 8,
            children: [
              for (final item in items)
                GlassCard(
                  padding: const EdgeInsets.symmetric(
                    horizontal: NereusTokens.spaceMd,
                    vertical: 8,
                  ),
                  child: Text(item.name),
                ),
            ],
          ),
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
