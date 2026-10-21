import 'package:dio/dio.dart';

class ApiError implements Exception {
  const ApiError({
    required this.message,
    this.statusCode,
    this.fields = const {},
  });

  final String message;
  final int? statusCode;
  final Map<String, List<String>> fields;

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
    return ApiError(
      message: error.message ?? 'Error de red',
      statusCode: error.response?.statusCode,
    );
  }

  @override
  String toString() => message;
}
