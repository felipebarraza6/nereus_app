//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_telemetry_event_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTelemetryEventRequest {
  /// Returns a new [PatchedTelemetryEventRequest] instance.
  PatchedTelemetryEventRequest({

     this.eventType,

     this.device,

     this.title,

     this.message,

     this.severity,

     this.extraData,

     this.reading,
  });

      /// * `COUNTER_RESET` - Reinicio de contador * `DISCONNECTION` - Desconexion * `RECONNECTION` - Reconexion * `MEASUREMENT_ERROR` - Error de medicion * `MASSIVE_JUMP_BLOCKED` - Salto masivo bloqueado * `TOKEN_REFRESH` - Token refrescado * `API_ERROR` - Error de API externa * `CONFIG_CHANGE` - Cambio de configuracion * `FIRMWARE_UPDATE` - Actualizacion de firmware * `ALERT` - Alerta de regla IoT
  @JsonKey(
    
    name: r'event_type',
    required: false,
    includeIfNull: false,
  )


  final String? eventType;



  @JsonKey(
    
    name: r'device',
    required: false,
    includeIfNull: false,
  )


  final int? device;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final String? message;



      /// * `INFO` - Informativo * `WARNING` - Advertencia * `CRITICAL` - Critico
  @JsonKey(
    
    name: r'severity',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedTelemetryEventRequestSeverityEnum.unknownDefaultOpenApi,
  )


  final PatchedTelemetryEventRequestSeverityEnum? severity;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedTelemetryEventRequest &&
      other.eventType == eventType &&
      other.device == device &&
      other.title == title &&
      other.message == message &&
      other.severity == severity &&
      other.extraData == extraData &&
      other.reading == reading;

    @override
    int get hashCode =>
        eventType.hashCode +
        (device == null ? 0 : device.hashCode) +
        title.hashCode +
        message.hashCode +
        severity.hashCode +
        (extraData == null ? 0 : extraData.hashCode) +
        (reading == null ? 0 : reading.hashCode);

  factory PatchedTelemetryEventRequest.fromJson(Map<String, dynamic> json) => _$PatchedTelemetryEventRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTelemetryEventRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `INFO` - Informativo * `WARNING` - Advertencia * `CRITICAL` - Critico
enum PatchedTelemetryEventRequestSeverityEnum {
@JsonValue(r'INFO')
INFO(r'INFO'),
@JsonValue(r'WARNING')
WARNING(r'WARNING'),
@JsonValue(r'CRITICAL')
CRITICAL(r'CRITICAL'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedTelemetryEventRequestSeverityEnum(this.value);

final String value;

@override
String toString() => value;
}


