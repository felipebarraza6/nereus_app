import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'devices_provider.g.dart';

class DeviceQuery {
  const DeviceQuery({this.search = '', this.onlineOnly});

  final String search;
  final bool? onlineOnly;
}

@riverpod
class DeviceQueryController extends _$DeviceQueryController {
  @override
  DeviceQuery build() => const DeviceQuery();

  void setSearch(String value) =>
      state = DeviceQuery(search: value, onlineOnly: state.onlineOnly);

  void setOnline(bool? value) =>
      state = DeviceQuery(search: state.search, onlineOnly: value);
}

@riverpod
Future<List<DeviceItem>> devices(Ref ref) {
  final query = ref.watch(deviceQueryControllerProvider);
  return ref.watch(telemetryRepositoryProvider).devices(
        search: query.search,
        isOnline: query.onlineOnly,
      );
}

@riverpod
Future<DeviceDetail> deviceDetail(Ref ref, int id) {
  return ref.watch(telemetryRepositoryProvider).device(id);
}

@riverpod
Future<DeviceCalendar> deviceCalendar(Ref ref, int id) {
  return ref.watch(telemetryRepositoryProvider).calendar(id);
}

@riverpod
Future<List<DailyPoint>> deviceDaily(Ref ref, int id) {
  return ref.watch(telemetryRepositoryProvider).daily(deviceId: id);
}

@riverpod
Future<List<LatestValue>> latestReadings(Ref ref, List<int> ids) async {
  if (ids.isEmpty) return const [];
  final map = await ref.watch(telemetryRepositoryProvider).latestBatch(ids);
  return map.values.toList();
}
