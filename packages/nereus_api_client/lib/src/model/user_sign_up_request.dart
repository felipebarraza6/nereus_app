//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_sign_up_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserSignUpRequest {
  /// Returns a new [UserSignUpRequest] instance.
  UserSignUpRequest({

    required  this.email,

    required  this.firstName,

     this.secondName,

    required  this.lastName,

     this.secondLastName,

     this.username,

    required  this.dni,

    required  this.typeUser,

    required  this.password,

    required  this.passwordConfirmation,

    required  this.branchId,

     this.role = 'VIEWER',

     this.isActive = true,

     this.profileData,
  });

  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



  @JsonKey(
    
    name: r'first_name',
    required: true,
    includeIfNull: false,
  )


  final String firstName;



  @JsonKey(
    
    name: r'second_name',
    required: false,
    includeIfNull: false,
  )


  final String? secondName;



  @JsonKey(
    
    name: r'last_name',
    required: true,
    includeIfNull: false,
  )


  final String lastName;



  @JsonKey(
    
    name: r'second_last_name',
    required: false,
    includeIfNull: false,
  )


  final String? secondLastName;



  @JsonKey(
    
    name: r'username',
    required: false,
    includeIfNull: false,
  )


  final String? username;



  @JsonKey(
    
    name: r'dni',
    required: true,
    includeIfNull: false,
  )


  final String dni;



  @JsonKey(
    
    name: r'type_user',
    required: true,
    includeIfNull: false,
  )


  final String typeUser;



  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false,
  )


  final String password;



  @JsonKey(
    
    name: r'password_confirmation',
    required: true,
    includeIfNull: false,
  )


  final String passwordConfirmation;



  @JsonKey(
    
    name: r'branch_id',
    required: true,
    includeIfNull: false,
  )


  final int branchId;



      /// * `SUPERUSER` - Super Administrador * `ADM` - Administrador * `CL` - Cliente * `OWNER` - Propietario * `ADMIN_LOCAL` - Administrador Local * `MANAGER` - Gerente * `EMPLOYEE` - Empleado * `CAJERO` - Cajero * `METER` - Medidor * `RECEIVER` - Recepcionista * `DRIVER` - Conductor * `WAITER` - Mesero * `OPERATOR` - Operador * `VIEWER` - Solo Lectura * `NUTRITION_LABELER` - Etiquetador Nutricional * `WASTE_MANAGER` - Gestor de Residuos * `APR` - APR - Gestión Hídrica * `PAYROLL_ADMIN` - Administrativo de Nómina * `COACH` - Coach * `FORJA_ADMIN` - Admin Forja * `FORJA_ALUMNO` - Alumno Forja
  @JsonKey(
    defaultValue: 'VIEWER',
    name: r'role',
    required: false,
    includeIfNull: false,
  )


  final String? role;



  @JsonKey(
    defaultValue: true,
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'profile_data',
    required: false,
    includeIfNull: false,
  )


  final Map<String, Object>? profileData;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserSignUpRequest &&
      other.email == email &&
      other.firstName == firstName &&
      other.secondName == secondName &&
      other.lastName == lastName &&
      other.secondLastName == secondLastName &&
      other.username == username &&
      other.dni == dni &&
      other.typeUser == typeUser &&
      other.password == password &&
      other.passwordConfirmation == passwordConfirmation &&
      other.branchId == branchId &&
      other.role == role &&
      other.isActive == isActive &&
      other.profileData == profileData;

    @override
    int get hashCode =>
        email.hashCode +
        firstName.hashCode +
        secondName.hashCode +
        lastName.hashCode +
        secondLastName.hashCode +
        username.hashCode +
        dni.hashCode +
        typeUser.hashCode +
        password.hashCode +
        passwordConfirmation.hashCode +
        branchId.hashCode +
        role.hashCode +
        isActive.hashCode +
        profileData.hashCode;

  factory UserSignUpRequest.fromJson(Map<String, dynamic> json) => _$UserSignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserSignUpRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

