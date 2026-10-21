//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ForgotPasswordRequest {
  /// Returns a new [ForgotPasswordRequest] instance.
  ForgotPasswordRequest({

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
    bool operator ==(Object other) => identical(this, other) || other is ForgotPasswordRequest &&
      other.email == email &&
      other.branchId == branchId &&
      other.loginSlug == loginSlug;

    @override
    int get hashCode =>
        email.hashCode +
        (branchId == null ? 0 : branchId.hashCode) +
        (loginSlug == null ? 0 : loginSlug.hashCode);

  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) => _$ForgotPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

