// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_ticket_type_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedTicketTypeRequestCWProxy {
  PatchedTicketTypeRequest branch(int? branch);

  PatchedTicketTypeRequest name(String? name);

  PatchedTicketTypeRequest description(String? description);

  PatchedTicketTypeRequest requiresVisit(bool? requiresVisit);

  PatchedTicketTypeRequest defaultSlaPolicy(String? defaultSlaPolicy);

  PatchedTicketTypeRequest customFields(Object? customFields);

  PatchedTicketTypeRequest color(String? color);

  PatchedTicketTypeRequest icon(String? icon);

  PatchedTicketTypeRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketTypeRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketTypeRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketTypeRequest call({
    int? branch,
    String? name,
    String? description,
    bool? requiresVisit,
    String? defaultSlaPolicy,
    Object? customFields,
    String? color,
    String? icon,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedTicketTypeRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedTicketTypeRequest.copyWith.fieldName(...)`
class _$PatchedTicketTypeRequestCWProxyImpl
    implements _$PatchedTicketTypeRequestCWProxy {
  const _$PatchedTicketTypeRequestCWProxyImpl(this._value);

  final PatchedTicketTypeRequest _value;

  @override
  PatchedTicketTypeRequest branch(int? branch) => this(branch: branch);

  @override
  PatchedTicketTypeRequest name(String? name) => this(name: name);

  @override
  PatchedTicketTypeRequest description(String? description) =>
      this(description: description);

  @override
  PatchedTicketTypeRequest requiresVisit(bool? requiresVisit) =>
      this(requiresVisit: requiresVisit);

  @override
  PatchedTicketTypeRequest defaultSlaPolicy(String? defaultSlaPolicy) =>
      this(defaultSlaPolicy: defaultSlaPolicy);

  @override
  PatchedTicketTypeRequest customFields(Object? customFields) =>
      this(customFields: customFields);

  @override
  PatchedTicketTypeRequest color(String? color) => this(color: color);

  @override
  PatchedTicketTypeRequest icon(String? icon) => this(icon: icon);

  @override
  PatchedTicketTypeRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketTypeRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketTypeRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketTypeRequest call({
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
    return PatchedTicketTypeRequest(
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
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

extension $PatchedTicketTypeRequestCopyWith on PatchedTicketTypeRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedTicketTypeRequest.copyWith(...)` or like so:`instanceOfPatchedTicketTypeRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedTicketTypeRequestCWProxy get copyWith =>
      _$PatchedTicketTypeRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedTicketTypeRequest _$PatchedTicketTypeRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedTicketTypeRequest',
  json,
  ($checkedConvert) {
    final val = PatchedTicketTypeRequest(
      branch: $checkedConvert('branch', (v) => (v as num?)?.toInt()),
      name: $checkedConvert('name', (v) => v as String?),
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

Map<String, dynamic> _$PatchedTicketTypeRequestToJson(
  PatchedTicketTypeRequest instance,
) => <String, dynamic>{
  'branch': ?instance.branch,
  'name': ?instance.name,
  'description': ?instance.description,
  'requires_visit': ?instance.requiresVisit,
  'default_sla_policy': ?instance.defaultSlaPolicy,
  'custom_fields': ?instance.customFields,
  'color': ?instance.color,
  'icon': ?instance.icon,
  'is_active': ?instance.isActive,
};
