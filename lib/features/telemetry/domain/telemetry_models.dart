import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nereus_app/core/json_util.dart';

part 'telemetry_models.freezed.dart';

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
      name: asString(json['name'], fallback: 'Dispositivo'),
      deviceType: asString(json['device_type'], fallback: 'CUSTOM'),
      projectName: asStringOrNull(json['project_name']) ??
          (json['project'] is Map ? asStringOrNull(json['project']) : null),
      isOnline: json['is_online'] == true,
      lastReadingAt: asDateTime(json['last_reading_at']),
      minutesOffline: asIntOrNull(json['minutes_offline']),
      variablesCount: asIntOrNull(json['variables_count']),
      lat: asDoubleOrNull(json['lat']),
      lon: asDoubleOrNull(json['lon']),
      address: asStringOrNull(json['address']),
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
      name: asString(json['name']),
      variableType: asString(json['variable_type'], fallback: 'CUSTOM'),
      unit: asString(json['unit']),
      chartColor: asStringOrNull(json['chart_color']),
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
abstract class ProjectSummary with _$ProjectSummary {
  const factory ProjectSummary({
    required String id,
    required String name,
    @Default(0) int deviceCount,
  }) = _ProjectSummary;

  factory ProjectSummary.fromJson(Map<String, dynamic> json) {
    return ProjectSummary(
      id: asString(json['id']),
      name: asString(json['name']),
      deviceCount: asInt(json['device_count']),
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
    @Default([]) List<ProjectSummary> projects,
  }) = _DeviceOverview;

  factory DeviceOverview.fromJson(Map<String, dynamic> json) {
    final devices = asMap(json['devices']);
    final alerts = asMap(json['alerts']);
    final readings = asMap(json['readings_today']);
    return DeviceOverview(
      total: asInt(devices['total']),
      online: asInt(devices['online']),
      offline: asInt(devices['offline']),
      openAlerts: asInt(alerts['open_unacknowledged']),
      readingsToday: asInt(readings['count']),
      readingErrors: asInt(readings['errors']),
      projects: asMapList(json['projects']).map(ProjectSummary.fromJson).toList(),
    );
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class DeviceEvent with _$DeviceEvent {
  const factory DeviceEvent({
    required String id,
    @Default('') String title,
    @Default('') String eventType,
    @Default('') String eventTypeDisplay,
    String? severity,
    DateTime? created,
  }) = _DeviceEvent;

  factory DeviceEvent.fromJson(Map<String, dynamic> json) {
    return DeviceEvent(
      id: asString(json['id']),
      title: asString(json['title']),
      eventType: asString(json['event_type']),
      eventTypeDisplay: asString(
        json['event_type_display'],
        fallback: asString(json['event_type']),
      ),
      severity: asStringOrNull(json['severity']),
      created: asDateTime(json['created']),
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

  factory DeviceStatus.fromJson(Map<String, dynamic> json) {
    return DeviceStatus(
      id: asString(json['id']),
      name: asString(json['name']),
      isOnline: json['is_online'] == true,
      isDisconnected: json['is_disconnected'] == true,
      lastReadingAt: asDateTime(json['last_reading_at']),
      minutesSinceLastReading:
          asIntOrNull(json['minutes_since_last_reading']),
    );
  }
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

  factory CalendarDay.fromJson(Map<String, dynamic> json) {
    return CalendarDay(
      date: asString(json['date']),
      hasData: json['has_data'] == true,
      recordsCount: asInt(json['records_count']),
      errorCount: asInt(json['error_count']),
      avgValue: asDoubleOrNull(json['avg_value']),
    );
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class DeviceCalendar with _$DeviceCalendar {
  const factory DeviceCalendar({
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'device_name') String? deviceName,
    @Default([]) List<CalendarDay> calendar,
  }) = _DeviceCalendar;

  factory DeviceCalendar.fromJson(Map<String, dynamic> json) {
    return DeviceCalendar(
      deviceId: asString(json['device_id']),
      deviceName: asStringOrNull(json['device_name']),
      calendar: asMapList(json['calendar']).map(CalendarDay.fromJson).toList(),
    );
  }
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

  factory LatestValue.fromJson(Map<String, dynamic> json) {
    return LatestValue(
      id: asStringOrNull(json['id']),
      readingAt: asDateTime(json['reading_at']),
      processedValue: asDoubleOrNull(json['processed_value']),
      unit: asStringOrNull(json['unit']),
      variableId: asStringOrNull(json['variable_id'] ?? json['variable']),
      variableName: asStringOrNull(json['variable_name']),
      variableType: asStringOrNull(json['variable_type']),
      isError: json['is_error'] == true,
    );
  }
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
    final raw = json['by_severity_open'] is Map
        ? Map<dynamic, dynamic>.from(json['by_severity_open'] as Map)
        : <dynamic, dynamic>{};
    return AlertSummary(
      total: asInt(json['total']),
      openUnacknowledged: asInt(json['open_unacknowledged']),
      acknowledged: asInt(json['acknowledged']),
      bySeverityOpen: {
        for (final entry in raw.entries)
          entry.key.toString(): asInt(entry.value),
      },
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

  factory DailyPoint.fromJson(Map<String, dynamic> json) {
    return DailyPoint(
      date: asString(json['date']),
      avgValue: asDoubleOrNull(json['avg_value']),
      sumValue: asDoubleOrNull(json['sum_value']),
      recordsCount: asInt(json['records_count']),
    );
  }
}
