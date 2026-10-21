//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_telemetry_device_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTelemetryDeviceRequest {
  /// Returns a new [PatchedTelemetryDeviceRequest] instance.
  PatchedTelemetryDeviceRequest({

     this.name,

     this.deviceType,

     this.project,

     this.telemetryProvider,

     this.deviceToken,

     this.readingFrequency,

     this.lat,

     this.lon,

     this.address,

     this.isActive,

     this.metadata,

     this.product,

     this.branch,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// * `WELL` - Pozo * `SURFACE` - Captacion superficial * `WEATHER` - Estacion meteorologica * `TANK` - Estanque / Tanque * `FLOW` - Medidor de flujo * `LEVEL` - Medidor de nivel * `CUSTOM` - Personalizado
  @JsonKey(
    
    name: r'device_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedTelemetryDeviceRequestDeviceTypeEnum.unknownDefaultOpenApi,
  )


  final PatchedTelemetryDeviceRequestDeviceTypeEnum? deviceType;



  @JsonKey(
    
    name: r'project',
    required: false,
    includeIfNull: false,
  )


  final int? project;



  @JsonKey(
    
    name: r'telemetry_provider',
    required: false,
    includeIfNull: false,
  )


  final int? telemetryProvider;



      /// Token unico para identificar el dispositivo en el proveedor
  @JsonKey(
    
    name: r'device_token',
    required: false,
    includeIfNull: false,
  )


  final String? deviceToken;



      /// Cada cuantos minutos se leen datos del dispositivo
          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'reading_frequency',
    required: false,
    includeIfNull: false,
  )


  final int? readingFrequency;



          // minimum: -100
          // maximum: 100
  @JsonKey(
    
    name: r'lat',
    required: false,
    includeIfNull: false,
  )


  final double? lat;



          // minimum: -100
          // maximum: 100
  @JsonKey(
    
    name: r'lon',
    required: false,
    includeIfNull: false,
  )


  final double? lon;



  @JsonKey(
    
    name: r'address',
    required: false,
    includeIfNull: false,
  )


  final String? address;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



      /// JSON con informacion adicional del dispositivo
  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false,
  )


  final Object? metadata;



      /// Vincula este dispositivo con un producto del inventario (tipo IOT_DEVICE)
  @JsonKey(
    
    name: r'product',
    required: false,
    includeIfNull: false,
  )


  final int? product;



      /// Sucursal a la que pertenece este registro
  @JsonKey(
    
    name: r'branch',
    required: false,
    includeIfNull: false,
  )


  final int? branch;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedTelemetryDeviceRequest &&
      other.name == name &&
      other.deviceType == deviceType &&
      other.project == project &&
      other.telemetryProvider == telemetryProvider &&
      other.deviceToken == deviceToken &&
      other.readingFrequency == readingFrequency &&
      other.lat == lat &&
      other.lon == lon &&
      other.address == address &&
      other.isActive == isActive &&
      other.metadata == metadata &&
      other.product == product &&
      other.branch == branch;

    @override
    int get hashCode =>
        name.hashCode +
        deviceType.hashCode +
        (project == null ? 0 : project.hashCode) +
        (telemetryProvider == null ? 0 : telemetryProvider.hashCode) +
        (deviceToken == null ? 0 : deviceToken.hashCode) +
        readingFrequency.hashCode +
        (lat == null ? 0 : lat.hashCode) +
        (lon == null ? 0 : lon.hashCode) +
        (address == null ? 0 : address.hashCode) +
        isActive.hashCode +
        (metadata == null ? 0 : metadata.hashCode) +
        (product == null ? 0 : product.hashCode) +
        branch.hashCode;

  factory PatchedTelemetryDeviceRequest.fromJson(Map<String, dynamic> json) => _$PatchedTelemetryDeviceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTelemetryDeviceRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `WELL` - Pozo * `SURFACE` - Captacion superficial * `WEATHER` - Estacion meteorologica * `TANK` - Estanque / Tanque * `FLOW` - Medidor de flujo * `LEVEL` - Medidor de nivel * `CUSTOM` - Personalizado
enum PatchedTelemetryDeviceRequestDeviceTypeEnum {
@JsonValue(r'WELL')
WELL(r'WELL'),
@JsonValue(r'SURFACE')
SURFACE(r'SURFACE'),
@JsonValue(r'WEATHER')
WEATHER(r'WEATHER'),
@JsonValue(r'TANK')
TANK(r'TANK'),
@JsonValue(r'FLOW')
FLOW(r'FLOW'),
@JsonValue(r'LEVEL')
LEVEL(r'LEVEL'),
@JsonValue(r'CUSTOM')
CUSTOM(r'CUSTOM'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedTelemetryDeviceRequestDeviceTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


