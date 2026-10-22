import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';

class DeviceConfigForm extends ConsumerStatefulWidget {
  const DeviceConfigForm({
    super.key,
    required this.deviceId,
    this.existing,
  });

  final int deviceId;
  final DeviceConfigItem? existing;

  @override
  ConsumerState<DeviceConfigForm> createState() => _DeviceConfigFormState();
}

class _DeviceConfigFormState extends ConsumerState<DeviceConfigForm> {
  late final _depth = TextEditingController(text: _n(widget.existing?.depth));
  late final _pump = TextEditingController(text: _n(widget.existing?.pumpPosition));
  late final _level = TextEditingController(text: _n(widget.existing?.levelPosition));
  late final _offset = TextEditingController(text: _n(widget.existing?.levelOffset));
  late final _flowInitial =
      TextEditingController(text: _n(widget.existing?.flowInitial));
  late final _maxDiff =
      TextEditingController(text: _n(widget.existing?.maxDiffM3PerHour));
  late final _maxFlow = TextEditingController(text: _n(widget.existing?.maxFlowLs));
  late final _gap = TextEditingController(text: _n(widget.existing?.maxTimeGapHours));
  late final _reconnect = TextEditingController(
    text: _n(widget.existing?.reconnectionThresholdHours),
  );
  bool _replicate = false;
  bool _busy = false;
  String? _error;

  String _n(double? value) => value?.toString() ?? '';

  @override
  void initState() {
    super.initState();
    _replicate = widget.existing?.replicateOnMissing ?? false;
  }

  @override
  void dispose() {
    _depth.dispose();
    _pump.dispose();
    _level.dispose();
    _offset.dispose();
    _flowInitial.dispose();
    _maxDiff.dispose();
    _maxFlow.dispose();
    _gap.dispose();
    _reconnect.dispose();
    super.dispose();
  }

  double? _d(TextEditingController c) => double.tryParse(c.text.trim());

  Future<void> _save() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    final item = DeviceConfigItem(
      id: widget.existing?.id,
      depth: _d(_depth),
      pumpPosition: _d(_pump),
      levelPosition: _d(_level),
      levelOffset: _d(_offset),
      flowInitial: _d(_flowInitial),
      replicateOnMissing: _replicate,
      maxDiffM3PerHour: _d(_maxDiff),
      maxFlowLs: _d(_maxFlow),
      maxTimeGapHours: _d(_gap),
      reconnectionThresholdHours: _d(_reconnect),
    );
    final nav = Navigator.of(context);
    try {
      await ref.read(telemetryRepositoryProvider).saveDeviceConfig(
            id: widget.existing?.id,
            body: item.toBody(deviceId: widget.deviceId),
          );
      ref.invalidate(deviceConfigsProvider(widget.deviceId));
      ref.invalidate(deviceDetailProvider(widget.deviceId));
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
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: _save,
      children: [
        TextField(
          controller: _depth,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Profundidad'),
        ),
        TextField(
          controller: _pump,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Posición bomba'),
        ),
        TextField(
          controller: _level,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Posición nivel'),
        ),
        TextField(
          controller: _offset,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Offset de nivel'),
        ),
        TextField(
          controller: _flowInitial,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Caudal inicial'),
        ),
        TextField(
          controller: _maxDiff,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Máx. diff m³/h'),
        ),
        TextField(
          controller: _maxFlow,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Máx. caudal L/s'),
        ),
        TextField(
          controller: _gap,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Máx. gap (h)'),
        ),
        TextField(
          controller: _reconnect,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Umbral reconexión (h)'),
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Replicar en faltantes'),
          value: _replicate,
          onChanged: (value) => setState(() => _replicate = value),
        ),
      ],
    );
  }
}

class VariableForm extends ConsumerStatefulWidget {
  const VariableForm({super.key, required this.deviceId, this.existing});

  final int deviceId;
  final VariableItem? existing;

  @override
  ConsumerState<VariableForm> createState() => _VariableFormState();
}

class _VariableFormState extends ConsumerState<VariableForm> {
  late final _name = TextEditingController(text: widget.existing?.name ?? '');
  late final _unit = TextEditingController(text: widget.existing?.unit ?? '');
  late final _factor =
      TextEditingController(text: widget.existing?.conversionFactor?.toString() ?? '1');
  late final _offset =
      TextEditingController(text: widget.existing?.conversionOffset?.toString() ?? '0');
  late final _min =
      TextEditingController(text: widget.existing?.minValue?.toString() ?? '');
  late final _max =
      TextEditingController(text: widget.existing?.maxValue?.toString() ?? '');
  String _type = 'FLOW';
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _type = widget.existing?.variableType ?? 'FLOW';
  }

  @override
  void dispose() {
    _name.dispose();
    _unit.dispose();
    _factor.dispose();
    _offset.dispose();
    _min.dispose();
    _max.dispose();
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
          await ref.read(telemetryRepositoryProvider).saveVariable(
                id: widget.existing?.id,
                body: {
                  'device': widget.deviceId,
                  'name': _name.text.trim(),
                  'variable_type': _type,
                  'unit': _unit.text.trim(),
                  'conversion_factor': double.tryParse(_factor.text.trim()),
                  'conversion_offset': double.tryParse(_offset.text.trim()),
                  if (_min.text.trim().isNotEmpty)
                    'min_value': double.tryParse(_min.text.trim()),
                  if (_max.text.trim().isNotEmpty)
                    'max_value': double.tryParse(_max.text.trim()),
                  'is_active': true,
                },
              );
          ref.invalidate(deviceVariablesProvider(widget.deviceId));
          ref.invalidate(deviceDetailProvider(widget.deviceId));
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
          decoration: const InputDecoration(labelText: 'Nombre'),
        ),
        SelectField<String>(
          label: 'Tipo',
          value: _type,
          items: const ['FLOW', 'LEVEL', 'VOLUME', 'PRESSURE', 'CUSTOM'],
          onChanged: (value) => setState(() => _type = value ?? 'FLOW'),
        ),
        TextField(
          controller: _unit,
          decoration: const InputDecoration(labelText: 'Unidad'),
        ),
        TextField(
          controller: _factor,
          decoration: const InputDecoration(labelText: 'Factor de conversión'),
        ),
        TextField(
          controller: _offset,
          decoration: const InputDecoration(labelText: 'Offset'),
        ),
        TextField(
          controller: _min,
          decoration: const InputDecoration(labelText: 'Mínimo'),
        ),
        TextField(
          controller: _max,
          decoration: const InputDecoration(labelText: 'Máximo'),
        ),
      ],
    );
  }
}
