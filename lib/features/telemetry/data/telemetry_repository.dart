import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:nereus_api_client/nereus_api_client.dart';

class TelemetryRepository {
  TelemetryRepository({
    required IotTelemetryApi api,
    required Dio dio,
    required ReadCache cache,
  })  : _api = api,
        _dio = dio,
        _cache = cache;

  final IotTelemetryApi _api;
  final Dio _dio;
  final ReadCache _cache;

  Future<DeviceOverview> overview({bool allowStale = true}) async {
    const key = 'telemetry.overview';
    try {
      final response = await _api.iotTelemetryDevicesOverviewRetrieve();
      final json = Map<String, dynamic>.from(response.data ?? {});
      await _cache.putJson(key, json);
      return DeviceOverview.fromJson(json);
    } on DioException catch (error) {
      if (allowStale) {
        final cached = await _cache.getJson(key);
        if (cached != null) return DeviceOverview.fromJson(cached);
      }
      throw ApiError.fromDio(error);
    }
  }

  Future<List<DeviceItem>> devices({
    String? search,
    bool? isOnline,
    int page = 1,
    int pageSize = 50,
  }) async {
    const key = 'telemetry.devices';
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/iot-telemetry/devices/',
        queryParameters: {
          'page': page,
          'page_size': pageSize,
          if (search != null && search.isNotEmpty) 'search': search,
          if (isOnline != null) 'is_online': isOnline,
        },
      );
      final json = response.data ?? {};
      await _cache.putJson(key, json);
      return asMapList(json['results']).map(DeviceItem.fromJson).toList();
    } on DioException catch (error) {
      final cached = await _cache.getJson(key);
      if (cached != null) {
        return asMapList(cached['results']).map(DeviceItem.fromJson).toList();
      }
      throw ApiError.fromDio(error);
    }
  }

  Future<DeviceDetail> device(int id) async {
    final key = 'telemetry.device.$id';
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/iot-telemetry/devices/$id/',
      );
      final json = response.data ?? {};
      await _cache.putJson(key, json);
      return DeviceDetail.fromJson(json);
    } on DioException catch (error) {
      final cached = await _cache.getJson(key);
      if (cached != null) return DeviceDetail.fromJson(cached);
      throw ApiError.fromDio(error);
    }
  }

  Future<DeviceStatus> status(int id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/iot-telemetry/devices/$id/status/',
      );
      return DeviceStatus.fromJson(response.data ?? {});
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Future<DeviceCalendar> calendar(int id, {int days = 14}) async {
    try {
      final response = await _api.iotTelemetryDevicesCalendarRetrieve(
        id: id,
        days: days,
      );
      return DeviceCalendar.fromJson(
        Map<String, dynamic>.from(response.data ?? {}),
      );
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Future<Map<String, LatestValue>> latestBatch(List<int> ids) async {
    try {
      final response = await _api.iotTelemetryReadingsLatestBatchCreate(
        iotTelemetryReadingsLatestBatchCreateRequest:
            IotTelemetryReadingsLatestBatchCreateRequest(
          deviceIds: ids,
          hours: 24,
        ),
      );
      final root = response.data ?? {};
      final data = root['data'] as Map? ?? {};
      return data.map((key, value) {
        final map = Map<String, dynamic>.from(value as Map? ?? {});
        final latest = map['latest'] as Map?;
        return MapEntry(
          key.toString(),
          LatestValue.fromJson(
            Map<String, dynamic>.from(latest ?? const {}),
          ),
        );
      });
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Future<List<DailyPoint>> daily({
    required int deviceId,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final response = await _api.iotTelemetryReadingsDailyRetrieve(
        device: '$deviceId',
        startDate: startDate,
        endDate: endDate,
      );
      final days = (response.data?['days'] as List?) ?? [];
      return [
        for (final day in days)
          if (day is Map)
            DailyPoint.fromJson(_flattenDaily(Map<String, dynamic>.from(day))),
      ];
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Map<String, dynamic> _flattenDaily(Map<String, dynamic> day) {
    final devices = day['devices'] as List? ?? [];
    if (devices.isEmpty) {
      return {
        'date': day['date'],
        'avg_value': null,
        'sum_value': null,
        'records_count': 0,
      };
    }
    final first = Map<String, dynamic>.from(devices.first as Map);
    return {
      'date': day['date'],
      'avg_value': first['avg_value'],
      'sum_value': first['sum_value'],
      'records_count': first['records_count'] ?? 0,
    };
  }

  Future<PaginatedTelemetryReadingList> readings({
    required int deviceId,
    int? variableId,
    int pageSize = 200,
  }) async {
    try {
      final response = await _api.iotTelemetryReadingsList(
        device: deviceId,
        variable: variableId,
        pageSize: pageSize,
      );
      return response.data ??
          PaginatedTelemetryReadingList(count: 0, results: []);
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Future<PaginatedTelemetryEventListList> events({
    int? deviceId,
    int pageSize = 50,
  }) async {
    try {
      final response = await _api.iotTelemetryEventsList(
        device: deviceId,
        pageSize: pageSize,
      );
      return response.data ??
          PaginatedTelemetryEventListList(count: 0, results: []);
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }
}
