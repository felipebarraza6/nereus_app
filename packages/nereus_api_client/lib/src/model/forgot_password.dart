//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forgot_password.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ForgotPassword {
  /// Returns a new [ForgotPassword] instance.
  ForgotPassword({

    required  this.email,

     this.branchId,

     this.loginSlug,
  });

  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



  @JsonKey(
    
    name: r'branch_id',
    required: false,
    includeIfNull: false,
  )


  final int? branchId;



  @JsonKey(
    
    name: r'login_slug',
    required: false,
    includeIfNull: false,
  )


  final String? loginSlug;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ForgotPassword &&
      other.email == email &&
      other.branchId == branchId &&
      other.loginSlug == loginSlug;

    @override
    int get hashCode =>
        email.hashCode +
        (branchId == null ? 0 : branchId.hashCode) +
        (loginSlug == null ? 0 : loginSlug.hashCode);

  factory ForgotPassword.fromJson(Map<String, dynamic> json) => _$ForgotPasswordFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

