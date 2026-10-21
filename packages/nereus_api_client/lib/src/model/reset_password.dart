//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reset_password.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ResetPassword {
  /// Returns a new [ResetPassword] instance.
  ResetPassword({

    required  this.user,

    required  this.newPassword,
  });

  @JsonKey(
    
    name: r'user',
    required: true,
    includeIfNull: false,
  )


  final String user;



  @JsonKey(
    
    name: r'new_password',
    required: true,
    includeIfNull: false,
  )


  final String newPassword;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ResetPassword &&
      other.user == user &&
      other.newPassword == newPassword;

    @override
    int get hashCode =>
        user.hashCode +
        newPassword.hashCode;

  factory ResetPassword.fromJson(Map<String, dynamic> json) => _$ResetPasswordFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

