import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/tickets/domain/ticket_models.dart';

class ClientForm extends ConsumerStatefulWidget {
  const ClientForm({super.key, this.existing});

  final ClientItem? existing;

  @override
  ConsumerState<ClientForm> createState() => _ClientFormState();
}

class _ClientFormState extends ConsumerState<ClientForm> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _address = TextEditingController();
  final _dni = TextEditingController();
  final _code = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    final existing = widget.existing;
    if (existing != null) {
      _name.text = existing.name;
      _email.text = existing.email ?? '';
      _phone.text = existing.phone ?? '';
      _address.text = existing.address ?? '';
      _dni.text = existing.dni ?? '';
      _code.text = existing.clientCode ?? '';
    }
  }

  @override
  void dispose() {
    _name.dispose();
    _email.dispose();
    _phone.dispose();
    _address.dispose();
    _dni.dispose();
    _code.dispose();
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
      'email': _email.text.trim(),
      'phone_number': _phone.text.trim(),
      'address': _address.text.trim(),
      'dni': _dni.text.trim(),
      'client_code': _code.text.trim(),
      'is_active': true,
    };
    try {
      final repo = ref.read(customersRepositoryProvider);
      if (widget.existing == null) {
        await repo.create(body);
      } else {
        await repo.update(widget.existing!.id, body);
      }
      ref.invalidate(clientsProvider);
      ref.invalidate(customerClientsProvider);
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
          decoration: const InputDecoration(labelText: 'Código de cliente'),
        ),
        TextField(
          controller: _dni,
          decoration: const InputDecoration(labelText: 'RUT / DNI'),
        ),
        TextField(
          controller: _email,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(labelText: 'Email'),
        ),
        TextField(
          controller: _phone,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(labelText: 'Teléfono'),
        ),
        TextField(
          controller: _address,
          decoration: const InputDecoration(labelText: 'Dirección'),
        ),
      ],
    );
  }
}
