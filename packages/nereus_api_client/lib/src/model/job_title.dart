//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_title.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class JobTitle {
  /// Returns a new [JobTitle] instance.
  JobTitle({

    required  this.id,

    required  this.name,

     this.description,

     this.level,

     this.department,

    required  this.departmentName,

    required  this.departmentType,

    required  this.branch,

    required  this.branchName,

     this.isActive,

     this.isForSuppliers,

    required  this.usageCount,

    required  this.displayName,

    required  this.created,

    required  this.modified,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



      /// Ej: Gerente General, Jefe de Compras, Analista
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Descripción opcional del cargo
  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// * `EXECUTIVE` - Ejecutivo * `MANAGER` - Gerencial * `SUPERVISOR` - Supervisor * `ANALYST` - Analista * `ASSISTANT` - Asistente * `OPERATOR` - Operador * `OTHER` - Otro
  @JsonKey(
    
    name: r'level',
    required: false,
    includeIfNull: false,
  unknownEnumValue: JobTitleLevelEnum.unknownDefaultOpenApi,
  )


  final JobTitleLevelEnum? level;



  @JsonKey(
    
    name: r'department',
    required: false,
    includeIfNull: false,
  )


  final int? department;



      /// Obtener nombre del departamento o None si no existe.
  @JsonKey(
    
    name: r'department_name',
    required: true,
    includeIfNull: false,
  )


  final String departmentName;



      /// Obtener tipo del departamento o None si no existe.
  @JsonKey(
    
    name: r'department_type',
    required: true,
    includeIfNull: false,
  )


  final String departmentType;



  @JsonKey(
    
    name: r'branch',
    required: true,
    includeIfNull: false,
  )


  final int branch;



  @JsonKey(
    
    name: r'branch_name',
    required: true,
    includeIfNull: false,
  )


  final String branchName;



      /// Indica si el cargo está disponible para usar
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



      /// Si es True, este cargo solo puede usarse en contactos de proveedores. Si es False, solo en contactos de clientes.
  @JsonKey(
    
    name: r'is_for_suppliers',
    required: false,
    includeIfNull: false,
  )


  final bool? isForSuppliers;



      /// Cantidad de contactos que usan este cargo.
  @JsonKey(
    
    name: r'usage_count',
    required: true,
    includeIfNull: false,
  )


  final String usageCount;



      /// Nombre para mostrar con nivel y departamento.
  @JsonKey(
    
    name: r'display_name',
    required: true,
    includeIfNull: false,
  )


  final String displayName;



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
    bool operator ==(Object other) => identical(this, other) || other is JobTitle &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.level == level &&
      other.department == department &&
      other.departmentName == departmentName &&
      other.departmentType == departmentType &&
      other.branch == branch &&
      other.branchName == branchName &&
      other.isActive == isActive &&
      other.isForSuppliers == isForSuppliers &&
      other.usageCount == usageCount &&
      other.displayName == displayName &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        level.hashCode +
        (department == null ? 0 : department.hashCode) +
        departmentName.hashCode +
        departmentType.hashCode +
        branch.hashCode +
        branchName.hashCode +
        isActive.hashCode +
        isForSuppliers.hashCode +
        usageCount.hashCode +
        displayName.hashCode +
        created.hashCode +
        modified.hashCode;

  factory JobTitle.fromJson(Map<String, dynamic> json) => _$JobTitleFromJson(json);

  Map<String, dynamic> toJson() => _$JobTitleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `EXECUTIVE` - Ejecutivo * `MANAGER` - Gerencial * `SUPERVISOR` - Supervisor * `ANALYST` - Analista * `ASSISTANT` - Asistente * `OPERATOR` - Operador * `OTHER` - Otro
enum JobTitleLevelEnum {
@JsonValue(r'EXECUTIVE')
EXECUTIVE(r'EXECUTIVE'),
@JsonValue(r'MANAGER')
MANAGER(r'MANAGER'),
@JsonValue(r'SUPERVISOR')
SUPERVISOR(r'SUPERVISOR'),
@JsonValue(r'ANALYST')
ANALYST(r'ANALYST'),
@JsonValue(r'ASSISTANT')
ASSISTANT(r'ASSISTANT'),
@JsonValue(r'OPERATOR')
OPERATOR(r'OPERATOR'),
@JsonValue(r'OTHER')
OTHER(r'OTHER'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const JobTitleLevelEnum(this.value);

final String value;

@override
String toString() => value;
}


