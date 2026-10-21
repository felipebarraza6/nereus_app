//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_telemetry_alert_rule_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTelemetryAlertRuleRequest {
  /// Returns a new [PatchedTelemetryAlertRuleRequest] instance.
  PatchedTelemetryAlertRuleRequest({

     this.name,

     this.description,

     this.severity,

     this.device,

     this.variable,

     this.targetType,

     this.thresholdValue,

     this.noDataMinutes,

     this.rateChangeValue,

     this.rateChangeWindow,

     this.checkFrequencyMinutes,

     this.cooldownMinutes,

     this.isActive,

     this.startDate,

     this.endDate,

     this.reportSchedule,

     this.reportHour,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// * `INFO` - Informativo * `WARNING` - Advertencia * `ALERT` - Alerta * `CRITICAL` - Critico
  @JsonKey(
    
    name: r'severity',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedTelemetryAlertRuleRequestSeverityEnum.unknownDefaultOpenApi,
  )


  final PatchedTelemetryAlertRuleRequestSeverityEnum? severity;



      /// Si se deja vacio, la regla aplica globalmente
  @JsonKey(
    
    name: r'device',
    required: false,
    includeIfNull: false,
  )


  final int? device;



      /// Variable a monitorear (requerido para umbrales)
  @JsonKey(
    
    name: r'variable',
    required: false,
    includeIfNull: false,
  )


  final int? variable;



      /// * `THRESHOLD_MAX` - Umbral maximo * `THRESHOLD_MIN` - Umbral minimo * `NO_DATA` - Sin datos por X tiempo * `DISCONNECTION` - Dispositivo desconectado * `RECONNECTION` - Dispositivo reconectado * `PROCESSING_ERROR` - Error de procesamiento * `RATE_OF_CHANGE` - Tasa de cambio * `DEVIATION` - Desviacion estadistica * `SCHEDULED_REPORT` - Reporte programado
  @JsonKey(
    
    name: r'target_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedTelemetryAlertRuleRequestTargetTypeEnum.unknownDefaultOpenApi,
  )


  final PatchedTelemetryAlertRuleRequestTargetTypeEnum? targetType;



          // minimum: -100000000000
          // maximum: 100000000000
  @JsonKey(
    
    name: r'threshold_value',
    required: false,
    includeIfNull: false,
  )


  final double? thresholdValue;



          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'no_data_minutes',
    required: false,
    includeIfNull: false,
  )


  final int? noDataMinutes;



          // minimum: -100000000000
          // maximum: 100000000000
  @JsonKey(
    
    name: r'rate_change_value',
    required: false,
    includeIfNull: false,
  )


  final double? rateChangeValue;



          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'rate_change_window',
    required: false,
    includeIfNull: false,
  )


  final int? rateChangeWindow;



          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'check_frequency_minutes',
    required: false,
    includeIfNull: false,
  )


  final int? checkFrequencyMinutes;



      /// Tiempo minimo entre disparos consecutivos
          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'cooldown_minutes',
    required: false,
    includeIfNull: false,
  )


  final int? cooldownMinutes;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'start_date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? startDate;



  @JsonKey(
    
    name: r'end_date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? endDate;



      /// * `DAILY` - Diario * `WEEKLY` - Semanal * `MONTHLY` - Mensual
  @JsonKey(
    
    name: r'report_schedule',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedTelemetryAlertRuleRequestReportScheduleEnum.unknownDefaultOpenApi,
  )


  final PatchedTelemetryAlertRuleRequestReportScheduleEnum? reportSchedule;



          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'report_hour',
    required: false,
    includeIfNull: false,
  )


  final int? reportHour;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedTelemetryAlertRuleRequest &&
      other.name == name &&
      other.description == description &&
      other.severity == severity &&
      other.device == device &&
      other.variable == variable &&
      other.targetType == targetType &&
      other.thresholdValue == thresholdValue &&
      other.noDataMinutes == noDataMinutes &&
      other.rateChangeValue == rateChangeValue &&
      other.rateChangeWindow == rateChangeWindow &&
      other.checkFrequencyMinutes == checkFrequencyMinutes &&
      other.cooldownMinutes == cooldownMinutes &&
      other.isActive == isActive &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.reportSchedule == reportSchedule &&
      other.reportHour == reportHour;

    @override
    int get hashCode =>
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        severity.hashCode +
        (device == null ? 0 : device.hashCode) +
        (variable == null ? 0 : variable.hashCode) +
        targetType.hashCode +
        (thresholdValue == null ? 0 : thresholdValue.hashCode) +
        (noDataMinutes == null ? 0 : noDataMinutes.hashCode) +
        (rateChangeValue == null ? 0 : rateChangeValue.hashCode) +
        (rateChangeWindow == null ? 0 : rateChangeWindow.hashCode) +
        checkFrequencyMinutes.hashCode +
        cooldownMinutes.hashCode +
        isActive.hashCode +
        (startDate == null ? 0 : startDate.hashCode) +
        (endDate == null ? 0 : endDate.hashCode) +
        (reportSchedule == null ? 0 : reportSchedule.hashCode) +
        (reportHour == null ? 0 : reportHour.hashCode);

  factory PatchedTelemetryAlertRuleRequest.fromJson(Map<String, dynamic> json) => _$PatchedTelemetryAlertRuleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTelemetryAlertRuleRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `INFO` - Informativo * `WARNING` - Advertencia * `ALERT` - Alerta * `CRITICAL` - Critico
enum PatchedTelemetryAlertRuleRequestSeverityEnum {
@JsonValue(r'INFO')
INFO(r'INFO'),
@JsonValue(r'WARNING')
WARNING(r'WARNING'),
@JsonValue(r'ALERT')
ALERT(r'ALERT'),
@JsonValue(r'CRITICAL')
CRITICAL(r'CRITICAL'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedTelemetryAlertRuleRequestSeverityEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `THRESHOLD_MAX` - Umbral maximo * `THRESHOLD_MIN` - Umbral minimo * `NO_DATA` - Sin datos por X tiempo * `DISCONNECTION` - Dispositivo desconectado * `RECONNECTION` - Dispositivo reconectado * `PROCESSING_ERROR` - Error de procesamiento * `RATE_OF_CHANGE` - Tasa de cambio * `DEVIATION` - Desviacion estadistica * `SCHEDULED_REPORT` - Reporte programado
enum PatchedTelemetryAlertRuleRequestTargetTypeEnum {
@JsonValue(r'THRESHOLD_MAX')
THRESHOLD_MAX(r'THRESHOLD_MAX'),
@JsonValue(r'THRESHOLD_MIN')
THRESHOLD_MIN(r'THRESHOLD_MIN'),
@JsonValue(r'NO_DATA')
NO_DATA(r'NO_DATA'),
@JsonValue(r'DISCONNECTION')
DISCONNECTION(r'DISCONNECTION'),
@JsonValue(r'RECONNECTION')
RECONNECTION(r'RECONNECTION'),
@JsonValue(r'PROCESSING_ERROR')
PROCESSING_ERROR(r'PROCESSING_ERROR'),
@JsonValue(r'RATE_OF_CHANGE')
RATE_OF_CHANGE(r'RATE_OF_CHANGE'),
@JsonValue(r'DEVIATION')
DEVIATION(r'DEVIATION'),
@JsonValue(r'SCHEDULED_REPORT')
SCHEDULED_REPORT(r'SCHEDULED_REPORT'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedTelemetryAlertRuleRequestTargetTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `DAILY` - Diario * `WEEKLY` - Semanal * `MONTHLY` - Mensual
enum PatchedTelemetryAlertRuleRequestReportScheduleEnum {
@JsonValue(r'DAILY')
DAILY(r'DAILY'),
@JsonValue(r'WEEKLY')
WEEKLY(r'WEEKLY'),
@JsonValue(r'MONTHLY')
MONTHLY(r'MONTHLY'),
@JsonValue(r'')
empty(r''),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedTelemetryAlertRuleRequestReportScheduleEnum(this.value);

final String value;

@override
String toString() => value;
}


