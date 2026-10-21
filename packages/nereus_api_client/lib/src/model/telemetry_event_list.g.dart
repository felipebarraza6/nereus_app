// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_event_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryEventListCWProxy {
  TelemetryEventList id(int id);

  TelemetryEventList eventType(String eventType);

  TelemetryEventList eventTypeDisplay(String eventTypeDisplay);

  TelemetryEventList deviceName(String deviceName);

  TelemetryEventList title(String title);

  TelemetryEventList severity(TelemetryEventListSeverityEnum? severity);

  TelemetryEventList severityDisplay(String severityDisplay);

  TelemetryEventList created(DateTime created);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryEventList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryEventList(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryEventList call({
    int id,
    String eventType,
    String eventTypeDisplay,
    String deviceName,
    String title,
    TelemetryEventListSeverityEnum? severity,
    String severityDisplay,
    DateTime created,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryEventList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryEventList.copyWith.fieldName(...)`
class _$TelemetryEventListCWProxyImpl implements _$TelemetryEventListCWProxy {
  const _$TelemetryEventListCWProxyImpl(this._value);

  final TelemetryEventList _value;

  @override
  TelemetryEventList id(int id) => this(id: id);

  @override
  TelemetryEventList eventType(String eventType) => this(eventType: eventType);

  @override
  TelemetryEventList eventTypeDisplay(String eventTypeDisplay) =>
      this(eventTypeDisplay: eventTypeDisplay);

  @override
  TelemetryEventList deviceName(String deviceName) =>
      this(deviceName: deviceName);

  @override
  TelemetryEventList title(String title) => this(title: title);

  @override
  TelemetryEventList severity(TelemetryEventListSeverityEnum? severity) =>
      this(severity: severity);

  @override
  TelemetryEventList severityDisplay(String severityDisplay) =>
      this(severityDisplay: severityDisplay);

  @override
  TelemetryEventList created(DateTime created) => this(created: created);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryEventList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryEventList(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryEventList call({
    Object? id = const $CopyWithPlaceholder(),
    Object? eventType = const $CopyWithPlaceholder(),
    Object? eventTypeDisplay = const $CopyWithPlaceholder(),
    Object? deviceName = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? severity = const $CopyWithPlaceholder(),
    Object? severityDisplay = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
  }) {
    return TelemetryEventList(
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
      deviceName: deviceName == const $CopyWithPlaceholder()
          ? _value.deviceName
          // ignore: cast_nullable_to_non_nullable
          : deviceName as String,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      severity: severity == const $CopyWithPlaceholder()
          ? _value.severity
          // ignore: cast_nullable_to_non_nullable
          : severity as TelemetryEventListSeverityEnum?,
      severityDisplay: severityDisplay == const $CopyWithPlaceholder()
          ? _value.severityDisplay
          // ignore: cast_nullable_to_non_nullable
          : severityDisplay as String,
      created: created == const $CopyWithPlaceholder()
          ? _value.created
          // ignore: cast_nullable_to_non_nullable
          : created as DateTime,
    );
  }
}

extension $TelemetryEventListCopyWith on TelemetryEventList {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryEventList.copyWith(...)` or like so:`instanceOfTelemetryEventList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryEventListCWProxy get copyWith =>
      _$TelemetryEventListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryEventList _$TelemetryEventListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryEventList',
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
        'severity_display',
        'created',
      ],
    );
    final val = TelemetryEventList(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      eventType: $checkedConvert('event_type', (v) => v as String),
      eventTypeDisplay: $checkedConvert(
        'event_type_display',
        (v) => v as String,
      ),
      deviceName: $checkedConvert('device_name', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      severity: $checkedConvert(
        'severity',
        (v) => $enumDecodeNullable(
          _$TelemetryEventListSeverityEnumEnumMap,
          v,
          unknownValue: TelemetryEventListSeverityEnum.unknownDefaultOpenApi,
        ),
      ),
      severityDisplay: $checkedConvert('severity_display', (v) => v as String),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'eventType': 'event_type',
    'eventTypeDisplay': 'event_type_display',
    'deviceName': 'device_name',
    'severityDisplay': 'severity_display',
  },
);

Map<String, dynamic> _$TelemetryEventListToJson(TelemetryEventList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_type': instance.eventType,
      'event_type_display': instance.eventTypeDisplay,
      'device_name': instance.deviceName,
      'title': instance.title,
      'severity': ?_$TelemetryEventListSeverityEnumEnumMap[instance.severity],
      'severity_display': instance.severityDisplay,
      'created': instance.created.toIso8601String(),
    };

const _$TelemetryEventListSeverityEnumEnumMap = {
  TelemetryEventListSeverityEnum.INFO: 'INFO',
  TelemetryEventListSeverityEnum.WARNING: 'WARNING',
  TelemetryEventListSeverityEnum.CRITICAL: 'CRITICAL',
  TelemetryEventListSeverityEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
