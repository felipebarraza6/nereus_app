// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sign_up.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserSignUpCWProxy {
  UserSignUp email(String email);

  UserSignUp firstName(String firstName);

  UserSignUp secondName(String? secondName);

  UserSignUp lastName(String lastName);

  UserSignUp secondLastName(String? secondLastName);

  UserSignUp username(String? username);

  UserSignUp dni(String dni);

  UserSignUp typeUser(String typeUser);

  UserSignUp password(String password);

  UserSignUp passwordConfirmation(String passwordConfirmation);

  UserSignUp branchId(int branchId);

  UserSignUp role(String? role);

  UserSignUp isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserSignUp(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserSignUp(...).copyWith(id: 12, name: "My name")
  /// ````
  UserSignUp call({
    String email,
    String firstName,
    String? secondName,
    String lastName,
    String? secondLastName,
    String? username,
    String dni,
    String typeUser,
    String password,
    String passwordConfirmation,
    int branchId,
    String? role,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserSignUp.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserSignUp.copyWith.fieldName(...)`
class _$UserSignUpCWProxyImpl implements _$UserSignUpCWProxy {
  const _$UserSignUpCWProxyImpl(this._value);

  final UserSignUp _value;

  @override
  UserSignUp email(String email) => this(email: email);

  @override
  UserSignUp firstName(String firstName) => this(firstName: firstName);

  @override
  UserSignUp secondName(String? secondName) => this(secondName: secondName);

  @override
  UserSignUp lastName(String lastName) => this(lastName: lastName);

  @override
  UserSignUp secondLastName(String? secondLastName) =>
      this(secondLastName: secondLastName);

  @override
  UserSignUp username(String? username) => this(username: username);

  @override
  UserSignUp dni(String dni) => this(dni: dni);

  @override
  UserSignUp typeUser(String typeUser) => this(typeUser: typeUser);

  @override
  UserSignUp password(String password) => this(password: password);

  @override
  UserSignUp passwordConfirmation(String passwordConfirmation) =>
      this(passwordConfirmation: passwordConfirmation);

  @override
  UserSignUp branchId(int branchId) => this(branchId: branchId);

  @override
  UserSignUp role(String? role) => this(role: role);

  @override
  UserSignUp isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserSignUp(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserSignUp(...).copyWith(id: 12, name: "My name")
  /// ````
  UserSignUp call({
    Object? email = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? secondName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? secondLastName = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? dni = const $CopyWithPlaceholder(),
    Object? typeUser = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? passwordConfirmation = const $CopyWithPlaceholder(),
    Object? branchId = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return UserSignUp(
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String,
      secondName: secondName == const $CopyWithPlaceholder()
          ? _value.secondName
          // ignore: cast_nullable_to_non_nullable
          : secondName as String?,
      lastName: lastName == const $CopyWithPlaceholder()
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String,
      secondLastName: secondLastName == const $CopyWithPlaceholder()
          ? _value.secondLastName
          // ignore: cast_nullable_to_non_nullable
          : secondLastName as String?,
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String?,
      dni: dni == const $CopyWithPlaceholder()
          ? _value.dni
          // ignore: cast_nullable_to_non_nullable
          : dni as String,
      typeUser: typeUser == const $CopyWithPlaceholder()
          ? _value.typeUser
          // ignore: cast_nullable_to_non_nullable
          : typeUser as String,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String,
      passwordConfirmation: passwordConfirmation == const $CopyWithPlaceholder()
          ? _value.passwordConfirmation
          // ignore: cast_nullable_to_non_nullable
          : passwordConfirmation as String,
      branchId: branchId == const $CopyWithPlaceholder()
          ? _value.branchId
          // ignore: cast_nullable_to_non_nullable
          : branchId as int,
      role: role == const $CopyWithPlaceholder()
          ? _value.role
          // ignore: cast_nullable_to_non_nullable
          : role as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $UserSignUpCopyWith on UserSignUp {
  /// Returns a callable class that can be used as follows: `instanceOfUserSignUp.copyWith(...)` or like so:`instanceOfUserSignUp.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserSignUpCWProxy get copyWith => _$UserSignUpCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignUp _$UserSignUpFromJson(Map<String, dynamic> json) => $checkedCreate(
  'UserSignUp',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'email',
        'first_name',
        'last_name',
        'dni',
        'type_user',
        'password',
        'password_confirmation',
        'branch_id',
      ],
    );
    final val = UserSignUp(
      email: $checkedConvert('email', (v) => v as String),
      firstName: $checkedConvert('first_name', (v) => v as String),
      secondName: $checkedConvert('second_name', (v) => v as String?),
      lastName: $checkedConvert('last_name', (v) => v as String),
      secondLastName: $checkedConvert('second_last_name', (v) => v as String?),
      username: $checkedConvert('username', (v) => v as String?),
      dni: $checkedConvert('dni', (v) => v as String),
      typeUser: $checkedConvert('type_user', (v) => v as String),
      password: $checkedConvert('password', (v) => v as String),
      passwordConfirmation: $checkedConvert(
        'password_confirmation',
        (v) => v as String,
      ),
      branchId: $checkedConvert('branch_id', (v) => (v as num).toInt()),
      role: $checkedConvert('role', (v) => v as String? ?? 'VIEWER'),
      isActive: $checkedConvert('is_active', (v) => v as bool? ?? true),
    );
    return val;
  },
  fieldKeyMap: const {
    'firstName': 'first_name',
    'secondName': 'second_name',
    'lastName': 'last_name',
    'secondLastName': 'second_last_name',
    'typeUser': 'type_user',
    'passwordConfirmation': 'password_confirmation',
    'branchId': 'branch_id',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$UserSignUpToJson(UserSignUp instance) =>
    <String, dynamic>{
      'email': instance.email,
      'first_name': instance.firstName,
      'second_name': ?instance.secondName,
      'last_name': instance.lastName,
      'second_last_name': ?instance.secondLastName,
      'username': ?instance.username,
      'dni': instance.dni,
      'type_user': instance.typeUser,
      'password': instance.password,
      'password_confirmation': instance.passwordConfirmation,
      'branch_id': instance.branchId,
      'role': ?instance.role,
      'is_active': ?instance.isActive,
    };
