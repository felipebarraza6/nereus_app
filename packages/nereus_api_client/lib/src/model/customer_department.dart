//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_department.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomerDepartment {
  /// Returns a new [CustomerDepartment] instance.
  CustomerDepartment({

    required  this.id,

    required  this.name,

     this.description,

     this.departmentType,

    required  this.branch,

    required  this.branchName,

     this.isActive,

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



      /// Ej: Ventas, Compras, Finanzas, Operaciones
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Descripción opcional del departamento
  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// * `SALES` - Ventas * `PURCHASING` - Compras * `FINANCE` - Finanzas * `OPERATIONS` - Operaciones * `HR` - Recursos Humanos * `IT` - Tecnología * `MARKETING` - Marketing * `ADMINISTRATION` - Administración * `OTHER` - Otro
  @JsonKey(
    
    name: r'department_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: CustomerDepartmentDepartmentTypeEnum.unknownDefaultOpenApi,
  )


  final CustomerDepartmentDepartmentTypeEnum? departmentType;



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



      /// Indica si el departamento está disponible para usar
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



      /// Cantidad de contactos que usan este departamento a través de sus cargos.
  @JsonKey(
    
    name: r'usage_count',
    required: true,
    includeIfNull: false,
  )


  final String usageCount;



      /// Nombre para mostrar con tipo.
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
    bool operator ==(Object other) => identical(this, other) || other is CustomerDepartment &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.departmentType == departmentType &&
      other.branch == branch &&
      other.branchName == branchName &&
      other.isActive == isActive &&
      other.usageCount == usageCount &&
      other.displayName == displayName &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        departmentType.hashCode +
        branch.hashCode +
        branchName.hashCode +
        isActive.hashCode +
        usageCount.hashCode +
        displayName.hashCode +
        created.hashCode +
        modified.hashCode;

  factory CustomerDepartment.fromJson(Map<String, dynamic> json) => _$CustomerDepartmentFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDepartmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `SALES` - Ventas * `PURCHASING` - Compras * `FINANCE` - Finanzas * `OPERATIONS` - Operaciones * `HR` - Recursos Humanos * `IT` - Tecnología * `MARKETING` - Marketing * `ADMINISTRATION` - Administración * `OTHER` - Otro
enum CustomerDepartmentDepartmentTypeEnum {
@JsonValue(r'SALES')
SALES(r'SALES'),
@JsonValue(r'PURCHASING')
PURCHASING(r'PURCHASING'),
@JsonValue(r'FINANCE')
FINANCE(r'FINANCE'),
@JsonValue(r'OPERATIONS')
OPERATIONS(r'OPERATIONS'),
@JsonValue(r'HR')
HR(r'HR'),
@JsonValue(r'IT')
IT(r'IT'),
@JsonValue(r'MARKETING')
MARKETING(r'MARKETING'),
@JsonValue(r'ADMINISTRATION')
ADMINISTRATION(r'ADMINISTRATION'),
@JsonValue(r'OTHER')
OTHER(r'OTHER'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const CustomerDepartmentDepartmentTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


