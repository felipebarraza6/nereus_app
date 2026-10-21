//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_title_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class JobTitleList {
  /// Returns a new [JobTitleList] instance.
  JobTitleList({

    required  this.id,

    required  this.name,

     this.level,

     this.department,

    required  this.departmentName,

    required  this.branchName,

     this.isActive,

     this.isForSuppliers,

    required  this.usageCount,
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



      /// * `EXECUTIVE` - Ejecutivo * `MANAGER` - Gerencial * `SUPERVISOR` - Supervisor * `ANALYST` - Analista * `ASSISTANT` - Asistente * `OPERATOR` - Operador * `OTHER` - Otro
  @JsonKey(
    
    name: r'level',
    required: false,
    includeIfNull: false,
  unknownEnumValue: JobTitleListLevelEnum.unknownDefaultOpenApi,
  )


  final JobTitleListLevelEnum? level;



      /// Departamento al que pertenece este cargo
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





    @override
    bool operator ==(Object other) => identical(this, other) || other is JobTitleList &&
      other.id == id &&
      other.name == name &&
      other.level == level &&
      other.department == department &&
      other.departmentName == departmentName &&
      other.branchName == branchName &&
      other.isActive == isActive &&
      other.isForSuppliers == isForSuppliers &&
      other.usageCount == usageCount;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        level.hashCode +
        (department == null ? 0 : department.hashCode) +
        departmentName.hashCode +
        branchName.hashCode +
        isActive.hashCode +
        isForSuppliers.hashCode +
        usageCount.hashCode;

  factory JobTitleList.fromJson(Map<String, dynamic> json) => _$JobTitleListFromJson(json);

  Map<String, dynamic> toJson() => _$JobTitleListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `EXECUTIVE` - Ejecutivo * `MANAGER` - Gerencial * `SUPERVISOR` - Supervisor * `ANALYST` - Analista * `ASSISTANT` - Asistente * `OPERATOR` - Operador * `OTHER` - Otro
enum JobTitleListLevelEnum {
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

const JobTitleListLevelEnum(this.value);

final String value;

@override
String toString() => value;
}


