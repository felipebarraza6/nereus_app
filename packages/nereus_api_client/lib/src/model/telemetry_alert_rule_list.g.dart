// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_alert_rule_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryAlertRuleListCWProxy {
  TelemetryAlertRuleList id(int id);

  TelemetryAlertRuleList name(String name);

  TelemetryAlertRuleList severity(TelemetryAlertRuleListSeverityEnum? severity);

  TelemetryAlertRuleList severityDisplay(String severityDisplay);

  TelemetryAlertRuleList deviceName(String deviceName);

  TelemetryAlertRuleList variableName(String variableName);

  TelemetryAlertRuleList targetType(
    TelemetryAlertRuleListTargetTypeEnum targetType,
  );

  TelemetryAlertRuleList targetTypeDisplay(String targetTypeDisplay);

  TelemetryAlertRuleList isActive(bool? isActive);

  TelemetryAlertRuleList channelsCount(int channelsCount);

  TelemetryAlertRuleList created(DateTime created);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryAlertRuleList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryAlertRuleList(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryAlertRuleList call({
    int id,
    String name,
    TelemetryAlertRuleListSeverityEnum? severity,
    String severityDisplay,
    String deviceName,
    String variableName,
    TelemetryAlertRuleListTargetTypeEnum targetType,
    String targetTypeDisplay,
    bool? isActive,
    int channelsCount,
    DateTime created,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryAlertRuleList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryAlertRuleList.copyWith.fieldName(...)`
class _$TelemetryAlertRuleListCWProxyImpl
    implements _$TelemetryAlertRuleListCWProxy {
  const _$TelemetryAlertRuleListCWProxyImpl(this._value);

  final TelemetryAlertRuleList _value;

  @override
  TelemetryAlertRuleList id(int id) => this(id: id);

  @override
  TelemetryAlertRuleList name(String name) => this(name: name);

  @override
  TelemetryAlertRuleList severity(
    TelemetryAlertRuleListSeverityEnum? severity,
  ) => this(severity: severity);

  @override
  TelemetryAlertRuleList severityDisplay(String severityDisplay) =>
      this(severityDisplay: severityDisplay);

  @override
  TelemetryAlertRuleList deviceName(String deviceName) =>
      this(deviceName: deviceName);

  @override
  TelemetryAlertRuleList variableName(String variableName) =>
      this(variableName: variableName);

  @override
  TelemetryAlertRuleList targetType(
    TelemetryAlertRuleListTargetTypeEnum targetType,
  ) => this(targetType: targetType);

  @override
  TelemetryAlertRuleList targetTypeDisplay(String targetTypeDisplay) =>
      this(targetTypeDisplay: targetTypeDisplay);

  @override
  TelemetryAlertRuleList isActive(bool? isActive) => this(isActive: isActive);

  @override
  TelemetryAlertRuleList channelsCount(int channelsCount) =>
      this(channelsCount: channelsCount);

  @override
  TelemetryAlertRuleList created(DateTime created) => this(created: created);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryAlertRuleList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryAlertRuleList(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryAlertRuleList call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? severity = const $CopyWithPlaceholder(),
    Object? severityDisplay = const $CopyWithPlaceholder(),
    Object? deviceName = const $CopyWithPlaceholder(),
    Object? variableName = const $CopyWithPlaceholder(),
    Object? targetType = const $CopyWithPlaceholder(),
    Object? targetTypeDisplay = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? channelsCount = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
  }) {
    return TelemetryAlertRuleList(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      severity: severity == const $CopyWithPlaceholder()
          ? _value.severity
          // ignore: cast_nullable_to_non_nullable
          : severity as TelemetryAlertRuleListSeverityEnum?,
      severityDisplay: severityDisplay == const $CopyWithPlaceholder()
          ? _value.severityDisplay
          // ignore: cast_nullable_to_non_nullable
          : severityDisplay as String,
      deviceName: deviceName == const $CopyWithPlaceholder()
          ? _value.deviceName
          // ignore: cast_nullable_to_non_nullable
          : deviceName as String,
      variableName: variableName == const $CopyWithPlaceholder()
          ? _value.variableName
          // ignore: cast_nullable_to_non_nullable
          : variableName as String,
      targetType: targetType == const $CopyWithPlaceholder()
          ? _value.targetType
          // ignore: cast_nullable_to_non_nullable
          : targetType as TelemetryAlertRuleListTargetTypeEnum,
      targetTypeDisplay: targetTypeDisplay == const $CopyWithPlaceholder()
          ? _value.targetTypeDisplay
          // ignore: cast_nullable_to_non_nullable
          : targetTypeDisplay as String,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      channelsCount: channelsCount == const $CopyWithPlaceholder()
          ? _value.channelsCount
          // ignore: cast_nullable_to_non_nullable
          : channelsCount as int,
      created: created == const $CopyWithPlaceholder()
          ? _value.created
          // ignore: cast_nullable_to_non_nullable
          : created as DateTime,
    );
  }
}

extension $TelemetryAlertRuleListCopyWith on TelemetryAlertRuleList {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryAlertRuleList.copyWith(...)` or like so:`instanceOfTelemetryAlertRuleList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryAlertRuleListCWProxy get copyWith =>
      _$TelemetryAlertRuleListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryAlertRuleList _$TelemetryAlertRuleListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryAlertRuleList',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'name',
        'severity_display',
        'device_name',
        'variable_name',
        'target_type',
        'target_type_display',
        'channels_count',
        'created',
      ],
    );
    final val = TelemetryAlertRuleList(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      name: $checkedConvert('name', (v) => v as String),
      severity: $checkedConvert(
        'severity',
        (v) => $enumDecodeNullable(
          _$TelemetryAlertRuleListSeverityEnumEnumMap,
          v,
          unknownValue:
              TelemetryAlertRuleListSeverityEnum.unknownDefaultOpenApi,
        ),
      ),
      severityDisplay: $checkedConvert('severity_display', (v) => v as String),
      deviceName: $checkedConvert('device_name', (v) => v as String),
      variableName: $checkedConvert('variable_name', (v) => v as String),
      targetType: $checkedConvert(
        'target_type',
        (v) => $enumDecode(
          _$TelemetryAlertRuleListTargetTypeEnumEnumMap,
          v,
          unknownValue:
              TelemetryAlertRuleListTargetTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      targetTypeDisplay: $checkedConvert(
        'target_type_display',
        (v) => v as String,
      ),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      channelsCount: $checkedConvert(
        'channels_count',
        (v) => (v as num).toInt(),
      ),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'severityDisplay': 'severity_display',
    'deviceName': 'device_name',
    'variableName': 'variable_name',
    'targetType': 'target_type',
    'targetTypeDisplay': 'target_type_display',
    'isActive': 'is_active',
    'channelsCount': 'channels_count',
  },
);

Map<String, dynamic> _$TelemetryAlertRuleListToJson(
  TelemetryAlertRuleList instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'severity': ?_$TelemetryAlertRuleListSeverityEnumEnumMap[instance.severity],
  'severity_display': instance.severityDisplay,
  'device_name': instance.deviceName,
  'variable_name': instance.variableName,
  'target_type':
      _$TelemetryAlertRuleListTargetTypeEnumEnumMap[instance.targetType]!,
  'target_type_display': instance.targetTypeDisplay,
  'is_active': ?instance.isActive,
  'channels_count': instance.channelsCount,
  'created': instance.created.toIso8601String(),
};

const _$TelemetryAlertRuleListSeverityEnumEnumMap = {
  TelemetryAlertRuleListSeverityEnum.INFO: 'INFO',
  TelemetryAlertRuleListSeverityEnum.WARNING: 'WARNING',
  TelemetryAlertRuleListSeverityEnum.ALERT: 'ALERT',
  TelemetryAlertRuleListSeverityEnum.CRITICAL: 'CRITICAL',
  TelemetryAlertRuleListSeverityEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};

const _$TelemetryAlertRuleListTargetTypeEnumEnumMap = {
  TelemetryAlertRuleListTargetTypeEnum.THRESHOLD_MAX: 'THRESHOLD_MAX',
  TelemetryAlertRuleListTargetTypeEnum.THRESHOLD_MIN: 'THRESHOLD_MIN',
  TelemetryAlertRuleListTargetTypeEnum.NO_DATA: 'NO_DATA',
  TelemetryAlertRuleListTargetTypeEnum.DISCONNECTION: 'DISCONNECTION',
  TelemetryAlertRuleListTargetTypeEnum.RECONNECTION: 'RECONNECTION',
  TelemetryAlertRuleListTargetTypeEnum.PROCESSING_ERROR: 'PROCESSING_ERROR',
  TelemetryAlertRuleListTargetTypeEnum.RATE_OF_CHANGE: 'RATE_OF_CHANGE',
  TelemetryAlertRuleListTargetTypeEnum.DEVIATION: 'DEVIATION',
  TelemetryAlertRuleListTargetTypeEnum.SCHEDULED_REPORT: 'SCHEDULED_REPORT',
  TelemetryAlertRuleListTargetTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
