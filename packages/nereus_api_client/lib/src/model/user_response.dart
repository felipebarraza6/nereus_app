//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserResponse {
  /// Returns a new [UserResponse] instance.
  UserResponse({

    required  this.id,

    required  this.username,

    required  this.email,

     this.firstName,

     this.lastName,

    required  this.dni,

     this.typeUser,

     this.isSuperuser,

     this.isStaff,

     this.isActive,

     this.isMultiBranch,

     this.lastLogin,

    required  this.created,

     this.assignedProduct,

    required  this.assignedProductDetails,

    required  this.branchAccess,

    required  this.branchAssignments,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



      /// Requerido. 150 carácteres como máximo. Únicamente letras, dígitos y @/./+/-/_ 
  @JsonKey(
    
    name: r'username',
    required: true,
    includeIfNull: false,
  )


  final String username;



  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



  @JsonKey(
    
    name: r'first_name',
    required: false,
    includeIfNull: false,
  )


  final String? firstName;



  @JsonKey(
    
    name: r'last_name',
    required: false,
    includeIfNull: false,
  )


  final String? lastName;



      /// Formato: 12.345.678-9
  @JsonKey(
    
    name: r'dni',
    required: true,
    includeIfNull: false,
  )


  final String dni;



      /// Tipo de usuario a nivel de sistema. Los roles específicos se manejan en BranchUser.  * `ADM` - Administrador del Sistema * `CL` - Cliente
  @JsonKey(
    
    name: r'type_user',
    required: false,
    includeIfNull: false,
  unknownEnumValue: UserResponseTypeUserEnum.unknownDefaultOpenApi,
  )


  final UserResponseTypeUserEnum? typeUser;



      /// Indica que este usuario tiene todos los permisos sin asignárselos explícitamente.
  @JsonKey(
    
    name: r'is_superuser',
    required: false,
    includeIfNull: false,
  )


  final bool? isSuperuser;



      /// Indica si el usuario puede entrar en este sitio de administración.
  @JsonKey(
    
    name: r'is_staff',
    required: false,
    includeIfNull: false,
  )


  final bool? isStaff;



      /// Indica si el usuario debe ser tratado como activo. Desmarque esta opción en lugar de borrar la cuenta.
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



      /// Indica si el usuario puede acceder y cambiar entre múltiples sucursales desde el frontend.
  @JsonKey(
    
    name: r'is_multi_branch',
    required: false,
    includeIfNull: false,
  )


  final bool? isMultiBranch;



  @JsonKey(
    
    name: r'last_login',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastLogin;



      /// Fecha de creacion.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final DateTime created;



      /// Producto por defecto para usuarios medidores
  @JsonKey(
    
    name: r'assigned_product',
    required: false,
    includeIfNull: false,
  )


  final int? assignedProduct;



      /// Obtener detalles completos del producto asignado.
  @JsonKey(
    
    name: r'assigned_product_details',
    required: true,
    includeIfNull: true,
  )


  final Map<String, Object>? assignedProductDetails;



      /// Obtener información de acceso a sucursales del usuario.
  @JsonKey(
    
    name: r'branch_access',
    required: true,
    includeIfNull: true,
  )


  final Map<String, Object>? branchAccess;



      /// Obtener TODAS las asignaciones de sucursales del usuario.
  @JsonKey(
    
    name: r'branch_assignments',
    required: true,
    includeIfNull: false,
  )


  final List<Object> branchAssignments;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserResponse &&
      other.id == id &&
      other.username == username &&
      other.email == email &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.dni == dni &&
      other.typeUser == typeUser &&
      other.isSuperuser == isSuperuser &&
      other.isStaff == isStaff &&
      other.isActive == isActive &&
      other.isMultiBranch == isMultiBranch &&
      other.lastLogin == lastLogin &&
      other.created == created &&
      other.assignedProduct == assignedProduct &&
      other.assignedProductDetails == assignedProductDetails &&
      other.branchAccess == branchAccess &&
      other.branchAssignments == branchAssignments;

    @override
    int get hashCode =>
        id.hashCode +
        username.hashCode +
        email.hashCode +
        firstName.hashCode +
        lastName.hashCode +
        dni.hashCode +
        typeUser.hashCode +
        isSuperuser.hashCode +
        isStaff.hashCode +
        isActive.hashCode +
        isMultiBranch.hashCode +
        (lastLogin == null ? 0 : lastLogin.hashCode) +
        created.hashCode +
        (assignedProduct == null ? 0 : assignedProduct.hashCode) +
        (assignedProductDetails == null ? 0 : assignedProductDetails.hashCode) +
        (branchAccess == null ? 0 : branchAccess.hashCode) +
        branchAssignments.hashCode;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Tipo de usuario a nivel de sistema. Los roles específicos se manejan en BranchUser.  * `ADM` - Administrador del Sistema * `CL` - Cliente
enum UserResponseTypeUserEnum {
@JsonValue(r'ADM')
ADM(r'ADM'),
@JsonValue(r'CL')
CL(r'CL'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const UserResponseTypeUserEnum(this.value);

final String value;

@override
String toString() => value;
}


