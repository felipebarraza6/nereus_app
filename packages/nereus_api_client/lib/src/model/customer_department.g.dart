// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_department.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomerDepartmentCWProxy {
  CustomerDepartment id(int id);

  CustomerDepartment name(String name);

  CustomerDepartment description(String? description);

  CustomerDepartment departmentType(
    CustomerDepartmentDepartmentTypeEnum? departmentType,
  );

  CustomerDepartment branch(int branch);

  CustomerDepartment branchName(String branchName);

  CustomerDepartment isActive(bool? isActive);

  CustomerDepartment usageCount(String usageCount);

  CustomerDepartment displayName(String displayName);

  CustomerDepartment created(DateTime created);

  CustomerDepartment modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomerDepartment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomerDepartment(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomerDepartment call({
    int id,
    String name,
    String? description,
    CustomerDepartmentDepartmentTypeEnum? departmentType,
    int branch,
    String branchName,
    bool? isActive,
    String usageCount,
    String displayName,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCustomerDepartment.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCustomerDepartment.copyWith.fieldName(...)`
class _$CustomerDepartmentCWProxyImpl implements _$CustomerDepartmentCWProxy {
  const _$CustomerDepartmentCWProxyImpl(this._value);

  final CustomerDepartment _value;

  @override
  CustomerDepartment id(int id) => this(id: id);

  @override
  CustomerDepartment name(String name) => this(name: name);

  @override
  CustomerDepartment description(String? description) =>
      this(description: description);

  @override
  CustomerDepartment departmentType(
    CustomerDepartmentDepartmentTypeEnum? departmentType,
  ) => this(departmentType: departmentType);

  @override
  CustomerDepartment branch(int branch) => this(branch: branch);

  @override
  CustomerDepartment branchName(String branchName) =>
      this(branchName: branchName);

  @override
  CustomerDepartment isActive(bool? isActive) => this(isActive: isActive);

  @override
  CustomerDepartment usageCount(String usageCount) =>
      this(usageCount: usageCount);

  @override
  CustomerDepartment displayName(String displayName) =>
      this(displayName: displayName);

  @override
  CustomerDepartment created(DateTime created) => this(created: created);

  @override
  CustomerDepartment modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomerDepartment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomerDepartment(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomerDepartment call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? departmentType = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? branchName = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? usageCount = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return CustomerDepartment(
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
      departmentType: departmentType == const $CopyWithPlaceholder()
          ? _value.departmentType
          // ignore: cast_nullable_to_non_nullable
          : departmentType as CustomerDepartmentDepartmentTypeEnum?,
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

extension $CustomerDepartmentCopyWith on CustomerDepartment {
  /// Returns a callable class that can be used as follows: `instanceOfCustomerDepartment.copyWith(...)` or like so:`instanceOfCustomerDepartment.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomerDepartmentCWProxy get copyWith =>
      _$CustomerDepartmentCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDepartment _$CustomerDepartmentFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CustomerDepartment',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'name',
        'branch',
        'branch_name',
        'usage_count',
        'display_name',
        'created',
        'modified',
      ],
    );
    final val = CustomerDepartment(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      name: $checkedConvert('name', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      departmentType: $checkedConvert(
        'department_type',
        (v) => $enumDecodeNullable(
          _$CustomerDepartmentDepartmentTypeEnumEnumMap,
          v,
          unknownValue:
              CustomerDepartmentDepartmentTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      branch: $checkedConvert('branch', (v) => (v as num).toInt()),
      branchName: $checkedConvert('branch_name', (v) => v as String),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      usageCount: $checkedConvert('usage_count', (v) => v as String),
      displayName: $checkedConvert('display_name', (v) => v as String),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'departmentType': 'department_type',
    'branchName': 'branch_name',
    'isActive': 'is_active',
    'usageCount': 'usage_count',
    'displayName': 'display_name',
  },
);

Map<String, dynamic> _$CustomerDepartmentToJson(
  CustomerDepartment instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': ?instance.description,
  'department_type':
      ?_$CustomerDepartmentDepartmentTypeEnumEnumMap[instance.departmentType],
  'branch': instance.branch,
  'branch_name': instance.branchName,
  'is_active': ?instance.isActive,
  'usage_count': instance.usageCount,
  'display_name': instance.displayName,
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};

const _$CustomerDepartmentDepartmentTypeEnumEnumMap = {
  CustomerDepartmentDepartmentTypeEnum.SALES: 'SALES',
  CustomerDepartmentDepartmentTypeEnum.PURCHASING: 'PURCHASING',
  CustomerDepartmentDepartmentTypeEnum.FINANCE: 'FINANCE',
  CustomerDepartmentDepartmentTypeEnum.OPERATIONS: 'OPERATIONS',
  CustomerDepartmentDepartmentTypeEnum.HR: 'HR',
  CustomerDepartmentDepartmentTypeEnum.IT: 'IT',
  CustomerDepartmentDepartmentTypeEnum.MARKETING: 'MARKETING',
  CustomerDepartmentDepartmentTypeEnum.ADMINISTRATION: 'ADMINISTRATION',
  CustomerDepartmentDepartmentTypeEnum.OTHER: 'OTHER',
  CustomerDepartmentDepartmentTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
