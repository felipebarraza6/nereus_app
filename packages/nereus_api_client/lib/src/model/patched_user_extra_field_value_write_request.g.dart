// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_user_extra_field_value_write_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedUserExtraFieldValueWriteRequestCWProxy {
  PatchedUserExtraFieldValueWriteRequest user(int? user);

  PatchedUserExtraFieldValueWriteRequest fieldDefinition(
    String? fieldDefinition,
  );

  PatchedUserExtraFieldValueWriteRequest value(Object? value);

  PatchedUserExtraFieldValueWriteRequest notes(String? notes);

  PatchedUserExtraFieldValueWriteRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedUserExtraFieldValueWriteRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedUserExtraFieldValueWriteRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedUserExtraFieldValueWriteRequest call({
    int? user,
    String? fieldDefinition,
    Object? value,
    String? notes,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedUserExtraFieldValueWriteRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedUserExtraFieldValueWriteRequest.copyWith.fieldName(...)`
class _$PatchedUserExtraFieldValueWriteRequestCWProxyImpl
    implements _$PatchedUserExtraFieldValueWriteRequestCWProxy {
  const _$PatchedUserExtraFieldValueWriteRequestCWProxyImpl(this._value);

  final PatchedUserExtraFieldValueWriteRequest _value;

  @override
  PatchedUserExtraFieldValueWriteRequest user(int? user) => this(user: user);

  @override
  PatchedUserExtraFieldValueWriteRequest fieldDefinition(
    String? fieldDefinition,
  ) => this(fieldDefinition: fieldDefinition);

  @override
  PatchedUserExtraFieldValueWriteRequest value(Object? value) =>
      this(value: value);

  @override
  PatchedUserExtraFieldValueWriteRequest notes(String? notes) =>
      this(notes: notes);

  @override
  PatchedUserExtraFieldValueWriteRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedUserExtraFieldValueWriteRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedUserExtraFieldValueWriteRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedUserExtraFieldValueWriteRequest call({
    Object? user = const $CopyWithPlaceholder(),
    Object? fieldDefinition = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return PatchedUserExtraFieldValueWriteRequest(
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as int?,
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

extension $PatchedUserExtraFieldValueWriteRequestCopyWith
    on PatchedUserExtraFieldValueWriteRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedUserExtraFieldValueWriteRequest.copyWith(...)` or like so:`instanceOfPatchedUserExtraFieldValueWriteRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedUserExtraFieldValueWriteRequestCWProxy get copyWith =>
      _$PatchedUserExtraFieldValueWriteRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedUserExtraFieldValueWriteRequest
_$PatchedUserExtraFieldValueWriteRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedUserExtraFieldValueWriteRequest',
      json,
      ($checkedConvert) {
        final val = PatchedUserExtraFieldValueWriteRequest(
          user: $checkedConvert('user', (v) => (v as num?)?.toInt()),
          fieldDefinition: $checkedConvert(
            'field_definition',
            (v) => v as String?,
          ),
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

Map<String, dynamic> _$PatchedUserExtraFieldValueWriteRequestToJson(
  PatchedUserExtraFieldValueWriteRequest instance,
) => <String, dynamic>{
  'user': ?instance.user,
  'field_definition': ?instance.fieldDefinition,
  'value': ?instance.value,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
};
