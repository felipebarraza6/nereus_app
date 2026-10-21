// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_type.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketTypeCWProxy {
  TicketType id(String id);

  TicketType branch(int? branch);

  TicketType name(String name);

  TicketType description(String? description);

  TicketType requiresVisit(bool? requiresVisit);

  TicketType defaultSlaPolicy(String? defaultSlaPolicy);

  TicketType defaultSlaPolicyName(String defaultSlaPolicyName);

  TicketType customFields(Object? customFields);

  TicketType color(String? color);

  TicketType icon(String? icon);

  TicketType isActive(bool? isActive);

  TicketType created(DateTime created);

  TicketType modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketType(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketType(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketType call({
    String id,
    int? branch,
    String name,
    String? description,
    bool? requiresVisit,
    String? defaultSlaPolicy,
    String defaultSlaPolicyName,
    Object? customFields,
    String? color,
    String? icon,
    bool? isActive,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketType.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketType.copyWith.fieldName(...)`
class _$TicketTypeCWProxyImpl implements _$TicketTypeCWProxy {
  const _$TicketTypeCWProxyImpl(this._value);

  final TicketType _value;

  @override
  TicketType id(String id) => this(id: id);

  @override
  TicketType branch(int? branch) => this(branch: branch);

  @override
  TicketType name(String name) => this(name: name);

  @override
  TicketType description(String? description) => this(description: description);

  @override
  TicketType requiresVisit(bool? requiresVisit) =>
      this(requiresVisit: requiresVisit);

  @override
  TicketType defaultSlaPolicy(String? defaultSlaPolicy) =>
      this(defaultSlaPolicy: defaultSlaPolicy);

  @override
  TicketType defaultSlaPolicyName(String defaultSlaPolicyName) =>
      this(defaultSlaPolicyName: defaultSlaPolicyName);

  @override
  TicketType customFields(Object? customFields) =>
      this(customFields: customFields);

  @override
  TicketType color(String? color) => this(color: color);

  @override
  TicketType icon(String? icon) => this(icon: icon);

  @override
  TicketType isActive(bool? isActive) => this(isActive: isActive);

  @override
  TicketType created(DateTime created) => this(created: created);

  @override
  TicketType modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketType(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketType(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketType call({
    Object? id = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? requiresVisit = const $CopyWithPlaceholder(),
    Object? defaultSlaPolicy = const $CopyWithPlaceholder(),
    Object? defaultSlaPolicyName = const $CopyWithPlaceholder(),
    Object? customFields = const $CopyWithPlaceholder(),
    Object? color = const $CopyWithPlaceholder(),
    Object? icon = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TicketType(
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
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      requiresVisit: requiresVisit == const $CopyWithPlaceholder()
          ? _value.requiresVisit
          // ignore: cast_nullable_to_non_nullable
          : requiresVisit as bool?,
      defaultSlaPolicy: defaultSlaPolicy == const $CopyWithPlaceholder()
          ? _value.defaultSlaPolicy
          // ignore: cast_nullable_to_non_nullable
          : defaultSlaPolicy as String?,
      defaultSlaPolicyName: defaultSlaPolicyName == const $CopyWithPlaceholder()
          ? _value.defaultSlaPolicyName
          // ignore: cast_nullable_to_non_nullable
          : defaultSlaPolicyName as String,
      customFields: customFields == const $CopyWithPlaceholder()
          ? _value.customFields
          // ignore: cast_nullable_to_non_nullable
          : customFields as Object?,
      color: color == const $CopyWithPlaceholder()
          ? _value.color
          // ignore: cast_nullable_to_non_nullable
          : color as String?,
      icon: icon == const $CopyWithPlaceholder()
          ? _value.icon
          // ignore: cast_nullable_to_non_nullable
          : icon as String?,
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

extension $TicketTypeCopyWith on TicketType {
  /// Returns a callable class that can be used as follows: `instanceOfTicketType.copyWith(...)` or like so:`instanceOfTicketType.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketTypeCWProxy get copyWith => _$TicketTypeCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketType _$TicketTypeFromJson(Map<String, dynamic> json) => $checkedCreate(
  'TicketType',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'name',
        'default_sla_policy_name',
        'created',
        'modified',
      ],
    );
    final val = TicketType(
      id: $checkedConvert('id', (v) => v as String),
      branch: $checkedConvert('branch', (v) => (v as num?)?.toInt()),
      name: $checkedConvert('name', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      requiresVisit: $checkedConvert('requires_visit', (v) => v as bool?),
      defaultSlaPolicy: $checkedConvert(
        'default_sla_policy',
        (v) => v as String?,
      ),
      defaultSlaPolicyName: $checkedConvert(
        'default_sla_policy_name',
        (v) => v as String,
      ),
      customFields: $checkedConvert('custom_fields', (v) => v),
      color: $checkedConvert('color', (v) => v as String?),
      icon: $checkedConvert('icon', (v) => v as String?),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'requiresVisit': 'requires_visit',
    'defaultSlaPolicy': 'default_sla_policy',
    'defaultSlaPolicyName': 'default_sla_policy_name',
    'customFields': 'custom_fields',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$TicketTypeToJson(TicketType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'branch': ?instance.branch,
      'name': instance.name,
      'description': ?instance.description,
      'requires_visit': ?instance.requiresVisit,
      'default_sla_policy': ?instance.defaultSlaPolicy,
      'default_sla_policy_name': instance.defaultSlaPolicyName,
      'custom_fields': ?instance.customFields,
      'color': ?instance.color,
      'icon': ?instance.icon,
      'is_active': ?instance.isActive,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
