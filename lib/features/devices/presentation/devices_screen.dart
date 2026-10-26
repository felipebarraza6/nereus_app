import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/nereus_table.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/devices/presentation/device_form.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

class DevicesScreen extends ConsumerStatefulWidget {
  const DevicesScreen({super.key});

  @override
  ConsumerState<DevicesScreen> createState() => _DevicesScreenState();
}

class _DevicesScreenState extends ConsumerState<DevicesScreen> {
  bool _map = false;

  @override
  Widget build(BuildContext context) {
    final devices = ref.watch(devicesProvider);
    final query = ref.watch(deviceQueryControllerProvider);
    final access = Access(ref.watch(sessionProvider).value);
    final canWrite = access.canWrite(NereusModules.iotTelemetry);
    final wide = MediaQuery.sizeOf(context).width >= 960;
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          PageHeader(
            kicker: 'Telemetría',
            title: 'Dispositivos',
            subtitle: 'Puntos de captación IoT, lecturas horarias y estado',
            actions: [
              if (canWrite)
                OutlinedButton(
                  onPressed: () => showEntitySheet<void>(
                    context: context,
                    title: 'Nuevo proyecto',
                    child: const ProjectForm(),
                  ),
                  child: const Text('+ Proyecto'),
                ),
              if (canWrite)
                FilledButton.icon(
                  onPressed: () => _openCreate(context),
                  icon: const Icon(Icons.add, size: 16),
                  label: const Text('Equipo'),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 36,
                  child: TextField(
                    style: const TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                      hintText: 'Buscar dispositivos por nombre o serie…',
                      prefixIcon: Icon(Icons.search, size: 16, color: muted),
                    ),
                    onChanged: ref
                        .read(deviceQueryControllerProvider.notifier)
                        .setSearch,
                  ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    FilterPill(
                      label: 'Todos',
                      selected: query.onlineOnly == null,
                      onTap: () => ref
                          .read(deviceQueryControllerProvider.notifier)
                          .setOnline(null),
                    ),
                    FilterPill(
                      label: 'En línea',
                      selected: query.onlineOnly ?? false,
                      onTap: () => ref
                          .read(deviceQueryControllerProvider.notifier)
                          .setOnline(true),
                    ),
                    FilterPill(
                      label: 'Silenciosos',
                      selected: query.onlineOnly == false,
                      onTap: () => ref
                          .read(deviceQueryControllerProvider.notifier)
                          .setOnline(false),
                    ),
                    FilterPill(
                      label: _map ? 'Lista' : 'Mapa',
                      selected: _map,
                      onTap: () => setState(() => _map = !_map),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: devices.when(
              skipLoadingOnReload: true,
              skipLoadingOnRefresh: true,
              loading: () => const ShimmerList(),
              error: (error, _) => AsyncBody(
                isLoading: false,
                hasError: true,
                isEmpty: true,
                onRetry: () => ref.invalidate(devicesProvider),
                errorMessage: userFacingErrorMessage(error),
                isNetworkError: isNetworkFailure(error),
                child: const SizedBox.shrink(),
              ),
              data: (items) {
                if (items.isEmpty) {
                  return const AsyncBody(
                    isLoading: false,
                    hasError: false,
                    isEmpty: true,
                    onRetry: _noop,
                    emptyMessage: 'No hay dispositivos en esta sucursal.',
                    child: SizedBox.shrink(),
                  );
                }
                if (_map) return _DeviceMap(items: items);
                if (wide) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: GlassSurface(
                      borderRadius:
                          BorderRadius.circular(NereusTokens.radiusLg),
                      child: NereusTable<DeviceItem>(
                        rows: items,
                        onRowTap: (device) =>
                            context.go('/devices/${device.id}'),
                        columns: [
                          NereusColumn(
                            id: 'name',
                            label: 'Equipo',
                            cell: (d) => d.name,
                          ),
                          NereusColumn(
                            id: 'project',
                            label: 'Proyecto',
                            cell: (d) => d.projectName ?? '—',
                          ),
                          NereusColumn(
                            id: 'type',
                            label: 'Tipo',
                            cell: (d) => d.deviceType,
                          ),
                          NereusColumn(
                            id: 'status',
                            label: 'Estado',
                            cell: (d) => d.isOnline ? 'En línea' : 'Silencioso',
                          ),
                          NereusColumn(
                            id: 'vars',
                            label: 'Vars',
                            numeric: true,
                            cell: (d) => '${d.variablesCount ?? 0}',
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return ListView.separated(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  itemCount: items.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final device = items[index];
                    return Hero(
                      tag: 'device-${device.id}',
                      child: GlassCard(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 12,
                        ),
                        semanticLabel: device.name,
                        onTap: () => context.go('/devices/${device.id}'),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    device.name,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    device.projectName ?? device.deviceType,
                                    style:
                                        TextStyle(fontSize: 12, color: muted),
                                  ),
                                ],
                              ),
                            ),
                            StatusChip(
                              label:
                                  device.isOnline ? 'En línea' : 'Silencioso',
                              tone: device.isOnline
                                  ? NereusTokens.emerald
                                  : NereusTokens.amber,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void _noop() {}

extension on _DevicesScreenState {
  Future<void> _openCreate(BuildContext context) {
    return showEntitySheet<void>(
      context: context,
      title: 'Nuevo equipo / punto',
      child: const DeviceForm(),
    );
  }
}

class _DeviceMap extends StatelessWidget {
  const _DeviceMap({required this.items});

  final List<DeviceItem> items;

  @override
  Widget build(BuildContext context) {
    final points = [
      for (final item in items)
        if (item.lat != null && item.lon != null)
          (item, LatLng(item.lat!, item.lon!)),
    ];
    final center = points.isEmpty
        ? const LatLng(-33.45, -70.66)
        : points.first.$2;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
        child: FlutterMap(
          options: MapOptions(initialCenter: center, initialZoom: 8),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'app.smarthydro.nereus_app',
            ),
            MarkerLayer(
              markers: [
                for (final point in points)
                  Marker(
                    point: point.$2,
                    width: 36,
                    height: 36,
                    child: GestureDetector(
                      onTap: () => context.go('/devices/${point.$1.id}'),
                      child: Icon(
                        Icons.location_on,
                        color: point.$1.isOnline
                            ? NereusTokens.emerald
                            : NereusTokens.amber,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
