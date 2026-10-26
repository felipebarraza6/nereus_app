import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/crm/domain/crm_models.dart';
import 'package:nereus_app/features/crm/providers/crm_providers.dart';

class FollowUpForm extends ConsumerStatefulWidget {
  const FollowUpForm({super.key, required this.opportunityId});

  final String opportunityId;

  @override
  ConsumerState<FollowUpForm> createState() => _FollowUpFormState();
}

class _FollowUpFormState extends ConsumerState<FollowUpForm> {
  final _description = TextEditingController();
  var _type = 'NOTE';
  String? _categoryId;
  DateTime? _when;
  var _busy = false;
  String? _error;

  @override
  void dispose() {
    _description.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final text = _description.text.trim();
    if (text.isEmpty) {
      setState(() => _error = 'Escribe qué se hizo o qué hay que hacer.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await ref.read(crmRepositoryProvider).createActivity(
            opportunityId: widget.opportunityId,
            activityType: _type,
            description: text,
            scheduledAt: _when,
            categoryId: _categoryId,
          );
      if (mounted) Navigator.pop(context, true);
    } on Object catch (error) {
      if (!mounted) return;
      setState(() {
        _busy = false;
        _error = userFacingErrorMessage(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final when = _when;
    final categories =
        ref.watch(followUpCategoriesProvider).value ?? const [];
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: _save,
      submitLabel: 'Registrar',
      children: [
        DropdownButtonFormField<String>(
          isExpanded: true,
          // This Flutter SDK still reads `value` on DropdownButtonFormField.
          // ignore: deprecated_member_use
          value: _type,
          decoration: const InputDecoration(labelText: 'Tipo'),
          items: [
            for (final entry in activityTypeLabels.entries)
              if (entry.key != 'STAGE_CHANGE')
                DropdownMenuItem(value: entry.key, child: Text(entry.value)),
          ],
          onChanged: (value) => setState(() => _type = value ?? _type),
        ),
        if (categories.isNotEmpty)
          DropdownButtonFormField<String?>(
            isExpanded: true,
            // This Flutter SDK still reads `value` on DropdownButtonFormField.
            // ignore: deprecated_member_use
            value: _categoryId,
            decoration: const InputDecoration(labelText: 'Categoría'),
            items: [
              const DropdownMenuItem(value: null, child: Text('General')),
              for (final cat in categories)
                DropdownMenuItem(value: cat.id, child: Text(cat.name)),
            ],
            onChanged: (value) => setState(() => _categoryId = value),
          ),
        TextField(
          controller: _description,
          decoration: const InputDecoration(labelText: 'Qué pasó'),
          maxLines: 3,
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Programado para'),
          subtitle: Text(
            when == null
                ? 'Ahora, sin fecha'
                : '${when.day}/${when.month}/${when.year}',
          ),
          trailing: const Icon(Icons.event),
          onTap: () async {
            final picked = await showDatePicker(
              context: context,
              initialDate: when ?? DateTime.now(),
              firstDate: DateTime.now().subtract(const Duration(days: 30)),
              lastDate: DateTime.now().add(const Duration(days: 365)),
            );
            if (picked != null && mounted) setState(() => _when = picked);
          },
        ),
      ],
    );
  }
}

class ProposalForm extends ConsumerStatefulWidget {
  const ProposalForm({
    super.key,
    required this.opportunityId,
    required this.products,
  });

  final String opportunityId;
  final List<ProductItem> products;

  @override
  ConsumerState<ProposalForm> createState() => _ProposalFormState();
}

class _ProposalFormState extends ConsumerState<ProposalForm> {
  final _notes = TextEditingController();
  final _qty = TextEditingController(text: '1');
  final _price = TextEditingController();
  final _discount = TextEditingController(text: '0');
  String? _productId;
  var _busy = false;
  String? _error;

  @override
  void dispose() {
    _notes.dispose();
    _qty.dispose();
    _price.dispose();
    _discount.dispose();
    super.dispose();
  }

  void _onProductSelected(String? id) {
    setState(() => _productId = id);
    if (id == null) return;
    for (final p in widget.products) {
      final price = p.price ?? 0;
      if (p.id == id && price > 0 && _price.text.trim().isEmpty) {
        _price.text = price.round().toString();
        break;
      }
    }
  }

  Future<void> _save() async {
    final notes = _notes.text.trim();
    if ((_productId == null || _productId!.isEmpty) && notes.isEmpty) {
      setState(() => _error = 'Elige un producto o escribe qué se ofrece.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await ref.read(crmRepositoryProvider).createProposal(
            opportunityId: widget.opportunityId,
            productId: _productId,
            quantity: double.tryParse(_qty.text.replaceAll(',', '.')) ?? 1,
            unitPrice: double.tryParse(_price.text.replaceAll('.', '')) ?? 0,
            discount: double.tryParse(_discount.text.replaceAll(',', '.')) ?? 0,
            notes: notes,
          );
      if (mounted) Navigator.pop(context, true);
    } on Object catch (error) {
      if (!mounted) return;
      setState(() {
        _busy = false;
        _error = userFacingErrorMessage(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: _save,
      submitLabel: 'Agregar',
      children: [
        DropdownButtonFormField<String?>(
          isExpanded: true,
          // This Flutter SDK still reads `value` on DropdownButtonFormField.
          // ignore: deprecated_member_use
          value: _productId,
          decoration: const InputDecoration(labelText: 'Producto del catálogo'),
          items: [
            const DropdownMenuItem(value: null, child: Text('Sin producto')),
            for (final product in widget.products)
              DropdownMenuItem(value: product.id, child: Text(product.name)),
          ],
          onChanged: _onProductSelected,
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _qty,
                decoration: const InputDecoration(labelText: 'Cantidad'),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TextField(
                controller: _discount,
                decoration: const InputDecoration(labelText: 'Descuento %'),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
          ],
        ),
        TextField(
          controller: _price,
          decoration: const InputDecoration(labelText: 'Precio unitario (CLP)'),
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        ),
        TextField(
          controller: _notes,
          decoration: const InputDecoration(
            labelText: 'Notas de la propuesta',
          ),
          maxLines: 2,
        ),
      ],
    );
  }
}
