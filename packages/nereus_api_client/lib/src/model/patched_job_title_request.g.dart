// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_job_title_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedJobTitleRequestCWProxy {
  PatchedJobTitleRequest name(String? name);

  PatchedJobTitleRequest description(String? description);

  PatchedJobTitleRequest level(PatchedJobTitleRequestLevelEnum? level);

  PatchedJobTitleRequest department(int? department);

  PatchedJobTitleRequest isActive(bool? isActive);

  PatchedJobTitleRequest isForSuppliers(bool? isForSuppliers);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedJobTitleRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedJobTitleRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedJobTitleRequest call({
    String? name,
    String? description,
    PatchedJobTitleRequestLevelEnum? level,
    int? department,
    bool? isActive,
    bool? isForSuppliers,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedJobTitleRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedJobTitleRequest.copyWith.fieldName(...)`
class _$PatchedJobTitleRequestCWProxyImpl
    implements _$PatchedJobTitleRequestCWProxy {
  const _$PatchedJobTitleRequestCWProxyImpl(this._value);

  final PatchedJobTitleRequest _value;

  @override
  PatchedJobTitleRequest name(String? name) => this(name: name);

  @override
  PatchedJobTitleRequest description(String? description) =>
      this(description: description);

  @override
  PatchedJobTitleRequest level(PatchedJobTitleRequestLevelEnum? level) =>
      this(level: level);

  @override
  PatchedJobTitleRequest department(int? department) =>
      this(department: department);

  @override
  PatchedJobTitleRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  PatchedJobTitleRequest isForSuppliers(bool? isForSuppliers) =>
      this(isForSuppliers: isForSuppliers);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedJobTitleRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedJobTitleRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedJobTitleRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? level = const $CopyWithPlaceholder(),
    Object? department = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? isForSuppliers = const $CopyWithPlaceholder(),
  }) {
    return PatchedJobTitleRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      level: level == const $CopyWithPlaceholder()
          ? _value.level
          // ignore: cast_nullable_to_non_nullable
          : level as PatchedJobTitleRequestLevelEnum?,
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

extension $PatchedJobTitleRequestCopyWith on PatchedJobTitleRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedJobTitleRequest.copyWith(...)` or like so:`instanceOfPatchedJobTitleRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedJobTitleRequestCWProxy get copyWith =>
      _$PatchedJobTitleRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedJobTitleRequest _$PatchedJobTitleRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedJobTitleRequest',
  json,
  ($checkedConvert) {
    final val = PatchedJobTitleRequest(
      name: $checkedConvert('name', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      level: $checkedConvert(
        'level',
        (v) => $enumDecodeNullable(
          _$PatchedJobTitleRequestLevelEnumEnumMap,
          v,
          unknownValue: PatchedJobTitleRequestLevelEnum.unknownDefaultOpenApi,
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

Map<String, dynamic> _$PatchedJobTitleRequestToJson(
  PatchedJobTitleRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'description': ?instance.description,
  'level': ?_$PatchedJobTitleRequestLevelEnumEnumMap[instance.level],
  'department': ?instance.department,
  'is_active': ?instance.isActive,
  'is_for_suppliers': ?instance.isForSuppliers,
};

const _$PatchedJobTitleRequestLevelEnumEnumMap = {
  PatchedJobTitleRequestLevelEnum.EXECUTIVE: 'EXECUTIVE',
  PatchedJobTitleRequestLevelEnum.MANAGER: 'MANAGER',
  PatchedJobTitleRequestLevelEnum.SUPERVISOR: 'SUPERVISOR',
  PatchedJobTitleRequestLevelEnum.ANALYST: 'ANALYST',
  PatchedJobTitleRequestLevelEnum.ASSISTANT: 'ASSISTANT',
  PatchedJobTitleRequestLevelEnum.OPERATOR: 'OPERATOR',
  PatchedJobTitleRequestLevelEnum.OTHER: 'OTHER',
  PatchedJobTitleRequestLevelEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
