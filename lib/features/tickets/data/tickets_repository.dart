import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_api_client/nereus_api_client.dart';

class TicketsRepository {
  TicketsRepository({
    required SupportApi api,
    required CustomersApi customersApi,
    required ReadCache cache,
  })  : _api = api,
        _customersApi = customersApi,
        _cache = cache;

  final SupportApi _api;
  final CustomersApi _customersApi;
  final ReadCache _cache;

  Future<List<TicketList>> myTickets({String? status}) async {
    const key = 'tickets.mine';
    try {
      final response = await _api.supportTicketsList(
        pageSize: 50,
        status: status,
      );
      final results = response.data?.results ?? const <TicketList>[];
      await _cache.putJson(key, {
        'results': results.map((e) => e.toJson()).toList(),
      });
      return results;
    } on DioException catch (error) {
      final cached = await _cache.getJson(key);
      if (cached != null) {
        final raw = cached['results'] as List? ?? [];
        return [
          for (final item in raw)
            if (item is Map)
              TicketList.fromJson(Map<String, dynamic>.from(item)),
        ];
      }
      throw ApiError.fromDio(error);
    }
  }

  Future<TicketDetail> detail(String id) async {
    try {
      final response = await _api.supportTicketsRetrieve(id: id);
      final data = response.data;
      if (data == null) {
        throw const ApiError(message: 'Ticket no encontrado');
      }
      return data;
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Future<TicketList> submit({
    required String subject,
    required String description,
    String categoryCode = 'incidencia',
    String priority = 'MEDIUM',
  }) async {
    try {
      final response = await _api.supportTicketsSubmitCreate(
        ticketSubmitRequest: TicketSubmitRequest(
          subject: subject,
          description: description,
          categoryCode: categoryCode,
          priority: switch (priority) {
            'LOW' => TicketSubmitRequestPriorityEnum.LOW,
            'HIGH' => TicketSubmitRequestPriorityEnum.HIGH,
            'CRITICAL' => TicketSubmitRequestPriorityEnum.CRITICAL,
            _ => TicketSubmitRequestPriorityEnum.MEDIUM,
          },
        ),
      );
      final data = response.data;
      if (data == null) {
        throw const ApiError(message: 'No se pudo crear el ticket');
      }
      return data;
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Future<List<ClientDepth>> clients({String? name}) async {
    try {
      final response = await _customersApi.customersClientsList(
        nameIcontains: name,
        pageSize: 50,
      );
      return response.data?.results ?? const <ClientDepth>[];
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }
}
