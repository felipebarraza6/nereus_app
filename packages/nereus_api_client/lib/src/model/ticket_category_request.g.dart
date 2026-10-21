// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_category_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketCategoryRequestCWProxy {
  TicketCategoryRequest branch(int? branch);

  TicketCategoryRequest name(String name);

  TicketCategoryRequest code(String? code);

  TicketCategoryRequest description(String? description);

  TicketCategoryRequest parent(String? parent);

  TicketCategoryRequest color(String? color);

  TicketCategoryRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketCategoryRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketCategoryRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketCategoryRequest call({
    int? branch,
    String name,
    String? code,
    String? description,
    String? parent,
    String? color,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketCategoryRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketCategoryRequest.copyWith.fieldName(...)`
class _$TicketCategoryRequestCWProxyImpl
    implements _$TicketCategoryRequestCWProxy {
  const _$TicketCategoryRequestCWProxyImpl(this._value);

  final TicketCategoryRequest _value;

  @override
  TicketCategoryRequest branch(int? branch) => this(branch: branch);

  @override
  TicketCategoryRequest name(String name) => this(name: name);

  @override
  TicketCategoryRequest code(String? code) => this(code: code);

  @override
  TicketCategoryRequest description(String? description) =>
      this(description: description);

  @override
  TicketCategoryRequest parent(String? parent) => this(parent: parent);

  @override
  TicketCategoryRequest color(String? color) => this(color: color);

  @override
  TicketCategoryRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketCategoryRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketCategoryRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketCategoryRequest call({
    Object? branch = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? parent = const $CopyWithPlaceholder(),
    Object? color = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return TicketCategoryRequest(
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
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

extension $TicketCategoryRequestCopyWith on TicketCategoryRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTicketCategoryRequest.copyWith(...)` or like so:`instanceOfTicketCategoryRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketCategoryRequestCWProxy get copyWith =>
      _$TicketCategoryRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketCategoryRequest _$TicketCategoryRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TicketCategoryRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = TicketCategoryRequest(
    branch: $checkedConvert('branch', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String),
    code: $checkedConvert('code', (v) => v as String? ?? ''),
    description: $checkedConvert('description', (v) => v as String?),
    parent: $checkedConvert('parent', (v) => v as String?),
    color: $checkedConvert('color', (v) => v as String?),
    isActive: $checkedConvert('is_active', (v) => v as bool?),
  );
  return val;
}, fieldKeyMap: const {'isActive': 'is_active'});

Map<String, dynamic> _$TicketCategoryRequestToJson(
  TicketCategoryRequest instance,
) => <String, dynamic>{
  'branch': ?instance.branch,
  'name': instance.name,
  'code': ?instance.code,
  'description': ?instance.description,
  'parent': ?instance.parent,
  'color': ?instance.color,
  'is_active': ?instance.isActive,
};
