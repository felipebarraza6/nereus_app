//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sla_policy.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SLAPolicy {
  /// Returns a new [SLAPolicy] instance.
  SLAPolicy({

    required  this.id,

     this.branch,

    required  this.name,

     this.description,

     this.responseTimeLow,

     this.responseTimeMedium,

     this.responseTimeHigh,

     this.responseTimeCritical,

     this.resolutionTimeLow,

     this.resolutionTimeMedium,

     this.resolutionTimeHigh,

     this.resolutionTimeCritical,

     this.escalationTime,

     this.isActive,

    required  this.created,

    required  this.modified,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// UUID de la sucursal. Solo editable por super administradores.
  @JsonKey(
    
    name: r'branch',
    required: false,
    includeIfNull: false,
  )


  final int? branch;



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



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'response_time_low',
    required: false,
    includeIfNull: false,
  )


  final int? responseTimeLow;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'response_time_medium',
    required: false,
    includeIfNull: false,
  )


  final int? responseTimeMedium;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'response_time_high',
    required: false,
    includeIfNull: false,
  )


  final int? responseTimeHigh;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'response_time_critical',
    required: false,
    includeIfNull: false,
  )


  final int? responseTimeCritical;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'resolution_time_low',
    required: false,
    includeIfNull: false,
  )


  final int? resolutionTimeLow;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'resolution_time_medium',
    required: false,
    includeIfNull: false,
  )


  final int? resolutionTimeMedium;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'resolution_time_high',
    required: false,
    includeIfNull: false,
  )


  final int? resolutionTimeHigh;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'resolution_time_critical',
    required: false,
    includeIfNull: false,
  )


  final int? resolutionTimeCritical;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'escalation_time',
    required: false,
    includeIfNull: false,
  )


  final int? escalationTime;



      /// Indica si el registro está activo. Use esto en lugar de eliminar.
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



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
    bool operator ==(Object other) => identical(this, other) || other is SLAPolicy &&
      other.id == id &&
      other.branch == branch &&
      other.name == name &&
      other.description == description &&
      other.responseTimeLow == responseTimeLow &&
      other.responseTimeMedium == responseTimeMedium &&
      other.responseTimeHigh == responseTimeHigh &&
      other.responseTimeCritical == responseTimeCritical &&
      other.resolutionTimeLow == resolutionTimeLow &&
      other.resolutionTimeMedium == resolutionTimeMedium &&
      other.resolutionTimeHigh == resolutionTimeHigh &&
      other.resolutionTimeCritical == resolutionTimeCritical &&
      other.escalationTime == escalationTime &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        (branch == null ? 0 : branch.hashCode) +
        name.hashCode +
        description.hashCode +
        responseTimeLow.hashCode +
        responseTimeMedium.hashCode +
        responseTimeHigh.hashCode +
        responseTimeCritical.hashCode +
        resolutionTimeLow.hashCode +
        resolutionTimeMedium.hashCode +
        resolutionTimeHigh.hashCode +
        resolutionTimeCritical.hashCode +
        escalationTime.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory SLAPolicy.fromJson(Map<String, dynamic> json) => _$SLAPolicyFromJson(json);

  Map<String, dynamic> toJson() => _$SLAPolicyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

