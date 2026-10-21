//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserModelRequest {
  /// Returns a new [UserModelRequest] instance.
  UserModelRequest({

    required  this.username,

     this.firstName,

     this.lastName,

    required  this.email,

     this.password,

    required  this.dni,

     this.assignedProduct,

     this.isMultiBranch,
  });

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



  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false,
  )


  final String? password;



      /// Formato: 12.345.678-9
  @JsonKey(
    
    name: r'dni',
    required: true,
    includeIfNull: false,
  )


  final String dni;



      /// Producto por defecto para usuarios medidores
  @JsonKey(
    
    name: r'assigned_product',
    required: false,
    includeIfNull: false,
  )


  final int? assignedProduct;



      /// Indica si el usuario puede acceder y cambiar entre múltiples sucursales desde el frontend.
  @JsonKey(
    
    name: r'is_multi_branch',
    required: false,
    includeIfNull: false,
  )


  final bool? isMultiBranch;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserModelRequest &&
      other.username == username &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.email == email &&
      other.password == password &&
      other.dni == dni &&
      other.assignedProduct == assignedProduct &&
      other.isMultiBranch == isMultiBranch;

    @override
    int get hashCode =>
        username.hashCode +
        firstName.hashCode +
        lastName.hashCode +
        email.hashCode +
        password.hashCode +
        dni.hashCode +
        (assignedProduct == null ? 0 : assignedProduct.hashCode) +
        isMultiBranch.hashCode;

  factory UserModelRequest.fromJson(Map<String, dynamic> json) => _$UserModelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

