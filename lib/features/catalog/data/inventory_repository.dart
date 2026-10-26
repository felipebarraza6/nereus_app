import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';

class InventoryRepository {
  InventoryRepository({required Dio dio, required ReadCache cache})
      : _dio = dio,
        _cache = cache;

  final Dio _dio;
  final ReadCache _cache;

  Never _rethrow(Object error, StackTrace stack) {
    throw ApiError.fromAny(error, stack);
  }

  Future<List<ProductItem>> products({String? productType, String? search}) async {
    final key = 'inventory.products.${productType ?? ''}.${search ?? ''}';
    try {
      final response = await _dio.get<dynamic>(
        '/api/inventory/products/',
        queryParameters: {
          'page_size': 100,
          if (productType != null && productType.isNotEmpty)
            'product_type': productType,
          if (search != null && search.isNotEmpty) 'search': search,
        },
      );
      await _cache.putJson(key, asMap(response.data).isEmpty
          ? {'results': asResults(response.data)}
          : asMap(response.data));
      return asResults(response.data).map(ProductItem.fromJson).toList();
    } on Object catch (error, stack) {
      final cached = await _cache.getJson(key);
      if (cached != null) {
        return asResults(cached).map(ProductItem.fromJson).toList();
      }
      _rethrow(error, stack);
    }
  }

  Future<ProductItem> createProduct(Map<String, dynamic> body) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/inventory/products/',
        data: body,
      );
      return ProductItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<ProductItem> updateProduct(String id, Map<String, dynamic> body) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/inventory/products/$id/',
        data: body,
      );
      return ProductItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> deleteProduct(String id) async {
    try {
      await _dio.delete<void>('/api/inventory/products/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<StockRow>> stock() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/inventory/product-inventory/',
        queryParameters: {'page_size': 100},
      );
      return asResults(response.data).map(StockRow.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<WarehouseItem>> warehouses() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/inventory/warehouses/',
        queryParameters: {'page_size': 50},
      );
      return asResults(response.data).map(WarehouseItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<MeasurementPointItem>> measurementPoints() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/inventory/measurement-points/',
        queryParameters: {'page_size': 100},
      );
      return asResults(response.data)
          .map(MeasurementPointItem.fromJson)
          .toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<MeasurementPointItem> createMeasurementPoint(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/inventory/measurement-points/',
        data: body,
      );
      return MeasurementPointItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<MeasurementPointItem> updateMeasurementPoint(
    String id,
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/inventory/measurement-points/$id/',
        data: body,
      );
      return MeasurementPointItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> deleteMeasurementPoint(String id) async {
    try {
      await _dio.delete<void>('/api/inventory/measurement-points/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }
}
