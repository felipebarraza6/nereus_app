// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_telemetry_event_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedTelemetryEventRequestCWProxy {
  PatchedTelemetryEventRequest eventType(String? eventType);

  PatchedTelemetryEventRequest device(int? device);

  PatchedTelemetryEventRequest title(String? title);

  PatchedTelemetryEventRequest message(String? message);

  PatchedTelemetryEventRequest severity(
    PatchedTelemetryEventRequestSeverityEnum? severity,
  );

  PatchedTelemetryEventRequest extraData(Object? extraData);

  PatchedTelemetryEventRequest reading(int? reading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTelemetryEventRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTelemetryEventRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTelemetryEventRequest call({
    String? eventType,
    int? device,
    String? title,
    String? message,
    PatchedTelemetryEventRequestSeverityEnum? severity,
    Object? extraData,
    int? reading,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedTelemetryEventRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedTelemetryEventRequest.copyWith.fieldName(...)`
class _$PatchedTelemetryEventRequestCWProxyImpl
    implements _$PatchedTelemetryEventRequestCWProxy {
  const _$PatchedTelemetryEventRequestCWProxyImpl(this._value);

  final PatchedTelemetryEventRequest _value;

  @override
  PatchedTelemetryEventRequest eventType(String? eventType) =>
      this(eventType: eventType);

  @override
  PatchedTelemetryEventRequest device(int? device) => this(device: device);

  @override
  PatchedTelemetryEventRequest title(String? title) => this(title: title);

  @override
  PatchedTelemetryEventRequest message(String? message) =>
      this(message: message);

  @override
  PatchedTelemetryEventRequest severity(
    PatchedTelemetryEventRequestSeverityEnum? severity,
  ) => this(severity: severity);

  @override
  PatchedTelemetryEventRequest extraData(Object? extraData) =>
      this(extraData: extraData);

  @override
  PatchedTelemetryEventRequest reading(int? reading) => this(reading: reading);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTelemetryEventRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTelemetryEventRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTelemetryEventRequest call({
    Object? eventType = const $CopyWithPlaceholder(),
    Object? device = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? severity = const $CopyWithPlaceholder(),
    Object? extraData = const $CopyWithPlaceholder(),
    Object? reading = const $CopyWithPlaceholder(),
  }) {
    return PatchedTelemetryEventRequest(
      eventType: eventType == const $CopyWithPlaceholder()
          ? _value.eventType
          // ignore: cast_nullable_to_non_nullable
          : eventType as String?,
      device: device == const $CopyWithPlaceholder()
          ? _value.device
          // ignore: cast_nullable_to_non_nullable
          : device as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      severity: severity == const $CopyWithPlaceholder()
          ? _value.severity
          // ignore: cast_nullable_to_non_nullable
          : severity as PatchedTelemetryEventRequestSeverityEnum?,
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

extension $PatchedTelemetryEventRequestCopyWith
    on PatchedTelemetryEventRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedTelemetryEventRequest.copyWith(...)` or like so:`instanceOfPatchedTelemetryEventRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedTelemetryEventRequestCWProxy get copyWith =>
      _$PatchedTelemetryEventRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedTelemetryEventRequest _$PatchedTelemetryEventRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedTelemetryEventRequest',
  json,
  ($checkedConvert) {
    final val = PatchedTelemetryEventRequest(
      eventType: $checkedConvert('event_type', (v) => v as String?),
      device: $checkedConvert('device', (v) => (v as num?)?.toInt()),
      title: $checkedConvert('title', (v) => v as String?),
      message: $checkedConvert('message', (v) => v as String?),
      severity: $checkedConvert(
        'severity',
        (v) => $enumDecodeNullable(
          _$PatchedTelemetryEventRequestSeverityEnumEnumMap,
          v,
          unknownValue:
              PatchedTelemetryEventRequestSeverityEnum.unknownDefaultOpenApi,
        ),
      ),
      extraData: $checkedConvert('extra_data', (v) => v),
      reading: $checkedConvert('reading', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {'eventType': 'event_type', 'extraData': 'extra_data'},
);

Map<String, dynamic> _$PatchedTelemetryEventRequestToJson(
  PatchedTelemetryEventRequest instance,
) => <String, dynamic>{
  'event_type': ?instance.eventType,
  'device': ?instance.device,
  'title': ?instance.title,
  'message': ?instance.message,
  'severity':
      ?_$PatchedTelemetryEventRequestSeverityEnumEnumMap[instance.severity],
  'extra_data': ?instance.extraData,
  'reading': ?instance.reading,
};

const _$PatchedTelemetryEventRequestSeverityEnumEnumMap = {
  PatchedTelemetryEventRequestSeverityEnum.INFO: 'INFO',
  PatchedTelemetryEventRequestSeverityEnum.WARNING: 'WARNING',
  PatchedTelemetryEventRequestSeverityEnum.CRITICAL: 'CRITICAL',
  PatchedTelemetryEventRequestSeverityEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
