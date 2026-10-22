import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/network/api_error.dart';

void main() {
  test('connection errors show a network message', () {
    final error = ApiError.fromDio(
      DioException(
        requestOptions: RequestOptions(path: '/x'),
        type: DioExceptionType.connectionError,
      ),
    );
    expect(error.message, contains('conexión'));
  });

  test('server body wins over generic network copy', () {
    final error = ApiError.fromDio(
      DioException(
        requestOptions: RequestOptions(path: '/x'),
        type: DioExceptionType.badResponse,
        response: Response<Map<String, dynamic>>(
          requestOptions: RequestOptions(path: '/x'),
          statusCode: 400,
          data: const {'detail': 'Credenciales Invalidas'},
        ),
      ),
    );
    expect(error.message, 'Credenciales Invalidas');
    expect(error.statusCode, 400);
  });
}
