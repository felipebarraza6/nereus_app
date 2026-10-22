import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/debug/nereus_log.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/network/session_controller.dart';
import 'package:nereus_app/core/storage/secure_store.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';

class AuthRepository {
  AuthRepository({
    required Dio dio,
    required SecureStore store,
    required SessionController session,
    required ReadCache cache,
  })  : _dio = dio,
        _store = store,
        _session = session,
        _cache = cache;

  final Dio _dio;
  final SecureStore _store;
  final SessionController _session;
  final ReadCache _cache;

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
      try {
        await _cache.putJson('session.user', {
          'user': data['user'],
          'branches': data['branches'],
          'token': login.token,
          'permissions': data['permissions'],
        });
      } on Object catch (error, stack) {
        nereusLog('AuthRepository.cacheSession', error, stack);
      }
      return login;
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
}
