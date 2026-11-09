import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

Never _rethrowAsApiError(Object error, StackTrace stack) {
  throw ApiError.fromAny(error, stack);
}

class TelemetryRepository {
  TelemetryRepository({
    required Dio dio,
    required ReadCache cache,
  })  : _dio = dio,
        _cache = cache;

  final Dio _dio;
  final ReadCache _cache;
  Future<DeviceOverview>? _overviewInFlight;

  Future<DeviceOverview> overview({bool allowStale = true}) {
    return _overviewInFlight ??= _loadOverview(allowStale: allowStale)
        .whenComplete(() => _overviewInFlight = null);
  }

  Future<DeviceOverview> _loadOverview({required bool allowStale}) async {
    const key = 'telemetry.overview';
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/iot-telemetry/devices/overview/',
      );
      final json = response.data ?? {};
      await _cache.putJson(key, json);
      return DeviceOverview.fromJson(json);
    } on Object catch (error, stack) {
      if (allowStale) {
        final cached = await _cache.getJson(key);
        if (cached != null) return DeviceOverview.fromJson(cached);
      }
      _rethrowAsApiError(error, stack);
    }
  }

  Future<List<DeviceItem>> devices({
    String? search,
    bool? isOnline,
    int page = 1,
    int pageSize = 50,
  }) async {
    final key =
        'telemetry.devices.${search ?? ''}.${isOnline ?? ''}.$page.$pageSize';
    try {
      final response = await _dio.get<dynamic>(
        '/api/iot-telemetry/devices/',
        queryParameters: {
          'page': page,
          'page_size': pageSize,
          if (search != null && search.isNotEmpty) 'search': search,
          if (isOnline != null) 'is_online': isOnline,
        },
      );
      final json = asMap(response.data);
      await _cache.putJson(
        key,
        json.isEmpty && response.data is List
            ? {'results': response.data}
            : json,
      );
      return asResults(response.data).map(DeviceItem.fromJson).toList();
    } on Object catch (error, stack) {
      final cached = await _cache.getJson(key);
      if (cached != null) {
        return asResults(cached).map(DeviceItem.fromJson).toList();
      }
      _rethrowAsApiError(error, stack);
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
    } on Object catch (error, stack) {
      final cached = await _cache.getJson(key);
      if (cached != null) {
        try {
          return DeviceDetail.fromJson(cached);
        } on Object catch (cacheError, cacheStack) {
          _rethrowAsApiError(cacheError, cacheStack);
        }
      }
      _rethrowAsApiError(error, stack);
    }
  }

  Future<DeviceStatus> status(int id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/iot-telemetry/devices/$id/status/',
      );
      return DeviceStatus.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<DeviceCalendar> calendar(int id, {int days = 14}) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/iot-telemetry/devices/$id/calendar/',
        queryParameters: {'days': days},
      );
      return DeviceCalendar.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<Map<String, LatestValue>> latestBatch(List<int> ids) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/iot-telemetry/readings/latest-batch/',
        data: {'device_ids': ids, 'hours': 24},
      );
      final data = asMap(response.data?['data']);
      return {
        for (final entry in data.entries)
          entry.key: LatestValue.fromJson(asMap(asMap(entry.value)['latest'])),
      };
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<List<DailyPoint>> daily({
    required int deviceId,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/iot-telemetry/readings/daily/',
        queryParameters: {
          'device': '$deviceId',
          if (startDate != null) 'start_date': startDate,
          if (endDate != null) 'end_date': endDate,
        },
      );
      final days = (response.data?['days'] as List?) ?? [];
      return [
        for (final day in days)
          if (day is Map)
            DailyPoint.fromJson(_flattenDaily(Map<String, dynamic>.from(day))),
      ];
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
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

  Future<List<DeviceEvent>> events({
    int? deviceId,
    int pageSize = 50,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/iot-telemetry/events/',
        queryParameters: {
          'page_size': pageSize,
          if (deviceId != null) 'device': deviceId,
        },
      );
      return asResults(response.data).map(DeviceEvent.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<List<TelemetryProjectItem>> projects() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/iot-telemetry/projects/',
        queryParameters: {'page_size': 100},
      );
      return asResults(response.data)
          .map(TelemetryProjectItem.fromJson)
          .toList();
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<TelemetryProjectItem> createProject(Map<String, dynamic> body) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/iot-telemetry/projects/',
        data: body,
      );
      return TelemetryProjectItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<TelemetryProjectItem> updateProject(
    String id,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/iot-telemetry/projects/$id/',
        data: body,
      );
      return TelemetryProjectItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<void> deleteProject(String id) async {
    try {
      await _dio.delete<void>('/api/iot-telemetry/projects/$id/');
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<Map<String, dynamic>> createDevice(Map<String, dynamic> body) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/iot-telemetry/devices/',
        data: body,
      );
      return response.data ?? {};
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<Map<String, dynamic>> updateDevice(
    int id,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/iot-telemetry/devices/$id/',
        data: body,
      );
      return response.data ?? {};
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<void> deleteDevice(int id) async {
    try {
      await _dio.delete<void>('/api/iot-telemetry/devices/$id/');
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<List<DeviceConfigItem>> deviceConfigs({int? deviceId}) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/iot-telemetry/device-configs/',
        queryParameters: {
          'page_size': 50,
          if (deviceId != null) 'device': deviceId,
        },
      );
      return asResults(response.data).map(DeviceConfigItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<DeviceConfigItem> saveDeviceConfig({
    String? id,
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = id == null
          ? await _dio.post<Map<String, dynamic>>(
              '/api/iot-telemetry/device-configs/',
              data: body,
            )
          : await _dio.patch<Map<String, dynamic>>(
              '/api/iot-telemetry/device-configs/$id/',
              data: body,
            );
      return DeviceConfigItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<List<VariableItem>> variables({int? deviceId}) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/iot-telemetry/variables/',
        queryParameters: {
          'page_size': 100,
          if (deviceId != null) 'device': deviceId,
        },
      );
      return asResults(response.data).map(VariableItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<VariableItem> saveVariable({
    String? id,
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = id == null
          ? await _dio.post<Map<String, dynamic>>(
              '/api/iot-telemetry/variables/',
              data: body,
            )
          : await _dio.patch<Map<String, dynamic>>(
              '/api/iot-telemetry/variables/$id/',
              data: body,
            );
      return VariableItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<void> deleteVariable(String id) async {
    try {
      await _dio.delete<void>('/api/iot-telemetry/variables/$id/');
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<List<ProviderItem>> providers() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/iot-telemetry/providers/',
        queryParameters: {'page_size': 50},
      );
      return asResults(response.data).map(ProviderItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<List<BrokerItem>> mqttBrokers() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/iot-telemetry/mqtt-brokers/',
        queryParameters: {'page_size': 20},
      );
      return asResults(response.data).map(BrokerItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<BrokerItem> saveBroker({
    String? id,
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = id == null
          ? await _dio.post<Map<String, dynamic>>(
              '/api/iot-telemetry/mqtt-brokers/',
              data: body,
            )
          : await _dio.patch<Map<String, dynamic>>(
              '/api/iot-telemetry/mqtt-brokers/$id/',
              data: body,
            );
      return BrokerItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }

  Future<List<ComplianceSnapshot>> complianceConfigs({int? deviceId}) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/iot-telemetry/compliance-configs/',
        queryParameters: {
          'page_size': 50,
          if (deviceId != null) 'device': deviceId,
        },
      );
      return asResults(response.data)
          .map(ComplianceSnapshot.fromJson)
          .toList();
    } on Object catch (error, stack) {
      _rethrowAsApiError(error, stack);
    }
  }
}
