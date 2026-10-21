// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_category.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketCategoryCWProxy {
  TicketCategory id(String id);

  TicketCategory branch(int? branch);

  TicketCategory name(String name);

  TicketCategory code(String? code);

  TicketCategory description(String? description);

  TicketCategory parent(String? parent);

  TicketCategory parentName(String parentName);

  TicketCategory color(String? color);

  TicketCategory isActive(bool? isActive);

  TicketCategory created(DateTime created);

  TicketCategory modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketCategory(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketCategory(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketCategory call({
    String id,
    int? branch,
    String name,
    String? code,
    String? description,
    String? parent,
    String parentName,
    String? color,
    bool? isActive,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketCategory.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketCategory.copyWith.fieldName(...)`
class _$TicketCategoryCWProxyImpl implements _$TicketCategoryCWProxy {
  const _$TicketCategoryCWProxyImpl(this._value);

  final TicketCategory _value;

  @override
  TicketCategory id(String id) => this(id: id);

  @override
  TicketCategory branch(int? branch) => this(branch: branch);

  @override
  TicketCategory name(String name) => this(name: name);

  @override
  TicketCategory code(String? code) => this(code: code);

  @override
  TicketCategory description(String? description) =>
      this(description: description);

  @override
  TicketCategory parent(String? parent) => this(parent: parent);

  @override
  TicketCategory parentName(String parentName) => this(parentName: parentName);

  @override
  TicketCategory color(String? color) => this(color: color);

  @override
  TicketCategory isActive(bool? isActive) => this(isActive: isActive);

  @override
  TicketCategory created(DateTime created) => this(created: created);

  @override
  TicketCategory modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketCategory(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketCategory(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketCategory call({
    Object? id = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? parent = const $CopyWithPlaceholder(),
    Object? parentName = const $CopyWithPlaceholder(),
    Object? color = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TicketCategory(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
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
      parentName: parentName == const $CopyWithPlaceholder()
          ? _value.parentName
          // ignore: cast_nullable_to_non_nullable
          : parentName as String,
      color: color == const $CopyWithPlaceholder()
          ? _value.color
          // ignore: cast_nullable_to_non_nullable
          : color as String?,
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

extension $TicketCategoryCopyWith on TicketCategory {
  /// Returns a callable class that can be used as follows: `instanceOfTicketCategory.copyWith(...)` or like so:`instanceOfTicketCategory.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketCategoryCWProxy get copyWith => _$TicketCategoryCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketCategory _$TicketCategoryFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TicketCategory',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['id', 'name', 'parent_name', 'created', 'modified'],
    );
    final val = TicketCategory(
      id: $checkedConvert('id', (v) => v as String),
      branch: $checkedConvert('branch', (v) => (v as num?)?.toInt()),
      name: $checkedConvert('name', (v) => v as String),
      code: $checkedConvert('code', (v) => v as String? ?? ''),
      description: $checkedConvert('description', (v) => v as String?),
      parent: $checkedConvert('parent', (v) => v as String?),
      parentName: $checkedConvert('parent_name', (v) => v as String),
      color: $checkedConvert('color', (v) => v as String?),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {'parentName': 'parent_name', 'isActive': 'is_active'},
);

Map<String, dynamic> _$TicketCategoryToJson(TicketCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'branch': ?instance.branch,
      'name': instance.name,
      'code': ?instance.code,
      'description': ?instance.description,
      'parent': ?instance.parent,
      'parent_name': instance.parentName,
      'color': ?instance.color,
      'is_active': ?instance.isActive,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
