import 'package:dio/dio.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';

class OrgRepository {
  OrgRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Never _rethrow(Object error, StackTrace stack) {
    throw ApiError.fromAny(error, stack);
  }

  Future<List<BranchMember>> members() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/branches/users/',
        queryParameters: {'page_size': 100},
      );
      return asResults(response.data).map(BranchMember.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<BranchRoleItem>> roles() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/branches/roles/',
        queryParameters: {'page_size': 50},
      );
      return asResults(response.data).map(BranchRoleItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }
}
