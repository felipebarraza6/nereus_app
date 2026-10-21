// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BranchAssignment _$BranchAssignmentFromJson(Map<String, dynamic> json) =>
    _BranchAssignment(
      id: (json['id'] as num?)?.toInt(),
      branchId: (json['branch_id'] as num).toInt(),
      branchName: json['branch_name'] as String?,
      businessName: json['business_name'] as String?,
      roleCode: json['role_code'] as String? ?? 'CL',
      roleName: json['role_name'] as String?,
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$BranchAssignmentToJson(_BranchAssignment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'branch_id': instance.branchId,
      'branch_name': instance.branchName,
      'business_name': instance.businessName,
      'role_code': instance.roleCode,
      'role_name': instance.roleName,
      'is_active': instance.isActive,
    };

_SessionUser _$SessionUserFromJson(Map<String, dynamic> json) => _SessionUser(
  id: (json['id'] as num).toInt(),
  email: json['email'] as String,
  username: json['username'] as String?,
  firstName: json['first_name'] as String?,
  lastName: json['last_name'] as String?,
  fullName: json['full_name'] as String?,
  typeUser: json['type_user'] as String?,
  isSuperuser: json['is_superuser'] as bool? ?? false,
  isMultiBranch: json['is_multi_branch'] as bool? ?? false,
);

Map<String, dynamic> _$SessionUserToJson(_SessionUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'type_user': instance.typeUser,
      'is_superuser': instance.isSuperuser,
      'is_multi_branch': instance.isMultiBranch,
    };
