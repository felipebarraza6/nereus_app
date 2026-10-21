import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/network/session_controller.dart';
import 'package:nereus_app/core/storage/secure_store.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_api_client/nereus_api_client.dart';

class AuthRepository {
  AuthRepository({
    required Dio dio,
    required AccountsApi accountsApi,
    required SecureStore store,
    required SessionController session,
    required ReadCache cache,
  })  : _dio = dio,
        _accountsApi = accountsApi,
        _store = store,
        _session = session,
        _cache = cache;

  final Dio _dio;
  final AccountsApi _accountsApi;
  final SecureStore _store;
  final SessionController _session;
  final ReadCache _cache;

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
      await _store.writeToken(login.token);
      _session.token = login.token;
      await _cache.putJson('session.user', {
        'user': data['user'],
        'branches': data['branches'],
        'token': login.token,
        'permissions': data['permissions'],
      });
      return login;
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Future<void> forgotPassword(String email) async {
    try {
      await _accountsApi.accountsUsersForgotPasswordCreate(
        forgotPasswordRequest: ForgotPasswordRequest(email: email.trim()),
      );
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Future<void> selectBranch(String branchId) async {
    await _store.writeBranchId(branchId);
    _session.branchId = branchId;
  }

  Future<void> logout() async {
    try {
      await _dio.post<Map<String, dynamic>>('/api/accounts/users/logout/');
    } on DioException {
      // Logout is best-effort; local session is always cleared.
    } finally {
      await clearLocal();
    }
  }

  Future<void> clearLocal() async {
    await _store.clearSession();
    await _cache.clear();
    _session.clear();
  }

  Future<({String? token, String? branchId})> restore() async {
    final token = await _store.readToken();
    final branchId = await _store.readBranchId();
    _session.token = token;
    _session.branchId = branchId;
    return (token: token, branchId: branchId);
  }
}
