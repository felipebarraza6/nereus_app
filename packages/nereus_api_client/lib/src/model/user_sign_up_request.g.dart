// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sign_up_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserSignUpRequestCWProxy {
  UserSignUpRequest email(String email);

  UserSignUpRequest firstName(String firstName);

  UserSignUpRequest secondName(String? secondName);

  UserSignUpRequest lastName(String lastName);

  UserSignUpRequest secondLastName(String? secondLastName);

  UserSignUpRequest username(String? username);

  UserSignUpRequest dni(String dni);

  UserSignUpRequest typeUser(String typeUser);

  UserSignUpRequest password(String password);

  UserSignUpRequest passwordConfirmation(String passwordConfirmation);

  UserSignUpRequest branchId(int branchId);

  UserSignUpRequest role(String? role);

  UserSignUpRequest isActive(bool? isActive);

  UserSignUpRequest profileData(Map<String, Object>? profileData);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserSignUpRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserSignUpRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UserSignUpRequest call({
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
    Map<String, Object>? profileData,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserSignUpRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserSignUpRequest.copyWith.fieldName(...)`
class _$UserSignUpRequestCWProxyImpl implements _$UserSignUpRequestCWProxy {
  const _$UserSignUpRequestCWProxyImpl(this._value);

  final UserSignUpRequest _value;

  @override
  UserSignUpRequest email(String email) => this(email: email);

  @override
  UserSignUpRequest firstName(String firstName) => this(firstName: firstName);

  @override
  UserSignUpRequest secondName(String? secondName) =>
      this(secondName: secondName);

  @override
  UserSignUpRequest lastName(String lastName) => this(lastName: lastName);

  @override
  UserSignUpRequest secondLastName(String? secondLastName) =>
      this(secondLastName: secondLastName);

  @override
  UserSignUpRequest username(String? username) => this(username: username);

  @override
  UserSignUpRequest dni(String dni) => this(dni: dni);

  @override
  UserSignUpRequest typeUser(String typeUser) => this(typeUser: typeUser);

  @override
  UserSignUpRequest password(String password) => this(password: password);

  @override
  UserSignUpRequest passwordConfirmation(String passwordConfirmation) =>
      this(passwordConfirmation: passwordConfirmation);

  @override
  UserSignUpRequest branchId(int branchId) => this(branchId: branchId);

  @override
  UserSignUpRequest role(String? role) => this(role: role);

  @override
  UserSignUpRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  UserSignUpRequest profileData(Map<String, Object>? profileData) =>
      this(profileData: profileData);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserSignUpRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserSignUpRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UserSignUpRequest call({
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
    Object? profileData = const $CopyWithPlaceholder(),
  }) {
    return UserSignUpRequest(
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
      profileData: profileData == const $CopyWithPlaceholder()
          ? _value.profileData
          // ignore: cast_nullable_to_non_nullable
          : profileData as Map<String, Object>?,
    );
  }
}

extension $UserSignUpRequestCopyWith on UserSignUpRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUserSignUpRequest.copyWith(...)` or like so:`instanceOfUserSignUpRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserSignUpRequestCWProxy get copyWith =>
      _$UserSignUpRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignUpRequest _$UserSignUpRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserSignUpRequest',
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
        final val = UserSignUpRequest(
          email: $checkedConvert('email', (v) => v as String),
          firstName: $checkedConvert('first_name', (v) => v as String),
          secondName: $checkedConvert('second_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String),
          secondLastName: $checkedConvert(
            'second_last_name',
            (v) => v as String?,
          ),
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
          profileData: $checkedConvert(
            'profile_data',
            (v) => (v as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(k, e as Object),
            ),
          ),
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
        'profileData': 'profile_data',
      },
    );

Map<String, dynamic> _$UserSignUpRequestToJson(UserSignUpRequest instance) =>
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
      'profile_data': ?instance.profileData,
    };
