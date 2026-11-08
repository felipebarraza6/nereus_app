import 'dart:async';

import 'package:nereus_app/core/debug/nereus_log.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/auth/data/auth_repository.dart';
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
    if (user?.isSuperuser ?? false) return false;
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
  AuthSession? _live;

  @override
  FutureOr<AuthSession> build() async {
    final repo = ref.watch(authRepositoryProvider);
    ref.watch(sessionControllerProvider).onUnauthorized = logout;
    try {
      final restored = await repo.restore();
      final token = restored.token;
      if (token == null || token.isEmpty) {
        if (_live != null && _live!.isAuthenticated) return _live!;
        return const AuthSession();
      }
      final demo = token == 'fixture-token';
      if (demo) {
        Future<void>.microtask(
          () => ref.read(dataModeProvider.notifier).useFixture(),
        );
      }
      var profile = await repo.readStoredProfile();
      if (profile == null && demo) {
        profile = AuthRepository.demoSession();
      }
      if (!demo && !repo.isFixture) {
        final fresh = await repo.loadProfile();
        if (fresh != null) profile = fresh;
      }
      if (profile == null) {
        final kept = AuthSession(token: token, branchId: restored.branchId);
        _live = kept;
        return kept;
      }
      final branchId = restored.branchId ??
          (profile.branches.length == 1
              ? '${profile.branches.first.branchId}'
              : null);
      if (branchId != null && restored.branchId == null) {
        await repo.selectBranch(branchId);
      }
      final session = AuthSession(
        token: token,
        user: profile.user,
        branches: profile.branches,
        branchId: branchId,
        enabledApps: profile.enabledApps,
      );
      _live = session;
      return session;
    } on Object catch (error, stack) {
      nereusLog('Session.restore', error, stack);
      if (_live != null && _live!.isAuthenticated) return _live!;
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
    _live = AuthSession(
      token: login.token,
      user: login.user,
      branches: login.branches,
      branchId: branchId,
      enabledApps: login.enabledApps,
    );
    state = AsyncData(_live!);
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
    _live = const AuthSession();
    state = const AsyncData(AuthSession());
  }
}
