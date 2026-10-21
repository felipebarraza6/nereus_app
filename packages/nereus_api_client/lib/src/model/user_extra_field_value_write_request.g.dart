// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_extra_field_value_write_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserExtraFieldValueWriteRequestCWProxy {
  UserExtraFieldValueWriteRequest user(int user);

  UserExtraFieldValueWriteRequest fieldDefinition(String fieldDefinition);

  UserExtraFieldValueWriteRequest value(Object? value);

  UserExtraFieldValueWriteRequest notes(String? notes);

  UserExtraFieldValueWriteRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserExtraFieldValueWriteRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserExtraFieldValueWriteRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UserExtraFieldValueWriteRequest call({
    int user,
    String fieldDefinition,
    Object? value,
    String? notes,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserExtraFieldValueWriteRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserExtraFieldValueWriteRequest.copyWith.fieldName(...)`
class _$UserExtraFieldValueWriteRequestCWProxyImpl
    implements _$UserExtraFieldValueWriteRequestCWProxy {
  const _$UserExtraFieldValueWriteRequestCWProxyImpl(this._value);

  final UserExtraFieldValueWriteRequest _value;

  @override
  UserExtraFieldValueWriteRequest user(int user) => this(user: user);

  @override
  UserExtraFieldValueWriteRequest fieldDefinition(String fieldDefinition) =>
      this(fieldDefinition: fieldDefinition);

  @override
  UserExtraFieldValueWriteRequest value(Object? value) => this(value: value);

  @override
  UserExtraFieldValueWriteRequest notes(String? notes) => this(notes: notes);

  @override
  UserExtraFieldValueWriteRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserExtraFieldValueWriteRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserExtraFieldValueWriteRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UserExtraFieldValueWriteRequest call({
    Object? user = const $CopyWithPlaceholder(),
    Object? fieldDefinition = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return UserExtraFieldValueWriteRequest(
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as int,
      fieldDefinition: fieldDefinition == const $CopyWithPlaceholder()
          ? _value.fieldDefinition
          // ignore: cast_nullable_to_non_nullable
          : fieldDefinition as String,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as Object?,
      notes: notes == const $CopyWithPlaceholder()
          ? _value.notes
          // ignore: cast_nullable_to_non_nullable
          : notes as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $UserExtraFieldValueWriteRequestCopyWith
    on UserExtraFieldValueWriteRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUserExtraFieldValueWriteRequest.copyWith(...)` or like so:`instanceOfUserExtraFieldValueWriteRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserExtraFieldValueWriteRequestCWProxy get copyWith =>
      _$UserExtraFieldValueWriteRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserExtraFieldValueWriteRequest _$UserExtraFieldValueWriteRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UserExtraFieldValueWriteRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['user', 'field_definition']);
    final val = UserExtraFieldValueWriteRequest(
      user: $checkedConvert('user', (v) => (v as num).toInt()),
      fieldDefinition: $checkedConvert('field_definition', (v) => v as String),
      value: $checkedConvert('value', (v) => v),
      notes: $checkedConvert('notes', (v) => v as String?),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'fieldDefinition': 'field_definition',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$UserExtraFieldValueWriteRequestToJson(
  UserExtraFieldValueWriteRequest instance,
) => <String, dynamic>{
  'user': instance.user,
  'field_definition': instance.fieldDefinition,
  'value': ?instance.value,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
};
