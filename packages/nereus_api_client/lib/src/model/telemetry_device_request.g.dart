// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_device_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryDeviceRequestCWProxy {
  TelemetryDeviceRequest name(String name);

  TelemetryDeviceRequest deviceType(
    TelemetryDeviceRequestDeviceTypeEnum? deviceType,
  );

  TelemetryDeviceRequest project(int? project);

  TelemetryDeviceRequest telemetryProvider(int? telemetryProvider);

  TelemetryDeviceRequest deviceToken(String? deviceToken);

  TelemetryDeviceRequest readingFrequency(int? readingFrequency);

  TelemetryDeviceRequest lat(double? lat);

  TelemetryDeviceRequest lon(double? lon);

  TelemetryDeviceRequest address(String? address);

  TelemetryDeviceRequest isActive(bool? isActive);

  TelemetryDeviceRequest metadata(Object? metadata);

  TelemetryDeviceRequest product(int? product);

  TelemetryDeviceRequest branch(int branch);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryDeviceRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryDeviceRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryDeviceRequest call({
    String name,
    TelemetryDeviceRequestDeviceTypeEnum? deviceType,
    int? project,
    int? telemetryProvider,
    String? deviceToken,
    int? readingFrequency,
    double? lat,
    double? lon,
    String? address,
    bool? isActive,
    Object? metadata,
    int? product,
    int branch,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryDeviceRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryDeviceRequest.copyWith.fieldName(...)`
class _$TelemetryDeviceRequestCWProxyImpl
    implements _$TelemetryDeviceRequestCWProxy {
  const _$TelemetryDeviceRequestCWProxyImpl(this._value);

  final TelemetryDeviceRequest _value;

  @override
  TelemetryDeviceRequest name(String name) => this(name: name);

  @override
  TelemetryDeviceRequest deviceType(
    TelemetryDeviceRequestDeviceTypeEnum? deviceType,
  ) => this(deviceType: deviceType);

  @override
  TelemetryDeviceRequest project(int? project) => this(project: project);

  @override
  TelemetryDeviceRequest telemetryProvider(int? telemetryProvider) =>
      this(telemetryProvider: telemetryProvider);

  @override
  TelemetryDeviceRequest deviceToken(String? deviceToken) =>
      this(deviceToken: deviceToken);

  @override
  TelemetryDeviceRequest readingFrequency(int? readingFrequency) =>
      this(readingFrequency: readingFrequency);

  @override
  TelemetryDeviceRequest lat(double? lat) => this(lat: lat);

  @override
  TelemetryDeviceRequest lon(double? lon) => this(lon: lon);

  @override
  TelemetryDeviceRequest address(String? address) => this(address: address);

  @override
  TelemetryDeviceRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  TelemetryDeviceRequest metadata(Object? metadata) => this(metadata: metadata);

  @override
  TelemetryDeviceRequest product(int? product) => this(product: product);

  @override
  TelemetryDeviceRequest branch(int branch) => this(branch: branch);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryDeviceRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryDeviceRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryDeviceRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? deviceType = const $CopyWithPlaceholder(),
    Object? project = const $CopyWithPlaceholder(),
    Object? telemetryProvider = const $CopyWithPlaceholder(),
    Object? deviceToken = const $CopyWithPlaceholder(),
    Object? readingFrequency = const $CopyWithPlaceholder(),
    Object? lat = const $CopyWithPlaceholder(),
    Object? lon = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
    Object? product = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
  }) {
    return TelemetryDeviceRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      deviceType: deviceType == const $CopyWithPlaceholder()
          ? _value.deviceType
          // ignore: cast_nullable_to_non_nullable
          : deviceType as TelemetryDeviceRequestDeviceTypeEnum?,
      project: project == const $CopyWithPlaceholder()
          ? _value.project
          // ignore: cast_nullable_to_non_nullable
          : project as int?,
      telemetryProvider: telemetryProvider == const $CopyWithPlaceholder()
          ? _value.telemetryProvider
          // ignore: cast_nullable_to_non_nullable
          : telemetryProvider as int?,
      deviceToken: deviceToken == const $CopyWithPlaceholder()
          ? _value.deviceToken
          // ignore: cast_nullable_to_non_nullable
          : deviceToken as String?,
      readingFrequency: readingFrequency == const $CopyWithPlaceholder()
          ? _value.readingFrequency
          // ignore: cast_nullable_to_non_nullable
          : readingFrequency as int?,
      lat: lat == const $CopyWithPlaceholder()
          ? _value.lat
          // ignore: cast_nullable_to_non_nullable
          : lat as double?,
      lon: lon == const $CopyWithPlaceholder()
          ? _value.lon
          // ignore: cast_nullable_to_non_nullable
          : lon as double?,
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Object?,
      product: product == const $CopyWithPlaceholder()
          ? _value.product
          // ignore: cast_nullable_to_non_nullable
          : product as int?,
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as int,
    );
  }
}

extension $TelemetryDeviceRequestCopyWith on TelemetryDeviceRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryDeviceRequest.copyWith(...)` or like so:`instanceOfTelemetryDeviceRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryDeviceRequestCWProxy get copyWith =>
      _$TelemetryDeviceRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryDeviceRequest _$TelemetryDeviceRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryDeviceRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['name', 'branch']);
    final val = TelemetryDeviceRequest(
      name: $checkedConvert('name', (v) => v as String),
      deviceType: $checkedConvert(
        'device_type',
        (v) => $enumDecodeNullable(
          _$TelemetryDeviceRequestDeviceTypeEnumEnumMap,
          v,
          unknownValue:
              TelemetryDeviceRequestDeviceTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      project: $checkedConvert('project', (v) => (v as num?)?.toInt()),
      telemetryProvider: $checkedConvert(
        'telemetry_provider',
        (v) => (v as num?)?.toInt(),
      ),
      deviceToken: $checkedConvert('device_token', (v) => v as String?),
      readingFrequency: $checkedConvert(
        'reading_frequency',
        (v) => (v as num?)?.toInt(),
      ),
      lat: $checkedConvert('lat', (v) => (v as num?)?.toDouble()),
      lon: $checkedConvert('lon', (v) => (v as num?)?.toDouble()),
      address: $checkedConvert('address', (v) => v as String?),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      metadata: $checkedConvert('metadata', (v) => v),
      product: $checkedConvert('product', (v) => (v as num?)?.toInt()),
      branch: $checkedConvert('branch', (v) => (v as num).toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'deviceType': 'device_type',
    'telemetryProvider': 'telemetry_provider',
    'deviceToken': 'device_token',
    'readingFrequency': 'reading_frequency',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$TelemetryDeviceRequestToJson(
  TelemetryDeviceRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'device_type':
      ?_$TelemetryDeviceRequestDeviceTypeEnumEnumMap[instance.deviceType],
  'project': ?instance.project,
  'telemetry_provider': ?instance.telemetryProvider,
  'device_token': ?instance.deviceToken,
  'reading_frequency': ?instance.readingFrequency,
  'lat': ?instance.lat,
  'lon': ?instance.lon,
  'address': ?instance.address,
  'is_active': ?instance.isActive,
  'metadata': ?instance.metadata,
  'product': ?instance.product,
  'branch': instance.branch,
};

const _$TelemetryDeviceRequestDeviceTypeEnumEnumMap = {
  TelemetryDeviceRequestDeviceTypeEnum.WELL: 'WELL',
  TelemetryDeviceRequestDeviceTypeEnum.SURFACE: 'SURFACE',
  TelemetryDeviceRequestDeviceTypeEnum.WEATHER: 'WEATHER',
  TelemetryDeviceRequestDeviceTypeEnum.TANK: 'TANK',
  TelemetryDeviceRequestDeviceTypeEnum.FLOW: 'FLOW',
  TelemetryDeviceRequestDeviceTypeEnum.LEVEL: 'LEVEL',
  TelemetryDeviceRequestDeviceTypeEnum.CUSTOM: 'CUSTOM',
  TelemetryDeviceRequestDeviceTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
