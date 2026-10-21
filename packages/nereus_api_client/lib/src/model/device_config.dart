//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'device_config.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeviceConfig {
  /// Returns a new [DeviceConfig] instance.
  DeviceConfig({

    required  this.id,

    required  this.device,

     this.depth,

     this.pumpPosition,

     this.levelPosition,

     this.pumpDiameterInches,

     this.flowmeterDiameterInches,

     this.levelOffset,

     this.flowInitial,

     this.replicateOnMissing,

     this.maxDiffM3PerHour,

     this.maxFlowLs,

     this.maxTimeGapHours,

     this.reconnectionThresholdHours,

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
    
    name: r'device',
    required: true,
    includeIfNull: false,
  )


  final int device;



          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'depth',
    required: false,
    includeIfNull: false,
  )


  final double? depth;



          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'pump_position',
    required: false,
    includeIfNull: false,
  )


  final double? pumpPosition;



          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'level_position',
    required: false,
    includeIfNull: false,
  )


  final double? levelPosition;



          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'pump_diameter_inches',
    required: false,
    includeIfNull: false,
  )


  final double? pumpDiameterInches;



          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'flowmeter_diameter_inches',
    required: false,
    includeIfNull: false,
  )


  final double? flowmeterDiameterInches;



      /// Desfase a aplicar al nivel antes de calcular
          // minimum: -10000000
          // maximum: 10000000
  @JsonKey(
    
    name: r'level_offset',
    required: false,
    includeIfNull: false,
  )


  final double? levelOffset;



          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'flow_initial',
    required: false,
    includeIfNull: false,
  )


  final int? flowInitial;



      /// Si no llegan datos del sensor, replica el ultimo registro valido
  @JsonKey(
    
    name: r'replicate_on_missing',
    required: false,
    includeIfNull: false,
  )


  final bool? replicateOnMissing;



      /// Consumo maximo razonable por hora
          // minimum: -100000000
          // maximum: 100000000
  @JsonKey(
    
    name: r'max_diff_m3_per_hour',
    required: false,
    includeIfNull: false,
  )


  final double? maxDiffM3PerHour;



      /// Caudal maximo razonable
          // minimum: -100000000
          // maximum: 100000000
  @JsonKey(
    
    name: r'max_flow_ls',
    required: false,
    includeIfNull: false,
  )


  final double? maxFlowLs;



      /// Si hay mas horas sin datos, no se calcula caudal promedio
          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'max_time_gap_hours',
    required: false,
    includeIfNull: false,
  )


  final double? maxTimeGapHours;



      /// Si pasan mas horas entre registros, se asume reconexion
          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'reconnection_threshold_hours',
    required: false,
    includeIfNull: false,
  )


  final double? reconnectionThresholdHours;



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
    bool operator ==(Object other) => identical(this, other) || other is DeviceConfig &&
      other.id == id &&
      other.device == device &&
      other.depth == depth &&
      other.pumpPosition == pumpPosition &&
      other.levelPosition == levelPosition &&
      other.pumpDiameterInches == pumpDiameterInches &&
      other.flowmeterDiameterInches == flowmeterDiameterInches &&
      other.levelOffset == levelOffset &&
      other.flowInitial == flowInitial &&
      other.replicateOnMissing == replicateOnMissing &&
      other.maxDiffM3PerHour == maxDiffM3PerHour &&
      other.maxFlowLs == maxFlowLs &&
      other.maxTimeGapHours == maxTimeGapHours &&
      other.reconnectionThresholdHours == reconnectionThresholdHours &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        device.hashCode +
        depth.hashCode +
        pumpPosition.hashCode +
        levelPosition.hashCode +
        pumpDiameterInches.hashCode +
        flowmeterDiameterInches.hashCode +
        levelOffset.hashCode +
        (flowInitial == null ? 0 : flowInitial.hashCode) +
        replicateOnMissing.hashCode +
        maxDiffM3PerHour.hashCode +
        maxFlowLs.hashCode +
        maxTimeGapHours.hashCode +
        reconnectionThresholdHours.hashCode +
        created.hashCode +
        modified.hashCode;

  factory DeviceConfig.fromJson(Map<String, dynamic> json) => _$DeviceConfigFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

