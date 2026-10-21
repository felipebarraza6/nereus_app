import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:nereus_api_client/nereus_api_client.dart';

class DeviceDetailScreen extends ConsumerWidget {
  const DeviceDetailScreen({super.key, required this.deviceId});

  final int deviceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(deviceDetailProvider(deviceId));
    final calendar = ref.watch(deviceCalendarProvider(deviceId));
    final daily = ref.watch(deviceDailyProvider(deviceId));
    final events = ref.watch(_eventsProvider(deviceId));

    return detail.when(
      loading: () => const Scaffold(body: ShimmerList()),
      error: (error, _) => Scaffold(
        appBar: const GlassAppBar(title: Text('Dispositivo')),
        body: AsyncBody(
          isLoading: false,
          hasError: true,
          isEmpty: true,
          onRetry: () => ref.invalidate(deviceDetailProvider(deviceId)),
          errorMessage: '$error',
          child: const SizedBox.shrink(),
        ),
      ),
      data: (data) {
        return Scaffold(
          appBar: GlassAppBar(title: Text(data.device.name)),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () =>
                context.go('/tickets/new?device=$deviceId'),
            label: const Text('Crear ticket'),
            icon: const Icon(Icons.support_agent),
          ),
          body: ListView(
            padding: const EdgeInsets.all(NereusTokens.spaceMd),
            children: [
              Hero(
                tag: 'device-$deviceId',
                child: GlassCard(
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          data.device.address ?? data.device.projectName ?? '',
                        ),
                      ),
                      StatusChip(
                        label: data.device.isOnline ? 'En línea' : 'Silencioso',
                        tone: data.device.isOnline
                            ? NereusTokens.teal
                            : NereusTokens.amber,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  for (final variable in data.variables)
                    SizedBox(
                      width: 160,
                      child: GlassCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(variable.variableType),
                            Text(
                              _latestFor(data.latestReadings, variable),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Text(variable.name),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              GlassCard(
                child: SizedBox(
                  height: 220,
                  child: daily.when(
                    loading: () => const Center(child: CircularProgressIndicator()),
                    error: (error, _) => Text('$error'),
                    data: (points) => _Chart(points: points),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text('Calendario', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              calendar.when(
                loading: () => const SizedBox(height: 48),
                error: (error, _) => Text('$error'),
                data: (cal) => Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    for (final day in cal.calendar)
                      StatusChip(
                        label: day.date.substring(5),
                        tone: day.hasData
                            ? NereusTokens.teal
                            : NereusTokens.inkMuted,
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text('Eventos', style: Theme.of(context).textTheme.titleMedium),
              events.when(
                loading: () => const SizedBox.shrink(),
                error: (error, _) => Text('$error'),
                data: (items) => Column(
                  children: [
                    for (final event in items.take(8))
                      ListTile(
                        title: Text(event.title),
                        subtitle: Text(event.eventTypeDisplay),
                        dense: true,
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _latestFor(List<LatestValue> readings, DeviceVariable variable) {
    for (final reading in readings) {
      if (reading.variableId == '${variable.id}' ||
          reading.variableName == variable.name) {
        final value = reading.processedValue;
        if (value == null) return '—';
        return '${value.toStringAsFixed(2)} ${variable.unit}';
      }
    }
    return '—';
  }
}

final _eventsProvider =
    FutureProvider.family<List<TelemetryEventList>, int>((ref, id) async {
  final page = await ref.watch(telemetryRepositoryProvider).events(deviceId: id);
  return page.results;
});

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
            color: NereusTokens.teal,
            spots: [
              for (var i = 0; i < points.length; i++)
                FlSpot(i.toDouble(), points[i].avgValue ?? 0),
            ],
            dotData: const FlDotData(show: false),
          ),
        ],
      ),
    );
  }
}
