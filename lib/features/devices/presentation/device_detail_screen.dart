import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/devices/presentation/device_config_form.dart';
import 'package:nereus_app/features/devices/presentation/device_form.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

part 'device_detail_widgets.dart';

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
        final dark = Theme.of(context).brightness == Brightness.dark;
        final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            padding: const EdgeInsets.only(bottom: 48),
            children: [
              PageHeader(
                kicker: 'Telemetría',
                title: data.device.name,
                subtitle: data.device.projectName ?? data.device.address,
                actions: [
                  OutlinedButton.icon(
                    onPressed: () => context.go('/devices'),
                    icon: const Icon(Icons.arrow_back, size: 16),
                    label: const Text('Dispositivos'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () => context.go('/tickets/new?device=$deviceId'),
                    icon: const Icon(Icons.support_agent, size: 16),
                    label: const Text('Crear ticket'),
                  ),
                  if (canWrite)
                    FilledButton.icon(
                      onPressed: () => showEntitySheet<void>(
                        context: context,
                        title: 'Editar equipo',
                        child: DeviceForm(existing: data.device),
                      ),
                      icon: const Icon(Icons.edit_outlined, size: 16),
                      label: const Text('Editar'),
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
                              data.device.address ?? data.device.deviceType,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            if (data.device.lastReadingAt != null) ...[
                              const SizedBox(height: 4),
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
                            ? NereusTokens.emerald
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
                child: _DeviceConfigPanel(
                  deviceId: deviceId,
                  canWrite: canWrite,
                  configs: configs,
                  compliance: compliance,
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
                                    variable.name.toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.8,
                                      color: muted,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    _latestFor(data.latestReadings, variable),
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    variable.variableType,
                                    style: TextStyle(fontSize: 12, color: muted),
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
                        'Tendencia',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 200,
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
                        'Calendario',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 10),
                      calendar.when(
                        skipLoadingOnReload: true,
                        skipLoadingOnRefresh: true,
                        loading: () => const SizedBox(height: 36),
                        error: (error, _) => Text(userFacingErrorMessage(error)),
                        data: (cal) => Wrap(
                          spacing: 6,
                          runSpacing: 6,
                          children: [
                            for (final day in cal.calendar)
                              StatusChip(
                                label: day.date.length >= 10
                                    ? day.date.substring(5)
                                    : day.date,
                                tone: day.hasData
                                    ? NereusTokens.emerald
                                    : NereusTokens.slateMuted,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
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
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: NereusTokens.spaceMd,
                    ),
                    child: GlassCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Historial de eventos',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8),
                          if (items.isEmpty)
                            Text(
                              'Sin eventos recientes.',
                              style: TextStyle(fontSize: 13, color: muted),
                            )
                          else
                            for (final event in items.take(8))
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 6),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            event.title.isEmpty
                                                ? event.eventTypeDisplay
                                                : event.title,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                          Text(
                                            event.eventTypeDisplay,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: muted,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (event.severity != null)
                                      StatusChip(
                                        label: event.severity!,
                                        tone: NereusTokens.lagoon,
                                      ),
                                  ],
                                ),
                              ),
                        ],
                      ),
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
