//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_department_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomerDepartmentRequest {
  /// Returns a new [CustomerDepartmentRequest] instance.
  CustomerDepartmentRequest({

    required  this.name,

     this.description,

     this.departmentType,

     this.isActive,
  });

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
  unknownEnumValue: CustomerDepartmentRequestDepartmentTypeEnum.unknownDefaultOpenApi,
  )


  final CustomerDepartmentRequestDepartmentTypeEnum? departmentType;



      /// Indica si el departamento está disponible para usar
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomerDepartmentRequest &&
      other.name == name &&
      other.description == description &&
      other.departmentType == departmentType &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        departmentType.hashCode +
        isActive.hashCode;

  factory CustomerDepartmentRequest.fromJson(Map<String, dynamic> json) => _$CustomerDepartmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDepartmentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `SALES` - Ventas * `PURCHASING` - Compras * `FINANCE` - Finanzas * `OPERATIONS` - Operaciones * `HR` - Recursos Humanos * `IT` - Tecnología * `MARKETING` - Marketing * `ADMINISTRATION` - Administración * `OTHER` - Otro
enum CustomerDepartmentRequestDepartmentTypeEnum {
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

const CustomerDepartmentRequestDepartmentTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


