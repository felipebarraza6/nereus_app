//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_department_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomerDepartmentList {
  /// Returns a new [CustomerDepartmentList] instance.
  CustomerDepartmentList({

    required  this.id,

    required  this.name,

     this.departmentType,

    required  this.branchName,

     this.isActive,

    required  this.usageCount,
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



      /// * `SALES` - Ventas * `PURCHASING` - Compras * `FINANCE` - Finanzas * `OPERATIONS` - Operaciones * `HR` - Recursos Humanos * `IT` - Tecnología * `MARKETING` - Marketing * `ADMINISTRATION` - Administración * `OTHER` - Otro
  @JsonKey(
    
    name: r'department_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: CustomerDepartmentListDepartmentTypeEnum.unknownDefaultOpenApi,
  )


  final CustomerDepartmentListDepartmentTypeEnum? departmentType;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomerDepartmentList &&
      other.id == id &&
      other.name == name &&
      other.departmentType == departmentType &&
      other.branchName == branchName &&
      other.isActive == isActive &&
      other.usageCount == usageCount;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        departmentType.hashCode +
        branchName.hashCode +
        isActive.hashCode +
        usageCount.hashCode;

  factory CustomerDepartmentList.fromJson(Map<String, dynamic> json) => _$CustomerDepartmentListFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDepartmentListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `SALES` - Ventas * `PURCHASING` - Compras * `FINANCE` - Finanzas * `OPERATIONS` - Operaciones * `HR` - Recursos Humanos * `IT` - Tecnología * `MARKETING` - Marketing * `ADMINISTRATION` - Administración * `OTHER` - Otro
enum CustomerDepartmentListDepartmentTypeEnum {
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

const CustomerDepartmentListDepartmentTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


