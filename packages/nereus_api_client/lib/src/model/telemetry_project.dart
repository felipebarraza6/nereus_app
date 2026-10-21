//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_project.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryProject {
  /// Returns a new [TelemetryProject] instance.
  TelemetryProject({

    required  this.id,

    required  this.name,

     this.codeInternal,

     this.description,

    required  this.branch,

     this.isActive,

    required  this.deviceCount,

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



  @JsonKey(
    
    name: r'device_count',
    required: true,
    includeIfNull: false,
  )


  final String deviceCount;



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
    bool operator ==(Object other) => identical(this, other) || other is TelemetryProject &&
      other.id == id &&
      other.name == name &&
      other.codeInternal == codeInternal &&
      other.description == description &&
      other.branch == branch &&
      other.isActive == isActive &&
      other.deviceCount == deviceCount &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        (codeInternal == null ? 0 : codeInternal.hashCode) +
        (description == null ? 0 : description.hashCode) +
        branch.hashCode +
        isActive.hashCode +
        deviceCount.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TelemetryProject.fromJson(Map<String, dynamic> json) => _$TelemetryProjectFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryProjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

