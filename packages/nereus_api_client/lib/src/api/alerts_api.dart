//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:nereus_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:nereus_api_client/src/model/paginated_telemetry_alert_channel_list.dart';
import 'package:nereus_api_client/src/model/paginated_telemetry_alert_rule_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_telemetry_alert_trigger_list.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_alert_channel_request.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_alert_rule_request.dart';
import 'package:nereus_api_client/src/model/patched_telemetry_alert_trigger_request.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_channel.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_channel_request.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_rule.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_rule_request.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_trigger.dart';
import 'package:nereus_api_client/src/model/telemetry_alert_trigger_request.dart';

class AlertsApi {

  final Dio _dio;

  const AlertsApi(this._dio);

  /// iotTelemetryAlertChannelsCreate
  /// ViewSet para canales de notificacion de alertas.
  ///
  /// Parameters:
  /// * [telemetryAlertChannelRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertChannel] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertChannel>> iotTelemetryAlertChannelsCreate({ 
    required TelemetryAlertChannelRequest telemetryAlertChannelRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-channels/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(telemetryAlertChannelRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertChannel? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertChannel, TelemetryAlertChannel>(rawData, 'TelemetryAlertChannel', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertChannel>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertChannelsDestroy
  /// ViewSet para canales de notificacion de alertas.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Canal de Notificacion IoT.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> iotTelemetryAlertChannelsDestroy({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-channels/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// iotTelemetryAlertChannelsList
  /// ViewSet para canales de notificacion de alertas.
  ///
  /// Parameters:
  /// * [alertRule] 
  /// * [channelType] - * `EMAIL` - Email * `GOOGLE_CHAT` - Google Chat * `WEBHOOK` - Webhook * `SMS` - SMS * `IN_APP` - Notificacion en app
  /// * [channelTypeIn] - Múltiples valores separados por comas.
  /// * [format] 
  /// * [isActive] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [search] - Un término de búsqueda.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedTelemetryAlertChannelList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedTelemetryAlertChannelList>> iotTelemetryAlertChannelsList({ 
    int? alertRule,
    String? channelType,
    List<String>? channelTypeIn,
    String? format,
    bool? isActive,
    String? ordering,
    int? page,
    int? pageSize,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-channels/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (alertRule != null) r'alert_rule': alertRule,
      if (channelType != null) r'channel_type': channelType,
      if (channelTypeIn != null) r'channel_type__in': channelTypeIn,
      if (format != null) r'format': format,
      if (isActive != null) r'is_active': isActive,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (search != null) r'search': search,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedTelemetryAlertChannelList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedTelemetryAlertChannelList, PaginatedTelemetryAlertChannelList>(rawData, 'PaginatedTelemetryAlertChannelList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedTelemetryAlertChannelList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertChannelsPartialUpdate
  /// ViewSet para canales de notificacion de alertas.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Canal de Notificacion IoT.
  /// * [format] 
  /// * [patchedTelemetryAlertChannelRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertChannel] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertChannel>> iotTelemetryAlertChannelsPartialUpdate({ 
    required int id,
    String? format,
    PatchedTelemetryAlertChannelRequest? patchedTelemetryAlertChannelRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-channels/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(patchedTelemetryAlertChannelRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertChannel? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertChannel, TelemetryAlertChannel>(rawData, 'TelemetryAlertChannel', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertChannel>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertChannelsRetrieve
  /// ViewSet para canales de notificacion de alertas.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Canal de Notificacion IoT.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertChannel] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertChannel>> iotTelemetryAlertChannelsRetrieve({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-channels/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertChannel? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertChannel, TelemetryAlertChannel>(rawData, 'TelemetryAlertChannel', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertChannel>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertChannelsUpdate
  /// ViewSet para canales de notificacion de alertas.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Canal de Notificacion IoT.
  /// * [telemetryAlertChannelRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertChannel] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertChannel>> iotTelemetryAlertChannelsUpdate({ 
    required int id,
    required TelemetryAlertChannelRequest telemetryAlertChannelRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-channels/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(telemetryAlertChannelRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertChannel? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertChannel, TelemetryAlertChannel>(rawData, 'TelemetryAlertChannel', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertChannel>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertRulesCreate
  /// ViewSet para reglas de alerta IoT.
  ///
  /// Parameters:
  /// * [telemetryAlertRuleRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertRule] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertRule>> iotTelemetryAlertRulesCreate({ 
    required TelemetryAlertRuleRequest telemetryAlertRuleRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-rules/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(telemetryAlertRuleRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertRule? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertRule, TelemetryAlertRule>(rawData, 'TelemetryAlertRule', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertRule>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertRulesDestroy
  /// ViewSet para reglas de alerta IoT.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Regla de Alerta IoT.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> iotTelemetryAlertRulesDestroy({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-rules/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// iotTelemetryAlertRulesList
  /// ViewSet para reglas de alerta IoT.
  ///
  /// Parameters:
  /// * [device] 
  /// * [format] 
  /// * [isActive] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [search] - Un término de búsqueda.
  /// * [severity] - * `INFO` - Informativo * `WARNING` - Advertencia * `ALERT` - Alerta * `CRITICAL` - Critico
  /// * [severityIn] - Múltiples valores separados por comas.
  /// * [targetType] - * `THRESHOLD_MAX` - Umbral maximo * `THRESHOLD_MIN` - Umbral minimo * `NO_DATA` - Sin datos por X tiempo * `DISCONNECTION` - Dispositivo desconectado * `RECONNECTION` - Dispositivo reconectado * `PROCESSING_ERROR` - Error de procesamiento * `RATE_OF_CHANGE` - Tasa de cambio * `DEVIATION` - Desviacion estadistica * `SCHEDULED_REPORT` - Reporte programado
  /// * [targetTypeIn] - Múltiples valores separados por comas.
  /// * [variable] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedTelemetryAlertRuleListList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedTelemetryAlertRuleListList>> iotTelemetryAlertRulesList({ 
    int? device,
    String? format,
    bool? isActive,
    String? ordering,
    int? page,
    int? pageSize,
    String? search,
    String? severity,
    List<String>? severityIn,
    String? targetType,
    List<String>? targetTypeIn,
    int? variable,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-rules/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (device != null) r'device': device,
      if (format != null) r'format': format,
      if (isActive != null) r'is_active': isActive,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (search != null) r'search': search,
      if (severity != null) r'severity': severity,
      if (severityIn != null) r'severity__in': severityIn,
      if (targetType != null) r'target_type': targetType,
      if (targetTypeIn != null) r'target_type__in': targetTypeIn,
      if (variable != null) r'variable': variable,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedTelemetryAlertRuleListList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedTelemetryAlertRuleListList, PaginatedTelemetryAlertRuleListList>(rawData, 'PaginatedTelemetryAlertRuleListList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedTelemetryAlertRuleListList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertRulesPartialUpdate
  /// ViewSet para reglas de alerta IoT.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Regla de Alerta IoT.
  /// * [format] 
  /// * [patchedTelemetryAlertRuleRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertRule] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertRule>> iotTelemetryAlertRulesPartialUpdate({ 
    required int id,
    String? format,
    PatchedTelemetryAlertRuleRequest? patchedTelemetryAlertRuleRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-rules/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(patchedTelemetryAlertRuleRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertRule? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertRule, TelemetryAlertRule>(rawData, 'TelemetryAlertRule', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertRule>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertRulesRetrieve
  /// ViewSet para reglas de alerta IoT.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Regla de Alerta IoT.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertRule] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertRule>> iotTelemetryAlertRulesRetrieve({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-rules/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertRule? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertRule, TelemetryAlertRule>(rawData, 'TelemetryAlertRule', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertRule>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertRulesUpdate
  /// ViewSet para reglas de alerta IoT.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Regla de Alerta IoT.
  /// * [telemetryAlertRuleRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertRule] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertRule>> iotTelemetryAlertRulesUpdate({ 
    required int id,
    required TelemetryAlertRuleRequest telemetryAlertRuleRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-rules/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(telemetryAlertRuleRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertRule? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertRule, TelemetryAlertRule>(rawData, 'TelemetryAlertRule', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertRule>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertTriggersAcknowledgeBulkCreate
  /// Reconocer multiples disparos a la vez.
  ///
  /// Parameters:
  /// * [telemetryAlertTriggerRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertTrigger] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertTrigger>> iotTelemetryAlertTriggersAcknowledgeBulkCreate({ 
    required TelemetryAlertTriggerRequest telemetryAlertTriggerRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-triggers/acknowledge_bulk/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(telemetryAlertTriggerRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertTrigger? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertTrigger, TelemetryAlertTrigger>(rawData, 'TelemetryAlertTrigger', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertTrigger>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertTriggersAcknowledgeCreate
  /// Reconocer (acknowledge) un disparo de alerta.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Disparo de Alerta IoT.
  /// * [telemetryAlertTriggerRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertTrigger] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertTrigger>> iotTelemetryAlertTriggersAcknowledgeCreate({ 
    required int id,
    required TelemetryAlertTriggerRequest telemetryAlertTriggerRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-triggers/{id}/acknowledge/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(telemetryAlertTriggerRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertTrigger? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertTrigger, TelemetryAlertTrigger>(rawData, 'TelemetryAlertTrigger', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertTrigger>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertTriggersCreate
  /// ViewSet para disparos de alerta (log).
  ///
  /// Parameters:
  /// * [telemetryAlertTriggerRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertTrigger] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertTrigger>> iotTelemetryAlertTriggersCreate({ 
    required TelemetryAlertTriggerRequest telemetryAlertTriggerRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-triggers/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(telemetryAlertTriggerRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertTrigger? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertTrigger, TelemetryAlertTrigger>(rawData, 'TelemetryAlertTrigger', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertTrigger>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertTriggersDestroy
  /// ViewSet para disparos de alerta (log).
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Disparo de Alerta IoT.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> iotTelemetryAlertTriggersDestroy({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-triggers/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// iotTelemetryAlertTriggersList
  /// ViewSet para disparos de alerta (log).
  ///
  /// Parameters:
  /// * [alertRule] 
  /// * [device] 
  /// * [format] 
  /// * [isAcknowledged] 
  /// * [notificationSent] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [search] - Un término de búsqueda.
  /// * [triggeredAtGte] 
  /// * [triggeredAtLte] 
  /// * [variable] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedTelemetryAlertTriggerList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedTelemetryAlertTriggerList>> iotTelemetryAlertTriggersList({ 
    int? alertRule,
    int? device,
    String? format,
    bool? isAcknowledged,
    bool? notificationSent,
    String? ordering,
    int? page,
    int? pageSize,
    String? search,
    DateTime? triggeredAtGte,
    DateTime? triggeredAtLte,
    int? variable,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-triggers/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (alertRule != null) r'alert_rule': alertRule,
      if (device != null) r'device': device,
      if (format != null) r'format': format,
      if (isAcknowledged != null) r'is_acknowledged': isAcknowledged,
      if (notificationSent != null) r'notification_sent': notificationSent,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (search != null) r'search': search,
      if (triggeredAtGte != null) r'triggered_at__gte': triggeredAtGte,
      if (triggeredAtLte != null) r'triggered_at__lte': triggeredAtLte,
      if (variable != null) r'variable': variable,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedTelemetryAlertTriggerList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedTelemetryAlertTriggerList, PaginatedTelemetryAlertTriggerList>(rawData, 'PaginatedTelemetryAlertTriggerList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedTelemetryAlertTriggerList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertTriggersPartialUpdate
  /// ViewSet para disparos de alerta (log).
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Disparo de Alerta IoT.
  /// * [format] 
  /// * [patchedTelemetryAlertTriggerRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertTrigger] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertTrigger>> iotTelemetryAlertTriggersPartialUpdate({ 
    required int id,
    String? format,
    PatchedTelemetryAlertTriggerRequest? patchedTelemetryAlertTriggerRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-triggers/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(patchedTelemetryAlertTriggerRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertTrigger? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertTrigger, TelemetryAlertTrigger>(rawData, 'TelemetryAlertTrigger', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertTrigger>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertTriggersRetrieve
  /// ViewSet para disparos de alerta (log).
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Disparo de Alerta IoT.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertTrigger] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertTrigger>> iotTelemetryAlertTriggersRetrieve({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-triggers/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertTrigger? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertTrigger, TelemetryAlertTrigger>(rawData, 'TelemetryAlertTrigger', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertTrigger>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Resumen de disparos de alerta
  /// Conteos de disparos abiertos/reconocidos por severidad (solo lectura).
  ///
  /// Parameters:
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Map<String, Object>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Map<String, Object>>> iotTelemetryAlertTriggersSummaryRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-triggers/summary/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Map<String, Object>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<Map<String, Object>, Object>(rawData, 'Map<String, Object>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Map<String, Object>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// iotTelemetryAlertTriggersUpdate
  /// ViewSet para disparos de alerta (log).
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Disparo de Alerta IoT.
  /// * [telemetryAlertTriggerRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TelemetryAlertTrigger] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TelemetryAlertTrigger>> iotTelemetryAlertTriggersUpdate({ 
    required int id,
    required TelemetryAlertTriggerRequest telemetryAlertTriggerRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/iot-telemetry/alert-triggers/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(telemetryAlertTriggerRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TelemetryAlertTrigger? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TelemetryAlertTrigger, TelemetryAlertTrigger>(rawData, 'TelemetryAlertTrigger', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TelemetryAlertTrigger>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
