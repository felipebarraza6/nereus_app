import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

const deviceTypes = [
  'WELL',
  'SURFACE',
  'WEATHER',
  'TANK',
  'FLOW',
  'LEVEL',
  'CUSTOM',
];

class DeviceForm extends ConsumerStatefulWidget {
  const DeviceForm({super.key, this.existing});

  final DeviceItem? existing;

  @override
  ConsumerState<DeviceForm> createState() => _DeviceFormState();
}

class _DeviceFormState extends ConsumerState<DeviceForm> {
  final _name = TextEditingController();
  final _token = TextEditingController();
  final _frequency = TextEditingController(text: '15');
  final _lat = TextEditingController();
  final _lon = TextEditingController();
  final _address = TextEditingController();
  String _type = 'WELL';
  String? _projectId;
  String? _productId;
  String? _providerId;
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    final existing = widget.existing;
    if (existing != null) {
      _name.text = existing.name;
      _type = existing.deviceType;
      _lat.text = existing.lat?.toString() ?? '';
      _lon.text = existing.lon?.toString() ?? '';
      _address.text = existing.address ?? '';
    }
  }

  @override
  void dispose() {
    _name.dispose();
    _token.dispose();
    _frequency.dispose();
    _lat.dispose();
    _lon.dispose();
    _address.dispose();
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
    final body = <String, dynamic>{
      'name': _name.text.trim(),
      'device_type': _type,
      'is_active': true,
      if (_projectId != null) 'project': int.tryParse(_projectId!) ?? _projectId,
      if (_productId != null) 'product': int.tryParse(_productId!) ?? _productId,
      if (_providerId != null)
        'telemetry_provider': int.tryParse(_providerId!) ?? _providerId,
      if (_token.text.trim().isNotEmpty) 'device_token': _token.text.trim(),
      if (_frequency.text.trim().isNotEmpty)
        'reading_frequency': int.tryParse(_frequency.text.trim()),
      if (_lat.text.trim().isNotEmpty) 'lat': double.tryParse(_lat.text.trim()),
      if (_lon.text.trim().isNotEmpty) 'lon': double.tryParse(_lon.text.trim()),
      if (_address.text.trim().isNotEmpty) 'address': _address.text.trim(),
    };
    final nav = Navigator.of(context);
    try {
      final repo = ref.read(telemetryRepositoryProvider);
      if (widget.existing == null) {
        await repo.createDevice(body);
      } else {
        await repo.updateDevice(widget.existing!.id, body);
      }
      ref.invalidate(devicesProvider);
      if (!mounted) return;
      nav.pop(true);
    } on Object catch (error) {
      setState(() => _error = userFacingErrorMessage(error));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final projects = ref.watch(telemetryProjectsProvider);
    final products = ref.watch(productsProvider(productType: 'IOT'));
    final providers = ref.watch(telemetryProvidersProvider);
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: _save,
      children: [
        TextField(
          controller: _name,
          decoration: const InputDecoration(labelText: 'Nombre del punto'),
        ),
        SelectField<String>(
          label: 'Tipo',
          value: _type,
          items: deviceTypes,
          onChanged: (value) => setState(() => _type = value ?? 'WELL'),
        ),
        projects.when(
          skipLoadingOnReload: true,
          skipLoadingOnRefresh: true,
          loading: () => const LinearProgressIndicator(),
          error: (error, _) => Text(userFacingErrorMessage(error)),
          data: (items) => SelectField<String>(
            label: 'Proyecto',
            value: items.any((p) => p.id == _projectId) ? _projectId : null,
            items: items.map((p) => p.id).toList(),
            itemLabel: (id) => items.firstWhere((p) => p.id == id).name,
            onChanged: (value) => setState(() => _projectId = value),
          ),
        ),
        products.when(
          skipLoadingOnReload: true,
          skipLoadingOnRefresh: true,
          loading: () => const SizedBox.shrink(),
          error: (_, __) => const SizedBox.shrink(),
          data: (items) => SelectField<String>(
            label: 'Producto IOT (modelo)',
            value: items.any((p) => p.id == _productId) ? _productId : null,
            items: items.map((p) => p.id).toList(),
            itemLabel: (id) => items.firstWhere((p) => p.id == id).name,
            onChanged: (value) => setState(() => _productId = value),
          ),
        ),
        providers.when(
          skipLoadingOnReload: true,
          skipLoadingOnRefresh: true,
          loading: () => const SizedBox.shrink(),
          error: (_, __) => const SizedBox.shrink(),
          data: (items) => SelectField<String>(
            label: 'Proveedor de telemetría',
            value: items.any((p) => p.id == _providerId) ? _providerId : null,
            items: items.map((p) => p.id).toList(),
            itemLabel: (id) =>
                '${items.firstWhere((p) => p.id == id).name}${items.firstWhere((p) => p.id == id).protocol != null ? ' · ${items.firstWhere((p) => p.id == id).protocol}' : ''}',
            onChanged: (value) => setState(() => _providerId = value),
          ),
        ),
        TextField(
          controller: _token,
          decoration: const InputDecoration(
            labelText: 'Token del dispositivo',
            helperText: 'Credencial MQTT de esta unidad (independiente del modelo).',
          ),
        ),
        TextField(
          controller: _frequency,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            labelText: 'Frecuencia de lectura (min)',
          ),
        ),
        TextField(
          controller: _address,
          decoration: const InputDecoration(labelText: 'Dirección'),
        ),
        TextField(
          controller: _lat,
          decoration: const InputDecoration(labelText: 'Latitud'),
        ),
        TextField(
          controller: _lon,
          decoration: const InputDecoration(labelText: 'Longitud'),
        ),
      ],
    );
  }
}

class ProjectForm extends ConsumerStatefulWidget {
  const ProjectForm({super.key});

  @override
  ConsumerState<ProjectForm> createState() => _ProjectFormState();
}

class _ProjectFormState extends ConsumerState<ProjectForm> {
  final _name = TextEditingController();
  final _code = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _name.dispose();
    _code.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: () async {
        if (_name.text.trim().isEmpty) {
          setState(() => _error = 'El nombre es obligatorio.');
          return;
        }
        setState(() {
          _busy = true;
          _error = null;
        });
        final nav = Navigator.of(context);
        try {
          await ref.read(telemetryRepositoryProvider).createProject({
            'name': _name.text.trim(),
            'code_internal': _code.text.trim(),
            'is_active': true,
          });
          ref.invalidate(telemetryProjectsProvider);
          if (!mounted) return;
          nav.pop(true);
        } on Object catch (error) {
          setState(() => _error = userFacingErrorMessage(error));
        } finally {
          if (mounted) setState(() => _busy = false);
        }
      },
      children: [
        TextField(
          controller: _name,
          decoration: const InputDecoration(labelText: 'Nombre del proyecto'),
        ),
        TextField(
          controller: _code,
          decoration: const InputDecoration(labelText: 'Código interno'),
        ),
      ],
    );
  }
}

int? parseDeviceId(Map<String, dynamic> json) => asIntOrNull(json['id']);
