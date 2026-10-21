//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_telemetry_alert_trigger_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTelemetryAlertTriggerRequest {
  /// Returns a new [PatchedTelemetryAlertTriggerRequest] instance.
  PatchedTelemetryAlertTriggerRequest({

     this.alertRule,

     this.device,

     this.variable,

     this.triggeredAt,

     this.valueAtTrigger,

     this.thresholdBreached,

     this.notificationSent,

     this.notificationError,

     this.notificationSentAt,

     this.aiDiagnosis,

     this.isAcknowledged,

     this.acknowledgedBy,

     this.acknowledgedAt,
  });

  @JsonKey(
    
    name: r'alert_rule',
    required: false,
    includeIfNull: false,
  )


  final int? alertRule;



  @JsonKey(
    
    name: r'device',
    required: false,
    includeIfNull: false,
  )


  final int? device;



  @JsonKey(
    
    name: r'variable',
    required: false,
    includeIfNull: false,
  )


  final int? variable;



  @JsonKey(
    
    name: r'triggered_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? triggeredAt;



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
    
    name: r'acknowledged_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? acknowledgedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedTelemetryAlertTriggerRequest &&
      other.alertRule == alertRule &&
      other.device == device &&
      other.variable == variable &&
      other.triggeredAt == triggeredAt &&
      other.valueAtTrigger == valueAtTrigger &&
      other.thresholdBreached == thresholdBreached &&
      other.notificationSent == notificationSent &&
      other.notificationError == notificationError &&
      other.notificationSentAt == notificationSentAt &&
      other.aiDiagnosis == aiDiagnosis &&
      other.isAcknowledged == isAcknowledged &&
      other.acknowledgedBy == acknowledgedBy &&
      other.acknowledgedAt == acknowledgedAt;

    @override
    int get hashCode =>
        alertRule.hashCode +
        (device == null ? 0 : device.hashCode) +
        (variable == null ? 0 : variable.hashCode) +
        triggeredAt.hashCode +
        (valueAtTrigger == null ? 0 : valueAtTrigger.hashCode) +
        (thresholdBreached == null ? 0 : thresholdBreached.hashCode) +
        notificationSent.hashCode +
        (notificationError == null ? 0 : notificationError.hashCode) +
        (notificationSentAt == null ? 0 : notificationSentAt.hashCode) +
        (aiDiagnosis == null ? 0 : aiDiagnosis.hashCode) +
        isAcknowledged.hashCode +
        (acknowledgedBy == null ? 0 : acknowledgedBy.hashCode) +
        (acknowledgedAt == null ? 0 : acknowledgedAt.hashCode);

  factory PatchedTelemetryAlertTriggerRequest.fromJson(Map<String, dynamic> json) => _$PatchedTelemetryAlertTriggerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTelemetryAlertTriggerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

