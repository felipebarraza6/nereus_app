// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_customer_department_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedCustomerDepartmentRequestCWProxy {
  PatchedCustomerDepartmentRequest name(String? name);

  PatchedCustomerDepartmentRequest description(String? description);

  PatchedCustomerDepartmentRequest departmentType(
    PatchedCustomerDepartmentRequestDepartmentTypeEnum? departmentType,
  );

  PatchedCustomerDepartmentRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedCustomerDepartmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedCustomerDepartmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedCustomerDepartmentRequest call({
    String? name,
    String? description,
    PatchedCustomerDepartmentRequestDepartmentTypeEnum? departmentType,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedCustomerDepartmentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedCustomerDepartmentRequest.copyWith.fieldName(...)`
class _$PatchedCustomerDepartmentRequestCWProxyImpl
    implements _$PatchedCustomerDepartmentRequestCWProxy {
  const _$PatchedCustomerDepartmentRequestCWProxyImpl(this._value);

  final PatchedCustomerDepartmentRequest _value;

  @override
  PatchedCustomerDepartmentRequest name(String? name) => this(name: name);

  @override
  PatchedCustomerDepartmentRequest description(String? description) =>
      this(description: description);

  @override
  PatchedCustomerDepartmentRequest departmentType(
    PatchedCustomerDepartmentRequestDepartmentTypeEnum? departmentType,
  ) => this(departmentType: departmentType);

  @override
  PatchedCustomerDepartmentRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedCustomerDepartmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedCustomerDepartmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedCustomerDepartmentRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? departmentType = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return PatchedCustomerDepartmentRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      departmentType: departmentType == const $CopyWithPlaceholder()
          ? _value.departmentType
          // ignore: cast_nullable_to_non_nullable
          : departmentType
                as PatchedCustomerDepartmentRequestDepartmentTypeEnum?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $PatchedCustomerDepartmentRequestCopyWith
    on PatchedCustomerDepartmentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedCustomerDepartmentRequest.copyWith(...)` or like so:`instanceOfPatchedCustomerDepartmentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedCustomerDepartmentRequestCWProxy get copyWith =>
      _$PatchedCustomerDepartmentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedCustomerDepartmentRequest _$PatchedCustomerDepartmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedCustomerDepartmentRequest',
  json,
  ($checkedConvert) {
    final val = PatchedCustomerDepartmentRequest(
      name: $checkedConvert('name', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      departmentType: $checkedConvert(
        'department_type',
        (v) => $enumDecodeNullable(
          _$PatchedCustomerDepartmentRequestDepartmentTypeEnumEnumMap,
          v,
          unknownValue: PatchedCustomerDepartmentRequestDepartmentTypeEnum
              .unknownDefaultOpenApi,
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

Map<String, dynamic> _$PatchedCustomerDepartmentRequestToJson(
  PatchedCustomerDepartmentRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'description': ?instance.description,
  'department_type':
      ?_$PatchedCustomerDepartmentRequestDepartmentTypeEnumEnumMap[instance
          .departmentType],
  'is_active': ?instance.isActive,
};

const _$PatchedCustomerDepartmentRequestDepartmentTypeEnumEnumMap = {
  PatchedCustomerDepartmentRequestDepartmentTypeEnum.SALES: 'SALES',
  PatchedCustomerDepartmentRequestDepartmentTypeEnum.PURCHASING: 'PURCHASING',
  PatchedCustomerDepartmentRequestDepartmentTypeEnum.FINANCE: 'FINANCE',
  PatchedCustomerDepartmentRequestDepartmentTypeEnum.OPERATIONS: 'OPERATIONS',
  PatchedCustomerDepartmentRequestDepartmentTypeEnum.HR: 'HR',
  PatchedCustomerDepartmentRequestDepartmentTypeEnum.IT: 'IT',
  PatchedCustomerDepartmentRequestDepartmentTypeEnum.MARKETING: 'MARKETING',
  PatchedCustomerDepartmentRequestDepartmentTypeEnum.ADMINISTRATION:
      'ADMINISTRATION',
  PatchedCustomerDepartmentRequestDepartmentTypeEnum.OTHER: 'OTHER',
  PatchedCustomerDepartmentRequestDepartmentTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
