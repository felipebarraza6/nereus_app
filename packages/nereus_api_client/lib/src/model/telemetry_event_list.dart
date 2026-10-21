//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_event_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryEventList {
  /// Returns a new [TelemetryEventList] instance.
  TelemetryEventList({

    required  this.id,

    required  this.eventType,

    required  this.eventTypeDisplay,

    required  this.deviceName,

    required  this.title,

     this.severity,

    required  this.severityDisplay,

    required  this.created,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



      /// * `COUNTER_RESET` - Reinicio de contador * `DISCONNECTION` - Desconexion * `RECONNECTION` - Reconexion * `MEASUREMENT_ERROR` - Error de medicion * `MASSIVE_JUMP_BLOCKED` - Salto masivo bloqueado * `TOKEN_REFRESH` - Token refrescado * `API_ERROR` - Error de API externa * `CONFIG_CHANGE` - Cambio de configuracion * `FIRMWARE_UPDATE` - Actualizacion de firmware * `ALERT` - Alerta de regla IoT
  @JsonKey(
    
    name: r'event_type',
    required: true,
    includeIfNull: false,
  )


  final String eventType;



  @JsonKey(
    
    name: r'event_type_display',
    required: true,
    includeIfNull: false,
  )


  final String eventTypeDisplay;



  @JsonKey(
    
    name: r'device_name',
    required: true,
    includeIfNull: false,
  )


  final String deviceName;



  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false,
  )


  final String title;



      /// * `INFO` - Informativo * `WARNING` - Advertencia * `CRITICAL` - Critico
  @JsonKey(
    
    name: r'severity',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TelemetryEventListSeverityEnum.unknownDefaultOpenApi,
  )


  final TelemetryEventListSeverityEnum? severity;



  @JsonKey(
    
    name: r'severity_display',
    required: true,
    includeIfNull: false,
  )


  final String severityDisplay;



      /// Fecha de creacion.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final DateTime created;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TelemetryEventList &&
      other.id == id &&
      other.eventType == eventType &&
      other.eventTypeDisplay == eventTypeDisplay &&
      other.deviceName == deviceName &&
      other.title == title &&
      other.severity == severity &&
      other.severityDisplay == severityDisplay &&
      other.created == created;

    @override
    int get hashCode =>
        id.hashCode +
        eventType.hashCode +
        eventTypeDisplay.hashCode +
        deviceName.hashCode +
        title.hashCode +
        severity.hashCode +
        severityDisplay.hashCode +
        created.hashCode;

  factory TelemetryEventList.fromJson(Map<String, dynamic> json) => _$TelemetryEventListFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryEventListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `INFO` - Informativo * `WARNING` - Advertencia * `CRITICAL` - Critico
enum TelemetryEventListSeverityEnum {
@JsonValue(r'INFO')
INFO(r'INFO'),
@JsonValue(r'WARNING')
WARNING(r'WARNING'),
@JsonValue(r'CRITICAL')
CRITICAL(r'CRITICAL'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TelemetryEventListSeverityEnum(this.value);

final String value;

@override
String toString() => value;
}


