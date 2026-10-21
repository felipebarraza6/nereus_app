// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_client_extra_field_group_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedClientExtraFieldGroupRequestCWProxy {
  PatchedClientExtraFieldGroupRequest name(String? name);

  PatchedClientExtraFieldGroupRequest key(String? key);

  PatchedClientExtraFieldGroupRequest description(String? description);

  PatchedClientExtraFieldGroupRequest displayOrder(int? displayOrder);

  PatchedClientExtraFieldGroupRequest icon(String? icon);

  PatchedClientExtraFieldGroupRequest color(String? color);

  PatchedClientExtraFieldGroupRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedClientExtraFieldGroupRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedClientExtraFieldGroupRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedClientExtraFieldGroupRequest call({
    String? name,
    String? key,
    String? description,
    int? displayOrder,
    String? icon,
    String? color,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedClientExtraFieldGroupRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedClientExtraFieldGroupRequest.copyWith.fieldName(...)`
class _$PatchedClientExtraFieldGroupRequestCWProxyImpl
    implements _$PatchedClientExtraFieldGroupRequestCWProxy {
  const _$PatchedClientExtraFieldGroupRequestCWProxyImpl(this._value);

  final PatchedClientExtraFieldGroupRequest _value;

  @override
  PatchedClientExtraFieldGroupRequest name(String? name) => this(name: name);

  @override
  PatchedClientExtraFieldGroupRequest key(String? key) => this(key: key);

  @override
  PatchedClientExtraFieldGroupRequest description(String? description) =>
      this(description: description);

  @override
  PatchedClientExtraFieldGroupRequest displayOrder(int? displayOrder) =>
      this(displayOrder: displayOrder);

  @override
  PatchedClientExtraFieldGroupRequest icon(String? icon) => this(icon: icon);

  @override
  PatchedClientExtraFieldGroupRequest color(String? color) =>
      this(color: color);

  @override
  PatchedClientExtraFieldGroupRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedClientExtraFieldGroupRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedClientExtraFieldGroupRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedClientExtraFieldGroupRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? key = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? displayOrder = const $CopyWithPlaceholder(),
    Object? icon = const $CopyWithPlaceholder(),
    Object? color = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return PatchedClientExtraFieldGroupRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      key: key == const $CopyWithPlaceholder()
          ? _value.key
          // ignore: cast_nullable_to_non_nullable
          : key as String?,
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
    );
  }
}

extension $PatchedClientExtraFieldGroupRequestCopyWith
    on PatchedClientExtraFieldGroupRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedClientExtraFieldGroupRequest.copyWith(...)` or like so:`instanceOfPatchedClientExtraFieldGroupRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedClientExtraFieldGroupRequestCWProxy get copyWith =>
      _$PatchedClientExtraFieldGroupRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedClientExtraFieldGroupRequest
_$PatchedClientExtraFieldGroupRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedClientExtraFieldGroupRequest',
      json,
      ($checkedConvert) {
        final val = PatchedClientExtraFieldGroupRequest(
          name: $checkedConvert('name', (v) => v as String?),
          key: $checkedConvert('key', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          displayOrder: $checkedConvert(
            'display_order',
            (v) => (v as num?)?.toInt(),
          ),
          icon: $checkedConvert('icon', (v) => v as String?),
          color: $checkedConvert('color', (v) => v as String?),
          isActive: $checkedConvert('is_active', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'displayOrder': 'display_order',
        'isActive': 'is_active',
      },
    );

Map<String, dynamic> _$PatchedClientExtraFieldGroupRequestToJson(
  PatchedClientExtraFieldGroupRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'key': ?instance.key,
  'description': ?instance.description,
  'display_order': ?instance.displayOrder,
  'icon': ?instance.icon,
  'color': ?instance.color,
  'is_active': ?instance.isActive,
};
