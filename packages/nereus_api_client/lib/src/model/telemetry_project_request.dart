//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_project_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryProjectRequest {
  /// Returns a new [TelemetryProjectRequest] instance.
  TelemetryProjectRequest({

    required  this.name,

     this.codeInternal,

     this.description,

    required  this.branch,

     this.isActive,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



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
    required: true,
    includeIfNull: false,
  )


  final int branch;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TelemetryProjectRequest &&
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

  factory TelemetryProjectRequest.fromJson(Map<String, dynamic> json) => _$TelemetryProjectRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryProjectRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

