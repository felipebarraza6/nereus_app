// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_assignment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserAssignmentRequestCWProxy {
  UserAssignmentRequest userId(int userId);

  UserAssignmentRequest branchId(int branchId);

  UserAssignmentRequest role(String? role);

  UserAssignmentRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserAssignmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserAssignmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UserAssignmentRequest call({
    int userId,
    int branchId,
    String? role,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserAssignmentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserAssignmentRequest.copyWith.fieldName(...)`
class _$UserAssignmentRequestCWProxyImpl
    implements _$UserAssignmentRequestCWProxy {
  const _$UserAssignmentRequestCWProxyImpl(this._value);

  final UserAssignmentRequest _value;

  @override
  UserAssignmentRequest userId(int userId) => this(userId: userId);

  @override
  UserAssignmentRequest branchId(int branchId) => this(branchId: branchId);

  @override
  UserAssignmentRequest role(String? role) => this(role: role);

  @override
  UserAssignmentRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserAssignmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserAssignmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UserAssignmentRequest call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? branchId = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return UserAssignmentRequest(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as int,
      branchId: branchId == const $CopyWithPlaceholder()
          ? _value.branchId
          // ignore: cast_nullable_to_non_nullable
          : branchId as int,
      role: role == const $CopyWithPlaceholder()
          ? _value.role
          // ignore: cast_nullable_to_non_nullable
          : role as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $UserAssignmentRequestCopyWith on UserAssignmentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUserAssignmentRequest.copyWith(...)` or like so:`instanceOfUserAssignmentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserAssignmentRequestCWProxy get copyWith =>
      _$UserAssignmentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAssignmentRequest _$UserAssignmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'UserAssignmentRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['user_id', 'branch_id']);
    final val = UserAssignmentRequest(
      userId: $checkedConvert('user_id', (v) => (v as num).toInt()),
      branchId: $checkedConvert('branch_id', (v) => (v as num).toInt()),
      role: $checkedConvert('role', (v) => v as String? ?? 'EMPLOYEE'),
      isActive: $checkedConvert('is_active', (v) => v as bool? ?? true),
    );
    return val;
  },
  fieldKeyMap: const {
    'userId': 'user_id',
    'branchId': 'branch_id',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$UserAssignmentRequestToJson(
  UserAssignmentRequest instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'branch_id': instance.branchId,
  'role': ?instance.role,
  'is_active': ?instance.isActive,
};
