// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_alert_trigger_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryAlertTriggerRequestCWProxy {
  TelemetryAlertTriggerRequest alertRule(int alertRule);

  TelemetryAlertTriggerRequest device(int? device);

  TelemetryAlertTriggerRequest variable(int? variable);

  TelemetryAlertTriggerRequest triggeredAt(DateTime triggeredAt);

  TelemetryAlertTriggerRequest valueAtTrigger(double? valueAtTrigger);

  TelemetryAlertTriggerRequest thresholdBreached(double? thresholdBreached);

  TelemetryAlertTriggerRequest notificationSent(bool? notificationSent);

  TelemetryAlertTriggerRequest notificationError(String? notificationError);

  TelemetryAlertTriggerRequest notificationSentAt(DateTime? notificationSentAt);

  TelemetryAlertTriggerRequest aiDiagnosis(String? aiDiagnosis);

  TelemetryAlertTriggerRequest isAcknowledged(bool? isAcknowledged);

  TelemetryAlertTriggerRequest acknowledgedBy(int? acknowledgedBy);

  TelemetryAlertTriggerRequest acknowledgedAt(DateTime? acknowledgedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryAlertTriggerRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryAlertTriggerRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryAlertTriggerRequest call({
    int alertRule,
    int? device,
    int? variable,
    DateTime triggeredAt,
    double? valueAtTrigger,
    double? thresholdBreached,
    bool? notificationSent,
    String? notificationError,
    DateTime? notificationSentAt,
    String? aiDiagnosis,
    bool? isAcknowledged,
    int? acknowledgedBy,
    DateTime? acknowledgedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryAlertTriggerRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryAlertTriggerRequest.copyWith.fieldName(...)`
class _$TelemetryAlertTriggerRequestCWProxyImpl
    implements _$TelemetryAlertTriggerRequestCWProxy {
  const _$TelemetryAlertTriggerRequestCWProxyImpl(this._value);

  final TelemetryAlertTriggerRequest _value;

  @override
  TelemetryAlertTriggerRequest alertRule(int alertRule) =>
      this(alertRule: alertRule);

  @override
  TelemetryAlertTriggerRequest device(int? device) => this(device: device);

  @override
  TelemetryAlertTriggerRequest variable(int? variable) =>
      this(variable: variable);

  @override
  TelemetryAlertTriggerRequest triggeredAt(DateTime triggeredAt) =>
      this(triggeredAt: triggeredAt);

  @override
  TelemetryAlertTriggerRequest valueAtTrigger(double? valueAtTrigger) =>
      this(valueAtTrigger: valueAtTrigger);

  @override
  TelemetryAlertTriggerRequest thresholdBreached(double? thresholdBreached) =>
      this(thresholdBreached: thresholdBreached);

  @override
  TelemetryAlertTriggerRequest notificationSent(bool? notificationSent) =>
      this(notificationSent: notificationSent);

  @override
  TelemetryAlertTriggerRequest notificationError(String? notificationError) =>
      this(notificationError: notificationError);

  @override
  TelemetryAlertTriggerRequest notificationSentAt(
    DateTime? notificationSentAt,
  ) => this(notificationSentAt: notificationSentAt);

  @override
  TelemetryAlertTriggerRequest aiDiagnosis(String? aiDiagnosis) =>
      this(aiDiagnosis: aiDiagnosis);

  @override
  TelemetryAlertTriggerRequest isAcknowledged(bool? isAcknowledged) =>
      this(isAcknowledged: isAcknowledged);

  @override
  TelemetryAlertTriggerRequest acknowledgedBy(int? acknowledgedBy) =>
      this(acknowledgedBy: acknowledgedBy);

  @override
  TelemetryAlertTriggerRequest acknowledgedAt(DateTime? acknowledgedAt) =>
      this(acknowledgedAt: acknowledgedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryAlertTriggerRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryAlertTriggerRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryAlertTriggerRequest call({
    Object? alertRule = const $CopyWithPlaceholder(),
    Object? device = const $CopyWithPlaceholder(),
    Object? variable = const $CopyWithPlaceholder(),
    Object? triggeredAt = const $CopyWithPlaceholder(),
    Object? valueAtTrigger = const $CopyWithPlaceholder(),
    Object? thresholdBreached = const $CopyWithPlaceholder(),
    Object? notificationSent = const $CopyWithPlaceholder(),
    Object? notificationError = const $CopyWithPlaceholder(),
    Object? notificationSentAt = const $CopyWithPlaceholder(),
    Object? aiDiagnosis = const $CopyWithPlaceholder(),
    Object? isAcknowledged = const $CopyWithPlaceholder(),
    Object? acknowledgedBy = const $CopyWithPlaceholder(),
    Object? acknowledgedAt = const $CopyWithPlaceholder(),
  }) {
    return TelemetryAlertTriggerRequest(
      alertRule: alertRule == const $CopyWithPlaceholder()
          ? _value.alertRule
          // ignore: cast_nullable_to_non_nullable
          : alertRule as int,
      device: device == const $CopyWithPlaceholder()
          ? _value.device
          // ignore: cast_nullable_to_non_nullable
          : device as int?,
      variable: variable == const $CopyWithPlaceholder()
          ? _value.variable
          // ignore: cast_nullable_to_non_nullable
          : variable as int?,
      triggeredAt: triggeredAt == const $CopyWithPlaceholder()
          ? _value.triggeredAt
          // ignore: cast_nullable_to_non_nullable
          : triggeredAt as DateTime,
      valueAtTrigger: valueAtTrigger == const $CopyWithPlaceholder()
          ? _value.valueAtTrigger
          // ignore: cast_nullable_to_non_nullable
          : valueAtTrigger as double?,
      thresholdBreached: thresholdBreached == const $CopyWithPlaceholder()
          ? _value.thresholdBreached
          // ignore: cast_nullable_to_non_nullable
          : thresholdBreached as double?,
      notificationSent: notificationSent == const $CopyWithPlaceholder()
          ? _value.notificationSent
          // ignore: cast_nullable_to_non_nullable
          : notificationSent as bool?,
      notificationError: notificationError == const $CopyWithPlaceholder()
          ? _value.notificationError
          // ignore: cast_nullable_to_non_nullable
          : notificationError as String?,
      notificationSentAt: notificationSentAt == const $CopyWithPlaceholder()
          ? _value.notificationSentAt
          // ignore: cast_nullable_to_non_nullable
          : notificationSentAt as DateTime?,
      aiDiagnosis: aiDiagnosis == const $CopyWithPlaceholder()
          ? _value.aiDiagnosis
          // ignore: cast_nullable_to_non_nullable
          : aiDiagnosis as String?,
      isAcknowledged: isAcknowledged == const $CopyWithPlaceholder()
          ? _value.isAcknowledged
          // ignore: cast_nullable_to_non_nullable
          : isAcknowledged as bool?,
      acknowledgedBy: acknowledgedBy == const $CopyWithPlaceholder()
          ? _value.acknowledgedBy
          // ignore: cast_nullable_to_non_nullable
          : acknowledgedBy as int?,
      acknowledgedAt: acknowledgedAt == const $CopyWithPlaceholder()
          ? _value.acknowledgedAt
          // ignore: cast_nullable_to_non_nullable
          : acknowledgedAt as DateTime?,
    );
  }
}

extension $TelemetryAlertTriggerRequestCopyWith
    on TelemetryAlertTriggerRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryAlertTriggerRequest.copyWith(...)` or like so:`instanceOfTelemetryAlertTriggerRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryAlertTriggerRequestCWProxy get copyWith =>
      _$TelemetryAlertTriggerRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryAlertTriggerRequest _$TelemetryAlertTriggerRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryAlertTriggerRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['alert_rule', 'triggered_at']);
    final val = TelemetryAlertTriggerRequest(
      alertRule: $checkedConvert('alert_rule', (v) => (v as num).toInt()),
      device: $checkedConvert('device', (v) => (v as num?)?.toInt()),
      variable: $checkedConvert('variable', (v) => (v as num?)?.toInt()),
      triggeredAt: $checkedConvert(
        'triggered_at',
        (v) => DateTime.parse(v as String),
      ),
      valueAtTrigger: $checkedConvert(
        'value_at_trigger',
        (v) => (v as num?)?.toDouble(),
      ),
      thresholdBreached: $checkedConvert(
        'threshold_breached',
        (v) => (v as num?)?.toDouble(),
      ),
      notificationSent: $checkedConvert('notification_sent', (v) => v as bool?),
      notificationError: $checkedConvert(
        'notification_error',
        (v) => v as String?,
      ),
      notificationSentAt: $checkedConvert(
        'notification_sent_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      aiDiagnosis: $checkedConvert('ai_diagnosis', (v) => v as String?),
      isAcknowledged: $checkedConvert('is_acknowledged', (v) => v as bool?),
      acknowledgedBy: $checkedConvert(
        'acknowledged_by',
        (v) => (v as num?)?.toInt(),
      ),
      acknowledgedAt: $checkedConvert(
        'acknowledged_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'alertRule': 'alert_rule',
    'triggeredAt': 'triggered_at',
    'valueAtTrigger': 'value_at_trigger',
    'thresholdBreached': 'threshold_breached',
    'notificationSent': 'notification_sent',
    'notificationError': 'notification_error',
    'notificationSentAt': 'notification_sent_at',
    'aiDiagnosis': 'ai_diagnosis',
    'isAcknowledged': 'is_acknowledged',
    'acknowledgedBy': 'acknowledged_by',
    'acknowledgedAt': 'acknowledged_at',
  },
);

Map<String, dynamic> _$TelemetryAlertTriggerRequestToJson(
  TelemetryAlertTriggerRequest instance,
) => <String, dynamic>{
  'alert_rule': instance.alertRule,
  'device': ?instance.device,
  'variable': ?instance.variable,
  'triggered_at': instance.triggeredAt.toIso8601String(),
  'value_at_trigger': ?instance.valueAtTrigger,
  'threshold_breached': ?instance.thresholdBreached,
  'notification_sent': ?instance.notificationSent,
  'notification_error': ?instance.notificationError,
  'notification_sent_at': ?instance.notificationSentAt?.toIso8601String(),
  'ai_diagnosis': ?instance.aiDiagnosis,
  'is_acknowledged': ?instance.isAcknowledged,
  'acknowledged_by': ?instance.acknowledgedBy,
  'acknowledged_at': ?instance.acknowledgedAt?.toIso8601String(),
};
