//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_user_model_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedUserModelRequest {
  /// Returns a new [PatchedUserModelRequest] instance.
  PatchedUserModelRequest({

     this.username,

     this.firstName,

     this.lastName,

     this.email,

     this.password,

     this.dni,

     this.assignedProduct,

     this.isMultiBranch,
  });

      /// Requerido. 150 carácteres como máximo. Únicamente letras, dígitos y @/./+/-/_ 
  @JsonKey(
    
    name: r'username',
    required: false,
    includeIfNull: false,
  )


  final String? username;



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
    required: false,
    includeIfNull: false,
  )


  final String? email;



  @JsonKey(
    
    name: r'password',
    required: false,
    includeIfNull: false,
  )


  final String? password;



      /// Formato: 12.345.678-9
  @JsonKey(
    
    name: r'dni',
    required: false,
    includeIfNull: false,
  )


  final String? dni;



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
    bool operator ==(Object other) => identical(this, other) || other is PatchedUserModelRequest &&
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

  factory PatchedUserModelRequest.fromJson(Map<String, dynamic> json) => _$PatchedUserModelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedUserModelRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

