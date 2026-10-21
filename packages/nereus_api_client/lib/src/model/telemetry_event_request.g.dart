// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_event_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryEventRequestCWProxy {
  TelemetryEventRequest eventType(String eventType);

  TelemetryEventRequest device(int? device);

  TelemetryEventRequest title(String title);

  TelemetryEventRequest message(String message);

  TelemetryEventRequest severity(TelemetryEventRequestSeverityEnum? severity);

  TelemetryEventRequest extraData(Object? extraData);

  TelemetryEventRequest reading(int? reading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryEventRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryEventRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryEventRequest call({
    String eventType,
    int? device,
    String title,
    String message,
    TelemetryEventRequestSeverityEnum? severity,
    Object? extraData,
    int? reading,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryEventRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryEventRequest.copyWith.fieldName(...)`
class _$TelemetryEventRequestCWProxyImpl
    implements _$TelemetryEventRequestCWProxy {
  const _$TelemetryEventRequestCWProxyImpl(this._value);

  final TelemetryEventRequest _value;

  @override
  TelemetryEventRequest eventType(String eventType) =>
      this(eventType: eventType);

  @override
  TelemetryEventRequest device(int? device) => this(device: device);

  @override
  TelemetryEventRequest title(String title) => this(title: title);

  @override
  TelemetryEventRequest message(String message) => this(message: message);

  @override
  TelemetryEventRequest severity(TelemetryEventRequestSeverityEnum? severity) =>
      this(severity: severity);

  @override
  TelemetryEventRequest extraData(Object? extraData) =>
      this(extraData: extraData);

  @override
  TelemetryEventRequest reading(int? reading) => this(reading: reading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryEventRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryEventRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryEventRequest call({
    Object? eventType = const $CopyWithPlaceholder(),
    Object? device = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? severity = const $CopyWithPlaceholder(),
    Object? extraData = const $CopyWithPlaceholder(),
    Object? reading = const $CopyWithPlaceholder(),
  }) {
    return TelemetryEventRequest(
      eventType: eventType == const $CopyWithPlaceholder()
          ? _value.eventType
          // ignore: cast_nullable_to_non_nullable
          : eventType as String,
      device: device == const $CopyWithPlaceholder()
          ? _value.device
          // ignore: cast_nullable_to_non_nullable
          : device as int?,
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
          : severity as TelemetryEventRequestSeverityEnum?,
      extraData: extraData == const $CopyWithPlaceholder()
          ? _value.extraData
          // ignore: cast_nullable_to_non_nullable
          : extraData as Object?,
      reading: reading == const $CopyWithPlaceholder()
          ? _value.reading
          // ignore: cast_nullable_to_non_nullable
          : reading as int?,
    );
  }
}

extension $TelemetryEventRequestCopyWith on TelemetryEventRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryEventRequest.copyWith(...)` or like so:`instanceOfTelemetryEventRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryEventRequestCWProxy get copyWith =>
      _$TelemetryEventRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryEventRequest _$TelemetryEventRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryEventRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['event_type', 'title', 'message']);
    final val = TelemetryEventRequest(
      eventType: $checkedConvert('event_type', (v) => v as String),
      device: $checkedConvert('device', (v) => (v as num?)?.toInt()),
      title: $checkedConvert('title', (v) => v as String),
      message: $checkedConvert('message', (v) => v as String),
      severity: $checkedConvert(
        'severity',
        (v) => $enumDecodeNullable(
          _$TelemetryEventRequestSeverityEnumEnumMap,
          v,
          unknownValue: TelemetryEventRequestSeverityEnum.unknownDefaultOpenApi,
        ),
      ),
      extraData: $checkedConvert('extra_data', (v) => v),
      reading: $checkedConvert('reading', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {'eventType': 'event_type', 'extraData': 'extra_data'},
);

Map<String, dynamic> _$TelemetryEventRequestToJson(
  TelemetryEventRequest instance,
) => <String, dynamic>{
  'event_type': instance.eventType,
  'device': ?instance.device,
  'title': instance.title,
  'message': instance.message,
  'severity': ?_$TelemetryEventRequestSeverityEnumEnumMap[instance.severity],
  'extra_data': ?instance.extraData,
  'reading': ?instance.reading,
};

const _$TelemetryEventRequestSeverityEnumEnumMap = {
  TelemetryEventRequestSeverityEnum.INFO: 'INFO',
  TelemetryEventRequestSeverityEnum.WARNING: 'WARNING',
  TelemetryEventRequestSeverityEnum.CRITICAL: 'CRITICAL',
  TelemetryEventRequestSeverityEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
