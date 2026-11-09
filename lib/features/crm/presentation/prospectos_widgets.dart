part of 'prospectos_screen.dart';

class _EmptyProspectos extends StatelessWidget {
  const _EmptyProspectos({required this.onCreate});

  final VoidCallback? onCreate;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 420),
        child: GlassCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sin prospectos',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              const Text(
                'Un prospecto es un contacto que todavía no es cliente. Después se califica y se pasa a la ficha.',
              ),
              if (onCreate != null) ...[
                const SizedBox(height: 16),
                FilledButton.icon(
                  onPressed: onCreate,
                  icon: const Icon(Icons.add, size: 16),
                  label: const Text('Nuevo prospecto'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// Lead row card styled after `nereus_smarthydro/src/routes/crm.tsx`.
class _LeadCard extends ConsumerWidget {
  const _LeadCard({
    required this.lead,
    required this.canWrite,
    required this.onChanged,
    required this.onEdit,
  });

  final LeadItem lead;
  final bool canWrite;
  final Future<void> Function() onChanged;
  final VoidCallback onEdit;

  Future<void> _run(
    BuildContext context,
    Future<void> Function() action,
  ) async {
    try {
      await action();
      await onChanged();
    } on Object catch (error) {
      if (context.mounted) showFriendlyError(context, error);
    }
  }

  Color _statusColor(String status) {
    return switch (status) {
      'NEW' => NereusTokens.hydroBlue,
      'CONTACTED' => NereusTokens.amber,
      'QUALIFIED' => NereusTokens.navy,
      'CONVERTED' => NereusTokens.emerald,
      'LOST' => NereusTokens.danger,
      _ => NereusTokens.slateMuted,
    };
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repo = ref.read(crmRepositoryProvider);
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    final detail = [
      if (lead.company != null && lead.company!.isNotEmpty) lead.company!,
      if (lead.phone != null && lead.phone!.isNotEmpty) lead.phone!,
      if (lead.email != null && lead.email!.isNotEmpty) lead.email!,
    ].join(' · ');
    final accent = _statusColor(lead.status);

    return GlassCard(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  lead.name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              if (lead.sourceName != null)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    lead.sourceName!,
                    style: TextStyle(fontSize: 11.5, color: muted),
                  ),
                ),
              StatusChip(
                label: leadStatusLabel(lead.status),
                tone: accent,
              ),
            ],
          ),
          if (detail.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(detail, style: TextStyle(fontSize: 12.5, color: muted)),
          ],
          if (lead.notes != null && lead.notes!.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              lead.notes!,
              style: TextStyle(fontSize: 12, color: muted),
            ),
          ],
          if (canWrite) ...[
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 6,
              children: [
                if (lead.status == 'NEW')
                  OutlinedButton(
                    onPressed: () => _run(
                      context,
                      () =>
                          repo.setLeadStatus(id: lead.id, status: 'CONTACTED'),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(0, 30),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                    child: const Text(
                      'Contactado',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                if (lead.status == 'NEW' || lead.status == 'CONTACTED')
                  OutlinedButton(
                    onPressed: () => _run(
                      context,
                      () =>
                          repo.setLeadStatus(id: lead.id, status: 'QUALIFIED'),
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(0, 30),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                    child: const Text(
                      'Calificar',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                if (lead.canConvert)
                  FilledButton(
                    onPressed: () =>
                        _run(context, () => repo.convertLead(lead.id)),
                    style: FilledButton.styleFrom(
                      backgroundColor: NereusTokens.hydroLime,
                      foregroundColor: NereusTokens.navy,
                      minimumSize: const Size(0, 30),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                    ),
                    child: const Text(
                      'Convertir en cliente',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                TextButton(
                  onPressed: onEdit,
                  child: const Text('Editar'),
                ),
                if (lead.status != 'LOST' && lead.status != 'CONVERTED')
                  TextButton(
                    onPressed: () => _run(
                      context,
                      () => repo.setLeadStatus(id: lead.id, status: 'LOST'),
                    ),
                    child: const Text('Perdido'),
                  ),
                if (lead.convertedClientId != null)
                  TextButton(
                    onPressed: () =>
                        context.go('/clients/${lead.convertedClientId}'),
                    child: const Text('Ver ficha →'),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class LeadForm extends ConsumerStatefulWidget {
  const LeadForm({super.key, this.initial});

  final LeadItem? initial;

  @override
  ConsumerState<LeadForm> createState() => _LeadFormState();
}

class _LeadFormState extends ConsumerState<LeadForm> {
  late final _first =
      TextEditingController(text: widget.initial?.firstName ?? '');
  late final _last =
      TextEditingController(text: widget.initial?.lastName ?? '');
  late final _company =
      TextEditingController(text: widget.initial?.company ?? '');
  late final _phone = TextEditingController(text: widget.initial?.phone ?? '');
  late final _email = TextEditingController(text: widget.initial?.email ?? '');
  late final _notes = TextEditingController(text: widget.initial?.notes ?? '');
  late String? _sourceId = widget.initial?.sourceId;
  var _busy = false;
  String? _error;

  @override
  void dispose() {
    _first.dispose();
    _last.dispose();
    _company.dispose();
    _phone.dispose();
    _email.dispose();
    _notes.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    final first = _first.text.trim();
    if (first.isEmpty) {
      setState(() => _error = 'El nombre es obligatorio.');
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      final repo = ref.read(crmRepositoryProvider);
      if (widget.initial == null) {
        await repo.createLead(
          firstName: first,
          lastName: _last.text.trim(),
          company: _company.text.trim(),
          phone: _phone.text.trim(),
          email: _email.text.trim(),
          notes: _notes.text.trim(),
          sourceId: _sourceId,
        );
      } else {
        await repo.updateLead(
          id: widget.initial!.id,
          firstName: first,
          lastName: _last.text.trim(),
          company: _company.text.trim(),
          phone: _phone.text.trim(),
          email: _email.text.trim(),
          notes: _notes.text.trim(),
          sourceId: _sourceId,
        );
      }
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
    final sources = ref.watch(leadSourcesProvider).value ?? const [];
    return FormPad(
      busy: _busy,
      error: _error,
      onSubmit: _save,
      submitLabel: widget.initial == null ? 'Crear' : 'Guardar',
      children: [
        TextField(
          controller: _first,
          decoration: const InputDecoration(labelText: 'Nombre'),
        ),
        TextField(
          controller: _last,
          decoration: const InputDecoration(labelText: 'Apellido'),
        ),
        TextField(
          controller: _company,
          decoration:
              const InputDecoration(labelText: 'Empresa u organización'),
        ),
        if (sources.isNotEmpty)
          DropdownButtonFormField<String?>(
            isExpanded: true,
            // This Flutter SDK still reads `value` on DropdownButtonFormField.
            // ignore: deprecated_member_use
            value: _sourceId,
            decoration: const InputDecoration(labelText: 'Origen'),
            items: [
              const DropdownMenuItem(value: null, child: Text('Sin origen')),
              for (final src in sources)
                DropdownMenuItem(value: src.id, child: Text(src.name)),
            ],
            onChanged: (value) => setState(() => _sourceId = value),
          ),
        TextField(
          controller: _phone,
          decoration: const InputDecoration(labelText: 'Teléfono'),
          keyboardType: TextInputType.phone,
        ),
        TextField(
          controller: _email,
          decoration: const InputDecoration(labelText: 'Correo'),
          keyboardType: TextInputType.emailAddress,
        ),
        TextField(
          controller: _notes,
          decoration: const InputDecoration(labelText: 'Notas'),
          maxLines: 2,
        ),
      ],
    );
  }
}
