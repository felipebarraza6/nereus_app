// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_event.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryEventCWProxy {
  TelemetryEvent id(int id);

  TelemetryEvent eventType(String eventType);

  TelemetryEvent eventTypeDisplay(String eventTypeDisplay);

  TelemetryEvent device(int? device);

  TelemetryEvent deviceName(String deviceName);

  TelemetryEvent title(String title);

  TelemetryEvent message(String message);

  TelemetryEvent severity(TelemetryEventSeverityEnum? severity);

  TelemetryEvent severityDisplay(String severityDisplay);

  TelemetryEvent extraData(Object? extraData);

  TelemetryEvent reading(int? reading);

  TelemetryEvent created(DateTime created);

  TelemetryEvent modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryEvent(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryEvent(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryEvent call({
    int id,
    String eventType,
    String eventTypeDisplay,
    int? device,
    String deviceName,
    String title,
    String message,
    TelemetryEventSeverityEnum? severity,
    String severityDisplay,
    Object? extraData,
    int? reading,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryEvent.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryEvent.copyWith.fieldName(...)`
class _$TelemetryEventCWProxyImpl implements _$TelemetryEventCWProxy {
  const _$TelemetryEventCWProxyImpl(this._value);

  final TelemetryEvent _value;

  @override
  TelemetryEvent id(int id) => this(id: id);

  @override
  TelemetryEvent eventType(String eventType) => this(eventType: eventType);

  @override
  TelemetryEvent eventTypeDisplay(String eventTypeDisplay) =>
      this(eventTypeDisplay: eventTypeDisplay);

  @override
  TelemetryEvent device(int? device) => this(device: device);

  @override
  TelemetryEvent deviceName(String deviceName) => this(deviceName: deviceName);

  @override
  TelemetryEvent title(String title) => this(title: title);

  @override
  TelemetryEvent message(String message) => this(message: message);

  @override
  TelemetryEvent severity(TelemetryEventSeverityEnum? severity) =>
      this(severity: severity);

  @override
  TelemetryEvent severityDisplay(String severityDisplay) =>
      this(severityDisplay: severityDisplay);

  @override
  TelemetryEvent extraData(Object? extraData) => this(extraData: extraData);

  @override
  TelemetryEvent reading(int? reading) => this(reading: reading);

  @override
  TelemetryEvent created(DateTime created) => this(created: created);

  @override
  TelemetryEvent modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryEvent(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryEvent(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryEvent call({
    Object? id = const $CopyWithPlaceholder(),
    Object? eventType = const $CopyWithPlaceholder(),
    Object? eventTypeDisplay = const $CopyWithPlaceholder(),
    Object? device = const $CopyWithPlaceholder(),
    Object? deviceName = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? severity = const $CopyWithPlaceholder(),
    Object? severityDisplay = const $CopyWithPlaceholder(),
    Object? extraData = const $CopyWithPlaceholder(),
    Object? reading = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TelemetryEvent(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      eventType: eventType == const $CopyWithPlaceholder()
          ? _value.eventType
          // ignore: cast_nullable_to_non_nullable
          : eventType as String,
      eventTypeDisplay: eventTypeDisplay == const $CopyWithPlaceholder()
          ? _value.eventTypeDisplay
          // ignore: cast_nullable_to_non_nullable
          : eventTypeDisplay as String,
      device: device == const $CopyWithPlaceholder()
          ? _value.device
          // ignore: cast_nullable_to_non_nullable
          : device as int?,
      deviceName: deviceName == const $CopyWithPlaceholder()
          ? _value.deviceName
          // ignore: cast_nullable_to_non_nullable
          : deviceName as String,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      severity: severity == const $CopyWithPlaceholder()
          ? _value.severity
          // ignore: cast_nullable_to_non_nullable
          : severity as TelemetryEventSeverityEnum?,
      severityDisplay: severityDisplay == const $CopyWithPlaceholder()
          ? _value.severityDisplay
          // ignore: cast_nullable_to_non_nullable
          : severityDisplay as String,
      extraData: extraData == const $CopyWithPlaceholder()
          ? _value.extraData
          // ignore: cast_nullable_to_non_nullable
          : extraData as Object?,
      reading: reading == const $CopyWithPlaceholder()
          ? _value.reading
          // ignore: cast_nullable_to_non_nullable
          : reading as int?,
      created: created == const $CopyWithPlaceholder()
          ? _value.created
          // ignore: cast_nullable_to_non_nullable
          : created as DateTime,
      modified: modified == const $CopyWithPlaceholder()
          ? _value.modified
          // ignore: cast_nullable_to_non_nullable
          : modified as DateTime,
    );
  }
}

extension $TelemetryEventCopyWith on TelemetryEvent {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryEvent.copyWith(...)` or like so:`instanceOfTelemetryEvent.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryEventCWProxy get copyWith => _$TelemetryEventCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryEvent _$TelemetryEventFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryEvent',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'event_type',
        'event_type_display',
        'device_name',
        'title',
        'message',
        'severity_display',
        'created',
        'modified',
      ],
    );
    final val = TelemetryEvent(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      eventType: $checkedConvert('event_type', (v) => v as String),
      eventTypeDisplay: $checkedConvert(
        'event_type_display',
        (v) => v as String,
      ),
      device: $checkedConvert('device', (v) => (v as num?)?.toInt()),
      deviceName: $checkedConvert('device_name', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      message: $checkedConvert('message', (v) => v as String),
      severity: $checkedConvert(
        'severity',
        (v) => $enumDecodeNullable(
          _$TelemetryEventSeverityEnumEnumMap,
          v,
          unknownValue: TelemetryEventSeverityEnum.unknownDefaultOpenApi,
        ),
      ),
      severityDisplay: $checkedConvert('severity_display', (v) => v as String),
      extraData: $checkedConvert('extra_data', (v) => v),
      reading: $checkedConvert('reading', (v) => (v as num?)?.toInt()),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'eventType': 'event_type',
    'eventTypeDisplay': 'event_type_display',
    'deviceName': 'device_name',
    'severityDisplay': 'severity_display',
    'extraData': 'extra_data',
  },
);

Map<String, dynamic> _$TelemetryEventToJson(TelemetryEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_type': instance.eventType,
      'event_type_display': instance.eventTypeDisplay,
      'device': ?instance.device,
      'device_name': instance.deviceName,
      'title': instance.title,
      'message': instance.message,
      'severity': ?_$TelemetryEventSeverityEnumEnumMap[instance.severity],
      'severity_display': instance.severityDisplay,
      'extra_data': ?instance.extraData,
      'reading': ?instance.reading,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };

const _$TelemetryEventSeverityEnumEnumMap = {
  TelemetryEventSeverityEnum.INFO: 'INFO',
  TelemetryEventSeverityEnum.WARNING: 'WARNING',
  TelemetryEventSeverityEnum.CRITICAL: 'CRITICAL',
  TelemetryEventSeverityEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
