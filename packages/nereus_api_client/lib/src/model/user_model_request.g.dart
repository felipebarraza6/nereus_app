// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserModelRequestCWProxy {
  UserModelRequest username(String username);

  UserModelRequest firstName(String? firstName);

  UserModelRequest lastName(String? lastName);

  UserModelRequest email(String email);

  UserModelRequest password(String? password);

  UserModelRequest dni(String dni);

  UserModelRequest assignedProduct(int? assignedProduct);

  UserModelRequest isMultiBranch(bool? isMultiBranch);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModelRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModelRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModelRequest call({
    String username,
    String? firstName,
    String? lastName,
    String email,
    String? password,
    String dni,
    int? assignedProduct,
    bool? isMultiBranch,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserModelRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserModelRequest.copyWith.fieldName(...)`
class _$UserModelRequestCWProxyImpl implements _$UserModelRequestCWProxy {
  const _$UserModelRequestCWProxyImpl(this._value);

  final UserModelRequest _value;

  @override
  UserModelRequest username(String username) => this(username: username);

  @override
  UserModelRequest firstName(String? firstName) => this(firstName: firstName);

  @override
  UserModelRequest lastName(String? lastName) => this(lastName: lastName);

  @override
  UserModelRequest email(String email) => this(email: email);

  @override
  UserModelRequest password(String? password) => this(password: password);

  @override
  UserModelRequest dni(String dni) => this(dni: dni);

  @override
  UserModelRequest assignedProduct(int? assignedProduct) =>
      this(assignedProduct: assignedProduct);

  @override
  UserModelRequest isMultiBranch(bool? isMultiBranch) =>
      this(isMultiBranch: isMultiBranch);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModelRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModelRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModelRequest call({
    Object? username = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? dni = const $CopyWithPlaceholder(),
    Object? assignedProduct = const $CopyWithPlaceholder(),
    Object? isMultiBranch = const $CopyWithPlaceholder(),
  }) {
    return UserModelRequest(
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String?,
      lastName: lastName == const $CopyWithPlaceholder()
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String?,
      dni: dni == const $CopyWithPlaceholder()
          ? _value.dni
          // ignore: cast_nullable_to_non_nullable
          : dni as String,
      assignedProduct: assignedProduct == const $CopyWithPlaceholder()
          ? _value.assignedProduct
          // ignore: cast_nullable_to_non_nullable
          : assignedProduct as int?,
      isMultiBranch: isMultiBranch == const $CopyWithPlaceholder()
          ? _value.isMultiBranch
          // ignore: cast_nullable_to_non_nullable
          : isMultiBranch as bool?,
    );
  }
}

extension $UserModelRequestCopyWith on UserModelRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUserModelRequest.copyWith(...)` or like so:`instanceOfUserModelRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserModelRequestCWProxy get copyWith => _$UserModelRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModelRequest _$UserModelRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserModelRequest',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['username', 'email', 'dni']);
        final val = UserModelRequest(
          username: $checkedConvert('username', (v) => v as String),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String?),
          dni: $checkedConvert('dni', (v) => v as String),
          assignedProduct: $checkedConvert(
            'assigned_product',
            (v) => (v as num?)?.toInt(),
          ),
          isMultiBranch: $checkedConvert('is_multi_branch', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'assignedProduct': 'assigned_product',
        'isMultiBranch': 'is_multi_branch',
      },
    );

Map<String, dynamic> _$UserModelRequestToJson(UserModelRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'first_name': ?instance.firstName,
      'last_name': ?instance.lastName,
      'email': instance.email,
      'password': ?instance.password,
      'dni': instance.dni,
      'assigned_product': ?instance.assignedProduct,
      'is_multi_branch': ?instance.isMultiBranch,
    };
