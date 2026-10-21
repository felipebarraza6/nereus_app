// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_ticket_category_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedTicketCategoryRequestCWProxy {
  PatchedTicketCategoryRequest branch(int? branch);

  PatchedTicketCategoryRequest name(String? name);

  PatchedTicketCategoryRequest code(String? code);

  PatchedTicketCategoryRequest description(String? description);

  PatchedTicketCategoryRequest parent(String? parent);

  PatchedTicketCategoryRequest color(String? color);

  PatchedTicketCategoryRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketCategoryRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketCategoryRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketCategoryRequest call({
    int? branch,
    String? name,
    String? code,
    String? description,
    String? parent,
    String? color,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedTicketCategoryRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedTicketCategoryRequest.copyWith.fieldName(...)`
class _$PatchedTicketCategoryRequestCWProxyImpl
    implements _$PatchedTicketCategoryRequestCWProxy {
  const _$PatchedTicketCategoryRequestCWProxyImpl(this._value);

  final PatchedTicketCategoryRequest _value;

  @override
  PatchedTicketCategoryRequest branch(int? branch) => this(branch: branch);

  @override
  PatchedTicketCategoryRequest name(String? name) => this(name: name);

  @override
  PatchedTicketCategoryRequest code(String? code) => this(code: code);

  @override
  PatchedTicketCategoryRequest description(String? description) =>
      this(description: description);

  @override
  PatchedTicketCategoryRequest parent(String? parent) => this(parent: parent);

  @override
  PatchedTicketCategoryRequest color(String? color) => this(color: color);

  @override
  PatchedTicketCategoryRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketCategoryRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketCategoryRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketCategoryRequest call({
    Object? branch = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? parent = const $CopyWithPlaceholder(),
    Object? color = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return PatchedTicketCategoryRequest(
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      parent: parent == const $CopyWithPlaceholder()
          ? _value.parent
          // ignore: cast_nullable_to_non_nullable
          : parent as String?,
      color: color == const $CopyWithPlaceholder()
          ? _value.color
          // ignore: cast_nullable_to_non_nullable
          : color as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $PatchedTicketCategoryRequestCopyWith
    on PatchedTicketCategoryRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedTicketCategoryRequest.copyWith(...)` or like so:`instanceOfPatchedTicketCategoryRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedTicketCategoryRequestCWProxy get copyWith =>
      _$PatchedTicketCategoryRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedTicketCategoryRequest _$PatchedTicketCategoryRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PatchedTicketCategoryRequest', json, ($checkedConvert) {
  final val = PatchedTicketCategoryRequest(
    branch: $checkedConvert('branch', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
    code: $checkedConvert('code', (v) => v as String? ?? ''),
    description: $checkedConvert('description', (v) => v as String?),
    parent: $checkedConvert('parent', (v) => v as String?),
    color: $checkedConvert('color', (v) => v as String?),
    isActive: $checkedConvert('is_active', (v) => v as bool?),
  );
  return val;
}, fieldKeyMap: const {'isActive': 'is_active'});

Map<String, dynamic> _$PatchedTicketCategoryRequestToJson(
  PatchedTicketCategoryRequest instance,
) => <String, dynamic>{
  'branch': ?instance.branch,
  'name': ?instance.name,
  'code': ?instance.code,
  'description': ?instance.description,
  'parent': ?instance.parent,
  'color': ?instance.color,
  'is_active': ?instance.isActive,
};
