// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ForgotPasswordCWProxy {
  ForgotPassword email(String email);

  ForgotPassword branchId(int? branchId);

  ForgotPassword loginSlug(String? loginSlug);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ForgotPassword(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ForgotPassword(...).copyWith(id: 12, name: "My name")
  /// ````
  ForgotPassword call({String email, int? branchId, String? loginSlug});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfForgotPassword.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfForgotPassword.copyWith.fieldName(...)`
class _$ForgotPasswordCWProxyImpl implements _$ForgotPasswordCWProxy {
  const _$ForgotPasswordCWProxyImpl(this._value);

  final ForgotPassword _value;

  @override
  ForgotPassword email(String email) => this(email: email);

  @override
  ForgotPassword branchId(int? branchId) => this(branchId: branchId);

  @override
  ForgotPassword loginSlug(String? loginSlug) => this(loginSlug: loginSlug);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ForgotPassword(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ForgotPassword(...).copyWith(id: 12, name: "My name")
  /// ````
  ForgotPassword call({
    Object? email = const $CopyWithPlaceholder(),
    Object? branchId = const $CopyWithPlaceholder(),
    Object? loginSlug = const $CopyWithPlaceholder(),
  }) {
    return ForgotPassword(
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      branchId: branchId == const $CopyWithPlaceholder()
          ? _value.branchId
          // ignore: cast_nullable_to_non_nullable
          : branchId as int?,
      loginSlug: loginSlug == const $CopyWithPlaceholder()
          ? _value.loginSlug
          // ignore: cast_nullable_to_non_nullable
          : loginSlug as String?,
    );
  }
}

extension $ForgotPasswordCopyWith on ForgotPassword {
  /// Returns a callable class that can be used as follows: `instanceOfForgotPassword.copyWith(...)` or like so:`instanceOfForgotPassword.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ForgotPasswordCWProxy get copyWith => _$ForgotPasswordCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotPassword _$ForgotPasswordFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ForgotPassword',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['email']);
        final val = ForgotPassword(
          email: $checkedConvert('email', (v) => v as String),
          branchId: $checkedConvert('branch_id', (v) => (v as num?)?.toInt()),
          loginSlug: $checkedConvert('login_slug', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'branchId': 'branch_id', 'loginSlug': 'login_slug'},
    );

Map<String, dynamic> _$ForgotPasswordToJson(ForgotPassword instance) =>
    <String, dynamic>{
      'email': instance.email,
      'branch_id': ?instance.branchId,
      'login_slug': ?instance.loginSlug,
    };
