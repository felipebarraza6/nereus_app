part of 'opportunity_screen.dart';

class _StagePicker extends StatelessWidget {
  const _StagePicker({
    required this.stages,
    required this.currentId,
    required this.notes,
    required this.enabled,
    required this.onMove,
  });

  final List<OpportunityStageItem> stages;
  final String? currentId;
  final String? notes;
  final bool enabled;
  final ValueChanged<String> onMove;

  @override
  Widget build(BuildContext context) {
    final stageIds = {for (final s in stages) s.id};
    final validCurrent = stageIds.contains(currentId) ? currentId : null;
    return GlassCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonFormField<String>(
            isExpanded: true,
            // This Flutter SDK still reads `value` on DropdownButtonFormField.
            // ignore: deprecated_member_use
            value: validCurrent,
            decoration: const InputDecoration(labelText: 'Etapa del pipeline'),
            items: [
              for (final stage in stages)
                DropdownMenuItem(
                  value: stage.id,
                  child: Text('${stage.name} (${stage.probability}%)'),
                ),
            ],
            onChanged: enabled
                ? (value) {
                    if (value != null && value != currentId) onMove(value);
                  }
                : null,
          ),
          if (stages.isNotEmpty) ...[
            const SizedBox(height: 12),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                for (final stage in stages)
                  FilterPill(
                    label: stage.name,
                    selected: stage.id == currentId,
                    onTap: () {
                      if (enabled && stage.id != currentId) {
                        onMove(stage.id);
                      }
                    },
                  ),
              ],
            ),
          ],
          if (notes != null && notes!.isNotEmpty) ...[
            const SizedBox(height: 12),
            Text(notes!, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ],
      ),
    );
  }
}

/// Proposal panel styled after `Propuestas económicas` in `nereus_smarthydro/src/routes/crm.tsx`.
class _Proposals extends StatelessWidget {
  const _Proposals({
    required this.items,
    required this.loading,
    required this.onAdd,
    required this.onDelete,
  });

  final List<ProposalItem> items;
  final bool loading;
  final VoidCallback? onAdd;
  final ValueChanged<String>? onDelete;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    final grandTotal = items.fold<double>(
      0,
      (acc, item) =>
          acc +
          (item.totalPrice == 0
              ? item.quantity * item.unitPrice * (1 - item.discount / 100)
              : item.totalPrice),
    );
    return GlassCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: line)),
            ),
            child: _SectionTitle(
              title: 'Propuesta económica',
              action: '+ Agregar ítem',
              onPressed: onAdd,
            ),
          ),
          if (loading) const LinearProgressIndicator(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!loading && items.isEmpty)
                  Text(
                    'Todavía no hay ítems en la propuesta.',
                    style: TextStyle(fontSize: 13, color: muted),
                  ),
                for (final item in items)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: line)),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.label,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                [
                                  '${item.quantity.toStringAsFixed(item.quantity == item.quantity.roundToDouble() ? 0 : 1)} × ${clp(item.unitPrice)}',
                                  if (item.discount > 0)
                                    '-${item.discount.round()}%',
                                ].join(' · '),
                                style: TextStyle(fontSize: 12, color: muted),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          clp(
                            item.totalPrice == 0
                                ? item.quantity *
                                    item.unitPrice *
                                    (1 - item.discount / 100)
                                : item.totalPrice,
                          ),
                          style: const TextStyle(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        if (onDelete != null) ...[
                          const SizedBox(width: 6),
                          IconButton(
                            visualDensity: VisualDensity.compact,
                            icon: Icon(Icons.close, size: 16, color: muted),
                            tooltip: 'Quitar ítem',
                            onPressed: () => onDelete!(item.id),
                          ),
                        ],
                      ],
                    ),
                  ),
                if (items.isNotEmpty) ...[
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total propuesta',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        clp(grandTotal),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: NereusTokens.navy,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Follow-up panel styled after `Seguimiento` in `nereus_smarthydro/src/routes/crm.tsx`.
class _FollowUps extends StatelessWidget {
  const _FollowUps({
    required this.items,
    required this.loading,
    required this.onAdd,
    required this.onComplete,
    required this.onDelete,
  });

  final List<FollowUpItem> items;
  final bool loading;
  final VoidCallback? onAdd;
  final ValueChanged<String>? onComplete;
  final ValueChanged<String>? onDelete;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;

    return GlassCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: line)),
            ),
            child: _SectionTitle(
              title: 'Seguimientos',
              action: '+ Registrar',
              onPressed: onAdd,
            ),
          ),
          if (loading) const LinearProgressIndicator(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!loading && items.isEmpty)
                  Text(
                    'Sin llamadas, visitas ni notas.',
                    style: TextStyle(fontSize: 13, color: muted),
                  ),
                for (final item in items)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: line)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Icon(
                            item.isCompleted
                                ? Icons.check_circle
                                : Icons.radio_button_unchecked,
                            size: 18,
                            color: item.isCompleted
                                ? NereusTokens.emerald
                                : muted,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.description,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      decoration: item.isCompleted
                                          ? TextDecoration.lineThrough
                                          : null,
                                      color: item.isCompleted ? muted : null,
                                    ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                [
                                  activityTypeLabel(item.activityType),
                                  if (item.categoryName != null)
                                    item.categoryName!,
                                  if (item.scheduledAt != null)
                                    _when(item.scheduledAt!.toLocal()),
                                  if (item.createdByName != null)
                                    item.createdByName!,
                                ].join(' · '),
                                style: TextStyle(fontSize: 12, color: muted),
                              ),
                            ],
                          ),
                        ),
                        if (!item.isCompleted && onComplete != null)
                          OutlinedButton(
                            onPressed: () => onComplete!(item.id),
                            style: OutlinedButton.styleFrom(
                              minimumSize: const Size(0, 28),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                            ),
                            child: const Text(
                              'Hecho',
                              style: TextStyle(fontSize: 11.5),
                            ),
                          ),
                        if (onDelete != null) ...[
                          const SizedBox(width: 4),
                          IconButton(
                            visualDensity: VisualDensity.compact,
                            icon: Icon(
                              Icons.delete_outline,
                              size: 16,
                              color: muted,
                            ),
                            tooltip: 'Eliminar seguimiento',
                            onPressed: () => onDelete!(item.id),
                          ),
                        ],
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({
    required this.title,
    required this.action,
    required this.onPressed,
  });

  final String title;
  final String action;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(title, style: Theme.of(context).textTheme.titleMedium),
        ),
        if (onPressed != null)
          OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(0, 30),
              padding: const EdgeInsets.symmetric(horizontal: 12),
            ),
            child: Text(action, style: const TextStyle(fontSize: 12)),
          ),
      ],
    );
  }
}
