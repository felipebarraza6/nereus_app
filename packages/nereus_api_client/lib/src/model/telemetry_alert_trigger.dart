//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_alert_trigger.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryAlertTrigger {
  /// Returns a new [TelemetryAlertTrigger] instance.
  TelemetryAlertTrigger({

    required  this.id,

    required  this.alertRule,

    required  this.alertRuleName,

     this.device,

    required  this.deviceName,

     this.variable,

    required  this.variableName,

    required  this.triggeredAt,

     this.valueAtTrigger,

     this.thresholdBreached,

     this.notificationSent,

     this.notificationError,

     this.notificationSentAt,

     this.aiDiagnosis,

     this.isAcknowledged,

     this.acknowledgedBy,

    required  this.acknowledgedByName,

     this.acknowledgedAt,

    required  this.created,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'alert_rule',
    required: true,
    includeIfNull: false,
  )


  final int alertRule;



  @JsonKey(
    
    name: r'alert_rule_name',
    required: true,
    includeIfNull: false,
  )


  final String alertRuleName;



  @JsonKey(
    
    name: r'device',
    required: false,
    includeIfNull: false,
  )


  final int? device;



  @JsonKey(
    
    name: r'device_name',
    required: true,
    includeIfNull: false,
  )


  final String deviceName;



  @JsonKey(
    
    name: r'variable',
    required: false,
    includeIfNull: false,
  )


  final int? variable;



  @JsonKey(
    
    name: r'variable_name',
    required: true,
    includeIfNull: false,
  )


  final String variableName;



  @JsonKey(
    
    name: r'triggered_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime triggeredAt;



          // minimum: -100000000000
          // maximum: 100000000000
  @JsonKey(
    
    name: r'value_at_trigger',
    required: false,
    includeIfNull: false,
  )


  final double? valueAtTrigger;



          // minimum: -100000000000
          // maximum: 100000000000
  @JsonKey(
    
    name: r'threshold_breached',
    required: false,
    includeIfNull: false,
  )


  final double? thresholdBreached;



  @JsonKey(
    
    name: r'notification_sent',
    required: false,
    includeIfNull: false,
  )


  final bool? notificationSent;



  @JsonKey(
    
    name: r'notification_error',
    required: false,
    includeIfNull: false,
  )


  final String? notificationError;



  @JsonKey(
    
    name: r'notification_sent_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? notificationSentAt;



  @JsonKey(
    
    name: r'ai_diagnosis',
    required: false,
    includeIfNull: false,
  )


  final String? aiDiagnosis;



  @JsonKey(
    
    name: r'is_acknowledged',
    required: false,
    includeIfNull: false,
  )


  final bool? isAcknowledged;



  @JsonKey(
    
    name: r'acknowledged_by',
    required: false,
    includeIfNull: false,
  )


  final int? acknowledgedBy;



  @JsonKey(
    
    name: r'acknowledged_by_name',
    required: true,
    includeIfNull: false,
  )


  final String acknowledgedByName;



  @JsonKey(
    
    name: r'acknowledged_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? acknowledgedAt;



      /// Fecha de creacion.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final DateTime created;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TelemetryAlertTrigger &&
      other.id == id &&
      other.alertRule == alertRule &&
      other.alertRuleName == alertRuleName &&
      other.device == device &&
      other.deviceName == deviceName &&
      other.variable == variable &&
      other.variableName == variableName &&
      other.triggeredAt == triggeredAt &&
      other.valueAtTrigger == valueAtTrigger &&
      other.thresholdBreached == thresholdBreached &&
      other.notificationSent == notificationSent &&
      other.notificationError == notificationError &&
      other.notificationSentAt == notificationSentAt &&
      other.aiDiagnosis == aiDiagnosis &&
      other.isAcknowledged == isAcknowledged &&
      other.acknowledgedBy == acknowledgedBy &&
      other.acknowledgedByName == acknowledgedByName &&
      other.acknowledgedAt == acknowledgedAt &&
      other.created == created;

    @override
    int get hashCode =>
        id.hashCode +
        alertRule.hashCode +
        alertRuleName.hashCode +
        (device == null ? 0 : device.hashCode) +
        deviceName.hashCode +
        (variable == null ? 0 : variable.hashCode) +
        variableName.hashCode +
        triggeredAt.hashCode +
        (valueAtTrigger == null ? 0 : valueAtTrigger.hashCode) +
        (thresholdBreached == null ? 0 : thresholdBreached.hashCode) +
        notificationSent.hashCode +
        (notificationError == null ? 0 : notificationError.hashCode) +
        (notificationSentAt == null ? 0 : notificationSentAt.hashCode) +
        (aiDiagnosis == null ? 0 : aiDiagnosis.hashCode) +
        isAcknowledged.hashCode +
        (acknowledgedBy == null ? 0 : acknowledgedBy.hashCode) +
        acknowledgedByName.hashCode +
        (acknowledgedAt == null ? 0 : acknowledgedAt.hashCode) +
        created.hashCode;

  factory TelemetryAlertTrigger.fromJson(Map<String, dynamic> json) => _$TelemetryAlertTriggerFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryAlertTriggerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

