//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_device_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryDeviceList {
  /// Returns a new [TelemetryDeviceList] instance.
  TelemetryDeviceList({

    required  this.id,

    required  this.name,

     this.deviceType,

     this.project,

    required  this.projectName,

    required  this.providerName,

     this.isActive,

     this.isOnline,

     this.lastReadingAt,

    required  this.minutesOffline,

    required  this.variablesCount,

     this.lat,

     this.lon,

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
  unknownEnumValue: TelemetryDeviceListDeviceTypeEnum.unknownDefaultOpenApi,
  )


  final TelemetryDeviceListDeviceTypeEnum? deviceType;



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
    
    name: r'provider_name',
    required: true,
    includeIfNull: false,
  )


  final String providerName;



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
    
    name: r'minutes_offline',
    required: true,
    includeIfNull: false,
  )


  final String minutesOffline;



  @JsonKey(
    
    name: r'variables_count',
    required: true,
    includeIfNull: false,
  )


  final String variablesCount;



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
    bool operator ==(Object other) => identical(this, other) || other is TelemetryDeviceList &&
      other.id == id &&
      other.name == name &&
      other.deviceType == deviceType &&
      other.project == project &&
      other.projectName == projectName &&
      other.providerName == providerName &&
      other.isActive == isActive &&
      other.isOnline == isOnline &&
      other.lastReadingAt == lastReadingAt &&
      other.minutesOffline == minutesOffline &&
      other.variablesCount == variablesCount &&
      other.lat == lat &&
      other.lon == lon &&
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
        providerName.hashCode +
        isActive.hashCode +
        isOnline.hashCode +
        (lastReadingAt == null ? 0 : lastReadingAt.hashCode) +
        minutesOffline.hashCode +
        variablesCount.hashCode +
        (lat == null ? 0 : lat.hashCode) +
        (lon == null ? 0 : lon.hashCode) +
        branch.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TelemetryDeviceList.fromJson(Map<String, dynamic> json) => _$TelemetryDeviceListFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryDeviceListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `WELL` - Pozo * `SURFACE` - Captacion superficial * `WEATHER` - Estacion meteorologica * `TANK` - Estanque / Tanque * `FLOW` - Medidor de flujo * `LEVEL` - Medidor de nivel * `CUSTOM` - Personalizado
enum TelemetryDeviceListDeviceTypeEnum {
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

const TelemetryDeviceListDeviceTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


