// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_client_extra_field_value_create_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedClientExtraFieldValueCreateRequestCWProxy {
  PatchedClientExtraFieldValueCreateRequest client(int? client);

  PatchedClientExtraFieldValueCreateRequest fieldDefinition(
    String? fieldDefinition,
  );

  PatchedClientExtraFieldValueCreateRequest value(Object? value);

  PatchedClientExtraFieldValueCreateRequest notes(String? notes);

  PatchedClientExtraFieldValueCreateRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedClientExtraFieldValueCreateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedClientExtraFieldValueCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedClientExtraFieldValueCreateRequest call({
    int? client,
    String? fieldDefinition,
    Object? value,
    String? notes,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedClientExtraFieldValueCreateRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedClientExtraFieldValueCreateRequest.copyWith.fieldName(...)`
class _$PatchedClientExtraFieldValueCreateRequestCWProxyImpl
    implements _$PatchedClientExtraFieldValueCreateRequestCWProxy {
  const _$PatchedClientExtraFieldValueCreateRequestCWProxyImpl(this._value);

  final PatchedClientExtraFieldValueCreateRequest _value;

  @override
  PatchedClientExtraFieldValueCreateRequest client(int? client) =>
      this(client: client);

  @override
  PatchedClientExtraFieldValueCreateRequest fieldDefinition(
    String? fieldDefinition,
  ) => this(fieldDefinition: fieldDefinition);

  @override
  PatchedClientExtraFieldValueCreateRequest value(Object? value) =>
      this(value: value);

  @override
  PatchedClientExtraFieldValueCreateRequest notes(String? notes) =>
      this(notes: notes);

  @override
  PatchedClientExtraFieldValueCreateRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedClientExtraFieldValueCreateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedClientExtraFieldValueCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedClientExtraFieldValueCreateRequest call({
    Object? client = const $CopyWithPlaceholder(),
    Object? fieldDefinition = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return PatchedClientExtraFieldValueCreateRequest(
      client: client == const $CopyWithPlaceholder()
          ? _value.client
          // ignore: cast_nullable_to_non_nullable
          : client as int?,
      fieldDefinition: fieldDefinition == const $CopyWithPlaceholder()
          ? _value.fieldDefinition
          // ignore: cast_nullable_to_non_nullable
          : fieldDefinition as String?,
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

extension $PatchedClientExtraFieldValueCreateRequestCopyWith
    on PatchedClientExtraFieldValueCreateRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedClientExtraFieldValueCreateRequest.copyWith(...)` or like so:`instanceOfPatchedClientExtraFieldValueCreateRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedClientExtraFieldValueCreateRequestCWProxy get copyWith =>
      _$PatchedClientExtraFieldValueCreateRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedClientExtraFieldValueCreateRequest
_$PatchedClientExtraFieldValueCreateRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedClientExtraFieldValueCreateRequest',
  json,
  ($checkedConvert) {
    final val = PatchedClientExtraFieldValueCreateRequest(
      client: $checkedConvert('client', (v) => (v as num?)?.toInt()),
      fieldDefinition: $checkedConvert('field_definition', (v) => v as String?),
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

Map<String, dynamic> _$PatchedClientExtraFieldValueCreateRequestToJson(
  PatchedClientExtraFieldValueCreateRequest instance,
) => <String, dynamic>{
  'client': ?instance.client,
  'field_definition': ?instance.fieldDefinition,
  'value': ?instance.value,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
};
