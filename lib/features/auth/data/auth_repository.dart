import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/debug/nereus_log.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/network/session_controller.dart';
import 'package:nereus_app/core/storage/secure_store.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';

class AuthRepository {
  AuthRepository({
    required Dio dio,
    required SecureStore store,
    required SessionController session,
    required ReadCache cache,
    this.isFixture = false,
  })  : _dio = dio,
        _store = store,
        _session = session,
        _cache = cache;

  final Dio _dio;
  final SecureStore _store;
  final SessionController _session;
  final ReadCache _cache;
  final bool isFixture;

  static LoginComplete demoSession() {
    return LoginComplete.fromJson(const {
      'token': 'fixture-token',
      'user': {
        'id': 1,
        'email': 'demo@smarthydro.app',
        'full_name': 'Demo Nereus',
        'is_superuser': true,
      },
      'branches': [
        {
          'branch_id': 1,
          'branch_name': 'Sucursal demo',
          'role_code': 'ADM',
          'role_name': 'Administrador',
          'is_active': true,
        },
      ],
      'permissions': {
        'enabled_apps': [
          'customers',
          'iot_telemetry',
          'support',
          'inventory',
          'equipment',
          'branches',
          'accounts',
        ],
      },
    });
  }

  static ApiError _asApiError(Object error, [StackTrace? stack]) {
    nereusLog('AuthRepository', error, stack);
    if (error is ApiError) return error;
    if (error is DioException) return ApiError.fromDio(error);
    return const ApiError(message: 'No pudimos completar la solicitud.');
  }

  Future<LoginComplete> login({
    required String email,
    required String password,
  }) async {
    if (isFixture) {
      final login = demoSession();
      _session.token = login.token;
      try {
        await _store.writeToken(login.token);
      } on Object catch (error, stack) {
        nereusLog('AuthRepository.writeToken', error, stack);
      }
      await _rememberProfile(const {
        'user': {
          'id': 1,
          'email': 'demo@smarthydro.app',
          'full_name': 'Demo Nereus',
          'is_superuser': true,
        },
        'branches': [
          {
            'branch_id': 1,
            'branch_name': 'Sucursal demo',
            'role_code': 'ADM',
            'role_name': 'Administrador',
            'is_active': true,
          },
        ],
        'permissions': {
          'enabled_apps': [
            'customers',
            'iot_telemetry',
            'support',
            'inventory',
            'equipment',
            'branches',
            'accounts',
          ],
        },
      });
      return login;
    }
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/accounts/users/login_complete/',
        data: {
          'email': email.trim(),
          'password': password,
          'device': 'phone',
        },
      );
      final data = response.data ?? {};
      final login = LoginComplete.fromJson(data);
      _session.token = login.token;
      try {
        await _store.writeToken(login.token);
      } on Object catch (error, stack) {
        nereusLog('AuthRepository.writeToken', error, stack);
      }
      await _rememberProfile(data);
      return login;
    } on Object catch (error, stack) {
      throw _asApiError(error, stack);
    }
  }

  /// Confirm a reset-email token. The API requires matching confirm_password.
  Future<void> resetPasswordConfirm({
    required String token,
    required String newPassword,
    required String confirmPassword,
  }) async {
    try {
      await _dio.post<Map<String, dynamic>>(
        '/api/accounts/users/reset_password_confirm/',
        data: {
          'token': token,
          'new_password': newPassword,
          'confirm_password': confirmPassword,
        },
      );
    } on Object catch (error, stack) {
      throw _asApiError(error, stack);
    }
  }

  /// OpenAPI models this as an email echo. The API returns `{message: ...}`.
  Future<void> forgotPassword(String email) async {
    try {
      await _dio.post<Map<String, dynamic>>(
        '/api/accounts/users/forgot_password/',
        data: {'email': email.trim()},
      );
    } on Object catch (error, stack) {
      throw _asApiError(error, stack);
    }
  }

  Future<void> selectBranch(String branchId) async {
    _session.branchId = branchId;
    try {
      await _store.writeBranchId(branchId);
    } on Object catch (error, stack) {
      nereusLog('AuthRepository.writeBranchId', error, stack);
    }
  }

  Future<void> logout() async {
    try {
      await _dio.post<Map<String, dynamic>>('/api/accounts/users/logout/');
    } on Object catch (error, stack) {
      nereusLog('AuthRepository.logout', error, stack);
    } finally {
      await clearLocal();
    }
  }

  Future<void> clearLocal() async {
    try {
      await _store.clearSession();
    } on Object catch (error, stack) {
      nereusLog('AuthRepository.clearSession', error, stack);
    }
    try {
      await _cache.clear();
    } on Object catch (error, stack) {
      nereusLog('AuthRepository.clearCache', error, stack);
    }
    _session.clear();
  }

  Future<({String? token, String? branchId})> restore() async {
    String? token;
    String? branchId;
    try {
      token = await _store.readToken();
    } on Object catch (error, stack) {
      nereusLog('AuthRepository.restoreToken', error, stack);
    }
    try {
      branchId = await _store.readBranchId();
    } on Object catch (error, stack) {
      nereusLog('AuthRepository.restoreBranch', error, stack);
    }
    _session.token = token;
    _session.branchId = branchId;
    return (token: token, branchId: branchId);
  }

  /// Profile saved at login. Web cache is memory-only, so this lives next to
  /// the token and survives a reload.
  Future<LoginComplete?> readStoredProfile() async {
    try {
      final raw = await _store.readProfile();
      if (raw == null || raw.isEmpty) return null;
      final decoded = jsonDecode(raw);
      if (decoded is! Map) return null;
      final user = decoded['user'];
      if (user is! Map) return null;
      return LoginComplete.fromJson({
        'token': _session.token ?? '',
        'user': Map<String, dynamic>.from(user),
        'branches': decoded['branches'],
        'permissions': decoded['permissions'],
      });
    } on Object catch (error, stack) {
      nereusLog('AuthRepository.readStoredProfile', error, stack);
      return null;
    }
  }

  /// Fills the role after a reload. `my-profile` includes branch assignments
  /// and `is_superuser`, which login stored only in memory.
  Future<LoginComplete?> loadProfile() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/accounts/users/my-profile/',
      );
      final data = response.data ?? {};
      final branches = _branchesFromProfile(data);
      final stored = await readStoredProfile();
      final permissions = stored == null
          ? const {'enabled_apps': <String>[]}
          : {
              'enabled_apps': stored.enabledApps,
            };
      await _rememberProfile({
        'user': data,
        'branches': branches,
        'permissions': permissions,
      });
      return LoginComplete.fromJson({
        'token': _session.token ?? '',
        'user': data,
        'branches': branches,
        'permissions': permissions,
      });
    } on Object catch (error, stack) {
      nereusLog('AuthRepository.loadProfile', error, stack);
      return null;
    }
  }

  Future<void> _rememberProfile(Map<String, dynamic> data) async {
    final payload = {
      'user': data['user'],
      'branches': data['branches'],
      'permissions': data['permissions'],
    };
    try {
      await _cache.putJson('session.user', {
        ...payload,
        'token': _session.token,
      });
    } on Object catch (error, stack) {
      nereusLog('AuthRepository.cacheSession', error, stack);
    }
    try {
      await _store.writeProfile(jsonEncode(payload));
    } on Object catch (error, stack) {
      nereusLog('AuthRepository.writeProfile', error, stack);
    }
  }

  List<Map<String, dynamic>> _branchesFromProfile(Map<String, dynamic> user) {
    final raw = user['branch_assignments'] ?? user['branches'];
    return [
      for (final item in asMapList(raw))
        {
          ...item,
          'role_code': _roleCode(item, user),
        },
    ];
  }

  String _roleCode(Map<String, dynamic> item, Map<String, dynamic> user) {
    final code = asStringOrNull(item['role_code']);
    if (code != null) return code;
    if (user['is_superuser'] == true) return 'ADMIN';
    final type = asStringOrNull(user['type_user']);
    if (type != null) return type;
    return 'VIEWER';
  }
}
