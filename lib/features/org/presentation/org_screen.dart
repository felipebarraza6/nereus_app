import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/form_fields.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';

class OrgScreen extends ConsumerWidget {
  const OrgScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final members = ref.watch(branchMembersProvider);
    final roles = ref.watch(branchRolesProvider);
    final brokers = ref.watch(mqttBrokersProvider);
    final access = Access(ref.watch(sessionProvider).value);
    final canWriteBroker = access.canWrite(NereusModules.iotTelemetry);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        padding: const EdgeInsets.only(bottom: 32),
        children: [
          const PageHeader(
            title: 'Ajustes de sucursal',
            subtitle: 'Usuarios, roles y broker MQTT (credenciales de sucursal)',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Usuarios', style: Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(height: 8),
          members.when(
            skipLoadingOnReload: true,
            skipLoadingOnRefresh: true,
            loading: () => const ShimmerList(count: 2),
            error: (error, _) => Padding(
              padding: const EdgeInsets.all(16),
              child: Text(userFacingErrorMessage(error)),
            ),
            data: (items) {
              if (items.isEmpty) {
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('No hay usuarios visibles en esta sucursal.'),
                );
              }
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    for (final member in items)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: GlassCard(
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(member.userName ?? member.userEmail ?? 'Usuario'),
                            subtitle: Text(
                              '${member.roleName ?? member.roleCode ?? ''} · ${member.userEmail ?? ''}',
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text('Roles', style: Theme.of(context).textTheme.titleMedium),
          ),
          const SizedBox(height: 8),
          roles.when(
            skipLoadingOnReload: true,
            skipLoadingOnRefresh: true,
            loading: () => const SizedBox.shrink(),
            error: (error, _) => Padding(
              padding: const EdgeInsets.all(16),
              child: Text(userFacingErrorMessage(error)),
            ),
            data: (items) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final role in items)
                    Chip(label: Text('${role.name} (${role.code ?? ''})')),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Broker MQTT',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 8),
          brokers.when(
            skipLoadingOnReload: true,
            skipLoadingOnRefresh: true,
            loading: () => const SizedBox.shrink(),
            error: (error, _) => Padding(
              padding: const EdgeInsets.all(16),
              child: Text(userFacingErrorMessage(error)),
            ),
            data: (items) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    if (items.isEmpty)
                      const GlassCard(
                        child: Text('No hay brokers configurados en la sucursal.'),
                      ),
                    for (final broker in items)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: GlassCard(
                          onTap: canWriteBroker
                              ? () => showEntitySheet<void>(
                                    context: context,
                                    title: 'Editar broker',
                                    child: _BrokerForm(existing: broker),
                                  )
                              : null,
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(broker.name),
                            subtitle: Text(
                              '${broker.host ?? '—'}:${broker.port ?? ''} · ${broker.username ?? 'sin usuario'}',
                            ),
                          ),
                        ),
                      ),
                    if (canWriteBroker)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: FilledButton.tonal(
                          onPressed: () => showEntitySheet<void>(
                            context: context,
                            title: 'Nuevo broker MQTT',
                            child: const _BrokerForm(),
                          ),
                          child: const Text('Agregar broker'),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _BrokerForm extends ConsumerStatefulWidget {
  const _BrokerForm({this.existing});

  final BrokerItem? existing;

  @override
  ConsumerState<_BrokerForm> createState() => _BrokerFormState();
}

class _BrokerFormState extends ConsumerState<_BrokerForm> {
  late final _name = TextEditingController(text: widget.existing?.name ?? '');
  late final _host = TextEditingController(text: widget.existing?.host ?? '');
  late final _port =
      TextEditingController(text: '${widget.existing?.port ?? 1883}');
  late final _user = TextEditingController(text: widget.existing?.username ?? '');
  final _password = TextEditingController();
  late final _topic =
      TextEditingController(text: widget.existing?.topicTemplate ?? '');
  bool _tls = false;
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _tls = widget.existing?.useTls ?? false;
  }

  @override
  void dispose() {
    _name.dispose();
    _host.dispose();
    _port.dispose();
    _user.dispose();
    _password.dispose();
    _topic.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: () async {
        setState(() {
          _busy = true;
          _error = null;
        });
        final body = <String, dynamic>{
          'name': _name.text.trim(),
          'host': _host.text.trim(),
          'port': int.tryParse(_port.text.trim()) ?? 1883,
          'username': _user.text.trim(),
          'use_tls': _tls,
          'topic_template': _topic.text.trim(),
          'is_active': true,
          if (_password.text.isNotEmpty) 'password': _password.text,
        };
        final nav = Navigator.of(context);
        try {
          await ref.read(telemetryRepositoryProvider).saveBroker(
                id: widget.existing?.id,
                body: body,
              );
          ref.invalidate(mqttBrokersProvider);
          if (!mounted) return;
          nav.pop();
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
        TextField(
          controller: _host,
          decoration: const InputDecoration(labelText: 'Host'),
        ),
        TextField(
          controller: _port,
          decoration: const InputDecoration(labelText: 'Puerto'),
        ),
        TextField(
          controller: _user,
          decoration: const InputDecoration(labelText: 'Usuario'),
        ),
        TextField(
          controller: _password,
          obscureText: true,
          decoration: const InputDecoration(
            labelText: 'Password (write-only)',
            helperText: 'Vacío = no cambiar',
          ),
        ),
        TextField(
          controller: _topic,
          decoration: const InputDecoration(labelText: 'Topic template'),
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('TLS'),
          value: _tls,
          onChanged: (value) => setState(() => _tls = value),
        ),
      ],
    );
  }
}
