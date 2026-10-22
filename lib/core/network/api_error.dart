import 'package:dio/dio.dart';
import 'package:nereus_app/core/debug/nereus_log.dart';

class ApiError implements Exception {
  const ApiError({
    required this.message,
    this.statusCode,
    this.fields = const {},
    this.isNetwork = false,
  });

  static const genericMessage = 'No pudimos cargar los datos.';
  static const networkMessage =
      'No hay conexión. Revisa tu red e intenta de nuevo.';

  final String message;
  final int? statusCode;
  final Map<String, List<String>> fields;
  final bool isNetwork;

  factory ApiError.fromAny(Object error, [StackTrace? stack]) {
    if (error is ApiError) return error;
    if (error is DioException) return ApiError.fromDio(error);
    nereusLog('ApiError.parse', error, stack);
    return const ApiError(message: genericMessage);
  }

  factory ApiError.fromDio(DioException error) {
    final data = error.response?.data;
    if (data is Map) {
      final nonField = data['non_field_errors'] ?? data['detail'] ?? data['error'];
      if (nonField is List && nonField.isNotEmpty) {
        return ApiError(
          message: nonField.first.toString(),
          statusCode: error.response?.statusCode,
        );
      }
      if (nonField is String && nonField.isNotEmpty) {
        return ApiError(
          message: nonField,
          statusCode: error.response?.statusCode,
        );
      }
      final fields = <String, List<String>>{};
      for (final entry in data.entries) {
        final value = entry.value;
        if (value is List) {
          fields[entry.key.toString()] =
              value.map((e) => e.toString()).toList();
        } else if (value is String) {
          fields[entry.key.toString()] = [value];
        }
      }
      if (fields.isNotEmpty) {
        return ApiError(
          message: fields.values.first.first,
          statusCode: error.response?.statusCode,
          fields: fields,
        );
      }
    }
    if (error.response != null) {
      return ApiError(
        message: 'El servidor rechazó la solicitud.',
        statusCode: error.response?.statusCode,
      );
    }
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return const ApiError(
          message: networkMessage,
          isNetwork: true,
        );
      case DioExceptionType.cancel:
        return const ApiError(message: 'La solicitud se canceló.');
      case DioExceptionType.badCertificate:
        return const ApiError(
          message: 'No pudimos validar la conexión segura.',
        );
      case DioExceptionType.badResponse:
      case DioExceptionType.unknown:
      case DioExceptionType.transformTimeout:
        nereusLog('ApiError.fromDio', error);
        return const ApiError(message: genericMessage);
    }
  }

  @override
  String toString() => message;
}

String userFacingErrorMessage(Object error) {
  if (error is ApiError) return error.message;
  nereusLog('ui', error);
  return ApiError.genericMessage;
}

bool isNetworkFailure(Object error) =>
    error is ApiError && error.isNetwork;
