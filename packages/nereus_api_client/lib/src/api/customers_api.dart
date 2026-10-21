//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:nereus_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:nereus_api_client/src/model/client.dart';
import 'package:nereus_api_client/src/model/client_card_create.dart';
import 'package:nereus_api_client/src/model/client_card_create_request.dart';
import 'package:nereus_api_client/src/model/client_card_detail.dart';
import 'package:nereus_api_client/src/model/client_card_list.dart';
import 'package:nereus_api_client/src/model/client_card_list_request.dart';
import 'package:nereus_api_client/src/model/client_card_template.dart';
import 'package:nereus_api_client/src/model/client_card_template_request.dart';
import 'package:nereus_api_client/src/model/client_contact.dart';
import 'package:nereus_api_client/src/model/client_contact_request.dart';
import 'package:nereus_api_client/src/model/client_depth.dart';
import 'package:nereus_api_client/src/model/client_depth_request.dart';
import 'package:nereus_api_client/src/model/client_extra_field_definition.dart';
import 'package:nereus_api_client/src/model/client_extra_field_definition_request.dart';
import 'package:nereus_api_client/src/model/client_extra_field_group.dart';
import 'package:nereus_api_client/src/model/client_extra_field_group_request.dart';
import 'package:nereus_api_client/src/model/client_extra_field_value.dart';
import 'package:nereus_api_client/src/model/client_extra_field_value_create.dart';
import 'package:nereus_api_client/src/model/client_extra_field_value_create_request.dart';
import 'package:nereus_api_client/src/model/client_request.dart';
import 'package:nereus_api_client/src/model/customer_department.dart';
import 'package:nereus_api_client/src/model/customer_department_request.dart';
import 'package:nereus_api_client/src/model/emh.dart';
import 'package:nereus_api_client/src/model/emh_request.dart';
import 'package:nereus_api_client/src/model/generate_card_request.dart';
import 'package:nereus_api_client/src/model/job_title.dart';
import 'package:nereus_api_client/src/model/job_title_request.dart';
import 'package:nereus_api_client/src/model/paginated_client_card_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_card_template_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_contact_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_depth_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_extra_field_definition_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_extra_field_group_list.dart';
import 'package:nereus_api_client/src/model/paginated_client_extra_field_value_list.dart';
import 'package:nereus_api_client/src/model/paginated_customer_department_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_emh_list_list.dart';
import 'package:nereus_api_client/src/model/paginated_job_title_list_list.dart';
import 'package:nereus_api_client/src/model/patched_client_card_create_request.dart';
import 'package:nereus_api_client/src/model/patched_client_card_template_request.dart';
import 'package:nereus_api_client/src/model/patched_client_contact_request.dart';
import 'package:nereus_api_client/src/model/patched_client_extra_field_definition_request.dart';
import 'package:nereus_api_client/src/model/patched_client_extra_field_group_request.dart';
import 'package:nereus_api_client/src/model/patched_client_extra_field_value_create_request.dart';
import 'package:nereus_api_client/src/model/patched_client_request.dart';
import 'package:nereus_api_client/src/model/patched_customer_department_request.dart';
import 'package:nereus_api_client/src/model/patched_emh_request.dart';
import 'package:nereus_api_client/src/model/patched_job_title_request.dart';

class CustomersApi {

  final Dio _dio;

  const CustomersApi(this._dio);

  /// Crear plantilla de ficha
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [clientCardTemplateRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardTemplate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardTemplate>> customersCardTemplatesCreate({ 
    required ClientCardTemplateRequest clientCardTemplateRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/card-templates/';
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
      _bodyData = jsonEncode(clientCardTemplateRequest);

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

    ClientCardTemplate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardTemplate, ClientCardTemplate>(rawData, 'ClientCardTemplate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardTemplate>(
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

  /// Eliminar plantilla de ficha
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Plantilla de Ficha de Cliente.
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
  Future<Response<void>> customersCardTemplatesDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/card-templates/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar plantillas de fichas
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [format] 
  /// * [isActive] 
  /// * [isDefault] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [orientation] - * `PORTRAIT` - Vertical * `LANDSCAPE` - Horizontal
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
  /// Returns a [Future] containing a [Response] with a [PaginatedClientCardTemplateList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedClientCardTemplateList>> customersCardTemplatesList({ 
    String? format,
    bool? isActive,
    bool? isDefault,
    String? ordering,
    String? orientation,
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
    final _path = r'/api/customers/card-templates/';
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
      if (isDefault != null) r'is_default': isDefault,
      if (ordering != null) r'ordering': ordering,
      if (orientation != null) r'orientation': orientation,
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

    PaginatedClientCardTemplateList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedClientCardTemplateList, PaginatedClientCardTemplateList>(rawData, 'PaginatedClientCardTemplateList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedClientCardTemplateList>(
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

  /// customersCardTemplatesPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Plantilla de Ficha de Cliente.
  /// * [format] 
  /// * [patchedClientCardTemplateRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardTemplate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardTemplate>> customersCardTemplatesPartialUpdate({ 
    required String id,
    String? format,
    PatchedClientCardTemplateRequest? patchedClientCardTemplateRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/card-templates/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedClientCardTemplateRequest);

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

    ClientCardTemplate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardTemplate, ClientCardTemplate>(rawData, 'ClientCardTemplate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardTemplate>(
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

  /// Obtener plantilla de ficha
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Plantilla de Ficha de Cliente.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardTemplate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardTemplate>> customersCardTemplatesRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/card-templates/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    ClientCardTemplate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardTemplate, ClientCardTemplate>(rawData, 'ClientCardTemplate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardTemplate>(
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

  /// Actualizar plantilla de ficha
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Plantilla de Ficha de Cliente.
  /// * [clientCardTemplateRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardTemplate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardTemplate>> customersCardTemplatesUpdate({ 
    required String id,
    required ClientCardTemplateRequest clientCardTemplateRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/card-templates/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(clientCardTemplateRequest);

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

    ClientCardTemplate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardTemplate, ClientCardTemplate>(rawData, 'ClientCardTemplate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardTemplate>(
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

  /// Crear ficha de cliente
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [clientCardCreateRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardCreate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardCreate>> customersClientCardsCreate({ 
    required ClientCardCreateRequest clientCardCreateRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/client-cards/';
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
      _bodyData = jsonEncode(clientCardCreateRequest);

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

    ClientCardCreate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardCreate, ClientCardCreate>(rawData, 'ClientCardCreate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardCreate>(
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

  /// Eliminar ficha de cliente
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ficha de Cliente.
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
  Future<Response<void>> customersClientCardsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/client-cards/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Descargar PDF de ficha
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ficha de Cliente.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardList>> customersClientCardsDownloadRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/client-cards/{id}/download/'.replaceAll('{' r'id' '}', id.toString());
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

    ClientCardList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardList, ClientCardList>(rawData, 'ClientCardList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardList>(
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

  /// Generar PDF de ficha de cliente
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [generateCardRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardList>> customersClientCardsGenerateCreate({ 
    required GenerateCardRequest generateCardRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/client-cards/generate/';
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
      _bodyData = jsonEncode(generateCardRequest);

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

    ClientCardList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardList, ClientCardList>(rawData, 'ClientCardList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardList>(
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

  /// Listar fichas de clientes
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [client] 
  /// * [format] 
  /// * [isActive] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [search] - Un término de búsqueda.
  /// * [status] - * `DRAFT` - Borrador * `GENERATED` - Generado * `ARCHIVED` - Archivado
  /// * [template] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedClientCardListList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedClientCardListList>> customersClientCardsList({ 
    int? client,
    String? format,
    bool? isActive,
    String? ordering,
    int? page,
    int? pageSize,
    String? search,
    String? status,
    String? template,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/client-cards/';
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
      if (client != null) r'client': client,
      if (format != null) r'format': format,
      if (isActive != null) r'is_active': isActive,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (search != null) r'search': search,
      if (status != null) r'status': status,
      if (template != null) r'template': template,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedClientCardListList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedClientCardListList, PaginatedClientCardListList>(rawData, 'PaginatedClientCardListList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedClientCardListList>(
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

  /// customersClientCardsPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ficha de Cliente.
  /// * [format] 
  /// * [patchedClientCardCreateRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardCreate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardCreate>> customersClientCardsPartialUpdate({ 
    required String id,
    String? format,
    PatchedClientCardCreateRequest? patchedClientCardCreateRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/client-cards/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedClientCardCreateRequest);

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

    ClientCardCreate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardCreate, ClientCardCreate>(rawData, 'ClientCardCreate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardCreate>(
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

  /// Regenerar ficha (nueva versión)
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ficha de Cliente.
  /// * [clientCardListRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardList>> customersClientCardsRegenerateCreate({ 
    required String id,
    required ClientCardListRequest clientCardListRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/client-cards/{id}/regenerate/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(clientCardListRequest);

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

    ClientCardList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardList, ClientCardList>(rawData, 'ClientCardList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardList>(
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

  /// Obtener ficha de cliente
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ficha de Cliente.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardDetail] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardDetail>> customersClientCardsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/client-cards/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    ClientCardDetail? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardDetail, ClientCardDetail>(rawData, 'ClientCardDetail', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardDetail>(
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

  /// Actualizar ficha de cliente
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ficha de Cliente.
  /// * [clientCardCreateRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientCardCreate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientCardCreate>> customersClientCardsUpdate({ 
    required String id,
    required ClientCardCreateRequest clientCardCreateRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/client-cards/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(clientCardCreateRequest);

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

    ClientCardCreate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientCardCreate, ClientCardCreate>(rawData, 'ClientCardCreate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientCardCreate>(
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

  /// customersClientsBulkImportCreate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [clientDepthRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientDepth] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientDepth>> customersClientsBulkImportCreate({ 
    required ClientDepthRequest clientDepthRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/bulk_import/';
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
      _bodyData = jsonEncode(clientDepthRequest);

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

    ClientDepth? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientDepth, ClientDepth>(rawData, 'ClientDepth', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientDepth>(
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

  /// customersClientsCreate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [format] 
  /// * [clientRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Client] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Client>> customersClientsCreate({ 
    String? format,
    ClientRequest? clientRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/';
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
      _bodyData = jsonEncode(clientRequest);

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

    Client? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<Client, Client>(rawData, 'Client', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Client>(
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

  /// customersClientsDestroy
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Cliente.
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
  Future<Response<void>> customersClientsDestroy({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// customersClientsList
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [addressIcontains] 
  /// * [branch] 
  /// * [clientCodeIcontains] 
  /// * [dniIcontains] 
  /// * [format] 
  /// * [hasPending] 
  /// * [nameIcontains] 
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [phoneNumberIcontains] 
  /// * [receiverType] - Tipo de receptor para efectos tributarios.  * `PERSONA_NATURAL` - Persona natural * `EMPRESA` - Empresa
  /// * [tags] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedClientDepthList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedClientDepthList>> customersClientsList({ 
    String? addressIcontains,
    int? branch,
    String? clientCodeIcontains,
    String? dniIcontains,
    String? format,
    bool? hasPending,
    String? nameIcontains,
    int? page,
    int? pageSize,
    String? phoneNumberIcontains,
    String? receiverType,
    String? tags,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/';
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
      if (addressIcontains != null) r'address__icontains': addressIcontains,
      if (branch != null) r'branch': branch,
      if (clientCodeIcontains != null) r'client_code__icontains': clientCodeIcontains,
      if (dniIcontains != null) r'dni__icontains': dniIcontains,
      if (format != null) r'format': format,
      if (hasPending != null) r'has_pending': hasPending,
      if (nameIcontains != null) r'name__icontains': nameIcontains,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (phoneNumberIcontains != null) r'phone_number__icontains': phoneNumberIcontains,
      if (receiverType != null) r'receiver_type': receiverType,
      if (tags != null) r'tags': tags,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedClientDepthList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedClientDepthList, PaginatedClientDepthList>(rawData, 'PaginatedClientDepthList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedClientDepthList>(
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

  /// customersClientsMeRetrieve
  /// Ficha del cliente autenticado (portal de cliente).  Devuelve el Client vinculado al usuario en la sucursal activa, incluyendo sus campos extra dinámicos. Solo datos propios.
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
  /// Returns a [Future] containing a [Response] with a [ClientDepth] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientDepth>> customersClientsMeRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/me/';
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

    ClientDepth? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientDepth, ClientDepth>(rawData, 'ClientDepth', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientDepth>(
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

  /// customersClientsPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Cliente.
  /// * [format] 
  /// * [patchedClientRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Client] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Client>> customersClientsPartialUpdate({ 
    required int id,
    String? format,
    PatchedClientRequest? patchedClientRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedClientRequest);

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

    Client? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<Client, Client>(rawData, 'Client', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Client>(
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

  /// Exportar clientes a PDF
  /// Exportar reporte de clientes a PDF.
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
  /// Returns a [Future] containing a [Response] with a [ClientDepth] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientDepth>> customersClientsPdfRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/__pdf/';
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

    ClientDepth? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientDepth, ClientDepth>(rawData, 'ClientDepth', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientDepth>(
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

  /// customersClientsRetrieve
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Cliente.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientDepth] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientDepth>> customersClientsRetrieve({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    ClientDepth? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientDepth, ClientDepth>(rawData, 'ClientDepth', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientDepth>(
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

  /// customersClientsSearchRetrieve
  /// Búsqueda de clientes con paginación para selects.  Query params: - search: texto de búsqueda (busca en name, dni, email, phone_number) - branch: ID de sucursal - page_size: cantidad de resultados por página (default: 20) - page: número de página (default: 1)
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
  /// Returns a [Future] containing a [Response] with a [ClientDepth] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientDepth>> customersClientsSearchRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/search/';
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

    ClientDepth? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientDepth, ClientDepth>(rawData, 'ClientDepth', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientDepth>(
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

  /// customersClientsStatsRetrieve
  /// Obtener estadísticas generales de clientes.
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
  /// Returns a [Future] containing a [Response] with a [ClientDepth] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientDepth>> customersClientsStatsRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/stats/';
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

    ClientDepth? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientDepth, ClientDepth>(rawData, 'ClientDepth', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientDepth>(
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

  /// customersClientsTotalRetrieve
  /// Listar todos los clientes sin paginación (para usos internos).
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
  /// Returns a [Future] containing a [Response] with a [ClientDepth] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientDepth>> customersClientsTotalRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/total/';
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

    ClientDepth? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientDepth, ClientDepth>(rawData, 'ClientDepth', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientDepth>(
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

  /// customersClientsUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Cliente.
  /// * [clientDepthRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientDepth] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientDepth>> customersClientsUpdate({ 
    required int id,
    required ClientDepthRequest clientDepthRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(clientDepthRequest);

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

    ClientDepth? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientDepth, ClientDepth>(rawData, 'ClientDepth', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientDepth>(
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

  /// customersClientsWithPendingRevenuesRetrieve
  /// Obtener clientes que tienen ingresos pendientes de pago. Usado para crear convenios de pago APR.  Query params: - branch: ID de sucursal (opcional, usa request.branch por defecto) - search: texto de búsqueda (busca en name, dni, email, phone_number)  Retorna: - results: lista de clientes con ingresos pendientes - count: total de clientes - total_pending_amount: monto total pendiente de todos los clientes
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
  /// Returns a [Future] containing a [Response] with a [ClientDepth] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientDepth>> customersClientsWithPendingRevenuesRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/with-pending-revenues/';
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

    ClientDepth? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientDepth, ClientDepth>(rawData, 'ClientDepth', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientDepth>(
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

  /// Exportar clientes a Excel
  /// Exportar clientes a Excel con filtros aplicados.
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
  /// Returns a [Future] containing a [Response] with a [ClientDepth] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientDepth>> customersClientsXlsxRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/clients/__xlsx/';
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

    ClientDepth? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientDepth, ClientDepth>(rawData, 'ClientDepth', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientDepth>(
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

  /// customersContactsCreate
  /// ViewSet para gestionar contactos de clientes.
  ///
  /// Parameters:
  /// * [clientContactRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientContact] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientContact>> customersContactsCreate({ 
    required ClientContactRequest clientContactRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/contacts/';
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
      _bodyData = jsonEncode(clientContactRequest);

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

    ClientContact? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientContact, ClientContact>(rawData, 'ClientContact', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientContact>(
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

  /// customersContactsDestroy
  /// ViewSet para gestionar contactos de clientes.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Contacto de Cliente.
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
  Future<Response<void>> customersContactsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/contacts/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// customersContactsList
  /// ViewSet para gestionar contactos de clientes.
  ///
  /// Parameters:
  /// * [branch] 
  /// * [branchIn] - Múltiples valores separados por comas.
  /// * [client] 
  /// * [clientIn] - Múltiples valores separados por comas.
  /// * [contactType] - * `PRIMARY` - Contacto Principal * `SECONDARY` - Contacto Secundario * `BILLING` - Contacto de Facturación * `TECHNICAL` - Contacto Técnico * `ADMINISTRATIVE` - Contacto Administrativo * `DECISION_MAKER` - Tomador de Decisiones
  /// * [contactTypeIn] - Múltiples valores separados por comas.
  /// * [decisionMaker] 
  /// * [format] 
  /// * [isActive] 
  /// * [jobTitle] 
  /// * [jobTitleIn] - Múltiples valores separados por comas.
  /// * [jobTitleIsnull] 
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
  /// Returns a [Future] containing a [Response] with a [PaginatedClientContactListList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedClientContactListList>> customersContactsList({ 
    int? branch,
    List<int>? branchIn,
    int? client,
    List<int>? clientIn,
    String? contactType,
    List<String>? contactTypeIn,
    bool? decisionMaker,
    String? format,
    bool? isActive,
    int? jobTitle,
    List<int>? jobTitleIn,
    bool? jobTitleIsnull,
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
    final _path = r'/api/customers/contacts/';
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
      if (branchIn != null) r'branch__in': branchIn,
      if (client != null) r'client': client,
      if (clientIn != null) r'client__in': clientIn,
      if (contactType != null) r'contact_type': contactType,
      if (contactTypeIn != null) r'contact_type__in': contactTypeIn,
      if (decisionMaker != null) r'decision_maker': decisionMaker,
      if (format != null) r'format': format,
      if (isActive != null) r'is_active': isActive,
      if (jobTitle != null) r'job_title': jobTitle,
      if (jobTitleIn != null) r'job_title__in': jobTitleIn,
      if (jobTitleIsnull != null) r'job_title__isnull': jobTitleIsnull,
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

    PaginatedClientContactListList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedClientContactListList, PaginatedClientContactListList>(rawData, 'PaginatedClientContactListList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedClientContactListList>(
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

  /// customersContactsPartialUpdate
  /// ViewSet para gestionar contactos de clientes.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Contacto de Cliente.
  /// * [format] 
  /// * [patchedClientContactRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientContact] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientContact>> customersContactsPartialUpdate({ 
    required String id,
    String? format,
    PatchedClientContactRequest? patchedClientContactRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/contacts/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedClientContactRequest);

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

    ClientContact? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientContact, ClientContact>(rawData, 'ClientContact', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientContact>(
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

  /// customersContactsRetrieve
  /// ViewSet para gestionar contactos de clientes.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Contacto de Cliente.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientContact] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientContact>> customersContactsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/contacts/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    ClientContact? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientContact, ClientContact>(rawData, 'ClientContact', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientContact>(
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

  /// customersContactsUpdate
  /// ViewSet para gestionar contactos de clientes.
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Contacto de Cliente.
  /// * [clientContactRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientContact] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientContact>> customersContactsUpdate({ 
    required String id,
    required ClientContactRequest clientContactRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/contacts/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(clientContactRequest);

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

    ClientContact? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientContact, ClientContact>(rawData, 'ClientContact', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientContact>(
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

  /// customersDepartmentsCreate
  /// ViewSet para gestionar departamentos dinámicos (customers).
  ///
  /// Parameters:
  /// * [customerDepartmentRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CustomerDepartment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CustomerDepartment>> customersDepartmentsCreate({ 
    required CustomerDepartmentRequest customerDepartmentRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/departments/';
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
      _bodyData = jsonEncode(customerDepartmentRequest);

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

    CustomerDepartment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<CustomerDepartment, CustomerDepartment>(rawData, 'CustomerDepartment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CustomerDepartment>(
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

  /// customersDepartmentsDestroy
  /// ViewSet para gestionar departamentos dinámicos (customers).
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Departamento.
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
  Future<Response<void>> customersDepartmentsDestroy({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/departments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// customersDepartmentsList
  /// ViewSet para gestionar departamentos dinámicos (customers).
  ///
  /// Parameters:
  /// * [branch] 
  /// * [branchIn] - Múltiples valores separados por comas.
  /// * [departmentType] - * `SALES` - Ventas * `PURCHASING` - Compras * `FINANCE` - Finanzas * `OPERATIONS` - Operaciones * `HR` - Recursos Humanos * `IT` - Tecnología * `MARKETING` - Marketing * `ADMINISTRATION` - Administración * `OTHER` - Otro
  /// * [departmentTypeIn] - Múltiples valores separados por comas.
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
  /// Returns a [Future] containing a [Response] with a [PaginatedCustomerDepartmentListList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedCustomerDepartmentListList>> customersDepartmentsList({ 
    int? branch,
    List<int>? branchIn,
    String? departmentType,
    List<String>? departmentTypeIn,
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
    final _path = r'/api/customers/departments/';
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
      if (branchIn != null) r'branch__in': branchIn,
      if (departmentType != null) r'department_type': departmentType,
      if (departmentTypeIn != null) r'department_type__in': departmentTypeIn,
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

    PaginatedCustomerDepartmentListList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedCustomerDepartmentListList, PaginatedCustomerDepartmentListList>(rawData, 'PaginatedCustomerDepartmentListList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedCustomerDepartmentListList>(
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

  /// customersDepartmentsPartialUpdate
  /// ViewSet para gestionar departamentos dinámicos (customers).
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Departamento.
  /// * [format] 
  /// * [patchedCustomerDepartmentRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CustomerDepartment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CustomerDepartment>> customersDepartmentsPartialUpdate({ 
    required int id,
    String? format,
    PatchedCustomerDepartmentRequest? patchedCustomerDepartmentRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/departments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedCustomerDepartmentRequest);

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

    CustomerDepartment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<CustomerDepartment, CustomerDepartment>(rawData, 'CustomerDepartment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CustomerDepartment>(
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

  /// customersDepartmentsRetrieve
  /// ViewSet para gestionar departamentos dinámicos (customers).
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Departamento.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CustomerDepartment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CustomerDepartment>> customersDepartmentsRetrieve({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/departments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    CustomerDepartment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<CustomerDepartment, CustomerDepartment>(rawData, 'CustomerDepartment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CustomerDepartment>(
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

  /// customersDepartmentsUpdate
  /// ViewSet para gestionar departamentos dinámicos (customers).
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Departamento.
  /// * [customerDepartmentRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CustomerDepartment] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CustomerDepartment>> customersDepartmentsUpdate({ 
    required int id,
    required CustomerDepartmentRequest customerDepartmentRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/departments/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(customerDepartmentRequest);

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

    CustomerDepartment? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<CustomerDepartment, CustomerDepartment>(rawData, 'CustomerDepartment', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CustomerDepartment>(
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

  /// customersEmhByClientRetrieve
  /// Obtener ficha médica de un cliente específico. GET /api/customers/emh/by_client/?client_id&#x3D;&lt;id&gt;
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
  /// Returns a [Future] containing a [Response] with a [EMH] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EMH>> customersEmhByClientRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/emh/by_client/';
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

    EMH? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<EMH, EMH>(rawData, 'EMH', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EMH>(
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

  /// customersEmhByInsuranceRetrieve
  /// Listar fichas por tipo de previsión. GET /api/customers/emh/by_insurance/?insurance_type&#x3D;FONASA
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
  /// Returns a [Future] containing a [Response] with a [EMH] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EMH>> customersEmhByInsuranceRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/emh/by_insurance/';
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

    EMH? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<EMH, EMH>(rawData, 'EMH', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EMH>(
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

  /// customersEmhCreate
  /// ViewSet para gestión de fichas médicas (EMH).
  ///
  /// Parameters:
  /// * [eMHRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EMH] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EMH>> customersEmhCreate({ 
    required EMHRequest eMHRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/emh/';
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
      _bodyData = jsonEncode(eMHRequest);

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

    EMH? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<EMH, EMH>(rawData, 'EMH', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EMH>(
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

  /// customersEmhDestroy
  /// ViewSet para gestión de fichas médicas (EMH).
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ficha médica (EMH).
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
  Future<Response<void>> customersEmhDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/emh/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// customersEmhList
  /// ViewSet para gestión de fichas médicas (EMH).
  ///
  /// Parameters:
  /// * [birthDateGte] 
  /// * [birthDateLte] 
  /// * [bloodType] - * `A_POS` - A+ * `A_NEG` - A- * `B_POS` - B+ * `B_NEG` - B- * `AB_POS` - AB+ * `AB_NEG` - AB- * `O_POS` - O+ * `O_NEG` - O- * `UNKNOWN` - Desconocido / No aplica
  /// * [branch] 
  /// * [client] 
  /// * [format] 
  /// * [gender] - * `M` - Masculino * `F` - Femenino * `NB` - No binario * `NR` - Prefiero no responder
  /// * [insuranceProviderIcontains] 
  /// * [insuranceType] - * `FONASA` - FONASA (Chile) * `ISAPRE` - ISAPRE (Chile) * `PUBLIC` - Sistema público * `PRIVATE` - Seguro privado * `NONE` - Sin previsión * `OTHER` - Otro
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedEMHListList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedEMHListList>> customersEmhList({ 
    DateTime? birthDateGte,
    DateTime? birthDateLte,
    String? bloodType,
    int? branch,
    int? client,
    String? format,
    String? gender,
    String? insuranceProviderIcontains,
    String? insuranceType,
    int? page,
    int? pageSize,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/emh/';
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
      if (birthDateGte != null) r'birth_date__gte': birthDateGte,
      if (birthDateLte != null) r'birth_date__lte': birthDateLte,
      if (bloodType != null) r'blood_type': bloodType,
      if (branch != null) r'branch': branch,
      if (client != null) r'client': client,
      if (format != null) r'format': format,
      if (gender != null) r'gender': gender,
      if (insuranceProviderIcontains != null) r'insurance_provider__icontains': insuranceProviderIcontains,
      if (insuranceType != null) r'insurance_type': insuranceType,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedEMHListList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedEMHListList, PaginatedEMHListList>(rawData, 'PaginatedEMHListList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedEMHListList>(
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

  /// customersEmhPartialUpdate
  /// ViewSet para gestión de fichas médicas (EMH).
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ficha médica (EMH).
  /// * [format] 
  /// * [patchedEMHRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EMH] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EMH>> customersEmhPartialUpdate({ 
    required String id,
    String? format,
    PatchedEMHRequest? patchedEMHRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/emh/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedEMHRequest);

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

    EMH? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<EMH, EMH>(rawData, 'EMH', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EMH>(
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

  /// customersEmhRetrieve
  /// ViewSet para gestión de fichas médicas (EMH).
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ficha médica (EMH).
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EMH] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EMH>> customersEmhRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/emh/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    EMH? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<EMH, EMH>(rawData, 'EMH', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EMH>(
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

  /// customersEmhUpdate
  /// ViewSet para gestión de fichas médicas (EMH).
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Ficha médica (EMH).
  /// * [eMHRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EMH] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EMH>> customersEmhUpdate({ 
    required String id,
    required EMHRequest eMHRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/emh/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(eMHRequest);

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

    EMH? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<EMH, EMH>(rawData, 'EMH', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EMH>(
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

  /// Crear definición de campo extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [clientExtraFieldDefinitionRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldDefinition] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldDefinition>> customersExtraFieldDefinitionsCreate({ 
    required ClientExtraFieldDefinitionRequest clientExtraFieldDefinitionRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-definitions/';
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
      _bodyData = jsonEncode(clientExtraFieldDefinitionRequest);

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

    ClientExtraFieldDefinition? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldDefinition, ClientExtraFieldDefinition>(rawData, 'ClientExtraFieldDefinition', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldDefinition>(
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

  /// Eliminar definición de campo extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Campo Extra de Cliente.
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
  Future<Response<void>> customersExtraFieldDefinitionsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-definitions/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar definiciones de campos extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [aggregationType] - Cómo se agrega este campo para estadísticas  * `NONE` - Sin agregación * `COUNT` - Conteo * `SUM` - Suma * `AVG` - Promedio * `MIN` - Mínimo * `MAX` - Máximo * `MEDIAN` - Mediana
  /// * [displayInCard] 
  /// * [displayInList] 
  /// * [fieldType] - * `TEXT` - Texto * `NUMBER` - Número * `INTEGER` - Entero * `DECIMAL` - Decimal * `DATE` - Fecha * `DATETIME` - Fecha y Hora * `BOOLEAN` - Sí/No * `SELECT` - Selección Única * `MULTISELECT` - Selección Múltiple * `EMAIL` - Email * `PHONE` - Teléfono * `URL` - URL * `FILE` - Archivo * `IMAGE` - Imagen
  /// * [format] 
  /// * [hideInStats] 
  /// * [indicatorType] - Cómo se visualiza este campo en dashboards  * `NONE` - Sin indicador * `LINE_CHART` - Gráfico de Líneas * `BAR_CHART` - Gráfico de Barras * `PIE_CHART` - Gráfico Circular * `GAUGE` - Medidor/Gauge * `NUMBER` - Número Simple * `TABLE` - Tabla * `TIMELINE` - Línea de Tiempo
  /// * [isActive] 
  /// * [isRequired] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [processingLevel] - Qué tanto se procesa este campo: sin procesamiento, solo validaciones, stats o dashboard completo  * `NONE` - Sin procesamiento — campo simple * `VALIDATE` - Solo validaciones * `STATS` - Validaciones + Estadísticas * `FULL` - Validaciones + Estadísticas + Dashboard
  /// * [search] - Un término de búsqueda.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedClientExtraFieldDefinitionList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedClientExtraFieldDefinitionList>> customersExtraFieldDefinitionsList({ 
    String? aggregationType,
    bool? displayInCard,
    bool? displayInList,
    String? fieldType,
    String? format,
    bool? hideInStats,
    String? indicatorType,
    bool? isActive,
    bool? isRequired,
    String? ordering,
    int? page,
    int? pageSize,
    String? processingLevel,
    String? search,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-definitions/';
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
      if (aggregationType != null) r'aggregation_type': aggregationType,
      if (displayInCard != null) r'display_in_card': displayInCard,
      if (displayInList != null) r'display_in_list': displayInList,
      if (fieldType != null) r'field_type': fieldType,
      if (format != null) r'format': format,
      if (hideInStats != null) r'hide_in_stats': hideInStats,
      if (indicatorType != null) r'indicator_type': indicatorType,
      if (isActive != null) r'is_active': isActive,
      if (isRequired != null) r'is_required': isRequired,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
      if (processingLevel != null) r'processing_level': processingLevel,
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

    PaginatedClientExtraFieldDefinitionList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedClientExtraFieldDefinitionList, PaginatedClientExtraFieldDefinitionList>(rawData, 'PaginatedClientExtraFieldDefinitionList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedClientExtraFieldDefinitionList>(
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

  /// customersExtraFieldDefinitionsPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Campo Extra de Cliente.
  /// * [format] 
  /// * [patchedClientExtraFieldDefinitionRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldDefinition] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldDefinition>> customersExtraFieldDefinitionsPartialUpdate({ 
    required String id,
    String? format,
    PatchedClientExtraFieldDefinitionRequest? patchedClientExtraFieldDefinitionRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-definitions/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedClientExtraFieldDefinitionRequest);

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

    ClientExtraFieldDefinition? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldDefinition, ClientExtraFieldDefinition>(rawData, 'ClientExtraFieldDefinition', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldDefinition>(
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

  /// Obtener definición de campo extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Campo Extra de Cliente.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldDefinition] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldDefinition>> customersExtraFieldDefinitionsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-definitions/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    ClientExtraFieldDefinition? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldDefinition, ClientExtraFieldDefinition>(rawData, 'ClientExtraFieldDefinition', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldDefinition>(
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

  /// Estadísticas de un campo
  /// Retorna estadísticas del campo (solo para campos numéricos).
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Campo Extra de Cliente.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldDefinition] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldDefinition>> customersExtraFieldDefinitionsStatsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-definitions/{id}/stats/'.replaceAll('{' r'id' '}', id.toString());
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

    ClientExtraFieldDefinition? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldDefinition, ClientExtraFieldDefinition>(rawData, 'ClientExtraFieldDefinition', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldDefinition>(
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

  /// Actualizar definición de campo extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Campo Extra de Cliente.
  /// * [clientExtraFieldDefinitionRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldDefinition] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldDefinition>> customersExtraFieldDefinitionsUpdate({ 
    required String id,
    required ClientExtraFieldDefinitionRequest clientExtraFieldDefinitionRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-definitions/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(clientExtraFieldDefinitionRequest);

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

    ClientExtraFieldDefinition? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldDefinition, ClientExtraFieldDefinition>(rawData, 'ClientExtraFieldDefinition', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldDefinition>(
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

  /// Crear grupo de campos extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [clientExtraFieldGroupRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldGroup] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldGroup>> customersExtraFieldGroupsCreate({ 
    required ClientExtraFieldGroupRequest clientExtraFieldGroupRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-groups/';
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
      _bodyData = jsonEncode(clientExtraFieldGroupRequest);

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

    ClientExtraFieldGroup? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldGroup, ClientExtraFieldGroup>(rawData, 'ClientExtraFieldGroup', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldGroup>(
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

  /// Eliminar grupo de campos extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Grupo de Campos Extra.
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
  Future<Response<void>> customersExtraFieldGroupsDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-groups/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Listar grupos de campos extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
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
  /// Returns a [Future] containing a [Response] with a [PaginatedClientExtraFieldGroupList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedClientExtraFieldGroupList>> customersExtraFieldGroupsList({ 
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
    final _path = r'/api/customers/extra-field-groups/';
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
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedClientExtraFieldGroupList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedClientExtraFieldGroupList, PaginatedClientExtraFieldGroupList>(rawData, 'PaginatedClientExtraFieldGroupList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedClientExtraFieldGroupList>(
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

  /// customersExtraFieldGroupsPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Grupo de Campos Extra.
  /// * [format] 
  /// * [patchedClientExtraFieldGroupRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldGroup] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldGroup>> customersExtraFieldGroupsPartialUpdate({ 
    required String id,
    String? format,
    PatchedClientExtraFieldGroupRequest? patchedClientExtraFieldGroupRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-groups/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedClientExtraFieldGroupRequest);

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

    ClientExtraFieldGroup? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldGroup, ClientExtraFieldGroup>(rawData, 'ClientExtraFieldGroup', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldGroup>(
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

  /// Obtener grupo de campos extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Grupo de Campos Extra.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldGroup] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldGroup>> customersExtraFieldGroupsRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-groups/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    ClientExtraFieldGroup? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldGroup, ClientExtraFieldGroup>(rawData, 'ClientExtraFieldGroup', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldGroup>(
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

  /// Actualizar grupo de campos extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Grupo de Campos Extra.
  /// * [clientExtraFieldGroupRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldGroup] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldGroup>> customersExtraFieldGroupsUpdate({ 
    required String id,
    required ClientExtraFieldGroupRequest clientExtraFieldGroupRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-groups/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(clientExtraFieldGroupRequest);

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

    ClientExtraFieldGroup? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldGroup, ClientExtraFieldGroup>(rawData, 'ClientExtraFieldGroup', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldGroup>(
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

  /// Crear valor de campo extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [clientExtraFieldValueCreateRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldValueCreate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldValueCreate>> customersExtraFieldValuesCreate({ 
    required ClientExtraFieldValueCreateRequest clientExtraFieldValueCreateRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-values/';
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
      _bodyData = jsonEncode(clientExtraFieldValueCreateRequest);

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

    ClientExtraFieldValueCreate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldValueCreate, ClientExtraFieldValueCreate>(rawData, 'ClientExtraFieldValueCreate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldValueCreate>(
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

  /// Eliminar valor de campo extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Valor de Campo Extra.
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
  Future<Response<void>> customersExtraFieldValuesDestroy({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-values/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// Histórico de valores de un campo para un cliente
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
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldValue] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldValue>> customersExtraFieldValuesHistoryRetrieve({ 
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-values/history/';
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

    ClientExtraFieldValue? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldValue, ClientExtraFieldValue>(rawData, 'ClientExtraFieldValue', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldValue>(
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

  /// Listar valores de campos extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [client] 
  /// * [fieldDefinition] 
  /// * [format] 
  /// * [isActive] 
  /// * [ordering] - Qué campo usar para ordenar los resultados.
  /// * [page] - Un número de página dentro del conjunto de resultados paginado.
  /// * [pageSize] - Número de resultados a devolver por página.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PaginatedClientExtraFieldValueList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedClientExtraFieldValueList>> customersExtraFieldValuesList({ 
    int? client,
    String? fieldDefinition,
    String? format,
    bool? isActive,
    String? ordering,
    int? page,
    int? pageSize,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-values/';
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
      if (client != null) r'client': client,
      if (fieldDefinition != null) r'field_definition': fieldDefinition,
      if (format != null) r'format': format,
      if (isActive != null) r'is_active': isActive,
      if (ordering != null) r'ordering': ordering,
      if (page != null) r'page': page,
      if (pageSize != null) r'page_size': pageSize,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PaginatedClientExtraFieldValueList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedClientExtraFieldValueList, PaginatedClientExtraFieldValueList>(rawData, 'PaginatedClientExtraFieldValueList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedClientExtraFieldValueList>(
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

  /// customersExtraFieldValuesPartialUpdate
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Valor de Campo Extra.
  /// * [format] 
  /// * [patchedClientExtraFieldValueCreateRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldValueCreate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldValueCreate>> customersExtraFieldValuesPartialUpdate({ 
    required String id,
    String? format,
    PatchedClientExtraFieldValueCreateRequest? patchedClientExtraFieldValueCreateRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-values/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedClientExtraFieldValueCreateRequest);

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

    ClientExtraFieldValueCreate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldValueCreate, ClientExtraFieldValueCreate>(rawData, 'ClientExtraFieldValueCreate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldValueCreate>(
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

  /// Obtener valor de campo extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Valor de Campo Extra.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldValue] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldValue>> customersExtraFieldValuesRetrieve({ 
    required String id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-values/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    ClientExtraFieldValue? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldValue, ClientExtraFieldValue>(rawData, 'ClientExtraFieldValue', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldValue>(
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

  /// Actualizar valor de campo extra
  /// Mixin base para todos los ViewSets de negocio del ERP.  Combina automaticamente: - Filtrado por sucursal (UniversalFilterMixin) - Ocultar registros soft-deleted en listados (UniversalFilterMixin) - Soft delete en destroy (SoftDeleteMixin) - Permisos estandar (IsAuthenticated + ActiveSubscriptionRequired + ModuleEnabledRequired + ModuleRolePermission)  Uso:     class MyViewSet(ERPBaseViewSet, viewsets.ModelViewSet):         queryset &#x3D; MyModel.objects.all()         serializer_class &#x3D; MySerializer         # No es necesario definir permission_classes
  ///
  /// Parameters:
  /// * [id] - Un Cadena UUID que identifique este Valor de Campo Extra.
  /// * [clientExtraFieldValueCreateRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ClientExtraFieldValueCreate] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ClientExtraFieldValueCreate>> customersExtraFieldValuesUpdate({ 
    required String id,
    required ClientExtraFieldValueCreateRequest clientExtraFieldValueCreateRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/extra-field-values/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(clientExtraFieldValueCreateRequest);

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

    ClientExtraFieldValueCreate? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ClientExtraFieldValueCreate, ClientExtraFieldValueCreate>(rawData, 'ClientExtraFieldValueCreate', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ClientExtraFieldValueCreate>(
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

  /// customersJobTitlesCreate
  /// ViewSet para gestionar cargos dinámicos.
  ///
  /// Parameters:
  /// * [jobTitleRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [JobTitle] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<JobTitle>> customersJobTitlesCreate({ 
    required JobTitleRequest jobTitleRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/job-titles/';
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
      _bodyData = jsonEncode(jobTitleRequest);

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

    JobTitle? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<JobTitle, JobTitle>(rawData, 'JobTitle', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<JobTitle>(
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

  /// customersJobTitlesDestroy
  /// ViewSet para gestionar cargos dinámicos.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Cargo.
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
  Future<Response<void>> customersJobTitlesDestroy({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/job-titles/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

  /// customersJobTitlesList
  /// ViewSet para gestionar cargos dinámicos.
  ///
  /// Parameters:
  /// * [branch] 
  /// * [branchIn] - Múltiples valores separados por comas.
  /// * [format] 
  /// * [isActive] 
  /// * [isForSuppliers] 
  /// * [level] - * `EXECUTIVE` - Ejecutivo * `MANAGER` - Gerencial * `SUPERVISOR` - Supervisor * `ANALYST` - Analista * `ASSISTANT` - Asistente * `OPERATOR` - Operador * `OTHER` - Otro
  /// * [levelIn] - Múltiples valores separados por comas.
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
  /// Returns a [Future] containing a [Response] with a [PaginatedJobTitleListList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PaginatedJobTitleListList>> customersJobTitlesList({ 
    int? branch,
    List<int>? branchIn,
    String? format,
    bool? isActive,
    bool? isForSuppliers,
    String? level,
    List<String>? levelIn,
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
    final _path = r'/api/customers/job-titles/';
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
      if (branchIn != null) r'branch__in': branchIn,
      if (format != null) r'format': format,
      if (isActive != null) r'is_active': isActive,
      if (isForSuppliers != null) r'is_for_suppliers': isForSuppliers,
      if (level != null) r'level': level,
      if (levelIn != null) r'level__in': levelIn,
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

    PaginatedJobTitleListList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PaginatedJobTitleListList, PaginatedJobTitleListList>(rawData, 'PaginatedJobTitleListList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PaginatedJobTitleListList>(
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

  /// customersJobTitlesPartialUpdate
  /// ViewSet para gestionar cargos dinámicos.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Cargo.
  /// * [format] 
  /// * [patchedJobTitleRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [JobTitle] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<JobTitle>> customersJobTitlesPartialUpdate({ 
    required int id,
    String? format,
    PatchedJobTitleRequest? patchedJobTitleRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/job-titles/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(patchedJobTitleRequest);

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

    JobTitle? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<JobTitle, JobTitle>(rawData, 'JobTitle', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<JobTitle>(
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

  /// customersJobTitlesRetrieve
  /// ViewSet para gestionar cargos dinámicos.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Cargo.
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [JobTitle] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<JobTitle>> customersJobTitlesRetrieve({ 
    required int id,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/job-titles/{id}/'.replaceAll('{' r'id' '}', id.toString());
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

    JobTitle? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<JobTitle, JobTitle>(rawData, 'JobTitle', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<JobTitle>(
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

  /// customersJobTitlesUpdate
  /// ViewSet para gestionar cargos dinámicos.
  ///
  /// Parameters:
  /// * [id] - Un valor de entero único que identifique este Cargo.
  /// * [jobTitleRequest] 
  /// * [format] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [JobTitle] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<JobTitle>> customersJobTitlesUpdate({ 
    required int id,
    required JobTitleRequest jobTitleRequest,
    String? format,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/customers/job-titles/{id}/'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(jobTitleRequest);

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

    JobTitle? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<JobTitle, JobTitle>(rawData, 'JobTitle', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<JobTitle>(
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
