import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/network/session_controller.dart';
import 'package:nereus_app/core/storage/secure_store.dart';
import 'package:nereus_app/features/auth/data/auth_repository.dart';

class _Cache extends Mock implements ReadCache {}

class _Store extends Fake implements SecureStore {
  String? token;
  String? branch;

  @override
  Future<void> writeToken(String value) async => token = value;

  @override
  Future<String?> readToken() async => token;

  @override
  Future<void> writeBranchId(String branchId) async => branch = branchId;

  @override
  Future<String?> readBranchId() async => branch;

  @override
  Future<void> clearSession() async {
    token = null;
    branch = null;
  }
}

void main() {
  setUpAll(() {
    registerFallbackValue(<String, dynamic>{});
  });

  AuthRepository repo(Dio dio, {SecureStore? store, SessionController? session}) {
    final cache = _Cache();
    when(() => cache.putJson(any(), any())).thenAnswer((_) async {});
    when(cache.clear).thenAnswer((_) async {});
    return AuthRepository(
      dio: dio,
      store: store ?? _Store(),
      session: session ?? SessionController(),
      cache: cache,
    );
  }

  test('login stores token from login_complete', () async {
    final store = _Store();
    final session = SessionController();
    final dio = Dio()
      ..httpClientAdapter = _Adapter((options) async {
        expect(options.path, '/api/accounts/users/login_complete/');
        return ResponseBody.fromString(
          '{"token":"abc","user":{"id":1,"email":"a@b.cl"},"branches":[],"permissions":{"enabled_apps":[]}}',
          200,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
          },
        );
      });
    final login = await repo(dio, store: store, session: session).login(
      email: 'a@b.cl',
      password: 'x',
    );
    expect(login.token, 'abc');
    expect(store.token, 'abc');
    expect(session.token, 'abc');
  });

  test('maps 400 credentials to ApiError', () async {
    final dio = Dio()
      ..httpClientAdapter = _Adapter((options) async {
        return ResponseBody.fromString(
          '{"non_field_errors":["Credenciales Invalidas"]}',
          400,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
          },
        );
      });
    expect(
      () => repo(dio).login(email: 'a@b.cl', password: 'bad'),
      throwsA(
        isA<ApiError>().having(
          (e) => e.message,
          'message',
          'Credenciales Invalidas',
        ),
      ),
    );
  });

  test('forgotPassword posts email without generated serializer', () async {
    late RequestOptions captured;
    final dio = Dio()
      ..httpClientAdapter = _Adapter((options) async {
        captured = options;
        return ResponseBody.fromString(
          '{"message":"Si el email existe en nuestro sistema, recibirás instrucciones."}',
          200,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
          },
        );
      });
    await repo(dio).forgotPassword('  ana@smarthydro.app  ');
    expect(captured.path, '/api/accounts/users/forgot_password/');
    expect(captured.method, 'POST');
    expect(captured.data, {'email': 'ana@smarthydro.app'});
  });

  test('login keeps the in-memory session if storage write fails', () async {
    final session = SessionController();
    final dio = Dio()
      ..httpClientAdapter = _Adapter((options) async {
        return ResponseBody.fromString(
          '{"token":"abc","user":{"id":1,"email":"a@b.cl"},"branches":[],"permissions":{"enabled_apps":[]}}',
          200,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
          },
        );
      });
    final login = await repo(
      dio,
      store: _ThrowingStore(),
      session: session,
    ).login(email: 'a@b.cl', password: 'x');
    expect(login.token, 'abc');
    expect(session.token, 'abc');
  });

  test('restore does not throw when storage fails', () async {
    final restored = await repo(Dio(), store: _ThrowingStore()).restore();
    expect(restored.token, isNull);
    expect(restored.branchId, isNull);
  });

  test('resetPasswordConfirm posts token, new_password and confirm_password',
      () async {
    late RequestOptions captured;
    final dio = Dio()
      ..httpClientAdapter = _Adapter((options) async {
        captured = options;
        return ResponseBody.fromString(
          '{"message":"Contraseña actualizada exitosamente"}',
          200,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
          },
        );
      });
    await repo(dio).resetPasswordConfirm(
      token: 'abc',
      newPassword: 'password1',
      confirmPassword: 'password1',
    );
    expect(captured.path, '/api/accounts/users/reset_password_confirm/');
    expect(captured.method, 'POST');
    expect(captured.data, {
      'token': 'abc',
      'new_password': 'password1',
      'confirm_password': 'password1',
    });
  });

  test('resetPasswordConfirm maps API error', () async {
    final dio = Dio()
      ..httpClientAdapter = _Adapter((options) async {
        return ResponseBody.fromString(
          '{"error":"El enlace de recuperación ha expirado."}',
          400,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
          },
        );
      });
    expect(
      () => repo(dio).resetPasswordConfirm(
        token: 'expired',
        newPassword: 'password1',
        confirmPassword: 'password1',
      ),
      throwsA(
        isA<ApiError>().having(
          (e) => e.message,
          'message',
          'El enlace de recuperación ha expirado.',
        ),
      ),
    );
  });

  test('forgotPassword maps 400 to ApiError', () async {
    final dio = Dio()
      ..httpClientAdapter = _Adapter((options) async {
        return ResponseBody.fromString(
          '{"email":["Ingrese un correo válido."]}',
          400,
          headers: {
            Headers.contentTypeHeader: ['application/json'],
          },
        );
      });
    expect(
      () => repo(dio).forgotPassword('bad'),
      throwsA(
        isA<ApiError>().having((e) => e.message, 'message', 'Ingrese un correo válido.'),
      ),
    );
  });
}

class _ThrowingStore extends Fake implements SecureStore {
  @override
  Future<void> writeToken(String value) async => throw StateError('idb');

  @override
  Future<String?> readToken() async => throw StateError('idb');

  @override
  Future<void> writeBranchId(String branchId) async => throw StateError('idb');

  @override
  Future<String?> readBranchId() async => throw StateError('idb');

  @override
  Future<void> clearSession() async => throw StateError('idb');
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
