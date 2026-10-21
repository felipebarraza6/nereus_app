// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ResetPasswordCWProxy {
  ResetPassword user(String user);

  ResetPassword newPassword(String newPassword);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ResetPassword(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ResetPassword(...).copyWith(id: 12, name: "My name")
  /// ````
  ResetPassword call({String user, String newPassword});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfResetPassword.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfResetPassword.copyWith.fieldName(...)`
class _$ResetPasswordCWProxyImpl implements _$ResetPasswordCWProxy {
  const _$ResetPasswordCWProxyImpl(this._value);

  final ResetPassword _value;

  @override
  ResetPassword user(String user) => this(user: user);

  @override
  ResetPassword newPassword(String newPassword) =>
      this(newPassword: newPassword);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ResetPassword(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ResetPassword(...).copyWith(id: 12, name: "My name")
  /// ````
  ResetPassword call({
    Object? user = const $CopyWithPlaceholder(),
    Object? newPassword = const $CopyWithPlaceholder(),
  }) {
    return ResetPassword(
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as String,
      newPassword: newPassword == const $CopyWithPlaceholder()
          ? _value.newPassword
          // ignore: cast_nullable_to_non_nullable
          : newPassword as String,
    );
  }
}

extension $ResetPasswordCopyWith on ResetPassword {
  /// Returns a callable class that can be used as follows: `instanceOfResetPassword.copyWith(...)` or like so:`instanceOfResetPassword.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ResetPasswordCWProxy get copyWith => _$ResetPasswordCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPassword _$ResetPasswordFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ResetPassword', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['user', 'new_password']);
      final val = ResetPassword(
        user: $checkedConvert('user', (v) => v as String),
        newPassword: $checkedConvert('new_password', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'newPassword': 'new_password'});

Map<String, dynamic> _$ResetPasswordToJson(ResetPassword instance) =>
    <String, dynamic>{
      'user': instance.user,
      'new_password': instance.newPassword,
    };
