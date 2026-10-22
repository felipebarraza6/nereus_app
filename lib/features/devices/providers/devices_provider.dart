import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/polling/foreground_poll.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'devices_provider.g.dart';

@immutable
class DeviceQuery {
  const DeviceQuery({this.search = '', this.onlineOnly});

  final String search;
  final bool? onlineOnly;

  @override
  bool operator ==(Object other) =>
      other is DeviceQuery &&
      search == other.search &&
      onlineOnly == other.onlineOnly;

  @override
  int get hashCode => Object.hash(search, onlineOnly);
}

@Riverpod(retry: nereusNoRetry)
class DeviceQueryController extends _$DeviceQueryController {
  @override
  DeviceQuery build() => const DeviceQuery();

  void setSearch(String value) =>
      state = DeviceQuery(search: value, onlineOnly: state.onlineOnly);

  void setOnline(bool? value) =>
      state = DeviceQuery(search: state.search, onlineOnly: value);
}

@Riverpod(retry: nereusNoRetry)
Future<List<DeviceItem>> devices(Ref ref) {
  final query = ref.watch(deviceQueryControllerProvider);
  return ref.watch(telemetryRepositoryProvider).devices(
        search: query.search,
        isOnline: query.onlineOnly,
      );
}

@Riverpod(retry: nereusNoRetry)
Future<DeviceDetail> deviceDetail(Ref ref, int id) {
  return ref.watch(telemetryRepositoryProvider).device(id);
}

@Riverpod(retry: nereusNoRetry)
Future<DeviceCalendar> deviceCalendar(Ref ref, int id) {
  return ref.watch(telemetryRepositoryProvider).calendar(id);
}

@Riverpod(retry: nereusNoRetry)
Future<List<DailyPoint>> deviceDaily(Ref ref, int id) {
  return ref.watch(telemetryRepositoryProvider).daily(deviceId: id);
}

@Riverpod(retry: nereusNoRetry)
Future<List<LatestValue>> latestReadings(Ref ref, List<int> ids) async {
  if (ids.isEmpty) return const [];
  final map = await ref.watch(telemetryRepositoryProvider).latestBatch(ids);
  return map.values.toList();
}
