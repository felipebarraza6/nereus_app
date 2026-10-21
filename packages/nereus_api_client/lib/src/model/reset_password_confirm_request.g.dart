// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_confirm_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ResetPasswordConfirmRequestCWProxy {
  ResetPasswordConfirmRequest token(String token);

  ResetPasswordConfirmRequest newPassword(String newPassword);

  ResetPasswordConfirmRequest confirmPassword(String confirmPassword);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ResetPasswordConfirmRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ResetPasswordConfirmRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ResetPasswordConfirmRequest call({
    String token,
    String newPassword,
    String confirmPassword,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfResetPasswordConfirmRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfResetPasswordConfirmRequest.copyWith.fieldName(...)`
class _$ResetPasswordConfirmRequestCWProxyImpl
    implements _$ResetPasswordConfirmRequestCWProxy {
  const _$ResetPasswordConfirmRequestCWProxyImpl(this._value);

  final ResetPasswordConfirmRequest _value;

  @override
  ResetPasswordConfirmRequest token(String token) => this(token: token);

  @override
  ResetPasswordConfirmRequest newPassword(String newPassword) =>
      this(newPassword: newPassword);

  @override
  ResetPasswordConfirmRequest confirmPassword(String confirmPassword) =>
      this(confirmPassword: confirmPassword);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ResetPasswordConfirmRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ResetPasswordConfirmRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ResetPasswordConfirmRequest call({
    Object? token = const $CopyWithPlaceholder(),
    Object? newPassword = const $CopyWithPlaceholder(),
    Object? confirmPassword = const $CopyWithPlaceholder(),
  }) {
    return ResetPasswordConfirmRequest(
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String,
      newPassword: newPassword == const $CopyWithPlaceholder()
          ? _value.newPassword
          // ignore: cast_nullable_to_non_nullable
          : newPassword as String,
      confirmPassword: confirmPassword == const $CopyWithPlaceholder()
          ? _value.confirmPassword
          // ignore: cast_nullable_to_non_nullable
          : confirmPassword as String,
    );
  }
}

extension $ResetPasswordConfirmRequestCopyWith on ResetPasswordConfirmRequest {
  /// Returns a callable class that can be used as follows: `instanceOfResetPasswordConfirmRequest.copyWith(...)` or like so:`instanceOfResetPasswordConfirmRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ResetPasswordConfirmRequestCWProxy get copyWith =>
      _$ResetPasswordConfirmRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordConfirmRequest _$ResetPasswordConfirmRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ResetPasswordConfirmRequest',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['token', 'new_password', 'confirm_password'],
    );
    final val = ResetPasswordConfirmRequest(
      token: $checkedConvert('token', (v) => v as String),
      newPassword: $checkedConvert('new_password', (v) => v as String),
      confirmPassword: $checkedConvert('confirm_password', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'newPassword': 'new_password',
    'confirmPassword': 'confirm_password',
  },
);

Map<String, dynamic> _$ResetPasswordConfirmRequestToJson(
  ResetPasswordConfirmRequest instance,
) => <String, dynamic>{
  'token': instance.token,
  'new_password': instance.newPassword,
  'confirm_password': instance.confirmPassword,
};
