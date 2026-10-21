//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_user_profile_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedUserProfileRequest {
  /// Returns a new [PatchedUserProfileRequest] instance.
  PatchedUserProfileRequest({

     this.firstName,

     this.lastName,

     this.email,

     this.username,

     this.dni,
  });

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



      /// Requerido. 150 carácteres como máximo. Únicamente letras, dígitos y @/./+/-/_ 
  @JsonKey(
    
    name: r'username',
    required: false,
    includeIfNull: false,
  )


  final String? username;



      /// Formato: 12.345.678-9
  @JsonKey(
    
    name: r'dni',
    required: false,
    includeIfNull: false,
  )


  final String? dni;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedUserProfileRequest &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.email == email &&
      other.username == username &&
      other.dni == dni;

    @override
    int get hashCode =>
        firstName.hashCode +
        lastName.hashCode +
        email.hashCode +
        username.hashCode +
        dni.hashCode;

  factory PatchedUserProfileRequest.fromJson(Map<String, dynamic> json) => _$PatchedUserProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedUserProfileRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

