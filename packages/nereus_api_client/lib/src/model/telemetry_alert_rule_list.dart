//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_alert_rule_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryAlertRuleList {
  /// Returns a new [TelemetryAlertRuleList] instance.
  TelemetryAlertRuleList({

    required  this.id,

    required  this.name,

     this.severity,

    required  this.severityDisplay,

    required  this.deviceName,

    required  this.variableName,

    required  this.targetType,

    required  this.targetTypeDisplay,

     this.isActive,

    required  this.channelsCount,

    required  this.created,
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



      /// * `INFO` - Informativo * `WARNING` - Advertencia * `ALERT` - Alerta * `CRITICAL` - Critico
  @JsonKey(
    
    name: r'severity',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TelemetryAlertRuleListSeverityEnum.unknownDefaultOpenApi,
  )


  final TelemetryAlertRuleListSeverityEnum? severity;



  @JsonKey(
    
    name: r'severity_display',
    required: true,
    includeIfNull: false,
  )


  final String severityDisplay;



  @JsonKey(
    
    name: r'device_name',
    required: true,
    includeIfNull: false,
  )


  final String deviceName;



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
  unknownEnumValue: TelemetryAlertRuleListTargetTypeEnum.unknownDefaultOpenApi,
  )


  final TelemetryAlertRuleListTargetTypeEnum targetType;



  @JsonKey(
    
    name: r'target_type_display',
    required: true,
    includeIfNull: false,
  )


  final String targetTypeDisplay;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'channels_count',
    required: true,
    includeIfNull: false,
  )


  final int channelsCount;



      /// Fecha de creacion.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final DateTime created;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TelemetryAlertRuleList &&
      other.id == id &&
      other.name == name &&
      other.severity == severity &&
      other.severityDisplay == severityDisplay &&
      other.deviceName == deviceName &&
      other.variableName == variableName &&
      other.targetType == targetType &&
      other.targetTypeDisplay == targetTypeDisplay &&
      other.isActive == isActive &&
      other.channelsCount == channelsCount &&
      other.created == created;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        severity.hashCode +
        severityDisplay.hashCode +
        deviceName.hashCode +
        variableName.hashCode +
        targetType.hashCode +
        targetTypeDisplay.hashCode +
        isActive.hashCode +
        channelsCount.hashCode +
        created.hashCode;

  factory TelemetryAlertRuleList.fromJson(Map<String, dynamic> json) => _$TelemetryAlertRuleListFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryAlertRuleListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `INFO` - Informativo * `WARNING` - Advertencia * `ALERT` - Alerta * `CRITICAL` - Critico
enum TelemetryAlertRuleListSeverityEnum {
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

const TelemetryAlertRuleListSeverityEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `THRESHOLD_MAX` - Umbral maximo * `THRESHOLD_MIN` - Umbral minimo * `NO_DATA` - Sin datos por X tiempo * `DISCONNECTION` - Dispositivo desconectado * `RECONNECTION` - Dispositivo reconectado * `PROCESSING_ERROR` - Error de procesamiento * `RATE_OF_CHANGE` - Tasa de cambio * `DEVIATION` - Desviacion estadistica * `SCHEDULED_REPORT` - Reporte programado
enum TelemetryAlertRuleListTargetTypeEnum {
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

const TelemetryAlertRuleListTargetTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


