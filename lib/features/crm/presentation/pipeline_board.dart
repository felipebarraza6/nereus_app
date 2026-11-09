part of 'pipeline_screen.dart';

class _PipelineBody extends StatelessWidget {
  const _PipelineBody({
    required this.wide,
    required this.loading,
    required this.failed,
    required this.seeding,
    required this.stageError,
    required this.dealError,
    required this.stageList,
    required this.items,
    required this.canWrite,
    required this.onRetry,
    required this.onSeed,
    required this.onOpen,
    required this.onMove,
  });

  final bool wide;
  final bool loading;
  final bool failed;
  final bool seeding;
  final Object? stageError;
  final Object? dealError;
  final List<OpportunityStageItem> stageList;
  final List<OpportunityItem> items;
  final bool canWrite;
  final VoidCallback onRetry;
  final VoidCallback onSeed;
  final ValueChanged<String> onOpen;
  final void Function(String id, String stageId)? onMove;

  @override
  Widget build(BuildContext context) {
    if (stageList.isEmpty && (loading || failed)) {
      return AsyncBody(
        isLoading: loading,
        hasError: failed,
        isEmpty: true,
        errorMessage: userFacingErrorMessage(
          stageError ?? dealError ?? 'Error',
        ),
        isNetworkError: isNetworkFailure(stageError ?? dealError ?? 'Error'),
        onRetry: onRetry,
        child: const SizedBox.shrink(),
      );
    }
    if (stageList.isEmpty) {
      return _EmptyStages(
        canWrite: canWrite,
        seeding: seeding,
        onSeed: onSeed,
      );
    }

    final stageIds = {for (final s in stageList) s.id};
    final orphans = [
      for (final item in items)
        if (item.stageId == null || !stageIds.contains(item.stageId)) item,
    ];
    final effectiveStages = [
      ...stageList,
      if (orphans.isNotEmpty)
        const OpportunityStageItem(
          id: '__orphan__',
          name: 'Sin etapa asignada',
          order: 999,
          probability: 0,
          color: '#64748B',
        ),
    ];

    if (wide) {
      return ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
        children: [
          for (final stage in effectiveStages) ...[
            SizedBox(
              width: 288,
              child: _Column(
                stage: stage,
                stages: stageList,
                items: stage.id == '__orphan__'
                    ? orphans
                    : [
                        for (final item in items)
                          if (item.stageId == stage.id) item,
                      ],
                onOpen: onOpen,
                onMove: onMove,
              ),
            ),
            const SizedBox(width: 12),
          ],
        ],
      );
    }
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
      children: [
        for (final stage in effectiveStages)
          _Column(
            stage: stage,
            stages: stageList,
            items: stage.id == '__orphan__'
                ? orphans
                : [
                    for (final item in items)
                      if (item.stageId == stage.id) item,
                  ],
            onOpen: onOpen,
            onMove: onMove,
          ),
      ],
    );
  }
}

class _EmptyStages extends StatelessWidget {
  const _EmptyStages({
    required this.canWrite,
    required this.seeding,
    required this.onSeed,
  });

  final bool canWrite;
  final bool seeding;
  final VoidCallback onSeed;

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
                'Sin etapas',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              const Text(
                'El pipeline usa las etapas de la sucursal: contacto, visita, propuesta, ganada y perdida.',
              ),
              if (canWrite) ...[
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: seeding ? null : onSeed,
                  child: Text(
                    seeding ? 'Creando etapas...' : 'Crear etapas de agua',
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// Kanban column styled 1:1 after `nereus_smarthydro/src/routes/crm.tsx`
/// (`rounded-2xl border border-line bg-surface-2/60 p-3`).
class _Column extends StatelessWidget {
  const _Column({
    required this.stage,
    required this.stages,
    required this.items,
    required this.onOpen,
    required this.onMove,
  });

  final OpportunityStageItem stage;
  final List<OpportunityStageItem> stages;
  final List<OpportunityItem> items;
  final ValueChanged<String> onOpen;
  final void Function(String id, String stageId)? onMove;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final surface2 = dark ? NereusTokens.darkRaised : NereusTokens.surface2;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    final color = colorFromHex(stage.color);
    final total = items.fold<double>(0, (acc, e) => acc + e.estimatedValue);
    final canAcceptDrop = onMove != null && stage.id != '__orphan__';

    return DragTarget<OpportunityItem>(
      onWillAcceptWithDetails: (details) =>
          canAcceptDrop && details.data.stageId != stage.id,
      onAcceptWithDetails: (details) => onMove!(details.data.id, stage.id),
      builder: (context, candidateData, _) {
        final hovering = candidateData.isNotEmpty;
        return AnimatedContainer(
          duration: NereusTokens.fast,
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: hovering
                ? color.withValues(alpha: 0.1)
                : surface2.withValues(alpha: 0.65),
            borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
            border: Border.all(
              color: hovering ? color : line,
              width: hovering ? 1.6 : 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      stage.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  if (stage.id != '__orphan__')
                    Text(
                      '${stage.probability}%',
                      style: TextStyle(fontSize: 11.5, color: muted),
                    ),
                ],
              ),
              const SizedBox(height: 2),
              Text(
                '${items.length} ${items.length == 1 ? 'negocio' : 'negocios'} · ${clp(total)}',
                style: TextStyle(fontSize: 11.5, color: muted),
              ),
              const SizedBox(height: 10),
              if (items.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'Sin oportunidades',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: muted),
                  ),
                )
              else
                for (final item in items) ...[
                  _DealCard(
                    item: item,
                    stages: stages,
                    stageColor: color,
                    onTap: () => onOpen(item.id),
                    onMove: onMove,
                  ),
                  const SizedBox(height: 8),
                ],
            ],
          ),
        );
      },
    );
  }
}

/// Deal card styled 1:1 after `nereus_smarthydro/src/routes/crm.tsx`
/// (`rounded-xl border border-line bg-surface p-3 shadow-sm`).
class _DealCard extends StatelessWidget {
  const _DealCard({
    required this.item,
    required this.stages,
    required this.stageColor,
    required this.onTap,
    required this.onMove,
  });

  final OpportunityItem item;
  final List<OpportunityStageItem> stages;
  final Color stageColor;
  final VoidCallback onTap;
  final void Function(String id, String stageId)? onMove;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    final who = item.clientName;
    final others = [
      for (final stage in stages)
        if (stage.id != item.stageId) stage,
    ];
    final card = GlassCard(
      onTap: onTap,
      padding: const EdgeInsets.all(12),
      semanticLabel: item.title,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  item.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              if (onMove != null && others.isNotEmpty)
                PopupMenuButton<String>(
                  tooltip: 'Mover de etapa',
                  onSelected: (stageId) => onMove!(item.id, stageId),
                  itemBuilder: (context) => [
                    for (final stage in others)
                      PopupMenuItem(value: stage.id, child: Text(stage.name)),
                  ],
                  child: Icon(Icons.more_horiz, size: 18, color: muted),
                ),
            ],
          ),
          if (who != null && who.isNotEmpty) ...[
            const SizedBox(height: 2),
            Text(
              who,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12, color: muted),
            ),
          ],
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                clp(item.estimatedValue),
                style: const TextStyle(
                  fontSize: 13.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (item.expectedCloseDate != null)
                Text(
                  'Cierre ${item.expectedCloseDate}',
                  style: TextStyle(fontSize: 11, color: muted),
                ),
            ],
          ),
        ],
      ),
    );

    if (onMove == null || context.screenWidth < 960) return card;
    return Draggable<OpportunityItem>(
      data: item,
      feedback: Material(
        color: Colors.transparent,
        child: SizedBox(width: 272, child: Opacity(opacity: 0.92, child: card)),
      ),
      childWhenDragging: Opacity(opacity: 0.35, child: card),
      child: card,
    );
  }
}
