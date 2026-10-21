import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:nereus_api_client/nereus_api_client.dart';

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
      ruleName: '${json['alert_rule_name'] ?? 'Alerta'}',
      deviceName: '${json['device_name'] ?? ''}',
      triggeredAt: asDateTime(json['triggered_at']),
      isAcknowledged: json['is_acknowledged'] == true,
      value: asDoubleOrNull(json['value_at_trigger']),
    );
  }
}

class AlertsRepository {
  AlertsRepository({
    required AlertsApi api,
    required Dio dio,
    required ReadCache cache,
  })  : _api = api,
        _dio = dio,
        _cache = cache;

  final AlertsApi _api;
  final Dio _dio;
  final ReadCache _cache;

  Future<List<AlertItem>> list({
    bool? acknowledged,
    int? deviceId,
    int pageSize = 50,
  }) async {
    try {
      final response = await _api.iotTelemetryAlertTriggersList(
        isAcknowledged: acknowledged,
        device: deviceId,
        pageSize: pageSize,
      );
      final results = response.data?.results ?? const <TelemetryAlertTrigger>[];
      return [
        for (final item in results)
          AlertItem(
            id: item.id,
            ruleName: item.alertRuleName,
            deviceName: item.deviceName,
            triggeredAt: item.triggeredAt,
            isAcknowledged: item.isAcknowledged ?? false,
            value: item.valueAtTrigger,
          ),
      ];
    } on DioException catch (error) {
      throw ApiError.fromDio(error);
    }
  }

  Future<AlertSummary> summary() async {
    const key = 'alerts.summary';
    try {
      final response = await _api.iotTelemetryAlertTriggersSummaryRetrieve();
      final json = Map<String, dynamic>.from(response.data ?? {});
      await _cache.putJson(key, json);
      return AlertSummary.fromJson(json);
    } on DioException catch (error) {
      final cached = await _cache.getJson(key);
      if (cached != null) return AlertSummary.fromJson(cached);
      throw ApiError.fromDio(error);
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
