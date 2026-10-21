// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_extra_field_value_create.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientExtraFieldValueCreateCWProxy {
  ClientExtraFieldValueCreate id(String id);

  ClientExtraFieldValueCreate client(int client);

  ClientExtraFieldValueCreate fieldDefinition(String fieldDefinition);

  ClientExtraFieldValueCreate value(Object? value);

  ClientExtraFieldValueCreate notes(String? notes);

  ClientExtraFieldValueCreate isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientExtraFieldValueCreate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientExtraFieldValueCreate(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientExtraFieldValueCreate call({
    String id,
    int client,
    String fieldDefinition,
    Object? value,
    String? notes,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientExtraFieldValueCreate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientExtraFieldValueCreate.copyWith.fieldName(...)`
class _$ClientExtraFieldValueCreateCWProxyImpl
    implements _$ClientExtraFieldValueCreateCWProxy {
  const _$ClientExtraFieldValueCreateCWProxyImpl(this._value);

  final ClientExtraFieldValueCreate _value;

  @override
  ClientExtraFieldValueCreate id(String id) => this(id: id);

  @override
  ClientExtraFieldValueCreate client(int client) => this(client: client);

  @override
  ClientExtraFieldValueCreate fieldDefinition(String fieldDefinition) =>
      this(fieldDefinition: fieldDefinition);

  @override
  ClientExtraFieldValueCreate value(Object? value) => this(value: value);

  @override
  ClientExtraFieldValueCreate notes(String? notes) => this(notes: notes);

  @override
  ClientExtraFieldValueCreate isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientExtraFieldValueCreate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientExtraFieldValueCreate(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientExtraFieldValueCreate call({
    Object? id = const $CopyWithPlaceholder(),
    Object? client = const $CopyWithPlaceholder(),
    Object? fieldDefinition = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return ClientExtraFieldValueCreate(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      client: client == const $CopyWithPlaceholder()
          ? _value.client
          // ignore: cast_nullable_to_non_nullable
          : client as int,
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

extension $ClientExtraFieldValueCreateCopyWith on ClientExtraFieldValueCreate {
  /// Returns a callable class that can be used as follows: `instanceOfClientExtraFieldValueCreate.copyWith(...)` or like so:`instanceOfClientExtraFieldValueCreate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientExtraFieldValueCreateCWProxy get copyWith =>
      _$ClientExtraFieldValueCreateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientExtraFieldValueCreate _$ClientExtraFieldValueCreateFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ClientExtraFieldValueCreate',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['id', 'client', 'field_definition']);
    final val = ClientExtraFieldValueCreate(
      id: $checkedConvert('id', (v) => v as String),
      client: $checkedConvert('client', (v) => (v as num).toInt()),
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

Map<String, dynamic> _$ClientExtraFieldValueCreateToJson(
  ClientExtraFieldValueCreate instance,
) => <String, dynamic>{
  'id': instance.id,
  'client': instance.client,
  'field_definition': instance.fieldDefinition,
  'value': ?instance.value,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
};
