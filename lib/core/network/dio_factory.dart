import 'package:dio/dio.dart';
import 'package:nereus_app/core/network/auth_interceptor.dart';
import 'package:nereus_app/core/network/fixture_api.dart';
import 'package:nereus_app/core/network/session_controller.dart';

Dio createNereusDio({
  required String baseUrl,
  required SessionController session,
  Duration? connectTimeout,
  Duration? receiveTimeout,
}) {
  final client = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout ?? const Duration(seconds: 20),
      receiveTimeout: receiveTimeout ?? const Duration(seconds: 30),
      headers: const {'Accept': 'application/json'},
    ),
  );
  client.interceptors.add(FixtureApiInterceptor(session));
  client.interceptors.add(AuthInterceptor(session));
  return client;
}
