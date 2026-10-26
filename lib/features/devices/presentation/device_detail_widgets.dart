part of 'device_detail_screen.dart';

String _formatWhen(DateTime value) {
  final local = value.toLocal();
  final y = local.year.toString().padLeft(4, '0');
  final m = local.month.toString().padLeft(2, '0');
  final d = local.day.toString().padLeft(2, '0');
  final h = local.hour.toString().padLeft(2, '0');
  final min = local.minute.toString().padLeft(2, '0');
  return '$y-$m-$d $h:$min';
}

class _DeviceConfigPanel extends StatelessWidget {
  const _DeviceConfigPanel({
    required this.deviceId,
    required this.canWrite,
    required this.configs,
    required this.compliance,
  });

  final int deviceId;
  final bool canWrite;
  final AsyncValue<List<DeviceConfigItem>> configs;
  final AsyncValue<List<ComplianceSnapshot>> compliance;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    return GlassCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Configuración de esta unidad',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
          Text(
            'Escalas, offset y máximos son por dispositivo, no por modelo de catálogo.',
            style: TextStyle(fontSize: 12.5, color: muted),
          ),
          const SizedBox(height: 8),
          configs.when(
            skipLoadingOnReload: true,
            skipLoadingOnRefresh: true,
            loading: () => const SizedBox(height: 8),
            error: (error, _) => Text(userFacingErrorMessage(error)),
            data: (items) {
              final cfg = items.isEmpty ? null : items.first;
              return Text(
                cfg == null
                    ? 'Sin DeviceConfig todavía.'
                    : 'Offset ${cfg.levelOffset ?? '—'} · máx. caudal ${cfg.maxFlowLs ?? '—'} L/s',
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              );
            },
          ),
          if (canWrite) ...[
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                FilledButton(
                  onPressed: () => showEntitySheet<void>(
                    context: context,
                    title: 'Configurar unidad',
                    child: DeviceConfigForm(
                      deviceId: deviceId,
                      existing: configs.asData != null &&
                              configs.asData!.value.isNotEmpty
                          ? configs.asData!.value.first
                          : null,
                    ),
                  ),
                  child: const Text('Offsets y máximos'),
                ),
                OutlinedButton(
                  onPressed: () => showEntitySheet<void>(
                    context: context,
                    title: 'Variable / escala',
                    child: VariableForm(deviceId: deviceId),
                  ),
                  child: const Text('Agregar variable'),
                ),
              ],
            ),
          ],
          const SizedBox(height: 10),
          compliance.when(
            skipLoadingOnReload: true,
            skipLoadingOnRefresh: true,
            loading: () => const SizedBox.shrink(),
            error: (_, __) => const SizedBox.shrink(),
            data: (items) {
              if (items.isEmpty) {
                return Text(
                  'Sin configuración DGA/SMA.',
                  style: TextStyle(fontSize: 12, color: muted),
                );
              }
              final item = items.first;
              return Text(
                'DGA ${item.sendDga ? 'activo' : 'inactivo'} · SMA ${item.sendSma ? 'activo' : 'inactivo'} · código ${item.codeDga ?? '—'} (solo lectura)',
                style: TextStyle(fontSize: 12, color: muted),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _Chart extends StatelessWidget {
  const _Chart({required this.points});

  final List<DailyPoint> points;

  @override
  Widget build(BuildContext context) {
    if (points.isEmpty) {
      return const Center(child: Text('Sin lecturas en el rango'));
    }
    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(show: false),
        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            color: NereusTokens.hydroBlue,
            barWidth: 2.2,
            spots: [
              for (var i = 0; i < points.length; i++)
                FlSpot(i.toDouble(), points[i].avgValue ?? 0),
            ],
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              color: NereusTokens.hydroBlue.withValues(alpha: 0.14),
            ),
          ),
        ],
      ),
    );
  }
}
