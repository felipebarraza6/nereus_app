//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'public_customer_sign_up_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PublicCustomerSignUpRequest {
  /// Returns a new [PublicCustomerSignUpRequest] instance.
  PublicCustomerSignUpRequest({

    required  this.email,

    required  this.firstName,

     this.secondName,

    required  this.lastName,

     this.secondLastName,

     this.username,

    required  this.dni,

    required  this.password,

    required  this.passwordConfirmation,

    required  this.branchId,

     this.phoneNumber,

     this.address,
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



  @JsonKey(
    
    name: r'phone_number',
    required: false,
    includeIfNull: false,
  )


  final String? phoneNumber;



  @JsonKey(
    
    name: r'address',
    required: false,
    includeIfNull: false,
  )


  final String? address;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PublicCustomerSignUpRequest &&
      other.email == email &&
      other.firstName == firstName &&
      other.secondName == secondName &&
      other.lastName == lastName &&
      other.secondLastName == secondLastName &&
      other.username == username &&
      other.dni == dni &&
      other.password == password &&
      other.passwordConfirmation == passwordConfirmation &&
      other.branchId == branchId &&
      other.phoneNumber == phoneNumber &&
      other.address == address;

    @override
    int get hashCode =>
        email.hashCode +
        firstName.hashCode +
        secondName.hashCode +
        lastName.hashCode +
        secondLastName.hashCode +
        username.hashCode +
        dni.hashCode +
        password.hashCode +
        passwordConfirmation.hashCode +
        branchId.hashCode +
        (phoneNumber == null ? 0 : phoneNumber.hashCode) +
        (address == null ? 0 : address.hashCode);

  factory PublicCustomerSignUpRequest.fromJson(Map<String, dynamic> json) => _$PublicCustomerSignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PublicCustomerSignUpRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

