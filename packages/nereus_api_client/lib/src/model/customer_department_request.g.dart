// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_department_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomerDepartmentRequestCWProxy {
  CustomerDepartmentRequest name(String name);

  CustomerDepartmentRequest description(String? description);

  CustomerDepartmentRequest departmentType(
    CustomerDepartmentRequestDepartmentTypeEnum? departmentType,
  );

  CustomerDepartmentRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomerDepartmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomerDepartmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomerDepartmentRequest call({
    String name,
    String? description,
    CustomerDepartmentRequestDepartmentTypeEnum? departmentType,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCustomerDepartmentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCustomerDepartmentRequest.copyWith.fieldName(...)`
class _$CustomerDepartmentRequestCWProxyImpl
    implements _$CustomerDepartmentRequestCWProxy {
  const _$CustomerDepartmentRequestCWProxyImpl(this._value);

  final CustomerDepartmentRequest _value;

  @override
  CustomerDepartmentRequest name(String name) => this(name: name);

  @override
  CustomerDepartmentRequest description(String? description) =>
      this(description: description);

  @override
  CustomerDepartmentRequest departmentType(
    CustomerDepartmentRequestDepartmentTypeEnum? departmentType,
  ) => this(departmentType: departmentType);

  @override
  CustomerDepartmentRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CustomerDepartmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CustomerDepartmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CustomerDepartmentRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? departmentType = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return CustomerDepartmentRequest(
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
          : departmentType as CustomerDepartmentRequestDepartmentTypeEnum?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $CustomerDepartmentRequestCopyWith on CustomerDepartmentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCustomerDepartmentRequest.copyWith(...)` or like so:`instanceOfCustomerDepartmentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomerDepartmentRequestCWProxy get copyWith =>
      _$CustomerDepartmentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerDepartmentRequest _$CustomerDepartmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CustomerDepartmentRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['name']);
    final val = CustomerDepartmentRequest(
      name: $checkedConvert('name', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      departmentType: $checkedConvert(
        'department_type',
        (v) => $enumDecodeNullable(
          _$CustomerDepartmentRequestDepartmentTypeEnumEnumMap,
          v,
          unknownValue:
              CustomerDepartmentRequestDepartmentTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'departmentType': 'department_type',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$CustomerDepartmentRequestToJson(
  CustomerDepartmentRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'description': ?instance.description,
  'department_type':
      ?_$CustomerDepartmentRequestDepartmentTypeEnumEnumMap[instance
          .departmentType],
  'is_active': ?instance.isActive,
};

const _$CustomerDepartmentRequestDepartmentTypeEnumEnumMap = {
  CustomerDepartmentRequestDepartmentTypeEnum.SALES: 'SALES',
  CustomerDepartmentRequestDepartmentTypeEnum.PURCHASING: 'PURCHASING',
  CustomerDepartmentRequestDepartmentTypeEnum.FINANCE: 'FINANCE',
  CustomerDepartmentRequestDepartmentTypeEnum.OPERATIONS: 'OPERATIONS',
  CustomerDepartmentRequestDepartmentTypeEnum.HR: 'HR',
  CustomerDepartmentRequestDepartmentTypeEnum.IT: 'IT',
  CustomerDepartmentRequestDepartmentTypeEnum.MARKETING: 'MARKETING',
  CustomerDepartmentRequestDepartmentTypeEnum.ADMINISTRATION: 'ADMINISTRATION',
  CustomerDepartmentRequestDepartmentTypeEnum.OTHER: 'OTHER',
  CustomerDepartmentRequestDepartmentTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
