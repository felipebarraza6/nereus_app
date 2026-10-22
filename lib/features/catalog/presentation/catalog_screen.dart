import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/crud_page.dart';
import 'package:nereus_app/core/widgets/nereus_table.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/presentation/product_form.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';

class CatalogScreen extends ConsumerWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final access = Access(ref.watch(sessionProvider).value);
    final canWrite = access.canWrite(NereusModules.inventory);
    final products = ref.watch(productsProvider());

    Future<void> openForm([ProductItem? existing]) async {
      await showEntitySheet<bool>(
        context: context,
        title: existing == null ? 'Nuevo producto' : 'Editar producto',
        child: ProductForm(existing: existing),
      );
    }

    return CrudPage<ProductItem>(
      title: 'Catálogo',
      subtitle: 'Modelos de producto, incluido el equipo IoT MQTT',
      value: products,
      onRetry: () => ref.invalidate(productsProvider),
      canWrite: canWrite,
      createLabel: 'Producto',
      onCreate: canWrite ? openForm : null,
      emptyMessage: 'No hay productos en esta sucursal.',
      rowTitle: (row) => row.name,
      rowSubtitle: (row) =>
          [row.productType, if (row.code != null) row.code!].join(' · '),
      columns: [
        NereusColumn(id: 'name', label: 'Nombre', cell: (r) => r.name),
        NereusColumn(id: 'code', label: 'Código', cell: (r) => r.code ?? '—'),
        NereusColumn(id: 'type', label: 'Tipo', cell: (r) => r.productType),
        NereusColumn(
          id: 'unit',
          label: 'Unidad',
          cell: (r) => r.measurementUnit ?? '—',
        ),
        NereusColumn(
          id: 'active',
          label: 'Estado',
          cell: (r) => r.isActive ? 'Activo' : 'Inactivo',
        ),
      ],
      onOpen: canWrite ? openForm : null,
      detailBuilder: (row) => _ProductDetail(
        product: row,
        canWrite: canWrite,
        onEdit: () => openForm(row),
        onDelete: () async {
          final ok = await confirmAction(
            context,
            title: 'Eliminar producto',
            message: '¿Eliminar ${row.name}? Esta acción no se puede deshacer.',
            confirmLabel: 'Eliminar',
            destructive: true,
          );
          if (!ok) return;
          try {
            await ref.read(inventoryRepositoryProvider).deleteProduct(row.id);
            ref.invalidate(productsProvider);
            if (context.mounted) showFriendlyOk(context, 'Producto eliminado');
          } on Object catch (error) {
            if (context.mounted) showFriendlyError(context, error);
          }
        },
      ),
    );
  }
}

class _ProductDetail extends StatelessWidget {
  const _ProductDetail({
    required this.product,
    required this.canWrite,
    required this.onEdit,
    required this.onDelete,
  });

  final ProductItem product;
  final bool canWrite;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(product.name, style: text.titleLarge),
        const SizedBox(height: 8),
        Text(product.productType, style: text.bodyMedium),
        if (product.description != null) ...[
          const SizedBox(height: 12),
          Text(product.description!),
        ],
        const SizedBox(height: 8),
        Text(
          product.isIot
              ? 'La configuración (escalas, offset, token MQTT) se hace por unidad en Equipos / Operación, no en el modelo.'
              : product.productType == 'IOT' ||
                      product.productType == 'TOOL' ||
                      product.productType == 'EQUIPMENT'
                  ? 'Este tipo no usa stock de bodega.'
                  : 'Stock de bodega se gestiona en Inventario.',
          style: text.bodyMedium,
        ),
        if (canWrite) ...[
          const SizedBox(height: 16),
          FilledButton.tonal(onPressed: onEdit, child: const Text('Editar')),
          const SizedBox(height: 8),
          TextButton(
            onPressed: onDelete,
            child: const Text('Eliminar'),
          ),
        ],
      ],
    );
  }
}
