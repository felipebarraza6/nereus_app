//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserModel {
  /// Returns a new [UserModel] instance.
  UserModel({

    required  this.id,

    required  this.username,

     this.firstName,

     this.lastName,

    required  this.email,

    required  this.isActive,

    required  this.isStaff,

    required  this.isSuperuser,

    required  this.dateJoined,

    required  this.lastLogin,

    required  this.dni,

    required  this.typeUser,

     this.assignedProduct,

    required  this.isVerified,

     this.isMultiBranch,

    required  this.created,

    required  this.modified,
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



  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



      /// Indica si el usuario debe ser tratado como activo. Desmarque esta opción en lugar de borrar la cuenta.
  @JsonKey(
    
    name: r'is_active',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;



      /// Indica si el usuario puede entrar en este sitio de administración.
  @JsonKey(
    
    name: r'is_staff',
    required: true,
    includeIfNull: false,
  )


  final bool isStaff;



      /// Indica que este usuario tiene todos los permisos sin asignárselos explícitamente.
  @JsonKey(
    
    name: r'is_superuser',
    required: true,
    includeIfNull: false,
  )


  final bool isSuperuser;



  @JsonKey(
    
    name: r'date_joined',
    required: true,
    includeIfNull: false,
  )


  final DateTime dateJoined;



  @JsonKey(
    
    name: r'last_login',
    required: true,
    includeIfNull: true,
  )


  final DateTime? lastLogin;



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
    required: true,
    includeIfNull: false,
  unknownEnumValue: UserModelTypeUserEnum.unknownDefaultOpenApi,
  )


  final UserModelTypeUserEnum typeUser;



      /// Producto por defecto para usuarios medidores
  @JsonKey(
    
    name: r'assigned_product',
    required: false,
    includeIfNull: false,
  )


  final int? assignedProduct;



      /// Se establece en verdadero cuando el usuario ha verificado su dirección de correo electrónico
  @JsonKey(
    
    name: r'is_verified',
    required: true,
    includeIfNull: false,
  )


  final bool isVerified;



      /// Indica si el usuario puede acceder y cambiar entre múltiples sucursales desde el frontend.
  @JsonKey(
    
    name: r'is_multi_branch',
    required: false,
    includeIfNull: false,
  )


  final bool? isMultiBranch;



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
    bool operator ==(Object other) => identical(this, other) || other is UserModel &&
      other.id == id &&
      other.username == username &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.email == email &&
      other.isActive == isActive &&
      other.isStaff == isStaff &&
      other.isSuperuser == isSuperuser &&
      other.dateJoined == dateJoined &&
      other.lastLogin == lastLogin &&
      other.dni == dni &&
      other.typeUser == typeUser &&
      other.assignedProduct == assignedProduct &&
      other.isVerified == isVerified &&
      other.isMultiBranch == isMultiBranch &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        username.hashCode +
        firstName.hashCode +
        lastName.hashCode +
        email.hashCode +
        isActive.hashCode +
        isStaff.hashCode +
        isSuperuser.hashCode +
        dateJoined.hashCode +
        (lastLogin == null ? 0 : lastLogin.hashCode) +
        dni.hashCode +
        typeUser.hashCode +
        (assignedProduct == null ? 0 : assignedProduct.hashCode) +
        isVerified.hashCode +
        isMultiBranch.hashCode +
        created.hashCode +
        modified.hashCode;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Tipo de usuario a nivel de sistema. Los roles específicos se manejan en BranchUser.  * `ADM` - Administrador del Sistema * `CL` - Cliente
enum UserModelTypeUserEnum {
@JsonValue(r'ADM')
ADM(r'ADM'),
@JsonValue(r'CL')
CL(r'CL'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const UserModelTypeUserEnum(this.value);

final String value;

@override
String toString() => value;
}


