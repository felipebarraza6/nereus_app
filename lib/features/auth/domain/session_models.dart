import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nereus_app/core/json_util.dart';

part 'session_models.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
abstract class BranchAssignment with _$BranchAssignment {
  const factory BranchAssignment({
    int? id,
    @JsonKey(name: 'branch_id') required int branchId,
    @JsonKey(name: 'branch_name') String? branchName,
    @JsonKey(name: 'business_name') String? businessName,
    @JsonKey(name: 'role_code') @Default('CL') String roleCode,
    @JsonKey(name: 'role_name') String? roleName,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _BranchAssignment;

  factory BranchAssignment.fromJson(Map<String, dynamic> json) {
    return BranchAssignment(
      id: asIntOrNull(json['id']),
      branchId: asInt(json['branch_id'] ?? json['id']),
      branchName: asStringOrNull(json['branch_name'] ?? json['business_name']),
      businessName: asStringOrNull(json['business_name'] ?? json['branch_name']),
      roleCode: asString(json['role_code'], fallback: 'CL'),
      roleName: asStringOrNull(json['role_name']),
      isActive: json['is_active'] != false,
    );
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class SessionUser with _$SessionUser {
  const factory SessionUser({
    required int id,
    required String email,
    String? username,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'type_user') String? typeUser,
    @JsonKey(name: 'is_superuser') @Default(false) bool isSuperuser,
    @JsonKey(name: 'is_multi_branch') @Default(false) bool isMultiBranch,
  }) = _SessionUser;

  factory SessionUser.fromJson(Map<String, dynamic> json) {
    return SessionUser(
      id: asInt(json['id']),
      email: asString(json['email']),
      username: asStringOrNull(json['username']),
      firstName: asStringOrNull(json['first_name']),
      lastName: asStringOrNull(json['last_name']),
      fullName: asStringOrNull(json['full_name']),
      typeUser: asStringOrNull(json['type_user']),
      isSuperuser: json['is_superuser'] == true,
      isMultiBranch: json['is_multi_branch'] == true,
    );
  }
}

@Freezed(makeCollectionsUnmodifiable: false)
abstract class LoginComplete with _$LoginComplete {
  const factory LoginComplete({
    required String token,
    required SessionUser user,
    @Default([]) List<BranchAssignment> branches,
    @Default([]) List<String> enabledApps,
  }) = _LoginComplete;

  factory LoginComplete.fromJson(Map<String, dynamic> json) {
    final userJson = asMap(json['user']);
    final branchesRaw = json['branches'] ?? userJson['branch_assignments'] ?? [];
    final permissions = json['permissions'] as Map? ?? {};
    final apps = permissions['enabled_apps'] as List? ?? [];
    return LoginComplete(
      token: asString(json['token']),
      user: SessionUser.fromJson(userJson),
      branches: [
        for (final item in branchesRaw is List ? branchesRaw : const [])
          if (item is Map)
            BranchAssignment.fromJson(Map<String, dynamic>.from(item)),
      ],
      enabledApps: apps.map((e) => e.toString()).toList(),
    );
  }
}

const clientRoleCodes = {'CL', 'FORJA_ALUMNO'};

bool isClientRole(String roleCode) => clientRoleCodes.contains(roleCode);

bool isTeamRole(String roleCode) => !isClientRole(roleCode);
