//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'change_password.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChangePassword {
  /// Returns a new [ChangePassword] instance.
  ChangePassword({

    required  this.currentPassword,

    required  this.newPassword,

    required  this.confirmPassword,
  });

  @JsonKey(
    
    name: r'current_password',
    required: true,
    includeIfNull: false,
  )


  final String currentPassword;



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
    bool operator ==(Object other) => identical(this, other) || other is ChangePassword &&
      other.currentPassword == currentPassword &&
      other.newPassword == newPassword &&
      other.confirmPassword == confirmPassword;

    @override
    int get hashCode =>
        currentPassword.hashCode +
        newPassword.hashCode +
        confirmPassword.hashCode;

  factory ChangePassword.fromJson(Map<String, dynamic> json) => _$ChangePasswordFromJson(json);

  Map<String, dynamic> toJson() => _$ChangePasswordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

