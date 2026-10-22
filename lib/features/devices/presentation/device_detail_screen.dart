import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/devices/presentation/device_config_form.dart';
import 'package:nereus_app/features/devices/presentation/device_form.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

class DeviceDetailScreen extends ConsumerWidget {
  const DeviceDetailScreen({super.key, required this.deviceId});

  final int deviceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(deviceDetailProvider(deviceId));
    final calendar = ref.watch(deviceCalendarProvider(deviceId));
    final daily = ref.watch(deviceDailyProvider(deviceId));
    final events = ref.watch(deviceEventsProvider(deviceId));
    final configs = ref.watch(deviceConfigsProvider(deviceId));
    final compliance = ref.watch(deviceComplianceProvider(deviceId));
    final access = Access(ref.watch(sessionProvider).value);
    final canWrite = access.canWrite(NereusModules.iotTelemetry);

    return detail.when(
      skipLoadingOnReload: true,
      skipLoadingOnRefresh: true,
      loading: () => const Scaffold(
        backgroundColor: Colors.transparent,
        body: ShimmerList(),
      ),
      error: (error, _) => Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const GlassAppBar(title: Text('Dispositivo')),
        body: AsyncBody(
          isLoading: false,
          hasError: true,
          isEmpty: true,
          onRetry: () => ref.invalidate(deviceDetailProvider(deviceId)),
          errorMessage: userFacingErrorMessage(error),
          isNetworkError: isNetworkFailure(error),
          child: const SizedBox.shrink(),
        ),
      ),
      data: (data) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () => context.go('/tickets/new?device=$deviceId'),
            label: const Text('Crear ticket'),
            icon: const Icon(Icons.support_agent),
          ),
          body: ListView(
            padding: const EdgeInsets.only(bottom: 96),
            children: [
              PageHeader(
                title: data.device.name,
                subtitle: data.device.projectName ?? data.device.address,
                actions: [
                  if (canWrite)
                    IconButton(
                      tooltip: 'Editar',
                      onPressed: () => showEntitySheet<void>(
                        context: context,
                        title: 'Editar equipo',
                        child: DeviceForm(existing: data.device),
                      ),
                      icon: const Icon(Icons.edit_outlined),
                    ),
                  IconButton(
                    tooltip: 'Volver',
                    onPressed: () => context.go('/devices'),
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: NereusTokens.spaceMd,
                ),
                child: GlassCard(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.device.address ??
                                  data.device.deviceType,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            if (data.device.lastReadingAt != null) ...[
                              const SizedBox(height: 6),
                              Text(
                                'Última lectura ${_formatWhen(data.device.lastReadingAt!)}',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ],
                          ],
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
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: NereusTokens.spaceMd,
                ),
                child: GlassCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Configuración de esta unidad',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Escalas, offset y máximos son por dispositivo, no por modelo de catálogo.',
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
                          );
                        },
                      ),
                      if (canWrite) ...[
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8,
                          children: [
                            FilledButton.tonal(
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
                      const SizedBox(height: 12),
                      compliance.when(
                        skipLoadingOnReload: true,
                        skipLoadingOnRefresh: true,
                        loading: () => const SizedBox.shrink(),
                        error: (_, __) => const SizedBox.shrink(),
                        data: (items) {
                          if (items.isEmpty) {
                            return const Text('Sin configuración DGA/SMA.');
                          }
                          final item = items.first;
                          return Text(
                            'DGA ${item.sendDga ? 'activo' : 'inactivo'} · SMA ${item.sendSma ? 'activo' : 'inactivo'} · código ${item.codeDga ?? '—'} (solo lectura)',
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: NereusTokens.spaceMd,
                ),
                child: Text(
                  'Últimos valores',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: NereusTokens.spaceMd,
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final columns = constraints.maxWidth > 700 ? 4 : 2;
                    final width =
                        (constraints.maxWidth - (12 * (columns - 1))) / columns;
                    if (data.variables.isEmpty) {
                      return const GlassCard(
                        child: Text('Este dispositivo no tiene variables.'),
                      );
                    }
                    return Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        for (final variable in data.variables)
                          SizedBox(
                            width: width,
                            child: GlassCard(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    variable.name,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    _latestFor(data.latestReadings, variable),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(fontSize: 24),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    variable.variableType,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: NereusTokens.spaceMd,
                ),
                child: Text(
                  'Tendencia',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: NereusTokens.spaceMd,
                ),
                child: GlassCard(
                  child: SizedBox(
                    height: 220,
                    child: daily.when(
                      skipLoadingOnReload: true,
                      skipLoadingOnRefresh: true,
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (error, _) => Center(
                        child: Text(userFacingErrorMessage(error)),
                      ),
                      data: (points) => _Chart(points: points),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: NereusTokens.spaceMd,
                ),
                child: Text(
                  'Calendario',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: NereusTokens.spaceMd,
                ),
                child: calendar.when(
                  skipLoadingOnReload: true,
                  skipLoadingOnRefresh: true,
                  loading: () => const SizedBox(height: 48),
                  error: (error, _) => Text(userFacingErrorMessage(error)),
                  data: (cal) => Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (final day in cal.calendar)
                        StatusChip(
                          label: day.date.length >= 10
                              ? day.date.substring(5)
                              : day.date,
                          tone: day.hasData
                              ? NereusTokens.teal
                              : NereusTokens.inkMuted,
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: NereusTokens.spaceMd,
                ),
                child: Text(
                  'Historial',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 8),
              events.when(
                skipLoadingOnReload: true,
                skipLoadingOnRefresh: true,
                loading: () => const SizedBox.shrink(),
                error: (error, _) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: NereusTokens.spaceMd,
                  ),
                  child: Text(userFacingErrorMessage(error)),
                ),
                data: (items) {
                  if (items.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: NereusTokens.spaceMd,
                      ),
                      child: GlassCard(
                        child: Text('Sin eventos recientes.'),
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: NereusTokens.spaceMd,
                    ),
                    child: Column(
                      children: [
                        for (final event in items.take(8)) ...[
                          GlassCard(
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                event.title.isEmpty
                                    ? event.eventTypeDisplay
                                    : event.title,
                              ),
                              subtitle: Text(event.eventTypeDisplay),
                              trailing: event.severity == null
                                  ? null
                                  : StatusChip(
                                      label: event.severity!,
                                      tone: NereusTokens.lagoon,
                                    ),
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ],
                    ),
                  );
                },
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

String _formatWhen(DateTime value) {
  final local = value.toLocal();
  final y = local.year.toString().padLeft(4, '0');
  final m = local.month.toString().padLeft(2, '0');
  final d = local.day.toString().padLeft(2, '0');
  final h = local.hour.toString().padLeft(2, '0');
  final min = local.minute.toString().padLeft(2, '0');
  return '$y-$m-$d $h:$min';
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
            color: NereusTokens.teal,
            barWidth: 3,
            spots: [
              for (var i = 0; i < points.length; i++)
                FlSpot(i.toDouble(), points[i].avgValue ?? 0),
            ],
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              color: NereusTokens.teal.withValues(alpha: 0.12),
            ),
          ),
        ],
      ),
    );
  }
}
