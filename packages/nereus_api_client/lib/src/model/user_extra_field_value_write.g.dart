// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_extra_field_value_write.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserExtraFieldValueWriteCWProxy {
  UserExtraFieldValueWrite id(String id);

  UserExtraFieldValueWrite user(int user);

  UserExtraFieldValueWrite fieldDefinition(String fieldDefinition);

  UserExtraFieldValueWrite value(Object? value);

  UserExtraFieldValueWrite notes(String? notes);

  UserExtraFieldValueWrite isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserExtraFieldValueWrite(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserExtraFieldValueWrite(...).copyWith(id: 12, name: "My name")
  /// ````
  UserExtraFieldValueWrite call({
    String id,
    int user,
    String fieldDefinition,
    Object? value,
    String? notes,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserExtraFieldValueWrite.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserExtraFieldValueWrite.copyWith.fieldName(...)`
class _$UserExtraFieldValueWriteCWProxyImpl
    implements _$UserExtraFieldValueWriteCWProxy {
  const _$UserExtraFieldValueWriteCWProxyImpl(this._value);

  final UserExtraFieldValueWrite _value;

  @override
  UserExtraFieldValueWrite id(String id) => this(id: id);

  @override
  UserExtraFieldValueWrite user(int user) => this(user: user);

  @override
  UserExtraFieldValueWrite fieldDefinition(String fieldDefinition) =>
      this(fieldDefinition: fieldDefinition);

  @override
  UserExtraFieldValueWrite value(Object? value) => this(value: value);

  @override
  UserExtraFieldValueWrite notes(String? notes) => this(notes: notes);

  @override
  UserExtraFieldValueWrite isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserExtraFieldValueWrite(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserExtraFieldValueWrite(...).copyWith(id: 12, name: "My name")
  /// ````
  UserExtraFieldValueWrite call({
    Object? id = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? fieldDefinition = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return UserExtraFieldValueWrite(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
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

extension $UserExtraFieldValueWriteCopyWith on UserExtraFieldValueWrite {
  /// Returns a callable class that can be used as follows: `instanceOfUserExtraFieldValueWrite.copyWith(...)` or like so:`instanceOfUserExtraFieldValueWrite.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserExtraFieldValueWriteCWProxy get copyWith =>
      _$UserExtraFieldValueWriteCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserExtraFieldValueWrite _$UserExtraFieldValueWriteFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UserExtraFieldValueWrite',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['id', 'user', 'field_definition']);
    final val = UserExtraFieldValueWrite(
      id: $checkedConvert('id', (v) => v as String),
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

Map<String, dynamic> _$UserExtraFieldValueWriteToJson(
  UserExtraFieldValueWrite instance,
) => <String, dynamic>{
  'id': instance.id,
  'user': instance.user,
  'field_definition': instance.fieldDefinition,
  'value': ?instance.value,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
};
