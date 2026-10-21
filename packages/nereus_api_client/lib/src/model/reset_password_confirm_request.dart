//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reset_password_confirm_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ResetPasswordConfirmRequest {
  /// Returns a new [ResetPasswordConfirmRequest] instance.
  ResetPasswordConfirmRequest({

    required  this.token,

    required  this.newPassword,

    required  this.confirmPassword,
  });

  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false,
  )


  final String token;



  @JsonKey(
    
    name: r'new_password',
    required: true,
    includeIfNull: false,
  )


  final String newPassword;



  @JsonKey(
    
    name: r'confirm_password',
    required: true,
    includeIfNull: false,
  )


  final String confirmPassword;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ResetPasswordConfirmRequest &&
      other.token == token &&
      other.newPassword == newPassword &&
      other.confirmPassword == confirmPassword;

    @override
    int get hashCode =>
        token.hashCode +
        newPassword.hashCode +
        confirmPassword.hashCode;

  factory ResetPasswordConfirmRequest.fromJson(Map<String, dynamic> json) => _$ResetPasswordConfirmRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordConfirmRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

