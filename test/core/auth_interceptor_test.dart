import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/network/auth_interceptor.dart';
import 'package:nereus_app/core/network/session_controller.dart';

void main() {
  test('adds Token and X-Branch-ID headers', () async {
    final session = SessionController()
      ..token = 'abc'
      ..branchId = '12';
    Map<String, dynamic>? headers;
    final dio = Dio()
      ..interceptors.add(AuthInterceptor(session))
      ..httpClientAdapter = _Adapter((options) async {
        headers = Map<String, dynamic>.from(options.headers);
        expect(options.headers['Authorization'], 'Token abc');
        expect(options.headers['X-Branch-ID'], '12');
        return ResponseBody.fromString('{}', 200);
      });
    await dio.get<void>('/api/iot-telemetry/devices/');
    expect(headers, isNotNull);
  });

  test('unauthenticated request still proceeds', () async {
    var sent = false;
    final dio = Dio()
      ..interceptors.add(AuthInterceptor(SessionController()))
      ..httpClientAdapter = _Adapter((options) async {
        sent = true;
        expect(options.headers.containsKey('Authorization'), isFalse);
        return ResponseBody.fromString('{"message":"ok"}', 200);
      });
    await dio.post<void>(
      '/api/accounts/users/forgot_password/',
      data: const {'email': 'a@b.cl'},
    );
    expect(sent, isTrue);
  });

  test('logs out on 401', () async {
    final session = SessionController();
    var loggedOut = false;
    session.onUnauthorized = () async => loggedOut = true;
    final dio = Dio()
      ..interceptors.add(AuthInterceptor(session))
      ..httpClientAdapter = _Adapter((options) async {
        return ResponseBody.fromString('{"detail":"x"}', 401);
      });
    try {
      await dio.get<void>('/api/accounts/users/me/');
    } on DioException {
      // expected
    }
    await Future<void>.delayed(Duration.zero);
    expect(loggedOut, isTrue);
  });
}

class _Adapter implements HttpClientAdapter {
  _Adapter(this._handler);
  final Future<ResponseBody> Function(RequestOptions options) _handler;
  @override
  void close({bool force = false}) {}

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<List<int>>? requestStream,
    Future<void>? cancelFuture,
  ) {
    return _handler(options);
  }
}
