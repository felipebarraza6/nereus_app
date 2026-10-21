// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_user_profile_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedUserProfileRequestCWProxy {
  PatchedUserProfileRequest firstName(String? firstName);

  PatchedUserProfileRequest lastName(String? lastName);

  PatchedUserProfileRequest email(String? email);

  PatchedUserProfileRequest username(String? username);

  PatchedUserProfileRequest dni(String? dni);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedUserProfileRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedUserProfileRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedUserProfileRequest call({
    String? firstName,
    String? lastName,
    String? email,
    String? username,
    String? dni,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedUserProfileRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedUserProfileRequest.copyWith.fieldName(...)`
class _$PatchedUserProfileRequestCWProxyImpl
    implements _$PatchedUserProfileRequestCWProxy {
  const _$PatchedUserProfileRequestCWProxyImpl(this._value);

  final PatchedUserProfileRequest _value;

  @override
  PatchedUserProfileRequest firstName(String? firstName) =>
      this(firstName: firstName);

  @override
  PatchedUserProfileRequest lastName(String? lastName) =>
      this(lastName: lastName);

  @override
  PatchedUserProfileRequest email(String? email) => this(email: email);

  @override
  PatchedUserProfileRequest username(String? username) =>
      this(username: username);

  @override
  PatchedUserProfileRequest dni(String? dni) => this(dni: dni);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedUserProfileRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedUserProfileRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedUserProfileRequest call({
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? dni = const $CopyWithPlaceholder(),
  }) {
    return PatchedUserProfileRequest(
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
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String?,
      dni: dni == const $CopyWithPlaceholder()
          ? _value.dni
          // ignore: cast_nullable_to_non_nullable
          : dni as String?,
    );
  }
}

extension $PatchedUserProfileRequestCopyWith on PatchedUserProfileRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedUserProfileRequest.copyWith(...)` or like so:`instanceOfPatchedUserProfileRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedUserProfileRequestCWProxy get copyWith =>
      _$PatchedUserProfileRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedUserProfileRequest _$PatchedUserProfileRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedUserProfileRequest',
  json,
  ($checkedConvert) {
    final val = PatchedUserProfileRequest(
      firstName: $checkedConvert('first_name', (v) => v as String?),
      lastName: $checkedConvert('last_name', (v) => v as String?),
      email: $checkedConvert('email', (v) => v as String?),
      username: $checkedConvert('username', (v) => v as String?),
      dni: $checkedConvert('dni', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {'firstName': 'first_name', 'lastName': 'last_name'},
);

Map<String, dynamic> _$PatchedUserProfileRequestToJson(
  PatchedUserProfileRequest instance,
) => <String, dynamic>{
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'email': ?instance.email,
  'username': ?instance.username,
  'dni': ?instance.dni,
};
