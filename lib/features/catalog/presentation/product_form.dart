import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';

const productTypes = [
  'IOT',
  'TOOL',
  'EQUIPMENT',
  'MEASUREMENT_MATERIAL',
  'DIRECT_SALE',
];

class ProductForm extends ConsumerStatefulWidget {
  const ProductForm({super.key, this.existing});

  final ProductItem? existing;

  @override
  ConsumerState<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends ConsumerState<ProductForm> {
  final _name = TextEditingController();
  final _code = TextEditingController();
  final _description = TextEditingController();
  final _unit = TextEditingController();
  String _type = 'IOT';
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    final existing = widget.existing;
    if (existing != null) {
      _name.text = existing.name;
      _code.text = existing.code ?? '';
      _description.text = existing.description ?? '';
      _unit.text = existing.measurementUnit ?? '';
      _type = existing.productType;
    }
  }

  @override
  void dispose() {
    _name.dispose();
    _code.dispose();
    _description.dispose();
    _unit.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_name.text.trim().isEmpty) {
      setState(() => _error = 'El nombre es obligatorio.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final body = {
      'name': _name.text.trim(),
      'code': _code.text.trim(),
      'description': _description.text.trim(),
      'product_type': _type,
      if (_unit.text.trim().isNotEmpty) 'measurement_unit': _unit.text.trim(),
      'is_active': true,
      'tracks_inventory': _type == 'DIRECT_SALE',
    };
    try {
      final repo = ref.read(inventoryRepositoryProvider);
      if (widget.existing == null) {
        await repo.createProduct(body);
      } else {
        await repo.updateProduct(widget.existing!.id, body);
      }
      ref.invalidate(productsProvider);
      if (!mounted) return;
      Navigator.pop(context, true);
    } on Object catch (error) {
      setState(() => _error = userFacingErrorMessage(error));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: _save,
      children: [
        TextField(
          controller: _name,
          decoration: const InputDecoration(labelText: 'Nombre'),
        ),
        TextField(
          controller: _code,
          decoration: const InputDecoration(labelText: 'Código / SKU'),
        ),
        SelectField<String>(
          label: 'Tipo',
          value: _type,
          items: productTypes,
          onChanged: (value) => setState(() => _type = value ?? 'IOT'),
        ),
        TextField(
          controller: _unit,
          decoration: const InputDecoration(labelText: 'Unidad (opcional)'),
        ),
        TextField(
          controller: _description,
          maxLines: 3,
          decoration: const InputDecoration(labelText: 'Descripción'),
        ),
      ],
    );
  }
}
