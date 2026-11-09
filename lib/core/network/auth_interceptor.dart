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
        options.extra['sentToken'] = token;
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
      final sent = err.requestOptions.extra['sentToken'];
      final current = session.token;
      final sameToken = sent is String && sent.isNotEmpty && sent == current;
      final profileCall = err.requestOptions.path.contains('my-profile');
      if (err.response?.statusCode == 401 &&
          sameToken &&
          profileCall &&
          current != 'fixture-token') {
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
