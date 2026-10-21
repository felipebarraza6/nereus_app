// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_confirm.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ResetPasswordConfirmCWProxy {
  ResetPasswordConfirm token(String token);

  ResetPasswordConfirm newPassword(String newPassword);

  ResetPasswordConfirm confirmPassword(String confirmPassword);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ResetPasswordConfirm(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ResetPasswordConfirm(...).copyWith(id: 12, name: "My name")
  /// ````
  ResetPasswordConfirm call({
    String token,
    String newPassword,
    String confirmPassword,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfResetPasswordConfirm.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfResetPasswordConfirm.copyWith.fieldName(...)`
class _$ResetPasswordConfirmCWProxyImpl
    implements _$ResetPasswordConfirmCWProxy {
  const _$ResetPasswordConfirmCWProxyImpl(this._value);

  final ResetPasswordConfirm _value;

  @override
  ResetPasswordConfirm token(String token) => this(token: token);

  @override
  ResetPasswordConfirm newPassword(String newPassword) =>
      this(newPassword: newPassword);

  @override
  ResetPasswordConfirm confirmPassword(String confirmPassword) =>
      this(confirmPassword: confirmPassword);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ResetPasswordConfirm(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ResetPasswordConfirm(...).copyWith(id: 12, name: "My name")
  /// ````
  ResetPasswordConfirm call({
    Object? token = const $CopyWithPlaceholder(),
    Object? newPassword = const $CopyWithPlaceholder(),
    Object? confirmPassword = const $CopyWithPlaceholder(),
  }) {
    return ResetPasswordConfirm(
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

extension $ResetPasswordConfirmCopyWith on ResetPasswordConfirm {
  /// Returns a callable class that can be used as follows: `instanceOfResetPasswordConfirm.copyWith(...)` or like so:`instanceOfResetPasswordConfirm.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ResetPasswordConfirmCWProxy get copyWith =>
      _$ResetPasswordConfirmCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordConfirm _$ResetPasswordConfirmFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ResetPasswordConfirm',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['token', 'new_password', 'confirm_password'],
    );
    final val = ResetPasswordConfirm(
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

Map<String, dynamic> _$ResetPasswordConfirmToJson(
  ResetPasswordConfirm instance,
) => <String, dynamic>{
  'token': instance.token,
  'new_password': instance.newPassword,
  'confirm_password': instance.confirmPassword,
};
