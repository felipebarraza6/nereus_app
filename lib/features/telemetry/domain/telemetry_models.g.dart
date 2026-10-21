// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeviceStatus _$DeviceStatusFromJson(Map<String, dynamic> json) =>
    _DeviceStatus(
      id: json['id'] as String,
      name: json['name'] as String,
      isOnline: json['is_online'] as bool? ?? false,
      isDisconnected: json['is_disconnected'] as bool? ?? false,
      lastReadingAt: json['last_reading_at'] == null
          ? null
          : DateTime.parse(json['last_reading_at'] as String),
      minutesSinceLastReading: (json['minutes_since_last_reading'] as num?)
          ?.toInt(),
    );

Map<String, dynamic> _$DeviceStatusToJson(_DeviceStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'is_online': instance.isOnline,
      'is_disconnected': instance.isDisconnected,
      'last_reading_at': instance.lastReadingAt?.toIso8601String(),
      'minutes_since_last_reading': instance.minutesSinceLastReading,
    };

_CalendarDay _$CalendarDayFromJson(Map<String, dynamic> json) => _CalendarDay(
  date: json['date'] as String,
  hasData: json['has_data'] as bool? ?? false,
  recordsCount: (json['records_count'] as num?)?.toInt() ?? 0,
  errorCount: (json['error_count'] as num?)?.toInt() ?? 0,
  avgValue: (json['avg_value'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CalendarDayToJson(_CalendarDay instance) =>
    <String, dynamic>{
      'date': instance.date,
      'has_data': instance.hasData,
      'records_count': instance.recordsCount,
      'error_count': instance.errorCount,
      'avg_value': instance.avgValue,
    };

_DeviceCalendar _$DeviceCalendarFromJson(Map<String, dynamic> json) =>
    _DeviceCalendar(
      deviceId: json['device_id'] as String,
      deviceName: json['device_name'] as String?,
      calendar:
          (json['calendar'] as List<dynamic>?)
              ?.map((e) => CalendarDay.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DeviceCalendarToJson(_DeviceCalendar instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'device_name': instance.deviceName,
      'calendar': instance.calendar,
    };

_LatestValue _$LatestValueFromJson(Map<String, dynamic> json) => _LatestValue(
  id: json['id'] as String?,
  readingAt: json['reading_at'] == null
      ? null
      : DateTime.parse(json['reading_at'] as String),
  processedValue: (json['processed_value'] as num?)?.toDouble(),
  unit: json['unit'] as String?,
  variableId: json['variable_id'] as String?,
  variableName: json['variable_name'] as String?,
  variableType: json['variable_type'] as String?,
  isError: json['is_error'] as bool? ?? false,
);

Map<String, dynamic> _$LatestValueToJson(_LatestValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reading_at': instance.readingAt?.toIso8601String(),
      'processed_value': instance.processedValue,
      'unit': instance.unit,
      'variable_id': instance.variableId,
      'variable_name': instance.variableName,
      'variable_type': instance.variableType,
      'is_error': instance.isError,
    };

_DailyPoint _$DailyPointFromJson(Map<String, dynamic> json) => _DailyPoint(
  date: json['date'] as String,
  avgValue: (json['avg_value'] as num?)?.toDouble(),
  sumValue: (json['sum_value'] as num?)?.toDouble(),
  recordsCount: (json['records_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$DailyPointToJson(_DailyPoint instance) =>
    <String, dynamic>{
      'date': instance.date,
      'avg_value': instance.avgValue,
      'sum_value': instance.sumValue,
      'records_count': instance.recordsCount,
    };
