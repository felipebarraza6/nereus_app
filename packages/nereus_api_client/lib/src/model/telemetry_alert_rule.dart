//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:nereus_api_client/src/model/telemetry_alert_channel.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_alert_rule.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryAlertRule {
  /// Returns a new [TelemetryAlertRule] instance.
  TelemetryAlertRule({

    required  this.id,

    required  this.name,

     this.description,

     this.severity,

    required  this.severityDisplay,

     this.device,

    required  this.deviceName,

     this.variable,

    required  this.variableName,

    required  this.targetType,

    required  this.targetTypeDisplay,

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

    required  this.channels,

    required  this.created,

    required  this.modified,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



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
  unknownEnumValue: TelemetryAlertRuleSeverityEnum.unknownDefaultOpenApi,
  )


  final TelemetryAlertRuleSeverityEnum? severity;



  @JsonKey(
    
    name: r'severity_display',
    required: true,
    includeIfNull: false,
  )


  final String severityDisplay;



      /// Si se deja vacio, la regla aplica globalmente
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



      /// Variable a monitorear (requerido para umbrales)
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



      /// * `THRESHOLD_MAX` - Umbral maximo * `THRESHOLD_MIN` - Umbral minimo * `NO_DATA` - Sin datos por X tiempo * `DISCONNECTION` - Dispositivo desconectado * `RECONNECTION` - Dispositivo reconectado * `PROCESSING_ERROR` - Error de procesamiento * `RATE_OF_CHANGE` - Tasa de cambio * `DEVIATION` - Desviacion estadistica * `SCHEDULED_REPORT` - Reporte programado
  @JsonKey(
    
    name: r'target_type',
    required: true,
    includeIfNull: false,
  unknownEnumValue: TelemetryAlertRuleTargetTypeEnum.unknownDefaultOpenApi,
  )


  final TelemetryAlertRuleTargetTypeEnum targetType;



  @JsonKey(
    
    name: r'target_type_display',
    required: true,
    includeIfNull: false,
  )


  final String targetTypeDisplay;



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
  unknownEnumValue: TelemetryAlertRuleReportScheduleEnum.unknownDefaultOpenApi,
  )


  final TelemetryAlertRuleReportScheduleEnum? reportSchedule;



          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'report_hour',
    required: false,
    includeIfNull: false,
  )


  final int? reportHour;



  @JsonKey(
    
    name: r'channels',
    required: true,
    includeIfNull: false,
  )


  final List<TelemetryAlertChannel> channels;



      /// Fecha de creacion.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final DateTime created;



      /// Fecha de modificacion.
  @JsonKey(
    
    name: r'modified',
    required: true,
    includeIfNull: false,
  )


  final DateTime modified;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TelemetryAlertRule &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.severity == severity &&
      other.severityDisplay == severityDisplay &&
      other.device == device &&
      other.deviceName == deviceName &&
      other.variable == variable &&
      other.variableName == variableName &&
      other.targetType == targetType &&
      other.targetTypeDisplay == targetTypeDisplay &&
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
      other.reportHour == reportHour &&
      other.channels == channels &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        severity.hashCode +
        severityDisplay.hashCode +
        (device == null ? 0 : device.hashCode) +
        deviceName.hashCode +
        (variable == null ? 0 : variable.hashCode) +
        variableName.hashCode +
        targetType.hashCode +
        targetTypeDisplay.hashCode +
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
        (reportHour == null ? 0 : reportHour.hashCode) +
        channels.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TelemetryAlertRule.fromJson(Map<String, dynamic> json) => _$TelemetryAlertRuleFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryAlertRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `INFO` - Informativo * `WARNING` - Advertencia * `ALERT` - Alerta * `CRITICAL` - Critico
enum TelemetryAlertRuleSeverityEnum {
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

const TelemetryAlertRuleSeverityEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `THRESHOLD_MAX` - Umbral maximo * `THRESHOLD_MIN` - Umbral minimo * `NO_DATA` - Sin datos por X tiempo * `DISCONNECTION` - Dispositivo desconectado * `RECONNECTION` - Dispositivo reconectado * `PROCESSING_ERROR` - Error de procesamiento * `RATE_OF_CHANGE` - Tasa de cambio * `DEVIATION` - Desviacion estadistica * `SCHEDULED_REPORT` - Reporte programado
enum TelemetryAlertRuleTargetTypeEnum {
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

const TelemetryAlertRuleTargetTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `DAILY` - Diario * `WEEKLY` - Semanal * `MONTHLY` - Mensual
enum TelemetryAlertRuleReportScheduleEnum {
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

const TelemetryAlertRuleReportScheduleEnum(this.value);

final String value;

@override
String toString() => value;
}


