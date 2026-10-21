// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_alert_rule.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryAlertRuleCWProxy {
  TelemetryAlertRule id(int id);

  TelemetryAlertRule name(String name);

  TelemetryAlertRule description(String? description);

  TelemetryAlertRule severity(TelemetryAlertRuleSeverityEnum? severity);

  TelemetryAlertRule severityDisplay(String severityDisplay);

  TelemetryAlertRule device(int? device);

  TelemetryAlertRule deviceName(String deviceName);

  TelemetryAlertRule variable(int? variable);

  TelemetryAlertRule variableName(String variableName);

  TelemetryAlertRule targetType(TelemetryAlertRuleTargetTypeEnum targetType);

  TelemetryAlertRule targetTypeDisplay(String targetTypeDisplay);

  TelemetryAlertRule thresholdValue(double? thresholdValue);

  TelemetryAlertRule noDataMinutes(int? noDataMinutes);

  TelemetryAlertRule rateChangeValue(double? rateChangeValue);

  TelemetryAlertRule rateChangeWindow(int? rateChangeWindow);

  TelemetryAlertRule checkFrequencyMinutes(int? checkFrequencyMinutes);

  TelemetryAlertRule cooldownMinutes(int? cooldownMinutes);

  TelemetryAlertRule isActive(bool? isActive);

  TelemetryAlertRule startDate(DateTime? startDate);

  TelemetryAlertRule endDate(DateTime? endDate);

  TelemetryAlertRule reportSchedule(
    TelemetryAlertRuleReportScheduleEnum? reportSchedule,
  );

  TelemetryAlertRule reportHour(int? reportHour);

  TelemetryAlertRule channels(List<TelemetryAlertChannel> channels);

  TelemetryAlertRule created(DateTime created);

  TelemetryAlertRule modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryAlertRule(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryAlertRule(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryAlertRule call({
    int id,
    String name,
    String? description,
    TelemetryAlertRuleSeverityEnum? severity,
    String severityDisplay,
    int? device,
    String deviceName,
    int? variable,
    String variableName,
    TelemetryAlertRuleTargetTypeEnum targetType,
    String targetTypeDisplay,
    double? thresholdValue,
    int? noDataMinutes,
    double? rateChangeValue,
    int? rateChangeWindow,
    int? checkFrequencyMinutes,
    int? cooldownMinutes,
    bool? isActive,
    DateTime? startDate,
    DateTime? endDate,
    TelemetryAlertRuleReportScheduleEnum? reportSchedule,
    int? reportHour,
    List<TelemetryAlertChannel> channels,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryAlertRule.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryAlertRule.copyWith.fieldName(...)`
class _$TelemetryAlertRuleCWProxyImpl implements _$TelemetryAlertRuleCWProxy {
  const _$TelemetryAlertRuleCWProxyImpl(this._value);

  final TelemetryAlertRule _value;

  @override
  TelemetryAlertRule id(int id) => this(id: id);

  @override
  TelemetryAlertRule name(String name) => this(name: name);

  @override
  TelemetryAlertRule description(String? description) =>
      this(description: description);

  @override
  TelemetryAlertRule severity(TelemetryAlertRuleSeverityEnum? severity) =>
      this(severity: severity);

  @override
  TelemetryAlertRule severityDisplay(String severityDisplay) =>
      this(severityDisplay: severityDisplay);

  @override
  TelemetryAlertRule device(int? device) => this(device: device);

  @override
  TelemetryAlertRule deviceName(String deviceName) =>
      this(deviceName: deviceName);

  @override
  TelemetryAlertRule variable(int? variable) => this(variable: variable);

  @override
  TelemetryAlertRule variableName(String variableName) =>
      this(variableName: variableName);

  @override
  TelemetryAlertRule targetType(TelemetryAlertRuleTargetTypeEnum targetType) =>
      this(targetType: targetType);

  @override
  TelemetryAlertRule targetTypeDisplay(String targetTypeDisplay) =>
      this(targetTypeDisplay: targetTypeDisplay);

  @override
  TelemetryAlertRule thresholdValue(double? thresholdValue) =>
      this(thresholdValue: thresholdValue);

  @override
  TelemetryAlertRule noDataMinutes(int? noDataMinutes) =>
      this(noDataMinutes: noDataMinutes);

  @override
  TelemetryAlertRule rateChangeValue(double? rateChangeValue) =>
      this(rateChangeValue: rateChangeValue);

  @override
  TelemetryAlertRule rateChangeWindow(int? rateChangeWindow) =>
      this(rateChangeWindow: rateChangeWindow);

  @override
  TelemetryAlertRule checkFrequencyMinutes(int? checkFrequencyMinutes) =>
      this(checkFrequencyMinutes: checkFrequencyMinutes);

  @override
  TelemetryAlertRule cooldownMinutes(int? cooldownMinutes) =>
      this(cooldownMinutes: cooldownMinutes);

  @override
  TelemetryAlertRule isActive(bool? isActive) => this(isActive: isActive);

  @override
  TelemetryAlertRule startDate(DateTime? startDate) =>
      this(startDate: startDate);

  @override
  TelemetryAlertRule endDate(DateTime? endDate) => this(endDate: endDate);

  @override
  TelemetryAlertRule reportSchedule(
    TelemetryAlertRuleReportScheduleEnum? reportSchedule,
  ) => this(reportSchedule: reportSchedule);

  @override
  TelemetryAlertRule reportHour(int? reportHour) =>
      this(reportHour: reportHour);

  @override
  TelemetryAlertRule channels(List<TelemetryAlertChannel> channels) =>
      this(channels: channels);

  @override
  TelemetryAlertRule created(DateTime created) => this(created: created);

  @override
  TelemetryAlertRule modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryAlertRule(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryAlertRule(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryAlertRule call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? severity = const $CopyWithPlaceholder(),
    Object? severityDisplay = const $CopyWithPlaceholder(),
    Object? device = const $CopyWithPlaceholder(),
    Object? deviceName = const $CopyWithPlaceholder(),
    Object? variable = const $CopyWithPlaceholder(),
    Object? variableName = const $CopyWithPlaceholder(),
    Object? targetType = const $CopyWithPlaceholder(),
    Object? targetTypeDisplay = const $CopyWithPlaceholder(),
    Object? thresholdValue = const $CopyWithPlaceholder(),
    Object? noDataMinutes = const $CopyWithPlaceholder(),
    Object? rateChangeValue = const $CopyWithPlaceholder(),
    Object? rateChangeWindow = const $CopyWithPlaceholder(),
    Object? checkFrequencyMinutes = const $CopyWithPlaceholder(),
    Object? cooldownMinutes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? reportSchedule = const $CopyWithPlaceholder(),
    Object? reportHour = const $CopyWithPlaceholder(),
    Object? channels = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TelemetryAlertRule(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      severity: severity == const $CopyWithPlaceholder()
          ? _value.severity
          // ignore: cast_nullable_to_non_nullable
          : severity as TelemetryAlertRuleSeverityEnum?,
      severityDisplay: severityDisplay == const $CopyWithPlaceholder()
          ? _value.severityDisplay
          // ignore: cast_nullable_to_non_nullable
          : severityDisplay as String,
      device: device == const $CopyWithPlaceholder()
          ? _value.device
          // ignore: cast_nullable_to_non_nullable
          : device as int?,
      deviceName: deviceName == const $CopyWithPlaceholder()
          ? _value.deviceName
          // ignore: cast_nullable_to_non_nullable
          : deviceName as String,
      variable: variable == const $CopyWithPlaceholder()
          ? _value.variable
          // ignore: cast_nullable_to_non_nullable
          : variable as int?,
      variableName: variableName == const $CopyWithPlaceholder()
          ? _value.variableName
          // ignore: cast_nullable_to_non_nullable
          : variableName as String,
      targetType: targetType == const $CopyWithPlaceholder()
          ? _value.targetType
          // ignore: cast_nullable_to_non_nullable
          : targetType as TelemetryAlertRuleTargetTypeEnum,
      targetTypeDisplay: targetTypeDisplay == const $CopyWithPlaceholder()
          ? _value.targetTypeDisplay
          // ignore: cast_nullable_to_non_nullable
          : targetTypeDisplay as String,
      thresholdValue: thresholdValue == const $CopyWithPlaceholder()
          ? _value.thresholdValue
          // ignore: cast_nullable_to_non_nullable
          : thresholdValue as double?,
      noDataMinutes: noDataMinutes == const $CopyWithPlaceholder()
          ? _value.noDataMinutes
          // ignore: cast_nullable_to_non_nullable
          : noDataMinutes as int?,
      rateChangeValue: rateChangeValue == const $CopyWithPlaceholder()
          ? _value.rateChangeValue
          // ignore: cast_nullable_to_non_nullable
          : rateChangeValue as double?,
      rateChangeWindow: rateChangeWindow == const $CopyWithPlaceholder()
          ? _value.rateChangeWindow
          // ignore: cast_nullable_to_non_nullable
          : rateChangeWindow as int?,
      checkFrequencyMinutes:
          checkFrequencyMinutes == const $CopyWithPlaceholder()
          ? _value.checkFrequencyMinutes
          // ignore: cast_nullable_to_non_nullable
          : checkFrequencyMinutes as int?,
      cooldownMinutes: cooldownMinutes == const $CopyWithPlaceholder()
          ? _value.cooldownMinutes
          // ignore: cast_nullable_to_non_nullable
          : cooldownMinutes as int?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      startDate: startDate == const $CopyWithPlaceholder()
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as DateTime?,
      endDate: endDate == const $CopyWithPlaceholder()
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as DateTime?,
      reportSchedule: reportSchedule == const $CopyWithPlaceholder()
          ? _value.reportSchedule
          // ignore: cast_nullable_to_non_nullable
          : reportSchedule as TelemetryAlertRuleReportScheduleEnum?,
      reportHour: reportHour == const $CopyWithPlaceholder()
          ? _value.reportHour
          // ignore: cast_nullable_to_non_nullable
          : reportHour as int?,
      channels: channels == const $CopyWithPlaceholder()
          ? _value.channels
          // ignore: cast_nullable_to_non_nullable
          : channels as List<TelemetryAlertChannel>,
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

extension $TelemetryAlertRuleCopyWith on TelemetryAlertRule {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryAlertRule.copyWith(...)` or like so:`instanceOfTelemetryAlertRule.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryAlertRuleCWProxy get copyWith =>
      _$TelemetryAlertRuleCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryAlertRule _$TelemetryAlertRuleFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryAlertRule',
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
        'channels',
        'created',
        'modified',
      ],
    );
    final val = TelemetryAlertRule(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      name: $checkedConvert('name', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      severity: $checkedConvert(
        'severity',
        (v) => $enumDecodeNullable(
          _$TelemetryAlertRuleSeverityEnumEnumMap,
          v,
          unknownValue: TelemetryAlertRuleSeverityEnum.unknownDefaultOpenApi,
        ),
      ),
      severityDisplay: $checkedConvert('severity_display', (v) => v as String),
      device: $checkedConvert('device', (v) => (v as num?)?.toInt()),
      deviceName: $checkedConvert('device_name', (v) => v as String),
      variable: $checkedConvert('variable', (v) => (v as num?)?.toInt()),
      variableName: $checkedConvert('variable_name', (v) => v as String),
      targetType: $checkedConvert(
        'target_type',
        (v) => $enumDecode(
          _$TelemetryAlertRuleTargetTypeEnumEnumMap,
          v,
          unknownValue: TelemetryAlertRuleTargetTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      targetTypeDisplay: $checkedConvert(
        'target_type_display',
        (v) => v as String,
      ),
      thresholdValue: $checkedConvert(
        'threshold_value',
        (v) => (v as num?)?.toDouble(),
      ),
      noDataMinutes: $checkedConvert(
        'no_data_minutes',
        (v) => (v as num?)?.toInt(),
      ),
      rateChangeValue: $checkedConvert(
        'rate_change_value',
        (v) => (v as num?)?.toDouble(),
      ),
      rateChangeWindow: $checkedConvert(
        'rate_change_window',
        (v) => (v as num?)?.toInt(),
      ),
      checkFrequencyMinutes: $checkedConvert(
        'check_frequency_minutes',
        (v) => (v as num?)?.toInt(),
      ),
      cooldownMinutes: $checkedConvert(
        'cooldown_minutes',
        (v) => (v as num?)?.toInt(),
      ),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      startDate: $checkedConvert(
        'start_date',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      endDate: $checkedConvert(
        'end_date',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      reportSchedule: $checkedConvert(
        'report_schedule',
        (v) => $enumDecodeNullable(
          _$TelemetryAlertRuleReportScheduleEnumEnumMap,
          v,
          unknownValue:
              TelemetryAlertRuleReportScheduleEnum.unknownDefaultOpenApi,
        ),
      ),
      reportHour: $checkedConvert('report_hour', (v) => (v as num?)?.toInt()),
      channels: $checkedConvert(
        'channels',
        (v) => (v as List<dynamic>)
            .map(
              (e) => TelemetryAlertChannel.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'severityDisplay': 'severity_display',
    'deviceName': 'device_name',
    'variableName': 'variable_name',
    'targetType': 'target_type',
    'targetTypeDisplay': 'target_type_display',
    'thresholdValue': 'threshold_value',
    'noDataMinutes': 'no_data_minutes',
    'rateChangeValue': 'rate_change_value',
    'rateChangeWindow': 'rate_change_window',
    'checkFrequencyMinutes': 'check_frequency_minutes',
    'cooldownMinutes': 'cooldown_minutes',
    'isActive': 'is_active',
    'startDate': 'start_date',
    'endDate': 'end_date',
    'reportSchedule': 'report_schedule',
    'reportHour': 'report_hour',
  },
);

Map<String, dynamic> _$TelemetryAlertRuleToJson(
  TelemetryAlertRule instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': ?instance.description,
  'severity': ?_$TelemetryAlertRuleSeverityEnumEnumMap[instance.severity],
  'severity_display': instance.severityDisplay,
  'device': ?instance.device,
  'device_name': instance.deviceName,
  'variable': ?instance.variable,
  'variable_name': instance.variableName,
  'target_type':
      _$TelemetryAlertRuleTargetTypeEnumEnumMap[instance.targetType]!,
  'target_type_display': instance.targetTypeDisplay,
  'threshold_value': ?instance.thresholdValue,
  'no_data_minutes': ?instance.noDataMinutes,
  'rate_change_value': ?instance.rateChangeValue,
  'rate_change_window': ?instance.rateChangeWindow,
  'check_frequency_minutes': ?instance.checkFrequencyMinutes,
  'cooldown_minutes': ?instance.cooldownMinutes,
  'is_active': ?instance.isActive,
  'start_date': ?instance.startDate?.toIso8601String(),
  'end_date': ?instance.endDate?.toIso8601String(),
  'report_schedule':
      ?_$TelemetryAlertRuleReportScheduleEnumEnumMap[instance.reportSchedule],
  'report_hour': ?instance.reportHour,
  'channels': instance.channels.map((e) => e.toJson()).toList(),
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};

const _$TelemetryAlertRuleSeverityEnumEnumMap = {
  TelemetryAlertRuleSeverityEnum.INFO: 'INFO',
  TelemetryAlertRuleSeverityEnum.WARNING: 'WARNING',
  TelemetryAlertRuleSeverityEnum.ALERT: 'ALERT',
  TelemetryAlertRuleSeverityEnum.CRITICAL: 'CRITICAL',
  TelemetryAlertRuleSeverityEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};

const _$TelemetryAlertRuleTargetTypeEnumEnumMap = {
  TelemetryAlertRuleTargetTypeEnum.THRESHOLD_MAX: 'THRESHOLD_MAX',
  TelemetryAlertRuleTargetTypeEnum.THRESHOLD_MIN: 'THRESHOLD_MIN',
  TelemetryAlertRuleTargetTypeEnum.NO_DATA: 'NO_DATA',
  TelemetryAlertRuleTargetTypeEnum.DISCONNECTION: 'DISCONNECTION',
  TelemetryAlertRuleTargetTypeEnum.RECONNECTION: 'RECONNECTION',
  TelemetryAlertRuleTargetTypeEnum.PROCESSING_ERROR: 'PROCESSING_ERROR',
  TelemetryAlertRuleTargetTypeEnum.RATE_OF_CHANGE: 'RATE_OF_CHANGE',
  TelemetryAlertRuleTargetTypeEnum.DEVIATION: 'DEVIATION',
  TelemetryAlertRuleTargetTypeEnum.SCHEDULED_REPORT: 'SCHEDULED_REPORT',
  TelemetryAlertRuleTargetTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};

const _$TelemetryAlertRuleReportScheduleEnumEnumMap = {
  TelemetryAlertRuleReportScheduleEnum.DAILY: 'DAILY',
  TelemetryAlertRuleReportScheduleEnum.WEEKLY: 'WEEKLY',
  TelemetryAlertRuleReportScheduleEnum.MONTHLY: 'MONTHLY',
  TelemetryAlertRuleReportScheduleEnum.empty: '',
  TelemetryAlertRuleReportScheduleEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
