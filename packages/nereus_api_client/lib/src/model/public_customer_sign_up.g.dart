// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_customer_sign_up.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PublicCustomerSignUpCWProxy {
  PublicCustomerSignUp email(String email);

  PublicCustomerSignUp firstName(String firstName);

  PublicCustomerSignUp secondName(String? secondName);

  PublicCustomerSignUp lastName(String lastName);

  PublicCustomerSignUp secondLastName(String? secondLastName);

  PublicCustomerSignUp username(String? username);

  PublicCustomerSignUp dni(String dni);

  PublicCustomerSignUp password(String password);

  PublicCustomerSignUp passwordConfirmation(String passwordConfirmation);

  PublicCustomerSignUp branchId(int branchId);

  PublicCustomerSignUp phoneNumber(String? phoneNumber);

  PublicCustomerSignUp address(String? address);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PublicCustomerSignUp(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PublicCustomerSignUp(...).copyWith(id: 12, name: "My name")
  /// ````
  PublicCustomerSignUp call({
    String email,
    String firstName,
    String? secondName,
    String lastName,
    String? secondLastName,
    String? username,
    String dni,
    String password,
    String passwordConfirmation,
    int branchId,
    String? phoneNumber,
    String? address,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPublicCustomerSignUp.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPublicCustomerSignUp.copyWith.fieldName(...)`
class _$PublicCustomerSignUpCWProxyImpl
    implements _$PublicCustomerSignUpCWProxy {
  const _$PublicCustomerSignUpCWProxyImpl(this._value);

  final PublicCustomerSignUp _value;

  @override
  PublicCustomerSignUp email(String email) => this(email: email);

  @override
  PublicCustomerSignUp firstName(String firstName) =>
      this(firstName: firstName);

  @override
  PublicCustomerSignUp secondName(String? secondName) =>
      this(secondName: secondName);

  @override
  PublicCustomerSignUp lastName(String lastName) => this(lastName: lastName);

  @override
  PublicCustomerSignUp secondLastName(String? secondLastName) =>
      this(secondLastName: secondLastName);

  @override
  PublicCustomerSignUp username(String? username) => this(username: username);

  @override
  PublicCustomerSignUp dni(String dni) => this(dni: dni);

  @override
  PublicCustomerSignUp password(String password) => this(password: password);

  @override
  PublicCustomerSignUp passwordConfirmation(String passwordConfirmation) =>
      this(passwordConfirmation: passwordConfirmation);

  @override
  PublicCustomerSignUp branchId(int branchId) => this(branchId: branchId);

  @override
  PublicCustomerSignUp phoneNumber(String? phoneNumber) =>
      this(phoneNumber: phoneNumber);

  @override
  PublicCustomerSignUp address(String? address) => this(address: address);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PublicCustomerSignUp(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PublicCustomerSignUp(...).copyWith(id: 12, name: "My name")
  /// ````
  PublicCustomerSignUp call({
    Object? email = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? secondName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? secondLastName = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? dni = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? passwordConfirmation = const $CopyWithPlaceholder(),
    Object? branchId = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
  }) {
    return PublicCustomerSignUp(
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
      phoneNumber: phoneNumber == const $CopyWithPlaceholder()
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String?,
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String?,
    );
  }
}

extension $PublicCustomerSignUpCopyWith on PublicCustomerSignUp {
  /// Returns a callable class that can be used as follows: `instanceOfPublicCustomerSignUp.copyWith(...)` or like so:`instanceOfPublicCustomerSignUp.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PublicCustomerSignUpCWProxy get copyWith =>
      _$PublicCustomerSignUpCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicCustomerSignUp _$PublicCustomerSignUpFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PublicCustomerSignUp',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'email',
        'first_name',
        'last_name',
        'dni',
        'password',
        'password_confirmation',
        'branch_id',
      ],
    );
    final val = PublicCustomerSignUp(
      email: $checkedConvert('email', (v) => v as String),
      firstName: $checkedConvert('first_name', (v) => v as String),
      secondName: $checkedConvert('second_name', (v) => v as String?),
      lastName: $checkedConvert('last_name', (v) => v as String),
      secondLastName: $checkedConvert('second_last_name', (v) => v as String?),
      username: $checkedConvert('username', (v) => v as String?),
      dni: $checkedConvert('dni', (v) => v as String),
      password: $checkedConvert('password', (v) => v as String),
      passwordConfirmation: $checkedConvert(
        'password_confirmation',
        (v) => v as String,
      ),
      branchId: $checkedConvert('branch_id', (v) => (v as num).toInt()),
      phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
      address: $checkedConvert('address', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'firstName': 'first_name',
    'secondName': 'second_name',
    'lastName': 'last_name',
    'secondLastName': 'second_last_name',
    'passwordConfirmation': 'password_confirmation',
    'branchId': 'branch_id',
    'phoneNumber': 'phone_number',
  },
);

Map<String, dynamic> _$PublicCustomerSignUpToJson(
  PublicCustomerSignUp instance,
) => <String, dynamic>{
  'email': instance.email,
  'first_name': instance.firstName,
  'second_name': ?instance.secondName,
  'last_name': instance.lastName,
  'second_last_name': ?instance.secondLastName,
  'username': ?instance.username,
  'dni': instance.dni,
  'password': instance.password,
  'password_confirmation': instance.passwordConfirmation,
  'branch_id': instance.branchId,
  'phone_number': ?instance.phoneNumber,
  'address': ?instance.address,
};
