import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/tickets/domain/ticket_models.dart';

class CustomersRepository {
  CustomersRepository({required Dio dio, required ReadCache cache})
      : _dio = dio,
        _cache = cache;

  final Dio _dio;
  final ReadCache _cache;

  Never _rethrow(Object error, StackTrace stack) {
    throw ApiError.fromAny(error, stack);
  }

  Future<List<ClientItem>> list({String? search}) async {
    const key = 'customers.clients';
    try {
      final response = await _dio.get<dynamic>(
        '/api/customers/clients/',
        queryParameters: {
          'page_size': 100,
          if (search != null && search.isNotEmpty) 'search': search,
        },
      );
      await _cache.putJson(
        key,
        asMap(response.data).isEmpty
            ? {'results': asResults(response.data)}
            : asMap(response.data),
      );
      return asResults(response.data).map(ClientItem.fromJson).toList();
    } on Object catch (error, stack) {
      final cached = await _cache.getJson(key);
      if (cached != null) {
        return asResults(cached).map(ClientItem.fromJson).toList();
      }
      _rethrow(error, stack);
    }
  }

  Future<ClientItem> create(Map<String, dynamic> body) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/customers/clients/',
        data: body,
      );
      return ClientItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<ClientItem> update(String id, Map<String, dynamic> body) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/customers/clients/$id/',
        data: body,
      );
      return ClientItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> delete(String id) async {
    try {
      await _dio.delete<void>('/api/customers/clients/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }
}
