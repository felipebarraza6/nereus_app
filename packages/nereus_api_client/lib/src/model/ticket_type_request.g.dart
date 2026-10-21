// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_type_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketTypeRequestCWProxy {
  TicketTypeRequest branch(int? branch);

  TicketTypeRequest name(String name);

  TicketTypeRequest description(String? description);

  TicketTypeRequest requiresVisit(bool? requiresVisit);

  TicketTypeRequest defaultSlaPolicy(String? defaultSlaPolicy);

  TicketTypeRequest customFields(Object? customFields);

  TicketTypeRequest color(String? color);

  TicketTypeRequest icon(String? icon);

  TicketTypeRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketTypeRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketTypeRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketTypeRequest call({
    int? branch,
    String name,
    String? description,
    bool? requiresVisit,
    String? defaultSlaPolicy,
    Object? customFields,
    String? color,
    String? icon,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketTypeRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketTypeRequest.copyWith.fieldName(...)`
class _$TicketTypeRequestCWProxyImpl implements _$TicketTypeRequestCWProxy {
  const _$TicketTypeRequestCWProxyImpl(this._value);

  final TicketTypeRequest _value;

  @override
  TicketTypeRequest branch(int? branch) => this(branch: branch);

  @override
  TicketTypeRequest name(String name) => this(name: name);

  @override
  TicketTypeRequest description(String? description) =>
      this(description: description);

  @override
  TicketTypeRequest requiresVisit(bool? requiresVisit) =>
      this(requiresVisit: requiresVisit);

  @override
  TicketTypeRequest defaultSlaPolicy(String? defaultSlaPolicy) =>
      this(defaultSlaPolicy: defaultSlaPolicy);

  @override
  TicketTypeRequest customFields(Object? customFields) =>
      this(customFields: customFields);

  @override
  TicketTypeRequest color(String? color) => this(color: color);

  @override
  TicketTypeRequest icon(String? icon) => this(icon: icon);

  @override
  TicketTypeRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketTypeRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketTypeRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketTypeRequest call({
    Object? branch = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? requiresVisit = const $CopyWithPlaceholder(),
    Object? defaultSlaPolicy = const $CopyWithPlaceholder(),
    Object? customFields = const $CopyWithPlaceholder(),
    Object? color = const $CopyWithPlaceholder(),
    Object? icon = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return TicketTypeRequest(
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
    );
  }
}

extension $TicketTypeRequestCopyWith on TicketTypeRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTicketTypeRequest.copyWith(...)` or like so:`instanceOfTicketTypeRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketTypeRequestCWProxy get copyWith =>
      _$TicketTypeRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketTypeRequest _$TicketTypeRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TicketTypeRequest',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['name']);
        final val = TicketTypeRequest(
          branch: $checkedConvert('branch', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
          requiresVisit: $checkedConvert('requires_visit', (v) => v as bool?),
          defaultSlaPolicy: $checkedConvert(
            'default_sla_policy',
            (v) => v as String?,
          ),
          customFields: $checkedConvert('custom_fields', (v) => v),
          color: $checkedConvert('color', (v) => v as String?),
          icon: $checkedConvert('icon', (v) => v as String?),
          isActive: $checkedConvert('is_active', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'requiresVisit': 'requires_visit',
        'defaultSlaPolicy': 'default_sla_policy',
        'customFields': 'custom_fields',
        'isActive': 'is_active',
      },
    );

Map<String, dynamic> _$TicketTypeRequestToJson(TicketTypeRequest instance) =>
    <String, dynamic>{
      'branch': ?instance.branch,
      'name': instance.name,
      'description': ?instance.description,
      'requires_visit': ?instance.requiresVisit,
      'default_sla_policy': ?instance.defaultSlaPolicy,
      'custom_fields': ?instance.customFields,
      'color': ?instance.color,
      'icon': ?instance.icon,
      'is_active': ?instance.isActive,
    };
