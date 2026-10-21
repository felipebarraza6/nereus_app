// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_extra_field_value.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserExtraFieldValueCWProxy {
  UserExtraFieldValue id(String id);

  UserExtraFieldValue user(int user);

  UserExtraFieldValue fieldDefinition(String fieldDefinition);

  UserExtraFieldValue fieldName(String fieldName);

  UserExtraFieldValue fieldKey(String fieldKey);

  UserExtraFieldValue fieldType(String fieldType);

  UserExtraFieldValue value(Object? value);

  UserExtraFieldValue displayValue(String displayValue);

  UserExtraFieldValue recordedBy(int? recordedBy);

  UserExtraFieldValue notes(String? notes);

  UserExtraFieldValue isActive(bool? isActive);

  UserExtraFieldValue created(DateTime created);

  UserExtraFieldValue modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserExtraFieldValue(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserExtraFieldValue(...).copyWith(id: 12, name: "My name")
  /// ````
  UserExtraFieldValue call({
    String id,
    int user,
    String fieldDefinition,
    String fieldName,
    String fieldKey,
    String fieldType,
    Object? value,
    String displayValue,
    int? recordedBy,
    String? notes,
    bool? isActive,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserExtraFieldValue.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserExtraFieldValue.copyWith.fieldName(...)`
class _$UserExtraFieldValueCWProxyImpl implements _$UserExtraFieldValueCWProxy {
  const _$UserExtraFieldValueCWProxyImpl(this._value);

  final UserExtraFieldValue _value;

  @override
  UserExtraFieldValue id(String id) => this(id: id);

  @override
  UserExtraFieldValue user(int user) => this(user: user);

  @override
  UserExtraFieldValue fieldDefinition(String fieldDefinition) =>
      this(fieldDefinition: fieldDefinition);

  @override
  UserExtraFieldValue fieldName(String fieldName) => this(fieldName: fieldName);

  @override
  UserExtraFieldValue fieldKey(String fieldKey) => this(fieldKey: fieldKey);

  @override
  UserExtraFieldValue fieldType(String fieldType) => this(fieldType: fieldType);

  @override
  UserExtraFieldValue value(Object? value) => this(value: value);

  @override
  UserExtraFieldValue displayValue(String displayValue) =>
      this(displayValue: displayValue);

  @override
  UserExtraFieldValue recordedBy(int? recordedBy) =>
      this(recordedBy: recordedBy);

  @override
  UserExtraFieldValue notes(String? notes) => this(notes: notes);

  @override
  UserExtraFieldValue isActive(bool? isActive) => this(isActive: isActive);

  @override
  UserExtraFieldValue created(DateTime created) => this(created: created);

  @override
  UserExtraFieldValue modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserExtraFieldValue(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserExtraFieldValue(...).copyWith(id: 12, name: "My name")
  /// ````
  UserExtraFieldValue call({
    Object? id = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? fieldDefinition = const $CopyWithPlaceholder(),
    Object? fieldName = const $CopyWithPlaceholder(),
    Object? fieldKey = const $CopyWithPlaceholder(),
    Object? fieldType = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? displayValue = const $CopyWithPlaceholder(),
    Object? recordedBy = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return UserExtraFieldValue(
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
      fieldName: fieldName == const $CopyWithPlaceholder()
          ? _value.fieldName
          // ignore: cast_nullable_to_non_nullable
          : fieldName as String,
      fieldKey: fieldKey == const $CopyWithPlaceholder()
          ? _value.fieldKey
          // ignore: cast_nullable_to_non_nullable
          : fieldKey as String,
      fieldType: fieldType == const $CopyWithPlaceholder()
          ? _value.fieldType
          // ignore: cast_nullable_to_non_nullable
          : fieldType as String,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as Object?,
      displayValue: displayValue == const $CopyWithPlaceholder()
          ? _value.displayValue
          // ignore: cast_nullable_to_non_nullable
          : displayValue as String,
      recordedBy: recordedBy == const $CopyWithPlaceholder()
          ? _value.recordedBy
          // ignore: cast_nullable_to_non_nullable
          : recordedBy as int?,
      notes: notes == const $CopyWithPlaceholder()
          ? _value.notes
          // ignore: cast_nullable_to_non_nullable
          : notes as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      created: created == const $CopyWithPlaceholder()
          ? _value.created
          // ignore: cast_nullable_to_non_nullable
          : created as DateTime,
      modified: modified == const $CopyWithPlaceholder()
          ? _value.modified
          // ignore: cast_nullable_to_non_nullable
          : modified as DateTime,
    );
  }
}

extension $UserExtraFieldValueCopyWith on UserExtraFieldValue {
  /// Returns a callable class that can be used as follows: `instanceOfUserExtraFieldValue.copyWith(...)` or like so:`instanceOfUserExtraFieldValue.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserExtraFieldValueCWProxy get copyWith =>
      _$UserExtraFieldValueCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserExtraFieldValue _$UserExtraFieldValueFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UserExtraFieldValue',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'user',
        'field_definition',
        'field_name',
        'field_key',
        'field_type',
        'display_value',
        'recorded_by',
        'created',
        'modified',
      ],
    );
    final val = UserExtraFieldValue(
      id: $checkedConvert('id', (v) => v as String),
      user: $checkedConvert('user', (v) => (v as num).toInt()),
      fieldDefinition: $checkedConvert('field_definition', (v) => v as String),
      fieldName: $checkedConvert('field_name', (v) => v as String),
      fieldKey: $checkedConvert('field_key', (v) => v as String),
      fieldType: $checkedConvert('field_type', (v) => v as String),
      value: $checkedConvert('value', (v) => v),
      displayValue: $checkedConvert('display_value', (v) => v as String),
      recordedBy: $checkedConvert('recorded_by', (v) => (v as num?)?.toInt()),
      notes: $checkedConvert('notes', (v) => v as String?),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'fieldDefinition': 'field_definition',
    'fieldName': 'field_name',
    'fieldKey': 'field_key',
    'fieldType': 'field_type',
    'displayValue': 'display_value',
    'recordedBy': 'recorded_by',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$UserExtraFieldValueToJson(
  UserExtraFieldValue instance,
) => <String, dynamic>{
  'id': instance.id,
  'user': instance.user,
  'field_definition': instance.fieldDefinition,
  'field_name': instance.fieldName,
  'field_key': instance.fieldKey,
  'field_type': instance.fieldType,
  'value': ?instance.value,
  'display_value': instance.displayValue,
  'recorded_by': instance.recordedBy,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};
