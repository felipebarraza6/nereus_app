import 'package:dio/dio.dart';
import 'package:nereus_app/core/debug/nereus_log.dart';
import 'package:nereus_app/core/network/session_controller.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor(this.session);

  final SessionController session;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    try {
      final token = session.token;
      if (token != null && token.isNotEmpty) {
        options.headers['Authorization'] = 'Token $token';
      }
      final branchId = session.branchId;
      if (branchId != null && branchId.isNotEmpty) {
        options.headers['X-Branch-ID'] = branchId;
      }
    } on Object catch (error, stack) {
      nereusLog('AuthInterceptor.onRequest', error, stack);
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    try {
      if (err.response?.statusCode == 401) {
        final cb = session.onUnauthorized;
        if (cb != null) {
          Future<void>.microtask(cb);
        }
      }
    } on Object catch (error, stack) {
      nereusLog('AuthInterceptor.onError', error, stack);
    }
    handler.next(err);
  }
}
