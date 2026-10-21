// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_assignment.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserAssignmentCWProxy {
  UserAssignment userId(int userId);

  UserAssignment branchId(int branchId);

  UserAssignment role(String? role);

  UserAssignment isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserAssignment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserAssignment(...).copyWith(id: 12, name: "My name")
  /// ````
  UserAssignment call({int userId, int branchId, String? role, bool? isActive});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserAssignment.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserAssignment.copyWith.fieldName(...)`
class _$UserAssignmentCWProxyImpl implements _$UserAssignmentCWProxy {
  const _$UserAssignmentCWProxyImpl(this._value);

  final UserAssignment _value;

  @override
  UserAssignment userId(int userId) => this(userId: userId);

  @override
  UserAssignment branchId(int branchId) => this(branchId: branchId);

  @override
  UserAssignment role(String? role) => this(role: role);

  @override
  UserAssignment isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserAssignment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserAssignment(...).copyWith(id: 12, name: "My name")
  /// ````
  UserAssignment call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? branchId = const $CopyWithPlaceholder(),
    Object? role = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return UserAssignment(
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

extension $UserAssignmentCopyWith on UserAssignment {
  /// Returns a callable class that can be used as follows: `instanceOfUserAssignment.copyWith(...)` or like so:`instanceOfUserAssignment.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserAssignmentCWProxy get copyWith => _$UserAssignmentCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAssignment _$UserAssignmentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserAssignment',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['user_id', 'branch_id']);
        final val = UserAssignment(
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

Map<String, dynamic> _$UserAssignmentToJson(UserAssignment instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'branch_id': instance.branchId,
      'role': ?instance.role,
      'is_active': ?instance.isActive,
    };
