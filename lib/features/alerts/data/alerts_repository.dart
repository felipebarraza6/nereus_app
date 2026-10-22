import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

class AlertItem {
  const AlertItem({
    required this.id,
    required this.ruleName,
    required this.deviceName,
    required this.triggeredAt,
    required this.isAcknowledged,
    this.value,
    this.severity,
  });

  final int id;
  final String ruleName;
  final String deviceName;
  final DateTime? triggeredAt;
  final bool isAcknowledged;
  final double? value;
  final String? severity;

  factory AlertItem.fromJson(Map<String, dynamic> json) {
    return AlertItem(
      id: asInt(json['id']),
      ruleName: asString(
        json['alert_rule_name'] ??
            (json['alert_rule'] is Map ? json['alert_rule'] : null),
        fallback: 'Alerta',
      ),
      deviceName: asString(
        json['device_name'] ??
            (json['device'] is Map ? json['device'] : null),
      ),
      triggeredAt: asDateTime(json['triggered_at']),
      isAcknowledged: json['is_acknowledged'] == true,
      value: asDoubleOrNull(json['value_at_trigger']),
      severity: asStringOrNull(json['severity']),
    );
  }
}

class AlertsRepository {
  AlertsRepository({
    required Dio dio,
    required ReadCache cache,
  })  : _dio = dio,
        _cache = cache;

  final Dio _dio;
  final ReadCache _cache;

  Never _rethrow(Object error, StackTrace stack) {
    throw ApiError.fromAny(error, stack);
  }

  Future<List<AlertItem>> list({
    bool? acknowledged,
    int? deviceId,
    int pageSize = 50,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/iot-telemetry/alert-triggers/',
        queryParameters: {
          'page_size': pageSize,
          if (acknowledged != null) 'is_acknowledged': acknowledged,
          if (deviceId != null) 'device': deviceId,
        },
      );
      return asResults(response.data).map(AlertItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<AlertSummary> summary() async {
    const key = 'alerts.summary';
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/iot-telemetry/alert-triggers/summary/',
      );
      final json = response.data ?? {};
      await _cache.putJson(key, json);
      return AlertSummary.fromJson(json);
    } on Object catch (error, stack) {
      final cached = await _cache.getJson(key);
      if (cached != null) return AlertSummary.fromJson(cached);
      _rethrow(error, stack);
    }
  }

  Future<void> acknowledge(int id) async {
    try {
      await _dio.post<Map<String, dynamic>>(
        '/api/iot-telemetry/alert-triggers/$id/acknowledge/',
        data: const {'notes': ''},
      );
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Future<void> acknowledgeBulk(List<int> ids) async {
    try {
      await _dio.post<Map<String, dynamic>>(
        '/api/iot-telemetry/alert-triggers/acknowledge_bulk/',
        data: {'ids': ids},
      );
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }
}
