// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_title.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$JobTitleCWProxy {
  JobTitle id(int id);

  JobTitle name(String name);

  JobTitle description(String? description);

  JobTitle level(JobTitleLevelEnum? level);

  JobTitle department(int? department);

  JobTitle departmentName(String departmentName);

  JobTitle departmentType(String departmentType);

  JobTitle branch(int branch);

  JobTitle branchName(String branchName);

  JobTitle isActive(bool? isActive);

  JobTitle isForSuppliers(bool? isForSuppliers);

  JobTitle usageCount(String usageCount);

  JobTitle displayName(String displayName);

  JobTitle created(DateTime created);

  JobTitle modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JobTitle(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JobTitle(...).copyWith(id: 12, name: "My name")
  /// ````
  JobTitle call({
    int id,
    String name,
    String? description,
    JobTitleLevelEnum? level,
    int? department,
    String departmentName,
    String departmentType,
    int branch,
    String branchName,
    bool? isActive,
    bool? isForSuppliers,
    String usageCount,
    String displayName,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfJobTitle.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfJobTitle.copyWith.fieldName(...)`
class _$JobTitleCWProxyImpl implements _$JobTitleCWProxy {
  const _$JobTitleCWProxyImpl(this._value);

  final JobTitle _value;

  @override
  JobTitle id(int id) => this(id: id);

  @override
  JobTitle name(String name) => this(name: name);

  @override
  JobTitle description(String? description) => this(description: description);

  @override
  JobTitle level(JobTitleLevelEnum? level) => this(level: level);

  @override
  JobTitle department(int? department) => this(department: department);

  @override
  JobTitle departmentName(String departmentName) =>
      this(departmentName: departmentName);

  @override
  JobTitle departmentType(String departmentType) =>
      this(departmentType: departmentType);

  @override
  JobTitle branch(int branch) => this(branch: branch);

  @override
  JobTitle branchName(String branchName) => this(branchName: branchName);

  @override
  JobTitle isActive(bool? isActive) => this(isActive: isActive);

  @override
  JobTitle isForSuppliers(bool? isForSuppliers) =>
      this(isForSuppliers: isForSuppliers);

  @override
  JobTitle usageCount(String usageCount) => this(usageCount: usageCount);

  @override
  JobTitle displayName(String displayName) => this(displayName: displayName);

  @override
  JobTitle created(DateTime created) => this(created: created);

  @override
  JobTitle modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JobTitle(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JobTitle(...).copyWith(id: 12, name: "My name")
  /// ````
  JobTitle call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? level = const $CopyWithPlaceholder(),
    Object? department = const $CopyWithPlaceholder(),
    Object? departmentName = const $CopyWithPlaceholder(),
    Object? departmentType = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? branchName = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? isForSuppliers = const $CopyWithPlaceholder(),
    Object? usageCount = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return JobTitle(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
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
          : level as JobTitleLevelEnum?,
      department: department == const $CopyWithPlaceholder()
          ? _value.department
          // ignore: cast_nullable_to_non_nullable
          : department as int?,
      departmentName: departmentName == const $CopyWithPlaceholder()
          ? _value.departmentName
          // ignore: cast_nullable_to_non_nullable
          : departmentName as String,
      departmentType: departmentType == const $CopyWithPlaceholder()
          ? _value.departmentType
          // ignore: cast_nullable_to_non_nullable
          : departmentType as String,
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as int,
      branchName: branchName == const $CopyWithPlaceholder()
          ? _value.branchName
          // ignore: cast_nullable_to_non_nullable
          : branchName as String,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      isForSuppliers: isForSuppliers == const $CopyWithPlaceholder()
          ? _value.isForSuppliers
          // ignore: cast_nullable_to_non_nullable
          : isForSuppliers as bool?,
      usageCount: usageCount == const $CopyWithPlaceholder()
          ? _value.usageCount
          // ignore: cast_nullable_to_non_nullable
          : usageCount as String,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String,
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

extension $JobTitleCopyWith on JobTitle {
  /// Returns a callable class that can be used as follows: `instanceOfJobTitle.copyWith(...)` or like so:`instanceOfJobTitle.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$JobTitleCWProxy get copyWith => _$JobTitleCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobTitle _$JobTitleFromJson(Map<String, dynamic> json) => $checkedCreate(
  'JobTitle',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'name',
        'department_name',
        'department_type',
        'branch',
        'branch_name',
        'usage_count',
        'display_name',
        'created',
        'modified',
      ],
    );
    final val = JobTitle(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      name: $checkedConvert('name', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      level: $checkedConvert(
        'level',
        (v) => $enumDecodeNullable(
          _$JobTitleLevelEnumEnumMap,
          v,
          unknownValue: JobTitleLevelEnum.unknownDefaultOpenApi,
        ),
      ),
      department: $checkedConvert('department', (v) => (v as num?)?.toInt()),
      departmentName: $checkedConvert('department_name', (v) => v as String),
      departmentType: $checkedConvert('department_type', (v) => v as String),
      branch: $checkedConvert('branch', (v) => (v as num).toInt()),
      branchName: $checkedConvert('branch_name', (v) => v as String),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      isForSuppliers: $checkedConvert('is_for_suppliers', (v) => v as bool?),
      usageCount: $checkedConvert('usage_count', (v) => v as String),
      displayName: $checkedConvert('display_name', (v) => v as String),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'departmentName': 'department_name',
    'departmentType': 'department_type',
    'branchName': 'branch_name',
    'isActive': 'is_active',
    'isForSuppliers': 'is_for_suppliers',
    'usageCount': 'usage_count',
    'displayName': 'display_name',
  },
);

Map<String, dynamic> _$JobTitleToJson(JobTitle instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': ?instance.description,
  'level': ?_$JobTitleLevelEnumEnumMap[instance.level],
  'department': ?instance.department,
  'department_name': instance.departmentName,
  'department_type': instance.departmentType,
  'branch': instance.branch,
  'branch_name': instance.branchName,
  'is_active': ?instance.isActive,
  'is_for_suppliers': ?instance.isForSuppliers,
  'usage_count': instance.usageCount,
  'display_name': instance.displayName,
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};

const _$JobTitleLevelEnumEnumMap = {
  JobTitleLevelEnum.EXECUTIVE: 'EXECUTIVE',
  JobTitleLevelEnum.MANAGER: 'MANAGER',
  JobTitleLevelEnum.SUPERVISOR: 'SUPERVISOR',
  JobTitleLevelEnum.ANALYST: 'ANALYST',
  JobTitleLevelEnum.ASSISTANT: 'ASSISTANT',
  JobTitleLevelEnum.OPERATOR: 'OPERATOR',
  JobTitleLevelEnum.OTHER: 'OTHER',
  JobTitleLevelEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
