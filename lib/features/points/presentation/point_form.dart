import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';

class PointForm extends ConsumerStatefulWidget {
  const PointForm({super.key, this.existing});

  final MeasurementPointItem? existing;

  @override
  ConsumerState<PointForm> createState() => _PointFormState();
}

class _PointFormState extends ConsumerState<PointForm> {
  final _label = TextEditingController();
  final _code = TextEditingController();
  String? _productId;
  String? _clientId;
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    final existing = widget.existing;
    if (existing != null) {
      _label.text = existing.label;
      _code.text = existing.code ?? '';
      _productId = existing.productId;
      _clientId = existing.clientId;
    }
  }

  @override
  void dispose() {
    _label.dispose();
    _code.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_productId == null) {
      setState(() => _error = 'Elige un producto MEASUREMENT_MATERIAL.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    final body = {
      'label': _label.text.trim(),
      'code': _code.text.trim(),
      'product': int.tryParse(_productId!) ?? _productId,
      if (_clientId != null && _clientId!.isNotEmpty)
        'client': int.tryParse(_clientId!) ?? _clientId,
      'is_active': true,
    };
    try {
      final repo = ref.read(inventoryRepositoryProvider);
      if (widget.existing == null) {
        await repo.createMeasurementPoint(body);
      } else {
        await repo.updateMeasurementPoint(widget.existing!.id, body);
      }
      ref.invalidate(measurementPointsProvider);
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
    final products = ref.watch(
      productsProvider(productType: 'MEASUREMENT_MATERIAL'),
    );
    final clients = ref.watch(clientsProvider);
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: _save,
      children: [
        TextField(
          controller: _label,
          decoration: const InputDecoration(labelText: 'Etiqueta'),
        ),
        TextField(
          controller: _code,
          decoration: const InputDecoration(labelText: 'Código'),
        ),
        products.when(
          skipLoadingOnReload: true,
          skipLoadingOnRefresh: true,
          loading: () => const LinearProgressIndicator(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) {
            if (items.isEmpty) {
              return const Text(
                'No hay productos MEASUREMENT_MATERIAL. Créalos en Catálogo.',
              );
            }
            return SelectField<String>(
              label: 'Producto (medidor APR)',
              value: items.any((p) => p.id == _productId) ? _productId : null,
              items: items.map((p) => p.id).toList(),
              itemLabel: (id) =>
                  items.firstWhere((p) => p.id == id).name,
              onChanged: (value) => setState(() => _productId = value),
            );
          },
        ),
        clients.when(
          skipLoadingOnReload: true,
          skipLoadingOnRefresh: true,
          loading: () => const SizedBox.shrink(),
          error: (_, __) => const SizedBox.shrink(),
          data: (items) {
            return SelectField<String>(
              label: 'Cliente (opcional)',
              value: items.any((c) => c.id == _clientId) ? _clientId : null,
              items: ['', ...items.map((c) => c.id)],
              itemLabel: (id) {
                if (id.isEmpty) return 'Sin cliente';
                return items.firstWhere((c) => c.id == id).name;
              },
              onChanged: (value) => setState(
                () => _clientId = (value == null || value.isEmpty) ? null : value,
              ),
            );
          },
        ),
      ],
    );
  }
}
