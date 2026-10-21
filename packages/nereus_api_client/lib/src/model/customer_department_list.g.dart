// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_department_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomerDepartmentListCWProxy {
  CustomerDepartmentList id(int id);

  CustomerDepartmentList name(String name);

  CustomerDepartmentList departmentType(
    CustomerDepartmentListDepartmentTypeEnum? departmentType,
  );

  CustomerDepartmentList branchName(String branchName);

  CustomerDepartmentList isActive(bool? isActive);

  CustomerDepartmentList usageCount(String usageCount);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomerDepartmentList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomerDepartmentList(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomerDepartmentList call({
    int id,
    String name,
    CustomerDepartmentListDepartmentTypeEnum? departmentType,
    String branchName,
    bool? isActive,
    String usageCount,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCustomerDepartmentList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCustomerDepartmentList.copyWith.fieldName(...)`
class _$CustomerDepartmentListCWProxyImpl
    implements _$CustomerDepartmentListCWProxy {
  const _$CustomerDepartmentListCWProxyImpl(this._value);

  final CustomerDepartmentList _value;

  @override
  CustomerDepartmentList id(int id) => this(id: id);

  @override
  CustomerDepartmentList name(String name) => this(name: name);

  @override
  CustomerDepartmentList departmentType(
    CustomerDepartmentListDepartmentTypeEnum? departmentType,
  ) => this(departmentType: departmentType);

  @override
  CustomerDepartmentList branchName(String branchName) =>
      this(branchName: branchName);

  @override
  CustomerDepartmentList isActive(bool? isActive) => this(isActive: isActive);

  @override
  CustomerDepartmentList usageCount(String usageCount) =>
      this(usageCount: usageCount);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomerDepartmentList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomerDepartmentList(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomerDepartmentList call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? departmentType = const $CopyWithPlaceholder(),
    Object? branchName = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? usageCount = const $CopyWithPlaceholder(),
  }) {
    return CustomerDepartmentList(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      departmentType: departmentType == const $CopyWithPlaceholder()
          ? _value.departmentType
          // ignore: cast_nullable_to_non_nullable
          : departmentType as CustomerDepartmentListDepartmentTypeEnum?,
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
    );
  }
}

extension $CustomerDepartmentListCopyWith on CustomerDepartmentList {
  /// Returns a callable class that can be used as follows: `instanceOfCustomerDepartmentList.copyWith(...)` or like so:`instanceOfCustomerDepartmentList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomerDepartmentListCWProxy get copyWith =>
      _$CustomerDepartmentListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDepartmentList _$CustomerDepartmentListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CustomerDepartmentList',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['id', 'name', 'branch_name', 'usage_count'],
    );
    final val = CustomerDepartmentList(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      name: $checkedConvert('name', (v) => v as String),
      departmentType: $checkedConvert(
        'department_type',
        (v) => $enumDecodeNullable(
          _$CustomerDepartmentListDepartmentTypeEnumEnumMap,
          v,
          unknownValue:
              CustomerDepartmentListDepartmentTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      branchName: $checkedConvert('branch_name', (v) => v as String),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      usageCount: $checkedConvert('usage_count', (v) => v as String),
    );
    return val;
  },
  fieldKeyMap: const {
    'departmentType': 'department_type',
    'branchName': 'branch_name',
    'isActive': 'is_active',
    'usageCount': 'usage_count',
  },
);

Map<String, dynamic> _$CustomerDepartmentListToJson(
  CustomerDepartmentList instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'department_type':
      ?_$CustomerDepartmentListDepartmentTypeEnumEnumMap[instance
          .departmentType],
  'branch_name': instance.branchName,
  'is_active': ?instance.isActive,
  'usage_count': instance.usageCount,
};

const _$CustomerDepartmentListDepartmentTypeEnumEnumMap = {
  CustomerDepartmentListDepartmentTypeEnum.SALES: 'SALES',
  CustomerDepartmentListDepartmentTypeEnum.PURCHASING: 'PURCHASING',
  CustomerDepartmentListDepartmentTypeEnum.FINANCE: 'FINANCE',
  CustomerDepartmentListDepartmentTypeEnum.OPERATIONS: 'OPERATIONS',
  CustomerDepartmentListDepartmentTypeEnum.HR: 'HR',
  CustomerDepartmentListDepartmentTypeEnum.IT: 'IT',
  CustomerDepartmentListDepartmentTypeEnum.MARKETING: 'MARKETING',
  CustomerDepartmentListDepartmentTypeEnum.ADMINISTRATION: 'ADMINISTRATION',
  CustomerDepartmentListDepartmentTypeEnum.OTHER: 'OTHER',
  CustomerDepartmentListDepartmentTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
