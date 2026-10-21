// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_title_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$JobTitleListCWProxy {
  JobTitleList id(int id);

  JobTitleList name(String name);

  JobTitleList level(JobTitleListLevelEnum? level);

  JobTitleList department(int? department);

  JobTitleList departmentName(String departmentName);

  JobTitleList branchName(String branchName);

  JobTitleList isActive(bool? isActive);

  JobTitleList isForSuppliers(bool? isForSuppliers);

  JobTitleList usageCount(String usageCount);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JobTitleList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JobTitleList(...).copyWith(id: 12, name: "My name")
  /// ````
  JobTitleList call({
    int id,
    String name,
    JobTitleListLevelEnum? level,
    int? department,
    String departmentName,
    String branchName,
    bool? isActive,
    bool? isForSuppliers,
    String usageCount,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfJobTitleList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfJobTitleList.copyWith.fieldName(...)`
class _$JobTitleListCWProxyImpl implements _$JobTitleListCWProxy {
  const _$JobTitleListCWProxyImpl(this._value);

  final JobTitleList _value;

  @override
  JobTitleList id(int id) => this(id: id);

  @override
  JobTitleList name(String name) => this(name: name);

  @override
  JobTitleList level(JobTitleListLevelEnum? level) => this(level: level);

  @override
  JobTitleList department(int? department) => this(department: department);

  @override
  JobTitleList departmentName(String departmentName) =>
      this(departmentName: departmentName);

  @override
  JobTitleList branchName(String branchName) => this(branchName: branchName);

  @override
  JobTitleList isActive(bool? isActive) => this(isActive: isActive);

  @override
  JobTitleList isForSuppliers(bool? isForSuppliers) =>
      this(isForSuppliers: isForSuppliers);

  @override
  JobTitleList usageCount(String usageCount) => this(usageCount: usageCount);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JobTitleList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JobTitleList(...).copyWith(id: 12, name: "My name")
  /// ````
  JobTitleList call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? level = const $CopyWithPlaceholder(),
    Object? department = const $CopyWithPlaceholder(),
    Object? departmentName = const $CopyWithPlaceholder(),
    Object? branchName = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? isForSuppliers = const $CopyWithPlaceholder(),
    Object? usageCount = const $CopyWithPlaceholder(),
  }) {
    return JobTitleList(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      level: level == const $CopyWithPlaceholder()
          ? _value.level
          // ignore: cast_nullable_to_non_nullable
          : level as JobTitleListLevelEnum?,
      department: department == const $CopyWithPlaceholder()
          ? _value.department
          // ignore: cast_nullable_to_non_nullable
          : department as int?,
      departmentName: departmentName == const $CopyWithPlaceholder()
          ? _value.departmentName
          // ignore: cast_nullable_to_non_nullable
          : departmentName as String,
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
    );
  }
}

extension $JobTitleListCopyWith on JobTitleList {
  /// Returns a callable class that can be used as follows: `instanceOfJobTitleList.copyWith(...)` or like so:`instanceOfJobTitleList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$JobTitleListCWProxy get copyWith => _$JobTitleListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobTitleList _$JobTitleListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'JobTitleList',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'name',
        'department_name',
        'branch_name',
        'usage_count',
      ],
    );
    final val = JobTitleList(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      name: $checkedConvert('name', (v) => v as String),
      level: $checkedConvert(
        'level',
        (v) => $enumDecodeNullable(
          _$JobTitleListLevelEnumEnumMap,
          v,
          unknownValue: JobTitleListLevelEnum.unknownDefaultOpenApi,
        ),
      ),
      department: $checkedConvert('department', (v) => (v as num?)?.toInt()),
      departmentName: $checkedConvert('department_name', (v) => v as String),
      branchName: $checkedConvert('branch_name', (v) => v as String),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      isForSuppliers: $checkedConvert('is_for_suppliers', (v) => v as bool?),
      usageCount: $checkedConvert('usage_count', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'departmentName': 'department_name',
    'branchName': 'branch_name',
    'isActive': 'is_active',
    'isForSuppliers': 'is_for_suppliers',
    'usageCount': 'usage_count',
  },
);

Map<String, dynamic> _$JobTitleListToJson(JobTitleList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': ?_$JobTitleListLevelEnumEnumMap[instance.level],
      'department': ?instance.department,
      'department_name': instance.departmentName,
      'branch_name': instance.branchName,
      'is_active': ?instance.isActive,
      'is_for_suppliers': ?instance.isForSuppliers,
      'usage_count': instance.usageCount,
    };

const _$JobTitleListLevelEnumEnumMap = {
  JobTitleListLevelEnum.EXECUTIVE: 'EXECUTIVE',
  JobTitleListLevelEnum.MANAGER: 'MANAGER',
  JobTitleListLevelEnum.SUPERVISOR: 'SUPERVISOR',
  JobTitleListLevelEnum.ANALYST: 'ANALYST',
  JobTitleListLevelEnum.ASSISTANT: 'ASSISTANT',
  JobTitleListLevelEnum.OPERATOR: 'OPERATOR',
  JobTitleListLevelEnum.OTHER: 'OTHER',
  JobTitleListLevelEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
