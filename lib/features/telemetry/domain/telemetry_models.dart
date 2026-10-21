import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nereus_app/core/json_util.dart';

part 'telemetry_models.freezed.dart';
part 'telemetry_models.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class DeviceItem with _$DeviceItem {
  const factory DeviceItem({
    required int id,
    required String name,
    @Default('CUSTOM') String deviceType,
    String? projectName,
    @Default(false) bool isOnline,
    DateTime? lastReadingAt,
    int? minutesOffline,
    int? variablesCount,
    double? lat,
    double? lon,
    String? address,
  }) = _DeviceItem;

  factory DeviceItem.fromJson(Map<String, dynamic> json) {
    return DeviceItem(
      id: asInt(json['id']),
      name: '${json['name'] ?? ''}',
      deviceType: '${json['device_type'] ?? 'CUSTOM'}',
      projectName: json['project_name']?.toString(),
      isOnline: json['is_online'] == true,
      lastReadingAt: asDateTime(json['last_reading_at']),
      minutesOffline: asIntOrNull(json['minutes_offline']),
      variablesCount: asIntOrNull(json['variables_count']),
      lat: asDoubleOrNull(json['lat']),
      lon: asDoubleOrNull(json['lon']),
      address: json['address']?.toString(),
    );
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class DeviceVariable with _$DeviceVariable {
  const factory DeviceVariable({
    required int id,
    required String name,
    @Default('CUSTOM') String variableType,
    @Default('') String unit,
    String? chartColor,
  }) = _DeviceVariable;

  factory DeviceVariable.fromJson(Map<String, dynamic> json) {
    return DeviceVariable(
      id: asInt(json['id']),
      name: '${json['name'] ?? ''}',
      variableType: '${json['variable_type'] ?? 'CUSTOM'}',
      unit: '${json['unit'] ?? ''}',
      chartColor: json['chart_color']?.toString(),
    );
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class DeviceDetail with _$DeviceDetail {
  const factory DeviceDetail({
    required DeviceItem device,
    @Default([]) List<DeviceVariable> variables,
    @Default([]) List<LatestValue> latestReadings,
  }) = _DeviceDetail;

  factory DeviceDetail.fromJson(Map<String, dynamic> json) {
    return DeviceDetail(
      device: DeviceItem.fromJson(json),
      variables: asMapList(json['variables']).map(DeviceVariable.fromJson).toList(),
      latestReadings:
          asMapList(json['latest_readings']).map(LatestValue.fromJson).toList(),
    );
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class DeviceOverview with _$DeviceOverview {
  const factory DeviceOverview({
    @Default(0) int total,
    @Default(0) int online,
    @Default(0) int offline,
    @Default(0) int openAlerts,
    @Default(0) int readingsToday,
    @Default(0) int readingErrors,
  }) = _DeviceOverview;

  factory DeviceOverview.fromJson(Map<String, dynamic> json) {
    final devices = json['devices'] as Map? ?? {};
    final alerts = json['alerts'] as Map? ?? {};
    final readings = json['readings_today'] as Map? ?? {};
    return DeviceOverview(
      total: (devices['total'] as num?)?.toInt() ?? 0,
      online: (devices['online'] as num?)?.toInt() ?? 0,
      offline: (devices['offline'] as num?)?.toInt() ?? 0,
      openAlerts: (alerts['open_unacknowledged'] as num?)?.toInt() ?? 0,
      readingsToday: (readings['count'] as num?)?.toInt() ?? 0,
      readingErrors: (readings['errors'] as num?)?.toInt() ?? 0,
    );
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class DeviceStatus with _$DeviceStatus {
  const factory DeviceStatus({
    required String id,
    required String name,
    @JsonKey(name: 'is_online') @Default(false) bool isOnline,
    @JsonKey(name: 'is_disconnected') @Default(false) bool isDisconnected,
    @JsonKey(name: 'last_reading_at') DateTime? lastReadingAt,
    @JsonKey(name: 'minutes_since_last_reading') int? minutesSinceLastReading,
  }) = _DeviceStatus;

  factory DeviceStatus.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class CalendarDay with _$CalendarDay {
  const factory CalendarDay({
    required String date,
    @JsonKey(name: 'has_data') @Default(false) bool hasData,
    @JsonKey(name: 'records_count') @Default(0) int recordsCount,
    @JsonKey(name: 'error_count') @Default(0) int errorCount,
    @JsonKey(name: 'avg_value') double? avgValue,
  }) = _CalendarDay;

  factory CalendarDay.fromJson(Map<String, dynamic> json) =>
      _$CalendarDayFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class DeviceCalendar with _$DeviceCalendar {
  const factory DeviceCalendar({
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'device_name') String? deviceName,
    @Default([]) List<CalendarDay> calendar,
  }) = _DeviceCalendar;

  factory DeviceCalendar.fromJson(Map<String, dynamic> json) =>
      _$DeviceCalendarFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class LatestValue with _$LatestValue {
  const factory LatestValue({
    String? id,
    @JsonKey(name: 'reading_at') DateTime? readingAt,
    @JsonKey(name: 'processed_value') double? processedValue,
    String? unit,
    @JsonKey(name: 'variable_id') String? variableId,
    @JsonKey(name: 'variable_name') String? variableName,
    @JsonKey(name: 'variable_type') String? variableType,
    @JsonKey(name: 'is_error') @Default(false) bool isError,
  }) = _LatestValue;

  factory LatestValue.fromJson(Map<String, dynamic> json) =>
      _$LatestValueFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class AlertSummary with _$AlertSummary {
  const factory AlertSummary({
    @Default(0) int total,
    @JsonKey(name: 'open_unacknowledged') @Default(0) int openUnacknowledged,
    @Default(0) int acknowledged,
    @JsonKey(name: 'by_severity_open') @Default({}) Map<String, int> bySeverityOpen,
  }) = _AlertSummary;

  factory AlertSummary.fromJson(Map<String, dynamic> json) {
    final raw = json['by_severity_open'] as Map? ?? {};
    return AlertSummary(
      total: (json['total'] as num?)?.toInt() ?? 0,
      openUnacknowledged:
          (json['open_unacknowledged'] as num?)?.toInt() ?? 0,
      acknowledged: (json['acknowledged'] as num?)?.toInt() ?? 0,
      bySeverityOpen: raw.map(
        (key, value) => MapEntry(key.toString(), (value as num?)?.toInt() ?? 0),
      ),
    );
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class DailyPoint with _$DailyPoint {
  const factory DailyPoint({
    required String date,
    @JsonKey(name: 'avg_value') double? avgValue,
    @JsonKey(name: 'sum_value') double? sumValue,
    @JsonKey(name: 'records_count') @Default(0) int recordsCount,
  }) = _DailyPoint;

  factory DailyPoint.fromJson(Map<String, dynamic> json) =>
      _$DailyPointFromJson(json);
}
