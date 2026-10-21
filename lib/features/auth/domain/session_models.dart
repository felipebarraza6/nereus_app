import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_models.freezed.dart';
part 'session_models.g.dart';

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

  factory BranchAssignment.fromJson(Map<String, dynamic> json) =>
      _$BranchAssignmentFromJson(json);
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

  factory SessionUser.fromJson(Map<String, dynamic> json) =>
      _$SessionUserFromJson(json);
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
    final userJson = Map<String, dynamic>.from(json['user'] as Map? ?? {});
    final branchesRaw = json['branches'] ?? userJson['branch_assignments'] ?? [];
    final permissions = json['permissions'] as Map? ?? {};
    final apps = permissions['enabled_apps'] as List? ?? [];
    return LoginComplete(
      token: json['token'] as String,
      user: SessionUser.fromJson(userJson),
      branches: (branchesRaw as List)
          .whereType<Map<dynamic, dynamic>>()
          .map((e) => BranchAssignment.fromJson(Map<String, dynamic>.from(e)))
          .toList(),
      enabledApps: apps.map((e) => e.toString()).toList(),
    );
  }
}

const clientRoleCodes = {'CL', 'FORJA_ALUMNO'};

bool isClientRole(String roleCode) => clientRoleCodes.contains(roleCode);

bool isTeamRole(String roleCode) => !isClientRole(roleCode);
