//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_sla_policy_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedSLAPolicyRequest {
  /// Returns a new [PatchedSLAPolicyRequest] instance.
  PatchedSLAPolicyRequest({

     this.branch,

     this.name,

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
  });

      /// UUID de la sucursal. Solo editable por super administradores.
  @JsonKey(
    
    name: r'branch',
    required: false,
    includeIfNull: false,
  )


  final int? branch;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedSLAPolicyRequest &&
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
      other.isActive == isActive;

    @override
    int get hashCode =>
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
        isActive.hashCode;

  factory PatchedSLAPolicyRequest.fromJson(Map<String, dynamic> json) => _$PatchedSLAPolicyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedSLAPolicyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

