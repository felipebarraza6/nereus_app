// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_user_model_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedUserModelRequestCWProxy {
  PatchedUserModelRequest username(String? username);

  PatchedUserModelRequest firstName(String? firstName);

  PatchedUserModelRequest lastName(String? lastName);

  PatchedUserModelRequest email(String? email);

  PatchedUserModelRequest password(String? password);

  PatchedUserModelRequest dni(String? dni);

  PatchedUserModelRequest assignedProduct(int? assignedProduct);

  PatchedUserModelRequest isMultiBranch(bool? isMultiBranch);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedUserModelRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedUserModelRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedUserModelRequest call({
    String? username,
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? dni,
    int? assignedProduct,
    bool? isMultiBranch,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedUserModelRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedUserModelRequest.copyWith.fieldName(...)`
class _$PatchedUserModelRequestCWProxyImpl
    implements _$PatchedUserModelRequestCWProxy {
  const _$PatchedUserModelRequestCWProxyImpl(this._value);

  final PatchedUserModelRequest _value;

  @override
  PatchedUserModelRequest username(String? username) =>
      this(username: username);

  @override
  PatchedUserModelRequest firstName(String? firstName) =>
      this(firstName: firstName);

  @override
  PatchedUserModelRequest lastName(String? lastName) =>
      this(lastName: lastName);

  @override
  PatchedUserModelRequest email(String? email) => this(email: email);

  @override
  PatchedUserModelRequest password(String? password) =>
      this(password: password);

  @override
  PatchedUserModelRequest dni(String? dni) => this(dni: dni);

  @override
  PatchedUserModelRequest assignedProduct(int? assignedProduct) =>
      this(assignedProduct: assignedProduct);

  @override
  PatchedUserModelRequest isMultiBranch(bool? isMultiBranch) =>
      this(isMultiBranch: isMultiBranch);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedUserModelRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedUserModelRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedUserModelRequest call({
    Object? username = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? dni = const $CopyWithPlaceholder(),
    Object? assignedProduct = const $CopyWithPlaceholder(),
    Object? isMultiBranch = const $CopyWithPlaceholder(),
  }) {
    return PatchedUserModelRequest(
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String?,
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
          : email as String?,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String?,
      dni: dni == const $CopyWithPlaceholder()
          ? _value.dni
          // ignore: cast_nullable_to_non_nullable
          : dni as String?,
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

extension $PatchedUserModelRequestCopyWith on PatchedUserModelRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedUserModelRequest.copyWith(...)` or like so:`instanceOfPatchedUserModelRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedUserModelRequestCWProxy get copyWith =>
      _$PatchedUserModelRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedUserModelRequest _$PatchedUserModelRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedUserModelRequest',
  json,
  ($checkedConvert) {
    final val = PatchedUserModelRequest(
      username: $checkedConvert('username', (v) => v as String?),
      firstName: $checkedConvert('first_name', (v) => v as String?),
      lastName: $checkedConvert('last_name', (v) => v as String?),
      email: $checkedConvert('email', (v) => v as String?),
      password: $checkedConvert('password', (v) => v as String?),
      dni: $checkedConvert('dni', (v) => v as String?),
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

Map<String, dynamic> _$PatchedUserModelRequestToJson(
  PatchedUserModelRequest instance,
) => <String, dynamic>{
  'username': ?instance.username,
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'email': ?instance.email,
  'password': ?instance.password,
  'dni': ?instance.dni,
  'assigned_product': ?instance.assignedProduct,
  'is_multi_branch': ?instance.isMultiBranch,
};
