// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_extra_field_value_create_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientExtraFieldValueCreateRequestCWProxy {
  ClientExtraFieldValueCreateRequest client(int client);

  ClientExtraFieldValueCreateRequest fieldDefinition(String fieldDefinition);

  ClientExtraFieldValueCreateRequest value(Object? value);

  ClientExtraFieldValueCreateRequest notes(String? notes);

  ClientExtraFieldValueCreateRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientExtraFieldValueCreateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientExtraFieldValueCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientExtraFieldValueCreateRequest call({
    int client,
    String fieldDefinition,
    Object? value,
    String? notes,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientExtraFieldValueCreateRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientExtraFieldValueCreateRequest.copyWith.fieldName(...)`
class _$ClientExtraFieldValueCreateRequestCWProxyImpl
    implements _$ClientExtraFieldValueCreateRequestCWProxy {
  const _$ClientExtraFieldValueCreateRequestCWProxyImpl(this._value);

  final ClientExtraFieldValueCreateRequest _value;

  @override
  ClientExtraFieldValueCreateRequest client(int client) => this(client: client);

  @override
  ClientExtraFieldValueCreateRequest fieldDefinition(String fieldDefinition) =>
      this(fieldDefinition: fieldDefinition);

  @override
  ClientExtraFieldValueCreateRequest value(Object? value) => this(value: value);

  @override
  ClientExtraFieldValueCreateRequest notes(String? notes) => this(notes: notes);

  @override
  ClientExtraFieldValueCreateRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientExtraFieldValueCreateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientExtraFieldValueCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientExtraFieldValueCreateRequest call({
    Object? client = const $CopyWithPlaceholder(),
    Object? fieldDefinition = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return ClientExtraFieldValueCreateRequest(
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

extension $ClientExtraFieldValueCreateRequestCopyWith
    on ClientExtraFieldValueCreateRequest {
  /// Returns a callable class that can be used as follows: `instanceOfClientExtraFieldValueCreateRequest.copyWith(...)` or like so:`instanceOfClientExtraFieldValueCreateRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientExtraFieldValueCreateRequestCWProxy get copyWith =>
      _$ClientExtraFieldValueCreateRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientExtraFieldValueCreateRequest _$ClientExtraFieldValueCreateRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ClientExtraFieldValueCreateRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['client', 'field_definition']);
    final val = ClientExtraFieldValueCreateRequest(
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

Map<String, dynamic> _$ClientExtraFieldValueCreateRequestToJson(
  ClientExtraFieldValueCreateRequest instance,
) => <String, dynamic>{
  'client': instance.client,
  'field_definition': instance.fieldDefinition,
  'value': ?instance.value,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
};
