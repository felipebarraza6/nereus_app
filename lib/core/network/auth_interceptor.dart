import 'package:dio/dio.dart';
import 'package:nereus_app/core/network/session_controller.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor(this.session);

  final SessionController session;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = session.token;
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Token $token';
    }
    final branchId = session.branchId;
    if (branchId != null && branchId.isNotEmpty) {
      options.headers['X-Branch-ID'] = branchId;
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      final cb = session.onUnauthorized;
      if (cb != null) {
        Future<void>.microtask(cb);
      }
    }
    handler.next(err);
  }
}
