//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_telemetry_project_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTelemetryProjectRequest {
  /// Returns a new [PatchedTelemetryProjectRequest] instance.
  PatchedTelemetryProjectRequest({

     this.name,

     this.codeInternal,

     this.description,

     this.branch,

     this.isActive,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'code_internal',
    required: false,
    includeIfNull: false,
  )


  final String? codeInternal;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// Sucursal a la que pertenece este registro
  @JsonKey(
    
    name: r'branch',
    required: false,
    includeIfNull: false,
  )


  final int? branch;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedTelemetryProjectRequest &&
      other.name == name &&
      other.codeInternal == codeInternal &&
      other.description == description &&
      other.branch == branch &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        name.hashCode +
        (codeInternal == null ? 0 : codeInternal.hashCode) +
        (description == null ? 0 : description.hashCode) +
        branch.hashCode +
        isActive.hashCode;

  factory PatchedTelemetryProjectRequest.fromJson(Map<String, dynamic> json) => _$PatchedTelemetryProjectRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTelemetryProjectRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

