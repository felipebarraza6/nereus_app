// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChangePasswordCWProxy {
  ChangePassword currentPassword(String currentPassword);

  ChangePassword newPassword(String newPassword);

  ChangePassword confirmPassword(String confirmPassword);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChangePassword(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChangePassword(...).copyWith(id: 12, name: "My name")
  /// ````
  ChangePassword call({
    String currentPassword,
    String newPassword,
    String confirmPassword,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfChangePassword.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfChangePassword.copyWith.fieldName(...)`
class _$ChangePasswordCWProxyImpl implements _$ChangePasswordCWProxy {
  const _$ChangePasswordCWProxyImpl(this._value);

  final ChangePassword _value;

  @override
  ChangePassword currentPassword(String currentPassword) =>
      this(currentPassword: currentPassword);

  @override
  ChangePassword newPassword(String newPassword) =>
      this(newPassword: newPassword);

  @override
  ChangePassword confirmPassword(String confirmPassword) =>
      this(confirmPassword: confirmPassword);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ChangePassword(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ChangePassword(...).copyWith(id: 12, name: "My name")
  /// ````
  ChangePassword call({
    Object? currentPassword = const $CopyWithPlaceholder(),
    Object? newPassword = const $CopyWithPlaceholder(),
    Object? confirmPassword = const $CopyWithPlaceholder(),
  }) {
    return ChangePassword(
      currentPassword: currentPassword == const $CopyWithPlaceholder()
          ? _value.currentPassword
          // ignore: cast_nullable_to_non_nullable
          : currentPassword as String,
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

extension $ChangePasswordCopyWith on ChangePassword {
  /// Returns a callable class that can be used as follows: `instanceOfChangePassword.copyWith(...)` or like so:`instanceOfChangePassword.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChangePasswordCWProxy get copyWith => _$ChangePasswordCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePassword _$ChangePasswordFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ChangePassword',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'current_password',
        'new_password',
        'confirm_password',
      ],
    );
    final val = ChangePassword(
      currentPassword: $checkedConvert('current_password', (v) => v as String),
      newPassword: $checkedConvert('new_password', (v) => v as String),
      confirmPassword: $checkedConvert('confirm_password', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'currentPassword': 'current_password',
    'newPassword': 'new_password',
    'confirmPassword': 'confirm_password',
  },
);

Map<String, dynamic> _$ChangePasswordToJson(ChangePassword instance) =>
    <String, dynamic>{
      'current_password': instance.currentPassword,
      'new_password': instance.newPassword,
      'confirm_password': instance.confirmPassword,
    };
