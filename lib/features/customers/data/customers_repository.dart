import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/customers/domain/client_models.dart';
import 'package:nereus_app/features/fichas/data/fixture_store.dart';

class CustomersRepository {
  CustomersRepository({Dio? dio, ReadCache? cache, FixtureStore? store})
      : _dio = dio,
        _cache = cache,
        _store = store;

  factory CustomersRepository.fixture(FixtureStore store) {
    return CustomersRepository(store: store);
  }

  final Dio? _dio;
  final ReadCache? _cache;
  final FixtureStore? _store;

  Never _rethrow(Object error, StackTrace stack) {
    throw ApiError.fromAny(error, stack);
  }

  Future<List<ClientItem>> list({String? search}) async {
    final store = _store;
    if (store != null) {
      final rows = store.clients.values.map(ClientItem.fromJson).toList();
      if (search == null || search.isEmpty) return rows;
      final query = search.toLowerCase();
      return rows
          .where((row) => row.name.toLowerCase().contains(query))
          .toList();
    }
    const key = 'customers.clients';
    try {
      final response = await _dio!.get<dynamic>(
        '/api/customers/clients/',
        queryParameters: {
          'page_size': 100,
          if (search != null && search.isNotEmpty) 'search': search,
        },
      );
      await _cache!.putJson(
        key,
        asMap(response.data).isEmpty
            ? {'results': asResults(response.data)}
            : asMap(response.data),
      );
      return asResults(response.data).map(ClientItem.fromJson).toList();
    } on Object catch (error, stack) {
      final cached = await _cache!.getJson(key);
      if (cached != null) {
        return asResults(cached).map(ClientItem.fromJson).toList();
      }
      _rethrow(error, stack);
    }
  }

  Future<ClientItem> create(Map<String, dynamic> body) async {
    final store = _store;
    if (store != null) {
      final id = store.nextId('cli');
      final row = {...body, 'id': id, 'is_active': true};
      store.clients[id] = row;
      return ClientItem.fromJson(row);
    }
    try {
      final response = await _dio!.post<Map<String, dynamic>>(
        '/api/customers/clients/',
        data: body,
      );
      return ClientItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<ClientItem> update(String id, Map<String, dynamic> body) async {
    final store = _store;
    if (store != null) {
      final current = {...?store.clients[id], ...body, 'id': id};
      store.clients[id] = current;
      return ClientItem.fromJson(current);
    }
    try {
      final response = await _dio!.patch<Map<String, dynamic>>(
        '/api/customers/clients/$id/',
        data: body,
      );
      return ClientItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> delete(String id) async {
    final store = _store;
    if (store != null) {
      store.clients.remove(id);
      return;
    }
    try {
      await _dio!.delete<void>('/api/customers/clients/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }
}
