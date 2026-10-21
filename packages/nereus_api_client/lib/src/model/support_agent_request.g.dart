// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_agent_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SupportAgentRequestCWProxy {
  SupportAgentRequest branch(int? branch);

  SupportAgentRequest user(int user);

  SupportAgentRequest employee(int? employee);

  SupportAgentRequest workflow(String? workflow);

  SupportAgentRequest canHandleCritical(bool? canHandleCritical);

  SupportAgentRequest maxOpenTickets(int? maxOpenTickets);

  SupportAgentRequest specialties(Object? specialties);

  SupportAgentRequest accessibleTypes(List<String>? accessibleTypes);

  SupportAgentRequest accessibleCategories(List<String>? accessibleCategories);

  SupportAgentRequest isAvailable(bool? isAvailable);

  SupportAgentRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SupportAgentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SupportAgentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  SupportAgentRequest call({
    int? branch,
    int user,
    int? employee,
    String? workflow,
    bool? canHandleCritical,
    int? maxOpenTickets,
    Object? specialties,
    List<String>? accessibleTypes,
    List<String>? accessibleCategories,
    bool? isAvailable,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSupportAgentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSupportAgentRequest.copyWith.fieldName(...)`
class _$SupportAgentRequestCWProxyImpl implements _$SupportAgentRequestCWProxy {
  const _$SupportAgentRequestCWProxyImpl(this._value);

  final SupportAgentRequest _value;

  @override
  SupportAgentRequest branch(int? branch) => this(branch: branch);

  @override
  SupportAgentRequest user(int user) => this(user: user);

  @override
  SupportAgentRequest employee(int? employee) => this(employee: employee);

  @override
  SupportAgentRequest workflow(String? workflow) => this(workflow: workflow);

  @override
  SupportAgentRequest canHandleCritical(bool? canHandleCritical) =>
      this(canHandleCritical: canHandleCritical);

  @override
  SupportAgentRequest maxOpenTickets(int? maxOpenTickets) =>
      this(maxOpenTickets: maxOpenTickets);

  @override
  SupportAgentRequest specialties(Object? specialties) =>
      this(specialties: specialties);

  @override
  SupportAgentRequest accessibleTypes(List<String>? accessibleTypes) =>
      this(accessibleTypes: accessibleTypes);

  @override
  SupportAgentRequest accessibleCategories(
    List<String>? accessibleCategories,
  ) => this(accessibleCategories: accessibleCategories);

  @override
  SupportAgentRequest isAvailable(bool? isAvailable) =>
      this(isAvailable: isAvailable);

  @override
  SupportAgentRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SupportAgentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SupportAgentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  SupportAgentRequest call({
    Object? branch = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? employee = const $CopyWithPlaceholder(),
    Object? workflow = const $CopyWithPlaceholder(),
    Object? canHandleCritical = const $CopyWithPlaceholder(),
    Object? maxOpenTickets = const $CopyWithPlaceholder(),
    Object? specialties = const $CopyWithPlaceholder(),
    Object? accessibleTypes = const $CopyWithPlaceholder(),
    Object? accessibleCategories = const $CopyWithPlaceholder(),
    Object? isAvailable = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return SupportAgentRequest(
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as int?,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as int,
      employee: employee == const $CopyWithPlaceholder()
          ? _value.employee
          // ignore: cast_nullable_to_non_nullable
          : employee as int?,
      workflow: workflow == const $CopyWithPlaceholder()
          ? _value.workflow
          // ignore: cast_nullable_to_non_nullable
          : workflow as String?,
      canHandleCritical: canHandleCritical == const $CopyWithPlaceholder()
          ? _value.canHandleCritical
          // ignore: cast_nullable_to_non_nullable
          : canHandleCritical as bool?,
      maxOpenTickets: maxOpenTickets == const $CopyWithPlaceholder()
          ? _value.maxOpenTickets
          // ignore: cast_nullable_to_non_nullable
          : maxOpenTickets as int?,
      specialties: specialties == const $CopyWithPlaceholder()
          ? _value.specialties
          // ignore: cast_nullable_to_non_nullable
          : specialties as Object?,
      accessibleTypes: accessibleTypes == const $CopyWithPlaceholder()
          ? _value.accessibleTypes
          // ignore: cast_nullable_to_non_nullable
          : accessibleTypes as List<String>?,
      accessibleCategories: accessibleCategories == const $CopyWithPlaceholder()
          ? _value.accessibleCategories
          // ignore: cast_nullable_to_non_nullable
          : accessibleCategories as List<String>?,
      isAvailable: isAvailable == const $CopyWithPlaceholder()
          ? _value.isAvailable
          // ignore: cast_nullable_to_non_nullable
          : isAvailable as bool?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $SupportAgentRequestCopyWith on SupportAgentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfSupportAgentRequest.copyWith(...)` or like so:`instanceOfSupportAgentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SupportAgentRequestCWProxy get copyWith =>
      _$SupportAgentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SupportAgentRequest _$SupportAgentRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SupportAgentRequest',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['user']);
        final val = SupportAgentRequest(
          branch: $checkedConvert('branch', (v) => (v as num?)?.toInt()),
          user: $checkedConvert('user', (v) => (v as num).toInt()),
          employee: $checkedConvert('employee', (v) => (v as num?)?.toInt()),
          workflow: $checkedConvert('workflow', (v) => v as String?),
          canHandleCritical: $checkedConvert(
            'can_handle_critical',
            (v) => v as bool?,
          ),
          maxOpenTickets: $checkedConvert(
            'max_open_tickets',
            (v) => (v as num?)?.toInt(),
          ),
          specialties: $checkedConvert('specialties', (v) => v),
          accessibleTypes: $checkedConvert(
            'accessible_types',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          accessibleCategories: $checkedConvert(
            'accessible_categories',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          isAvailable: $checkedConvert('is_available', (v) => v as bool?),
          isActive: $checkedConvert('is_active', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'canHandleCritical': 'can_handle_critical',
        'maxOpenTickets': 'max_open_tickets',
        'accessibleTypes': 'accessible_types',
        'accessibleCategories': 'accessible_categories',
        'isAvailable': 'is_available',
        'isActive': 'is_active',
      },
    );

Map<String, dynamic> _$SupportAgentRequestToJson(
  SupportAgentRequest instance,
) => <String, dynamic>{
  'branch': ?instance.branch,
  'user': instance.user,
  'employee': ?instance.employee,
  'workflow': ?instance.workflow,
  'can_handle_critical': ?instance.canHandleCritical,
  'max_open_tickets': ?instance.maxOpenTickets,
  'specialties': ?instance.specialties,
  'accessible_types': ?instance.accessibleTypes,
  'accessible_categories': ?instance.accessibleCategories,
  'is_available': ?instance.isAvailable,
  'is_active': ?instance.isActive,
};
