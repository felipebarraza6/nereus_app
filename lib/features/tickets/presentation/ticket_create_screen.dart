import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/features/tickets/providers/tickets_provider.dart';

class TicketCreateScreen extends ConsumerStatefulWidget {
  const TicketCreateScreen({super.key, this.deviceId});

  final String? deviceId;

  @override
  ConsumerState<TicketCreateScreen> createState() => _TicketCreateScreenState();
}

class _TicketCreateScreenState extends ConsumerState<TicketCreateScreen> {
  final _subject = TextEditingController();
  final _description = TextEditingController();
  String _priority = 'MEDIUM';
  String _category = 'incidencia';
  bool _busy = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    if (widget.deviceId != null) {
      _subject.text = 'Soporte dispositivo ${widget.deviceId}';
    }
  }

  @override
  void dispose() {
    _subject.dispose();
    _description.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final ticket = await ref.read(ticketsRepositoryProvider).submit(
            subject: _subject.text,
            description: _description.text,
            categoryCode: _category,
            priority: _priority,
          );
      ref.invalidate(ticketsProvider);
      if (mounted) context.go('/tickets/${ticket.id}');
    } on ApiError catch (error) {
      setState(() => _error = error.message);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlassAppBar(title: Text('Crear ticket')),
      body: ListView(
        padding: const EdgeInsets.all(NereusTokens.spaceMd),
        children: [
          GlassCard(
            child: Column(
              children: [
                TextField(
                  controller: _subject,
                  decoration: const InputDecoration(labelText: 'Asunto'),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _description,
                  maxLines: 5,
                  decoration: const InputDecoration(labelText: 'Descripción'),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  initialValue: _category,
                  decoration: const InputDecoration(labelText: 'Categoría'),
                  items: const [
                    DropdownMenuItem(value: 'duda', child: Text('Duda')),
                    DropdownMenuItem(value: 'incidencia', child: Text('Incidencia')),
                    DropdownMenuItem(value: 'reclamo', child: Text('Reclamo')),
                    DropdownMenuItem(value: 'feedback', child: Text('Feedback')),
                    DropdownMenuItem(value: 'manual', child: Text('Manual')),
                  ],
                  onChanged: (value) => setState(() => _category = value ?? _category),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  initialValue: _priority,
                  decoration: const InputDecoration(labelText: 'Prioridad'),
                  items: const [
                    DropdownMenuItem(value: 'LOW', child: Text('Baja')),
                    DropdownMenuItem(value: 'MEDIUM', child: Text('Media')),
                    DropdownMenuItem(value: 'HIGH', child: Text('Alta')),
                    DropdownMenuItem(value: 'CRITICAL', child: Text('Crítica')),
                  ],
                  onChanged: (value) => setState(() => _priority = value ?? _priority),
                ),
                if (_error != null) ...[
                  const SizedBox(height: 12),
                  Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                ],
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: _busy ? null : _submit,
                  child: const Text('Enviar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
