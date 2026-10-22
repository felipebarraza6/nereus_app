import 'dart:async';

import 'package:nereus_app/core/debug/nereus_log.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_controller.g.dart';

class AuthSession {
  const AuthSession({
    this.token,
    this.user,
    this.branches = const [],
    this.branchId,
    this.enabledApps = const [],
  });

  final String? token;
  final SessionUser? user;
  final List<BranchAssignment> branches;
  final String? branchId;
  final List<String> enabledApps;

  bool get isAuthenticated => token != null && token!.isNotEmpty;
  bool get needsBranch => isAuthenticated && branchId == null && branches.isNotEmpty;

  BranchAssignment? get currentBranch {
    if (branchId == null) return null;
    for (final branch in branches) {
      if ('${branch.branchId}' == branchId) return branch;
    }
    return null;
  }

  bool get isClient {
    final role = currentBranch?.roleCode ??
        (branches.isEmpty ? 'CL' : branches.first.roleCode);
    return isClientRole(role);
  }

  AuthSession copyWith({
    String? token,
    SessionUser? user,
    List<BranchAssignment>? branches,
    String? branchId,
    List<String>? enabledApps,
    bool clearBranch = false,
  }) {
    return AuthSession(
      token: token ?? this.token,
      user: user ?? this.user,
      branches: branches ?? this.branches,
      branchId: clearBranch ? null : (branchId ?? this.branchId),
      enabledApps: enabledApps ?? this.enabledApps,
    );
  }
}

@Riverpod(keepAlive: true)
class Session extends _$Session {
  @override
  FutureOr<AuthSession> build() async {
    final repo = ref.watch(authRepositoryProvider);
    ref.watch(sessionControllerProvider).onUnauthorized = logout;
    try {
      final restored = await repo.restore();
      return AuthSession(token: restored.token, branchId: restored.branchId);
    } on Object catch (error, stack) {
      nereusLog('Session.restore', error, stack);
      return const AuthSession();
    }
  }

  Future<LoginComplete> login(String email, String password) async {
    final login = await ref.read(authRepositoryProvider).login(
          email: email,
          password: password,
        );
    String? branchId;
    if (login.branches.length == 1) {
      branchId = '${login.branches.first.branchId}';
      await ref.read(authRepositoryProvider).selectBranch(branchId);
    }
    state = AsyncData(
      AuthSession(
        token: login.token,
        user: login.user,
        branches: login.branches,
        branchId: branchId,
        enabledApps: login.enabledApps,
      ),
    );
    return login;
  }

  Future<void> selectBranch(BranchAssignment branch) async {
    await ref.read(authRepositoryProvider).selectBranch('${branch.branchId}');
    final current = state.value ?? const AuthSession();
    state = AsyncData(current.copyWith(branchId: '${branch.branchId}'));
  }

  Future<void> logout() async {
    try {
      await ref.read(authRepositoryProvider).logout();
    } on Object catch (error, stack) {
      nereusLog('Session.logout', error, stack);
    }
    state = const AsyncData(AuthSession());
  }
}
