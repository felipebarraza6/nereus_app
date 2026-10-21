//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_event.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryEvent {
  /// Returns a new [TelemetryEvent] instance.
  TelemetryEvent({

    required  this.id,

    required  this.eventType,

    required  this.eventTypeDisplay,

     this.device,

    required  this.deviceName,

    required  this.title,

    required  this.message,

     this.severity,

    required  this.severityDisplay,

     this.extraData,

     this.reading,

    required  this.created,

    required  this.modified,
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
    
    name: r'title',
    required: true,
    includeIfNull: false,
  )


  final String title;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



      /// * `INFO` - Informativo * `WARNING` - Advertencia * `CRITICAL` - Critico
  @JsonKey(
    
    name: r'severity',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TelemetryEventSeverityEnum.unknownDefaultOpenApi,
  )


  final TelemetryEventSeverityEnum? severity;



  @JsonKey(
    
    name: r'severity_display',
    required: true,
    includeIfNull: false,
  )


  final String severityDisplay;



      /// JSON con informacion adicional del evento
  @JsonKey(
    
    name: r'extra_data',
    required: false,
    includeIfNull: false,
  )


  final Object? extraData;



  @JsonKey(
    
    name: r'reading',
    required: false,
    includeIfNull: false,
  )


  final int? reading;



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
    bool operator ==(Object other) => identical(this, other) || other is TelemetryEvent &&
      other.id == id &&
      other.eventType == eventType &&
      other.eventTypeDisplay == eventTypeDisplay &&
      other.device == device &&
      other.deviceName == deviceName &&
      other.title == title &&
      other.message == message &&
      other.severity == severity &&
      other.severityDisplay == severityDisplay &&
      other.extraData == extraData &&
      other.reading == reading &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        eventType.hashCode +
        eventTypeDisplay.hashCode +
        (device == null ? 0 : device.hashCode) +
        deviceName.hashCode +
        title.hashCode +
        message.hashCode +
        severity.hashCode +
        severityDisplay.hashCode +
        (extraData == null ? 0 : extraData.hashCode) +
        (reading == null ? 0 : reading.hashCode) +
        created.hashCode +
        modified.hashCode;

  factory TelemetryEvent.fromJson(Map<String, dynamic> json) => _$TelemetryEventFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryEventToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `INFO` - Informativo * `WARNING` - Advertencia * `CRITICAL` - Critico
enum TelemetryEventSeverityEnum {
@JsonValue(r'INFO')
INFO(r'INFO'),
@JsonValue(r'WARNING')
WARNING(r'WARNING'),
@JsonValue(r'CRITICAL')
CRITICAL(r'CRITICAL'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TelemetryEventSeverityEnum(this.value);

final String value;

@override
String toString() => value;
}


