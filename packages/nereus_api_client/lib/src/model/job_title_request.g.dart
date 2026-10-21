// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_title_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$JobTitleRequestCWProxy {
  JobTitleRequest name(String name);

  JobTitleRequest description(String? description);

  JobTitleRequest level(JobTitleRequestLevelEnum? level);

  JobTitleRequest department(int? department);

  JobTitleRequest isActive(bool? isActive);

  JobTitleRequest isForSuppliers(bool? isForSuppliers);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JobTitleRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JobTitleRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  JobTitleRequest call({
    String name,
    String? description,
    JobTitleRequestLevelEnum? level,
    int? department,
    bool? isActive,
    bool? isForSuppliers,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfJobTitleRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfJobTitleRequest.copyWith.fieldName(...)`
class _$JobTitleRequestCWProxyImpl implements _$JobTitleRequestCWProxy {
  const _$JobTitleRequestCWProxyImpl(this._value);

  final JobTitleRequest _value;

  @override
  JobTitleRequest name(String name) => this(name: name);

  @override
  JobTitleRequest description(String? description) =>
      this(description: description);

  @override
  JobTitleRequest level(JobTitleRequestLevelEnum? level) => this(level: level);

  @override
  JobTitleRequest department(int? department) => this(department: department);

  @override
  JobTitleRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  JobTitleRequest isForSuppliers(bool? isForSuppliers) =>
      this(isForSuppliers: isForSuppliers);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JobTitleRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JobTitleRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  JobTitleRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? level = const $CopyWithPlaceholder(),
    Object? department = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? isForSuppliers = const $CopyWithPlaceholder(),
  }) {
    return JobTitleRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      level: level == const $CopyWithPlaceholder()
          ? _value.level
          // ignore: cast_nullable_to_non_nullable
          : level as JobTitleRequestLevelEnum?,
      department: department == const $CopyWithPlaceholder()
          ? _value.department
          // ignore: cast_nullable_to_non_nullable
          : department as int?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      isForSuppliers: isForSuppliers == const $CopyWithPlaceholder()
          ? _value.isForSuppliers
          // ignore: cast_nullable_to_non_nullable
          : isForSuppliers as bool?,
    );
  }
}

extension $JobTitleRequestCopyWith on JobTitleRequest {
  /// Returns a callable class that can be used as follows: `instanceOfJobTitleRequest.copyWith(...)` or like so:`instanceOfJobTitleRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$JobTitleRequestCWProxy get copyWith => _$JobTitleRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobTitleRequest _$JobTitleRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'JobTitleRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['name']);
    final val = JobTitleRequest(
      name: $checkedConvert('name', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      level: $checkedConvert(
        'level',
        (v) => $enumDecodeNullable(
          _$JobTitleRequestLevelEnumEnumMap,
          v,
          unknownValue: JobTitleRequestLevelEnum.unknownDefaultOpenApi,
        ),
      ),
      department: $checkedConvert('department', (v) => (v as num?)?.toInt()),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      isForSuppliers: $checkedConvert('is_for_suppliers', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'isActive': 'is_active',
    'isForSuppliers': 'is_for_suppliers',
  },
);

Map<String, dynamic> _$JobTitleRequestToJson(JobTitleRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': ?instance.description,
      'level': ?_$JobTitleRequestLevelEnumEnumMap[instance.level],
      'department': ?instance.department,
      'is_active': ?instance.isActive,
      'is_for_suppliers': ?instance.isForSuppliers,
    };

const _$JobTitleRequestLevelEnumEnumMap = {
  JobTitleRequestLevelEnum.EXECUTIVE: 'EXECUTIVE',
  JobTitleRequestLevelEnum.MANAGER: 'MANAGER',
  JobTitleRequestLevelEnum.SUPERVISOR: 'SUPERVISOR',
  JobTitleRequestLevelEnum.ANALYST: 'ANALYST',
  JobTitleRequestLevelEnum.ASSISTANT: 'ASSISTANT',
  JobTitleRequestLevelEnum.OPERATOR: 'OPERATOR',
  JobTitleRequestLevelEnum.OTHER: 'OTHER',
  JobTitleRequestLevelEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
