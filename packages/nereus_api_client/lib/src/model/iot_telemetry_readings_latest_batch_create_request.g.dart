// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iot_telemetry_readings_latest_batch_create_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$IotTelemetryReadingsLatestBatchCreateRequestCWProxy {
  IotTelemetryReadingsLatestBatchCreateRequest deviceIds(List<int> deviceIds);

  IotTelemetryReadingsLatestBatchCreateRequest hours(int? hours);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IotTelemetryReadingsLatestBatchCreateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IotTelemetryReadingsLatestBatchCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  IotTelemetryReadingsLatestBatchCreateRequest call({
    List<int> deviceIds,
    int? hours,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfIotTelemetryReadingsLatestBatchCreateRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfIotTelemetryReadingsLatestBatchCreateRequest.copyWith.fieldName(...)`
class _$IotTelemetryReadingsLatestBatchCreateRequestCWProxyImpl
    implements _$IotTelemetryReadingsLatestBatchCreateRequestCWProxy {
  const _$IotTelemetryReadingsLatestBatchCreateRequestCWProxyImpl(this._value);

  final IotTelemetryReadingsLatestBatchCreateRequest _value;

  @override
  IotTelemetryReadingsLatestBatchCreateRequest deviceIds(List<int> deviceIds) =>
      this(deviceIds: deviceIds);

  @override
  IotTelemetryReadingsLatestBatchCreateRequest hours(int? hours) =>
      this(hours: hours);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `IotTelemetryReadingsLatestBatchCreateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// IotTelemetryReadingsLatestBatchCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  IotTelemetryReadingsLatestBatchCreateRequest call({
    Object? deviceIds = const $CopyWithPlaceholder(),
    Object? hours = const $CopyWithPlaceholder(),
  }) {
    return IotTelemetryReadingsLatestBatchCreateRequest(
      deviceIds: deviceIds == const $CopyWithPlaceholder()
          ? _value.deviceIds
          // ignore: cast_nullable_to_non_nullable
          : deviceIds as List<int>,
      hours: hours == const $CopyWithPlaceholder()
          ? _value.hours
          // ignore: cast_nullable_to_non_nullable
          : hours as int?,
    );
  }
}

extension $IotTelemetryReadingsLatestBatchCreateRequestCopyWith
    on IotTelemetryReadingsLatestBatchCreateRequest {
  /// Returns a callable class that can be used as follows: `instanceOfIotTelemetryReadingsLatestBatchCreateRequest.copyWith(...)` or like so:`instanceOfIotTelemetryReadingsLatestBatchCreateRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$IotTelemetryReadingsLatestBatchCreateRequestCWProxy get copyWith =>
      _$IotTelemetryReadingsLatestBatchCreateRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IotTelemetryReadingsLatestBatchCreateRequest
_$IotTelemetryReadingsLatestBatchCreateRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'IotTelemetryReadingsLatestBatchCreateRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['device_ids']);
    final val = IotTelemetryReadingsLatestBatchCreateRequest(
      deviceIds: $checkedConvert(
        'device_ids',
        (v) => (v as List<dynamic>).map((e) => (e as num).toInt()).toList(),
      ),
      hours: $checkedConvert('hours', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {'deviceIds': 'device_ids'},
);

Map<String, dynamic> _$IotTelemetryReadingsLatestBatchCreateRequestToJson(
  IotTelemetryReadingsLatestBatchCreateRequest instance,
) => <String, dynamic>{
  'device_ids': instance.deviceIds,
  'hours': ?instance.hours,
};
