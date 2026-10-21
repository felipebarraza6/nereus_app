//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:nereus_api_client/src/model/compliance_config.dart';
import 'package:nereus_api_client/src/model/device_config.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_device_detail.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryDeviceDetail {
  /// Returns a new [TelemetryDeviceDetail] instance.
  TelemetryDeviceDetail({

    required  this.id,

    required  this.name,

     this.deviceType,

     this.project,

    required  this.projectName,

     this.telemetryProvider,

    required  this.providerName,

     this.deviceToken,

     this.readingFrequency,

     this.lat,

     this.lon,

     this.address,

     this.isActive,

     this.isOnline,

     this.lastReadingAt,

    required  this.config,

    required  this.complianceConfig,

    required  this.variables,

    required  this.latestReadings,

     this.metadata,

     this.product,

    required  this.branch,

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



      /// * `WELL` - Pozo * `SURFACE` - Captacion superficial * `WEATHER` - Estacion meteorologica * `TANK` - Estanque / Tanque * `FLOW` - Medidor de flujo * `LEVEL` - Medidor de nivel * `CUSTOM` - Personalizado
  @JsonKey(
    
    name: r'device_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TelemetryDeviceDetailDeviceTypeEnum.unknownDefaultOpenApi,
  )


  final TelemetryDeviceDetailDeviceTypeEnum? deviceType;



  @JsonKey(
    
    name: r'project',
    required: false,
    includeIfNull: false,
  )


  final int? project;



  @JsonKey(
    
    name: r'project_name',
    required: true,
    includeIfNull: false,
  )


  final String projectName;



  @JsonKey(
    
    name: r'telemetry_provider',
    required: false,
    includeIfNull: false,
  )


  final int? telemetryProvider;



  @JsonKey(
    
    name: r'provider_name',
    required: true,
    includeIfNull: false,
  )


  final String providerName;



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



  @JsonKey(
    
    name: r'is_online',
    required: false,
    includeIfNull: false,
  )


  final bool? isOnline;



  @JsonKey(
    
    name: r'last_reading_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastReadingAt;



  @JsonKey(
    
    name: r'config',
    required: true,
    includeIfNull: false,
  )


  final DeviceConfig config;



  @JsonKey(
    
    name: r'compliance_config',
    required: true,
    includeIfNull: false,
  )


  final ComplianceConfig complianceConfig;



  @JsonKey(
    
    name: r'variables',
    required: true,
    includeIfNull: false,
  )


  final String variables;



  @JsonKey(
    
    name: r'latest_readings',
    required: true,
    includeIfNull: false,
  )


  final String latestReadings;



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
    required: true,
    includeIfNull: false,
  )


  final int branch;



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
    bool operator ==(Object other) => identical(this, other) || other is TelemetryDeviceDetail &&
      other.id == id &&
      other.name == name &&
      other.deviceType == deviceType &&
      other.project == project &&
      other.projectName == projectName &&
      other.telemetryProvider == telemetryProvider &&
      other.providerName == providerName &&
      other.deviceToken == deviceToken &&
      other.readingFrequency == readingFrequency &&
      other.lat == lat &&
      other.lon == lon &&
      other.address == address &&
      other.isActive == isActive &&
      other.isOnline == isOnline &&
      other.lastReadingAt == lastReadingAt &&
      other.config == config &&
      other.complianceConfig == complianceConfig &&
      other.variables == variables &&
      other.latestReadings == latestReadings &&
      other.metadata == metadata &&
      other.product == product &&
      other.branch == branch &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        deviceType.hashCode +
        (project == null ? 0 : project.hashCode) +
        projectName.hashCode +
        (telemetryProvider == null ? 0 : telemetryProvider.hashCode) +
        providerName.hashCode +
        (deviceToken == null ? 0 : deviceToken.hashCode) +
        readingFrequency.hashCode +
        (lat == null ? 0 : lat.hashCode) +
        (lon == null ? 0 : lon.hashCode) +
        (address == null ? 0 : address.hashCode) +
        isActive.hashCode +
        isOnline.hashCode +
        (lastReadingAt == null ? 0 : lastReadingAt.hashCode) +
        config.hashCode +
        complianceConfig.hashCode +
        variables.hashCode +
        latestReadings.hashCode +
        (metadata == null ? 0 : metadata.hashCode) +
        (product == null ? 0 : product.hashCode) +
        branch.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TelemetryDeviceDetail.fromJson(Map<String, dynamic> json) => _$TelemetryDeviceDetailFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryDeviceDetailToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `WELL` - Pozo * `SURFACE` - Captacion superficial * `WEATHER` - Estacion meteorologica * `TANK` - Estanque / Tanque * `FLOW` - Medidor de flujo * `LEVEL` - Medidor de nivel * `CUSTOM` - Personalizado
enum TelemetryDeviceDetailDeviceTypeEnum {
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

const TelemetryDeviceDetailDeviceTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


