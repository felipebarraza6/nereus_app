//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:nereus_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:nereus_api_client/src/model/paginated_sla_policy_list.dart';
import 'package:nereus_api_client/src/model/paginated_support_agent_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_attachment_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_category_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_comment_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_escalation_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_timer_list.dart';
import 'package:nereus_api_client/src/model/paginated_ticket_type_list.dart';
import 'package:nereus_api_client/src/model/paginated_work_order_attachment_list.dart';
import 'package:nereus_api_client/src/model/paginated_work_order_checklist_item_list.dart';
import 'package:nereus_api_client/src/model/paginated_work_order_feedback_list.dart';
import 'package:nereus_api_client/src/model/paginated_work_order_list_list.dart';
import 'package:nereus_api_client/src/model/patched_sla_policy_request.dart';
import 'package:nereus_api_client/src/model/patched_support_agent_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_category_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_comment_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_create_update_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_escalation_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_timer_request.dart';
import 'package:nereus_api_client/src/model/patched_ticket_type_request.dart';
import 'package:nereus_api_client/src/model/patched_work_order_attachment_request.dart';
import 'package:nereus_api_client/src/model/patched_work_order_checklist_item_request.dart';
import 'package:nereus_api_client/src/model/patched_work_order_create_update_request.dart';
import 'package:nereus_api_client/src/model/patched_work_order_feedback_request.dart';
import 'package:nereus_api_client/src/model/sla_policy.dart';
import 'package:nereus_api_client/src/model/sla_policy_request.dart';
import 'package:nereus_api_client/src/model/support_agent.dart';
import 'package:nereus_api_client/src/model/support_agent_request.dart';
import 'package:nereus_api_client/src/model/ticket_attachment.dart';
import 'package:nereus_api_client/src/model/ticket_category.dart';
import 'package:nereus_api_client/src/model/ticket_category_request.dart';
import 'package:nereus_api_client/src/model/ticket_comment.dart';
import 'package:nereus_api_client/src/model/ticket_comment_request.dart';
import 'package:nereus_api_client/src/model/ticket_create_update.dart';
import 'package:nereus_api_client/src/model/ticket_create_update_request.dart';
import 'package:nereus_api_client/src/model/ticket_detail.dart';
import 'package:nereus_api_client/src/model/ticket_escalation.dart';
import 'package:nereus_api_client/src/model/ticket_escalation_request.dart';
import 'package:nereus_api_client/src/model/ticket_list.dart';
import 'package:nereus_api_client/src/model/ticket_list_request.dart';
import 'package:nereus_api_client/src/model/ticket_submit_error.dart';
import 'package:nereus_api_client/src/model/ticket_submit_request.dart';
import 'package:nereus_api_client/src/model/ticket_timer.dart';
import 'package:nereus_api_client/src/model/ticket_timer_request.dart';
import 'package:nereus_api_client/src/model/ticket_type.dart';
import 'package:nereus_api_client/src/model/ticket_type_request.dart';
import 'package:nereus_api_client/src/model/work_order_attachment.dart';
import 'package:nereus_api_client/src/model/work_order_attachment_request.dart';
import 'package:nereus_api_client/src/model/work_order_checklist_item.dart';
import 'package:nereus_api_client/src/model/work_order_checklist_item_request.dart';
import 'package:nereus_api_client/src/model/work_order_create_update.dart';
import 'package:nereus_api_client/src/model/work_order_create_update_request.dart';
import 'package:nereus_api_client/src/model/work_order_detail.dart';
import 'package:nereus_api_client/src/model/work_order_feedback.dart';
import 'package:nereus_api_client/src/model/work_order_feedback_request.dart';
import 'package:nereus_api_client/src/model/work_order_list.dart';
import 'package:nereus_api_client/src/model/work_order_list_request.dart';

class SupportApi {

  final Dio _dio;

  const SupportApi(this._dio);

  /// Crear agente de soporte
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [supportAgentRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SupportAgent] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SupportAgent>> supportAgentsCreate({ 
    required SupportAgentRequest supportAgentRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/agents/';
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
      _bodyData = jsonEncode(supportAgentRequest);

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

    SupportAgent? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SupportAgent, SupportAgent>(rawData, 'SupportAgent', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SupportAgent>(
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

  /// Eliminar agente de soporte
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Agente de Soporte.
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
  Future<Response<void>> supportAgentsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/agents/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar agentes de soporte
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [branch] 
  /// * [canHandleCritical] 
  /// * [format] 
  /// * [isActive] 
  /// * [isAvailable] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [search] - Un término de búsqueda.
  /// * [workflow] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedSupportAgentList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedSupportAgentList>> supportAgentsList({ 
    int? branch,
    bool? canHandleCritical,
    String? format,
    bool? isActive,
    bool? isAvailable,
    String? ordering,
    int? page,
    int? pageSize,
    String? search,
    String? workflow,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/agents/';
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
      if (branch != null) r'branch': branch,
      if (canHandleCritical != null) r'can_handle_critical': canHandleCritical,
      if (format != null) r'format': format,
      if (isActive != null) r'is_active': isActive,
      if (isAvailable != null) r'is_available': isAvailable,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (search != null) r'search': search,
      if (workflow != null) r'workflow': workflow,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedSupportAgentList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedSupportAgentList, PaginatedSupportAgentList>(rawData, 'PaginatedSupportAgentList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedSupportAgentList>(
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

  /// supportAgentsPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Agente de Soporte.
  /// * [format] 
  /// * [patchedSupportAgentRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SupportAgent] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SupportAgent>> supportAgentsPartialUpdate({ 
    required String id,
    String? format,
    PatchedSupportAgentRequest? patchedSupportAgentRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/agents/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedSupportAgentRequest);

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

    SupportAgent? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SupportAgent, SupportAgent>(rawData, 'SupportAgent', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SupportAgent>(
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

  /// Obtener agente de soporte
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Agente de Soporte.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SupportAgent] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SupportAgent>> supportAgentsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/agents/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    SupportAgent? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SupportAgent, SupportAgent>(rawData, 'SupportAgent', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SupportAgent>(
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

  /// Actualizar agente de soporte
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Agente de Soporte.
  /// * [supportAgentRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SupportAgent] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SupportAgent>> supportAgentsUpdate({ 
    required String id,
    required SupportAgentRequest supportAgentRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/agents/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(supportAgentRequest);

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

    SupportAgent? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SupportAgent, SupportAgent>(rawData, 'SupportAgent', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SupportAgent>(
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

  /// Crear categoría de tickets
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [ticketCategoryRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketCategory] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketCategory>> supportCategoriesCreate({ 
    required TicketCategoryRequest ticketCategoryRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/categories/';
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
      _bodyData = jsonEncode(ticketCategoryRequest);

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

    TicketCategory? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketCategory, TicketCategory>(rawData, 'TicketCategory', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketCategory>(
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

  /// Eliminar categoría de tickets
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Categoría de Ticket.
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
  Future<Response<void>> supportCategoriesDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/categories/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar categorías de tickets
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [branch] 
  /// * [code] 
  /// * [format] 
  /// * [isActive] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [parent] 
  /// * [search] - Un término de búsqueda.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedTicketCategoryList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedTicketCategoryList>> supportCategoriesList({ 
    int? branch,
    String? code,
    String? format,
    bool? isActive,
    String? ordering,
    int? page,
    int? pageSize,
    String? parent,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/categories/';
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
      if (branch != null) r'branch': branch,
      if (code != null) r'code': code,
      if (format != null) r'format': format,
      if (isActive != null) r'is_active': isActive,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (parent != null) r'parent': parent,
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

    PaginatedTicketCategoryList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedTicketCategoryList, PaginatedTicketCategoryList>(rawData, 'PaginatedTicketCategoryList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedTicketCategoryList>(
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

  /// supportCategoriesPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Categoría de Ticket.
  /// * [format] 
  /// * [patchedTicketCategoryRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketCategory] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketCategory>> supportCategoriesPartialUpdate({ 
    required String id,
    String? format,
    PatchedTicketCategoryRequest? patchedTicketCategoryRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/categories/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedTicketCategoryRequest);

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

    TicketCategory? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketCategory, TicketCategory>(rawData, 'TicketCategory', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketCategory>(
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

  /// Obtener categoría de tickets
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Categoría de Ticket.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketCategory] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketCategory>> supportCategoriesRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/categories/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    TicketCategory? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketCategory, TicketCategory>(rawData, 'TicketCategory', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketCategory>(
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

  /// Actualizar categoría de tickets
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Categoría de Ticket.
  /// * [ticketCategoryRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketCategory] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketCategory>> supportCategoriesUpdate({ 
    required String id,
    required TicketCategoryRequest ticketCategoryRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/categories/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(ticketCategoryRequest);

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

    TicketCategory? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketCategory, TicketCategory>(rawData, 'TicketCategory', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketCategory>(
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

  /// Marcar item como completado
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Item de Checklist.
  /// * [workOrderChecklistItemRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderChecklistItem] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderChecklistItem>> supportChecklistItemsCompleteCreate({ 
    required String id,
    required WorkOrderChecklistItemRequest workOrderChecklistItemRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/checklist-items/{id}/complete/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(workOrderChecklistItemRequest);

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

    WorkOrderChecklistItem? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderChecklistItem, WorkOrderChecklistItem>(rawData, 'WorkOrderChecklistItem', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderChecklistItem>(
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

  /// Crear item de checklist
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [workOrderChecklistItemRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderChecklistItem] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderChecklistItem>> supportChecklistItemsCreate({ 
    required WorkOrderChecklistItemRequest workOrderChecklistItemRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/checklist-items/';
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
      _bodyData = jsonEncode(workOrderChecklistItemRequest);

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

    WorkOrderChecklistItem? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderChecklistItem, WorkOrderChecklistItem>(rawData, 'WorkOrderChecklistItem', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderChecklistItem>(
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

  /// Eliminar item de checklist
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Item de Checklist.
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
  Future<Response<void>> supportChecklistItemsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/checklist-items/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar items de checklist
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [format] 
  /// * [isCompleted] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [workOrder] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedWorkOrderChecklistItemList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedWorkOrderChecklistItemList>> supportChecklistItemsList({ 
    String? format,
    bool? isCompleted,
    String? ordering,
    int? page,
    int? pageSize,
    String? workOrder,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/checklist-items/';
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
      if (isCompleted != null) r'is_completed': isCompleted,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (workOrder != null) r'work_order': workOrder,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedWorkOrderChecklistItemList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedWorkOrderChecklistItemList, PaginatedWorkOrderChecklistItemList>(rawData, 'PaginatedWorkOrderChecklistItemList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedWorkOrderChecklistItemList>(
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

  /// supportChecklistItemsPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Item de Checklist.
  /// * [format] 
  /// * [patchedWorkOrderChecklistItemRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderChecklistItem] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderChecklistItem>> supportChecklistItemsPartialUpdate({ 
    required String id,
    String? format,
    PatchedWorkOrderChecklistItemRequest? patchedWorkOrderChecklistItemRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/checklist-items/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedWorkOrderChecklistItemRequest);

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

    WorkOrderChecklistItem? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderChecklistItem, WorkOrderChecklistItem>(rawData, 'WorkOrderChecklistItem', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderChecklistItem>(
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

  /// Obtener item de checklist
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Item de Checklist.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderChecklistItem] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderChecklistItem>> supportChecklistItemsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/checklist-items/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    WorkOrderChecklistItem? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderChecklistItem, WorkOrderChecklistItem>(rawData, 'WorkOrderChecklistItem', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderChecklistItem>(
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

  /// Actualizar item de checklist
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Item de Checklist.
  /// * [workOrderChecklistItemRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderChecklistItem] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderChecklistItem>> supportChecklistItemsUpdate({ 
    required String id,
    required WorkOrderChecklistItemRequest workOrderChecklistItemRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/checklist-items/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(workOrderChecklistItemRequest);

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

    WorkOrderChecklistItem? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderChecklistItem, WorkOrderChecklistItem>(rawData, 'WorkOrderChecklistItem', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderChecklistItem>(
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

  /// Crear comentario de ticket
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [ticketCommentRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketComment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketComment>> supportCommentsCreate({ 
    required TicketCommentRequest ticketCommentRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/comments/';
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
      _bodyData = jsonEncode(ticketCommentRequest);

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

    TicketComment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketComment, TicketComment>(rawData, 'TicketComment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketComment>(
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

  /// Eliminar comentario de ticket
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Comentario de Ticket.
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
  Future<Response<void>> supportCommentsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/comments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar comentarios de ticket
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [format] 
  /// * [isResolution] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [ticket] 
  /// * [visibility] - * `INTERNAL` - Interno * `PUBLIC` - Público (cliente)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedTicketCommentList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedTicketCommentList>> supportCommentsList({ 
    String? format,
    bool? isResolution,
    String? ordering,
    int? page,
    int? pageSize,
    String? ticket,
    String? visibility,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/comments/';
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
      if (isResolution != null) r'is_resolution': isResolution,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (ticket != null) r'ticket': ticket,
      if (visibility != null) r'visibility': visibility,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedTicketCommentList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedTicketCommentList, PaginatedTicketCommentList>(rawData, 'PaginatedTicketCommentList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedTicketCommentList>(
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

  /// supportCommentsPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Comentario de Ticket.
  /// * [format] 
  /// * [patchedTicketCommentRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketComment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketComment>> supportCommentsPartialUpdate({ 
    required String id,
    String? format,
    PatchedTicketCommentRequest? patchedTicketCommentRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/comments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedTicketCommentRequest);

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

    TicketComment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketComment, TicketComment>(rawData, 'TicketComment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketComment>(
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

  /// Obtener comentario de ticket
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Comentario de Ticket.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketComment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketComment>> supportCommentsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/comments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    TicketComment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketComment, TicketComment>(rawData, 'TicketComment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketComment>(
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

  /// Actualizar comentario de ticket
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Comentario de Ticket.
  /// * [ticketCommentRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketComment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketComment>> supportCommentsUpdate({ 
    required String id,
    required TicketCommentRequest ticketCommentRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/comments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(ticketCommentRequest);

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

    TicketComment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketComment, TicketComment>(rawData, 'TicketComment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketComment>(
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

  /// Crear escalamiento
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [ticketEscalationRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketEscalation] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketEscalation>> supportEscalationsCreate({ 
    required TicketEscalationRequest ticketEscalationRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/escalations/';
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
      _bodyData = jsonEncode(ticketEscalationRequest);

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

    TicketEscalation? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketEscalation, TicketEscalation>(rawData, 'TicketEscalation', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketEscalation>(
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

  /// Eliminar escalamiento
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Escalamiento de Ticket.
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
  Future<Response<void>> supportEscalationsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/escalations/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar escalamientos
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [format] 
  /// * [fromAgent] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [ticket] 
  /// * [toAgent] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedTicketEscalationList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedTicketEscalationList>> supportEscalationsList({ 
    String? format,
    String? fromAgent,
    String? ordering,
    int? page,
    int? pageSize,
    String? ticket,
    String? toAgent,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/escalations/';
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
      if (fromAgent != null) r'from_agent': fromAgent,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (ticket != null) r'ticket': ticket,
      if (toAgent != null) r'to_agent': toAgent,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedTicketEscalationList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedTicketEscalationList, PaginatedTicketEscalationList>(rawData, 'PaginatedTicketEscalationList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedTicketEscalationList>(
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

  /// supportEscalationsPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Escalamiento de Ticket.
  /// * [format] 
  /// * [patchedTicketEscalationRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketEscalation] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketEscalation>> supportEscalationsPartialUpdate({ 
    required String id,
    String? format,
    PatchedTicketEscalationRequest? patchedTicketEscalationRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/escalations/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedTicketEscalationRequest);

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

    TicketEscalation? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketEscalation, TicketEscalation>(rawData, 'TicketEscalation', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketEscalation>(
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

  /// Obtener escalamiento
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Escalamiento de Ticket.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketEscalation] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketEscalation>> supportEscalationsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/escalations/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    TicketEscalation? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketEscalation, TicketEscalation>(rawData, 'TicketEscalation', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketEscalation>(
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

  /// Actualizar escalamiento
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Escalamiento de Ticket.
  /// * [ticketEscalationRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketEscalation] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketEscalation>> supportEscalationsUpdate({ 
    required String id,
    required TicketEscalationRequest ticketEscalationRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/escalations/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(ticketEscalationRequest);

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

    TicketEscalation? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketEscalation, TicketEscalation>(rawData, 'TicketEscalation', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketEscalation>(
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

  /// Crear política SLA
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [sLAPolicyRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SLAPolicy] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SLAPolicy>> supportSlaPoliciesCreate({ 
    required SLAPolicyRequest sLAPolicyRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/sla-policies/';
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
      _bodyData = jsonEncode(sLAPolicyRequest);

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

    SLAPolicy? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SLAPolicy, SLAPolicy>(rawData, 'SLAPolicy', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SLAPolicy>(
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

  /// Eliminar política SLA
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Política SLA.
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
  Future<Response<void>> supportSlaPoliciesDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/sla-policies/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar políticas SLA
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [branch] 
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
  /// Returns a [Future] containing a [Response] with a [PaginatedSLAPolicyList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedSLAPolicyList>> supportSlaPoliciesList({ 
    int? branch,
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
    final _path = r'/api/support/sla-policies/';
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
      if (branch != null) r'branch': branch,
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

    PaginatedSLAPolicyList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedSLAPolicyList, PaginatedSLAPolicyList>(rawData, 'PaginatedSLAPolicyList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedSLAPolicyList>(
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

  /// supportSlaPoliciesPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Política SLA.
  /// * [format] 
  /// * [patchedSLAPolicyRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SLAPolicy] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SLAPolicy>> supportSlaPoliciesPartialUpdate({ 
    required String id,
    String? format,
    PatchedSLAPolicyRequest? patchedSLAPolicyRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/sla-policies/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedSLAPolicyRequest);

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

    SLAPolicy? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SLAPolicy, SLAPolicy>(rawData, 'SLAPolicy', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SLAPolicy>(
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

  /// Obtener política SLA
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Política SLA.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SLAPolicy] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SLAPolicy>> supportSlaPoliciesRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/sla-policies/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    SLAPolicy? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SLAPolicy, SLAPolicy>(rawData, 'SLAPolicy', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SLAPolicy>(
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

  /// Actualizar política SLA
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Política SLA.
  /// * [sLAPolicyRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SLAPolicy] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SLAPolicy>> supportSlaPoliciesUpdate({ 
    required String id,
    required SLAPolicyRequest sLAPolicyRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/sla-policies/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(sLAPolicyRequest);

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

    SLAPolicy? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SLAPolicy, SLAPolicy>(rawData, 'SLAPolicy', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SLAPolicy>(
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

  /// supportTicketAttachmentsCreate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [ticket] 
  /// * [file] 
  /// * [format] 
  /// * [description] 
  /// * [uploadedBy] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketAttachment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketAttachment>> supportTicketAttachmentsCreate({ 
    required String ticket,
    required MultipartFile file,
    String? format,
    String? description,
    int? uploadedBy,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-attachments/';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'ticket': ticket,
        r'file': file,
        if (description != null) r'description': description,
        r'uploaded_by': uploadedBy,
      });

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

    TicketAttachment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketAttachment, TicketAttachment>(rawData, 'TicketAttachment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketAttachment>(
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

  /// supportTicketAttachmentsDestroy
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Adjunto de ticket.
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
  Future<Response<void>> supportTicketAttachmentsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-attachments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// supportTicketAttachmentsList
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [format] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [ticket] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedTicketAttachmentList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedTicketAttachmentList>> supportTicketAttachmentsList({ 
    String? format,
    String? ordering,
    int? page,
    int? pageSize,
    String? ticket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-attachments/';
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
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (ticket != null) r'ticket': ticket,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedTicketAttachmentList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedTicketAttachmentList, PaginatedTicketAttachmentList>(rawData, 'PaginatedTicketAttachmentList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedTicketAttachmentList>(
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

  /// supportTicketAttachmentsPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Adjunto de ticket.
  /// * [format] 
  /// * [ticket] 
  /// * [file] 
  /// * [description] 
  /// * [uploadedBy] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketAttachment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketAttachment>> supportTicketAttachmentsPartialUpdate({ 
    required String id,
    String? format,
    String? ticket,
    MultipartFile? file,
    String? description,
    int? uploadedBy,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-attachments/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        if (ticket != null) r'ticket': ticket,
        if (file != null) r'file': file,
        if (description != null) r'description': description,
        r'uploaded_by': uploadedBy,
      });

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

    TicketAttachment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketAttachment, TicketAttachment>(rawData, 'TicketAttachment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketAttachment>(
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

  /// supportTicketAttachmentsRetrieve
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Adjunto de ticket.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketAttachment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketAttachment>> supportTicketAttachmentsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-attachments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    TicketAttachment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketAttachment, TicketAttachment>(rawData, 'TicketAttachment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketAttachment>(
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

  /// supportTicketAttachmentsUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Adjunto de ticket.
  /// * [ticket] 
  /// * [file] 
  /// * [format] 
  /// * [description] 
  /// * [uploadedBy] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketAttachment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketAttachment>> supportTicketAttachmentsUpdate({ 
    required String id,
    required String ticket,
    required MultipartFile file,
    String? format,
    String? description,
    int? uploadedBy,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-attachments/{id}/'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (format != null) r'format': format,
    };

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'ticket': ticket,
        r'file': file,
        if (description != null) r'description': description,
        r'uploaded_by': uploadedBy,
      });

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

    TicketAttachment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketAttachment, TicketAttachment>(rawData, 'TicketAttachment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketAttachment>(
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

  /// Crear tipo de ticket
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [ticketTypeRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketType] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketType>> supportTicketTypesCreate({ 
    required TicketTypeRequest ticketTypeRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-types/';
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
      _bodyData = jsonEncode(ticketTypeRequest);

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

    TicketType? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketType, TicketType>(rawData, 'TicketType', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketType>(
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

  /// Eliminar tipo de ticket
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Tipo de Ticket.
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
  Future<Response<void>> supportTicketTypesDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-types/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar tipos de tickets
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [branch] 
  /// * [format] 
  /// * [isActive] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [requiresVisit] 
  /// * [search] - Un término de búsqueda.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedTicketTypeList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedTicketTypeList>> supportTicketTypesList({ 
    int? branch,
    String? format,
    bool? isActive,
    String? ordering,
    int? page,
    int? pageSize,
    bool? requiresVisit,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-types/';
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
      if (branch != null) r'branch': branch,
      if (format != null) r'format': format,
      if (isActive != null) r'is_active': isActive,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (requiresVisit != null) r'requires_visit': requiresVisit,
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

    PaginatedTicketTypeList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedTicketTypeList, PaginatedTicketTypeList>(rawData, 'PaginatedTicketTypeList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedTicketTypeList>(
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

  /// supportTicketTypesPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Tipo de Ticket.
  /// * [format] 
  /// * [patchedTicketTypeRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketType] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketType>> supportTicketTypesPartialUpdate({ 
    required String id,
    String? format,
    PatchedTicketTypeRequest? patchedTicketTypeRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-types/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedTicketTypeRequest);

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

    TicketType? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketType, TicketType>(rawData, 'TicketType', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketType>(
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

  /// Obtener tipo de ticket
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Tipo de Ticket.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketType] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketType>> supportTicketTypesRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-types/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    TicketType? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketType, TicketType>(rawData, 'TicketType', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketType>(
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

  /// Actualizar tipo de ticket
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Tipo de Ticket.
  /// * [ticketTypeRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketType] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketType>> supportTicketTypesUpdate({ 
    required String id,
    required TicketTypeRequest ticketTypeRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/ticket-types/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(ticketTypeRequest);

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

    TicketType? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketType, TicketType>(rawData, 'TicketType', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketType>(
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

  /// Asignar ticket
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ticket.
  /// * [ticketListRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketList>> supportTicketsAssignCreate({ 
    required String id,
    required TicketListRequest ticketListRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/{id}/assign/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(ticketListRequest);

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

    TicketList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketList, TicketList>(rawData, 'TicketList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketList>(
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

  /// Anular ticket
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ticket.
  /// * [ticketListRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketList>> supportTicketsCancelCreate({ 
    required String id,
    required TicketListRequest ticketListRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/{id}/cancel/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(ticketListRequest);

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

    TicketList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketList, TicketList>(rawData, 'TicketList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketList>(
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

  /// Cerrar ticket
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ticket.
  /// * [ticketListRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketList>> supportTicketsCloseCreate({ 
    required String id,
    required TicketListRequest ticketListRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/{id}/close/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(ticketListRequest);

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

    TicketList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketList, TicketList>(rawData, 'TicketList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketList>(
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

  /// Crear ticket
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
  ///
  /// Parameters:
  /// * [ticketCreateUpdateRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketCreateUpdate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketCreateUpdate>> supportTicketsCreate({ 
    required TicketCreateUpdateRequest ticketCreateUpdateRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/';
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
      _bodyData = jsonEncode(ticketCreateUpdateRequest);

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

    TicketCreateUpdate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketCreateUpdate, TicketCreateUpdate>(rawData, 'TicketCreateUpdate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketCreateUpdate>(
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

  /// Eliminar ticket
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ticket.
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
  Future<Response<void>> supportTicketsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar tickets
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
  ///
  /// Parameters:
  /// * [assignedTo] 
  /// * [branch] 
  /// * [category] 
  /// * [client] 
  /// * [createdDate] 
  /// * [dueDate] 
  /// * [format] 
  /// * [isActive] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [priority] - * `LOW` - Baja * `MEDIUM` - Media * `HIGH` - Alta * `CRITICAL` - Crítica
  /// * [requester] 
  /// * [requesterEmail] 
  /// * [search] - Un término de búsqueda.
  /// * [source_] - * `INTERNAL` - Interno * `WEB_FORM` - Formulario Web
  /// * [status] - * `OPEN` - Abierto * `IN_PROGRESS` - En Progreso * `WAITING` - En Espera * `REVISION` - En Revisión * `PENDING_VISIT` - Orden de Trabajo * `RESOLVED` - Resuelto * `CLOSED` - Cerrado * `CANCELLED` - Cancelado
  /// * [ticketType] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedTicketListList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedTicketListList>> supportTicketsList({ 
    String? assignedTo,
    int? branch,
    String? category,
    int? client,
    DateTime? createdDate,
    DateTime? dueDate,
    String? format,
    bool? isActive,
    String? ordering,
    int? page,
    int? pageSize,
    String? priority,
    int? requester,
    String? requesterEmail,
    String? search,
    String? source_,
    String? status,
    String? ticketType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/';
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
      if (assignedTo != null) r'assigned_to': assignedTo,
      if (branch != null) r'branch': branch,
      if (category != null) r'category': category,
      if (client != null) r'client': client,
      if (createdDate != null) r'created_date': createdDate,
      if (dueDate != null) r'due_date': dueDate,
      if (format != null) r'format': format,
      if (isActive != null) r'is_active': isActive,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (priority != null) r'priority': priority,
      if (requester != null) r'requester': requester,
      if (requesterEmail != null) r'requester_email': requesterEmail,
      if (search != null) r'search': search,
      if (source_ != null) r'source': source_,
      if (status != null) r'status': status,
      if (ticketType != null) r'ticket_type': ticketType,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedTicketListList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedTicketListList, PaginatedTicketListList>(rawData, 'PaginatedTicketListList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedTicketListList>(
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

  /// Tickets asignados al usuario actual
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
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
  /// Returns a [Future] containing a [Response] with a [TicketList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketList>> supportTicketsMyTicketsRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/my_tickets/';
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

    TicketList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketList, TicketList>(rawData, 'TicketList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketList>(
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

  /// supportTicketsPartialUpdate
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ticket.
  /// * [format] 
  /// * [patchedTicketCreateUpdateRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketCreateUpdate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketCreateUpdate>> supportTicketsPartialUpdate({ 
    required String id,
    String? format,
    PatchedTicketCreateUpdateRequest? patchedTicketCreateUpdateRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedTicketCreateUpdateRequest);

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

    TicketCreateUpdate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketCreateUpdate, TicketCreateUpdate>(rawData, 'TicketCreateUpdate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketCreateUpdate>(
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

  /// Crear ticket desde formulario web (requiere auth + membresía)
  /// Antes era AllowAny y auto-provisionaba catálogo Frig. Ya no: exige autenticación y membresía activa en la sucursal, y solo usa categorías/SLA ya existentes (no crea ni reactiva config). El front Frig no consume este endpoint; preferir /submit/ o POST /.
  ///
  /// Parameters:
  /// * [ticketListRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketList>> supportTicketsPublicCreateCreate({ 
    required TicketListRequest ticketListRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/public_create/';
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
      _bodyData = jsonEncode(ticketListRequest);

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

    TicketList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketList, TicketList>(rawData, 'TicketList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketList>(
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

  /// Obtener ticket
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ticket.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketDetail] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketDetail>> supportTicketsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    TicketDetail? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketDetail, TicketDetail>(rawData, 'TicketDetail', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketDetail>(
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

  /// Tickets vencidos de SLA
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
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
  /// Returns a [Future] containing a [Response] with a [TicketList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketList>> supportTicketsSlaBreachedRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/sla_breached/';
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

    TicketList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketList, TicketList>(rawData, 'TicketList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketList>(
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

  /// Estadísticas de tickets
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
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
  /// Returns a [Future] containing a [Response] with a [TicketList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketList>> supportTicketsStatsRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/stats/';
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

    TicketList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketList, TicketList>(rawData, 'TicketList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketList>(
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

  /// Crear ticket Frig (category_code)
  /// Endpoint self-service para Frig. Cualquier BranchUser activo puede abrir un ticket propio sin permiso de &#x60;config&#x60;. Auto-provisiona categorías Frig (duda, incidencia, reclamo, feedback, manual) y una SLA por defecto si faltan. Notifica a PLATFORM_SUPPORT_EMAIL.
  ///
  /// Parameters:
  /// * [ticketSubmitRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketList>> supportTicketsSubmitCreate({ 
    required TicketSubmitRequest ticketSubmitRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/submit/';
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
      _bodyData = jsonEncode(ticketSubmitRequest);

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

    TicketList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketList, TicketList>(rawData, 'TicketList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketList>(
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

  /// Tickets sin asignar
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
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
  /// Returns a [Future] containing a [Response] with a [TicketList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketList>> supportTicketsUnassignedRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/unassigned/';
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

    TicketList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketList, TicketList>(rawData, 'TicketList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketList>(
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

  /// Actualizar ticket
  /// Tickets de soporte.  Self-service (cualquier BranchUser activo): - list / retrieve / create / submit de tickets propios (requester&#x3D;user) - no exige permiso de escritura en &#x60;&#x60;config&#x60;&#x60;  Gestión (escritura en &#x60;&#x60;config&#x60;&#x60;): - ver/editar todos los tickets de la sucursal - assign / close / cancel / stats / etc.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ticket.
  /// * [ticketCreateUpdateRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketCreateUpdate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketCreateUpdate>> supportTicketsUpdate({ 
    required String id,
    required TicketCreateUpdateRequest ticketCreateUpdateRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/tickets/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(ticketCreateUpdateRequest);

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

    TicketCreateUpdate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketCreateUpdate, TicketCreateUpdate>(rawData, 'TicketCreateUpdate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketCreateUpdate>(
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

  /// Crear temporizador
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [ticketTimerRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketTimer] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketTimer>> supportTimersCreate({ 
    required TicketTimerRequest ticketTimerRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/timers/';
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
      _bodyData = jsonEncode(ticketTimerRequest);

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

    TicketTimer? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketTimer, TicketTimer>(rawData, 'TicketTimer', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketTimer>(
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

  /// Eliminar temporizador
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Temporizador de Ticket.
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
  Future<Response<void>> supportTimersDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/timers/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar temporizadores
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [agent] 
  /// * [format] 
  /// * [isRunning] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [ticket] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedTicketTimerList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedTicketTimerList>> supportTimersList({ 
    String? agent,
    String? format,
    bool? isRunning,
    String? ordering,
    int? page,
    int? pageSize,
    String? ticket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/timers/';
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
      if (agent != null) r'agent': agent,
      if (format != null) r'format': format,
      if (isRunning != null) r'is_running': isRunning,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (ticket != null) r'ticket': ticket,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedTicketTimerList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedTicketTimerList, PaginatedTicketTimerList>(rawData, 'PaginatedTicketTimerList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedTicketTimerList>(
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

  /// supportTimersPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Temporizador de Ticket.
  /// * [format] 
  /// * [patchedTicketTimerRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketTimer] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketTimer>> supportTimersPartialUpdate({ 
    required String id,
    String? format,
    PatchedTicketTimerRequest? patchedTicketTimerRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/timers/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedTicketTimerRequest);

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

    TicketTimer? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketTimer, TicketTimer>(rawData, 'TicketTimer', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketTimer>(
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

  /// Obtener temporizador
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Temporizador de Ticket.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketTimer] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketTimer>> supportTimersRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/timers/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    TicketTimer? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketTimer, TicketTimer>(rawData, 'TicketTimer', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketTimer>(
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

  /// Detener temporizador
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Temporizador de Ticket.
  /// * [ticketTimerRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketTimer] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketTimer>> supportTimersStopCreate({ 
    required String id,
    required TicketTimerRequest ticketTimerRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/timers/{id}/stop/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(ticketTimerRequest);

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

    TicketTimer? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketTimer, TicketTimer>(rawData, 'TicketTimer', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketTimer>(
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

  /// Actualizar temporizador
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Temporizador de Ticket.
  /// * [ticketTimerRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TicketTimer] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TicketTimer>> supportTimersUpdate({ 
    required String id,
    required TicketTimerRequest ticketTimerRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/timers/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(ticketTimerRequest);

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

    TicketTimer? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TicketTimer, TicketTimer>(rawData, 'TicketTimer', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TicketTimer>(
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

  /// Crear adjunto
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [workOrderAttachmentRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderAttachment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderAttachment>> supportWorkOrderAttachmentsCreate({ 
    required WorkOrderAttachmentRequest workOrderAttachmentRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-attachments/';
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
      _bodyData = jsonEncode(workOrderAttachmentRequest);

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

    WorkOrderAttachment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderAttachment, WorkOrderAttachment>(rawData, 'WorkOrderAttachment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderAttachment>(
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

  /// Eliminar adjunto
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Adjunto de OT.
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
  Future<Response<void>> supportWorkOrderAttachmentsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-attachments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar adjuntos
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [format] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [workOrder] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedWorkOrderAttachmentList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedWorkOrderAttachmentList>> supportWorkOrderAttachmentsList({ 
    String? format,
    String? ordering,
    int? page,
    int? pageSize,
    String? workOrder,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-attachments/';
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
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (workOrder != null) r'work_order': workOrder,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedWorkOrderAttachmentList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedWorkOrderAttachmentList, PaginatedWorkOrderAttachmentList>(rawData, 'PaginatedWorkOrderAttachmentList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedWorkOrderAttachmentList>(
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

  /// supportWorkOrderAttachmentsPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Adjunto de OT.
  /// * [format] 
  /// * [patchedWorkOrderAttachmentRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderAttachment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderAttachment>> supportWorkOrderAttachmentsPartialUpdate({ 
    required String id,
    String? format,
    PatchedWorkOrderAttachmentRequest? patchedWorkOrderAttachmentRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-attachments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedWorkOrderAttachmentRequest);

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

    WorkOrderAttachment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderAttachment, WorkOrderAttachment>(rawData, 'WorkOrderAttachment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderAttachment>(
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

  /// Obtener adjunto
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Adjunto de OT.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderAttachment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderAttachment>> supportWorkOrderAttachmentsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-attachments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    WorkOrderAttachment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderAttachment, WorkOrderAttachment>(rawData, 'WorkOrderAttachment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderAttachment>(
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

  /// Actualizar adjunto
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Adjunto de OT.
  /// * [workOrderAttachmentRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderAttachment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderAttachment>> supportWorkOrderAttachmentsUpdate({ 
    required String id,
    required WorkOrderAttachmentRequest workOrderAttachmentRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-attachments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(workOrderAttachmentRequest);

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

    WorkOrderAttachment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderAttachment, WorkOrderAttachment>(rawData, 'WorkOrderAttachment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderAttachment>(
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

  /// Crear retroalimentación
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [workOrderFeedbackRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderFeedback] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderFeedback>> supportWorkOrderFeedbackCreate({ 
    required WorkOrderFeedbackRequest workOrderFeedbackRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-feedback/';
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
      _bodyData = jsonEncode(workOrderFeedbackRequest);

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

    WorkOrderFeedback? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderFeedback, WorkOrderFeedback>(rawData, 'WorkOrderFeedback', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderFeedback>(
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

  /// Eliminar retroalimentación
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Retroalimentación de OT.
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
  Future<Response<void>> supportWorkOrderFeedbackDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-feedback/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar retroalimentaciones
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [format] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [workOrder] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedWorkOrderFeedbackList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedWorkOrderFeedbackList>> supportWorkOrderFeedbackList({ 
    String? format,
    String? ordering,
    int? page,
    int? pageSize,
    String? workOrder,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-feedback/';
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
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (workOrder != null) r'work_order': workOrder,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedWorkOrderFeedbackList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedWorkOrderFeedbackList, PaginatedWorkOrderFeedbackList>(rawData, 'PaginatedWorkOrderFeedbackList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedWorkOrderFeedbackList>(
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

  /// supportWorkOrderFeedbackPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Retroalimentación de OT.
  /// * [format] 
  /// * [patchedWorkOrderFeedbackRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderFeedback] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderFeedback>> supportWorkOrderFeedbackPartialUpdate({ 
    required String id,
    String? format,
    PatchedWorkOrderFeedbackRequest? patchedWorkOrderFeedbackRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-feedback/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedWorkOrderFeedbackRequest);

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

    WorkOrderFeedback? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderFeedback, WorkOrderFeedback>(rawData, 'WorkOrderFeedback', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderFeedback>(
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

  /// Obtener retroalimentación
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Retroalimentación de OT.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderFeedback] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderFeedback>> supportWorkOrderFeedbackRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-feedback/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    WorkOrderFeedback? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderFeedback, WorkOrderFeedback>(rawData, 'WorkOrderFeedback', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderFeedback>(
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

  /// Actualizar retroalimentación
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Retroalimentación de OT.
  /// * [workOrderFeedbackRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderFeedback] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderFeedback>> supportWorkOrderFeedbackUpdate({ 
    required String id,
    required WorkOrderFeedbackRequest workOrderFeedbackRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-order-feedback/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(workOrderFeedbackRequest);

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

    WorkOrderFeedback? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderFeedback, WorkOrderFeedback>(rawData, 'WorkOrderFeedback', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderFeedback>(
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

  /// Cancelar orden de trabajo
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Orden de Trabajo.
  /// * [workOrderListRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderList>> supportWorkOrdersCancelCreate({ 
    required String id,
    required WorkOrderListRequest workOrderListRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/{id}/cancel/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(workOrderListRequest);

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

    WorkOrderList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderList, WorkOrderList>(rawData, 'WorkOrderList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderList>(
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

  /// Completar orden de trabajo
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Orden de Trabajo.
  /// * [workOrderListRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderList>> supportWorkOrdersCompleteCreate({ 
    required String id,
    required WorkOrderListRequest workOrderListRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/{id}/complete/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(workOrderListRequest);

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

    WorkOrderList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderList, WorkOrderList>(rawData, 'WorkOrderList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderList>(
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

  /// Crear orden de trabajo
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [workOrderCreateUpdateRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderCreateUpdate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderCreateUpdate>> supportWorkOrdersCreate({ 
    required WorkOrderCreateUpdateRequest workOrderCreateUpdateRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/';
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
      _bodyData = jsonEncode(workOrderCreateUpdateRequest);

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

    WorkOrderCreateUpdate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderCreateUpdate, WorkOrderCreateUpdate>(rawData, 'WorkOrderCreateUpdate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderCreateUpdate>(
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

  /// Eliminar orden de trabajo
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Orden de Trabajo.
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
  Future<Response<void>> supportWorkOrdersDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar órdenes de trabajo
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [format] 
  /// * [isActive] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [search] - Un término de búsqueda.
  /// * [status] - * `SCHEDULED` - Programada * `IN_ROUTE` - En Ruta * `ON_SITE` - En Sitio * `COMPLETED` - Completada * `CANCELLED` - Cancelada
  /// * [technician] 
  /// * [ticket] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedWorkOrderListList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedWorkOrderListList>> supportWorkOrdersList({ 
    String? format,
    bool? isActive,
    String? ordering,
    int? page,
    int? pageSize,
    String? search,
    String? status,
    String? technician,
    String? ticket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/';
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
      if (isActive != null) r'is_active': isActive,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (search != null) r'search': search,
      if (status != null) r'status': status,
      if (technician != null) r'technician': technician,
      if (ticket != null) r'ticket': ticket,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedWorkOrderListList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedWorkOrderListList, PaginatedWorkOrderListList>(rawData, 'PaginatedWorkOrderListList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedWorkOrderListList>(
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

  /// Órdenes del técnico actual
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
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
  /// Returns a [Future] containing a [Response] with a [WorkOrderList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderList>> supportWorkOrdersMyOrdersRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/my_orders/';
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

    WorkOrderList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderList, WorkOrderList>(rawData, 'WorkOrderList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderList>(
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

  /// supportWorkOrdersPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Orden de Trabajo.
  /// * [format] 
  /// * [patchedWorkOrderCreateUpdateRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderCreateUpdate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderCreateUpdate>> supportWorkOrdersPartialUpdate({ 
    required String id,
    String? format,
    PatchedWorkOrderCreateUpdateRequest? patchedWorkOrderCreateUpdateRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedWorkOrderCreateUpdateRequest);

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

    WorkOrderCreateUpdate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderCreateUpdate, WorkOrderCreateUpdate>(rawData, 'WorkOrderCreateUpdate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderCreateUpdate>(
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

  /// Obtener orden de trabajo
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Orden de Trabajo.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderDetail] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderDetail>> supportWorkOrdersRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    WorkOrderDetail? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderDetail, WorkOrderDetail>(rawData, 'WorkOrderDetail', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderDetail>(
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

  /// Estadísticas de órdenes de trabajo
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
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
  /// Returns a [Future] containing a [Response] with a [WorkOrderList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderList>> supportWorkOrdersStatsRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/stats/';
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

    WorkOrderList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderList, WorkOrderList>(rawData, 'WorkOrderList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderList>(
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

  /// Órdenes programadas para hoy
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
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
  /// Returns a [Future] containing a [Response] with a [WorkOrderList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderList>> supportWorkOrdersTodayRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/today/';
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

    WorkOrderList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderList, WorkOrderList>(rawData, 'WorkOrderList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderList>(
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

  /// Actualizar orden de trabajo
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Orden de Trabajo.
  /// * [workOrderCreateUpdateRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [WorkOrderCreateUpdate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<WorkOrderCreateUpdate>> supportWorkOrdersUpdate({ 
    required String id,
    required WorkOrderCreateUpdateRequest workOrderCreateUpdateRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/support/work-orders/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(workOrderCreateUpdateRequest);

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

    WorkOrderCreateUpdate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<WorkOrderCreateUpdate, WorkOrderCreateUpdate>(rawData, 'WorkOrderCreateUpdate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<WorkOrderCreateUpdate>(
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
