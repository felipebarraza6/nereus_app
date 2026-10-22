import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/tickets/domain/ticket_models.dart';

class TicketsRepository {
  TicketsRepository({
    required Dio dio,
    required ReadCache cache,
  })  : _dio = dio,
        _cache = cache;

  final Dio _dio;
  final ReadCache _cache;

  Never _rethrow(Object error, StackTrace stack) {
    throw ApiError.fromAny(error, stack);
  }

  Future<List<TicketItem>> myTickets({String? status}) async {
    const key = 'tickets.mine';
    try {
      final response = await _dio.get<dynamic>(
        '/api/support/tickets/',
        queryParameters: {
          'page_size': 50,
          if (status != null) 'status': status,
        },
      );
      final json = asMap(response.data);
      await _cache.putJson(key, json.isEmpty && response.data is List
          ? {'results': response.data}
          : json);
      return asResults(response.data).map(TicketItem.fromJson).toList();
    } on Object catch (error, stack) {
      final cached = await _cache.getJson(key);
      if (cached != null) {
        return asResults(cached).map(TicketItem.fromJson).toList();
      }
      _rethrow(error, stack);
    }
  }

  Future<TicketItem> detail(String id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/support/tickets/$id/',
      );
      return TicketItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<TicketItem> submit({
    required String subject,
    required String description,
    String categoryCode = 'incidencia',
    String priority = 'MEDIUM',
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/support/tickets/submit/',
        data: {
          'subject': subject,
          'description': description,
          'category_code': categoryCode,
          'priority': priority,
        },
      );
      return TicketItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<ClientItem>> clients({String? name}) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/customers/clients/',
        queryParameters: {
          'page_size': 50,
          if (name != null && name.isNotEmpty) 'name__icontains': name,
        },
      );
      return asResults(response.data).map(ClientItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }
}
