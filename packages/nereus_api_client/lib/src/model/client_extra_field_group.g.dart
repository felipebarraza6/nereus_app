// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_extra_field_group.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientExtraFieldGroupCWProxy {
  ClientExtraFieldGroup id(String id);

  ClientExtraFieldGroup name(String name);

  ClientExtraFieldGroup key(String key);

  ClientExtraFieldGroup description(String? description);

  ClientExtraFieldGroup displayOrder(int? displayOrder);

  ClientExtraFieldGroup icon(String? icon);

  ClientExtraFieldGroup color(String? color);

  ClientExtraFieldGroup isActive(bool? isActive);

  ClientExtraFieldGroup created(DateTime created);

  ClientExtraFieldGroup modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientExtraFieldGroup(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientExtraFieldGroup(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientExtraFieldGroup call({
    String id,
    String name,
    String key,
    String? description,
    int? displayOrder,
    String? icon,
    String? color,
    bool? isActive,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientExtraFieldGroup.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientExtraFieldGroup.copyWith.fieldName(...)`
class _$ClientExtraFieldGroupCWProxyImpl
    implements _$ClientExtraFieldGroupCWProxy {
  const _$ClientExtraFieldGroupCWProxyImpl(this._value);

  final ClientExtraFieldGroup _value;

  @override
  ClientExtraFieldGroup id(String id) => this(id: id);

  @override
  ClientExtraFieldGroup name(String name) => this(name: name);

  @override
  ClientExtraFieldGroup key(String key) => this(key: key);

  @override
  ClientExtraFieldGroup description(String? description) =>
      this(description: description);

  @override
  ClientExtraFieldGroup displayOrder(int? displayOrder) =>
      this(displayOrder: displayOrder);

  @override
  ClientExtraFieldGroup icon(String? icon) => this(icon: icon);

  @override
  ClientExtraFieldGroup color(String? color) => this(color: color);

  @override
  ClientExtraFieldGroup isActive(bool? isActive) => this(isActive: isActive);

  @override
  ClientExtraFieldGroup created(DateTime created) => this(created: created);

  @override
  ClientExtraFieldGroup modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientExtraFieldGroup(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientExtraFieldGroup(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientExtraFieldGroup call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? key = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? displayOrder = const $CopyWithPlaceholder(),
    Object? icon = const $CopyWithPlaceholder(),
    Object? color = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return ClientExtraFieldGroup(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      displayOrder: displayOrder == const $CopyWithPlaceholder()
          ? _value.displayOrder
          // ignore: cast_nullable_to_non_nullable
          : displayOrder as int?,
      icon: icon == const $CopyWithPlaceholder()
          ? _value.icon
          // ignore: cast_nullable_to_non_nullable
          : icon as String?,
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

extension $ClientExtraFieldGroupCopyWith on ClientExtraFieldGroup {
  /// Returns a callable class that can be used as follows: `instanceOfClientExtraFieldGroup.copyWith(...)` or like so:`instanceOfClientExtraFieldGroup.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientExtraFieldGroupCWProxy get copyWith =>
      _$ClientExtraFieldGroupCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientExtraFieldGroup _$ClientExtraFieldGroupFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ClientExtraFieldGroup',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['id', 'name', 'key', 'created', 'modified'],
    );
    final val = ClientExtraFieldGroup(
      id: $checkedConvert('id', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      key: $checkedConvert('key', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      displayOrder: $checkedConvert(
        'display_order',
        (v) => (v as num?)?.toInt(),
      ),
      icon: $checkedConvert('icon', (v) => v as String?),
      color: $checkedConvert('color', (v) => v as String?),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {'displayOrder': 'display_order', 'isActive': 'is_active'},
);

Map<String, dynamic> _$ClientExtraFieldGroupToJson(
  ClientExtraFieldGroup instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'key': instance.key,
  'description': ?instance.description,
  'display_order': ?instance.displayOrder,
  'icon': ?instance.icon,
  'color': ?instance.color,
  'is_active': ?instance.isActive,
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};
