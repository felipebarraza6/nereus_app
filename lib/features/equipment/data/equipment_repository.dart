import 'package:dio/dio.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';

class EquipmentRepository {
  EquipmentRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Never _rethrow(Object error, StackTrace stack) {
    throw ApiError.fromAny(error, stack);
  }

  Future<List<EquipmentProfileItem>> profiles() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/equipment/profiles/',
        queryParameters: {'page_size': 100},
      );
      return asResults(response.data)
          .map(EquipmentProfileItem.fromJson)
          .toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<EquipmentProfileItem> createProfile(Map<String, dynamic> body) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/equipment/profiles/',
        data: body,
      );
      return EquipmentProfileItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<EquipmentProfileItem> updateProfile(
    String id,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/equipment/profiles/$id/',
        data: body,
      );
      return EquipmentProfileItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> deleteProfile(String id) async {
    try {
      await _dio.delete<void>('/api/equipment/profiles/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<EquipmentAssignmentItem>> assignments() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/equipment/assignments/',
        queryParameters: {'page_size': 100},
      );
      return asResults(response.data)
          .map(EquipmentAssignmentItem.fromJson)
          .toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<EquipmentAssignmentItem> createAssignment(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/equipment/assignments/',
        data: body,
      );
      return EquipmentAssignmentItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> deleteAssignment(String id) async {
    try {
      await _dio.delete<void>('/api/equipment/assignments/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }
}
