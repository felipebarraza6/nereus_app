import 'package:dio/dio.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/fichas/domain/ficha_mapping.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/ficha_repository.dart';

class YggdraLevantamientoRepository implements LevantamientoRepository {
  YggdraLevantamientoRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Never _rethrow(Object error, StackTrace stack) {
    throw ApiError.fromAny(error, stack);
  }

  String _slug(String title) {
    final base = slugify(title);
    final raw =
        '${base.isEmpty ? 'levantamiento' : base}-${DateTime.now().millisecondsSinceEpoch.toRadixString(36)}';
    return raw.length <= 80 ? raw : raw.substring(0, 80);
  }

  @override
  Future<List<LevantamientoTemplate>> templates() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/surveys/templates/',
        queryParameters: {'page_size': 100},
      );
      return asResults(response.data).map(LevantamientoTemplate.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<LevantamientoTemplate> createTemplate({
    required String name,
    required List<LevantamientoQuestion> questions,
    String? description,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/surveys/templates/',
        data: {
          'name': name,
          'description': description,
          'survey_type': 'CUSTOM',
          'questions': [for (final question in questions) question.toJson()],
        },
      );
      return LevantamientoTemplate.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<List<Levantamiento>> list() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/surveys/surveys/',
        queryParameters: {'page_size': 100, 'survey_type': 'CUSTOM'},
      );
      return asResults(response.data).map(Levantamiento.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<Levantamiento> retrieve(String id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/surveys/surveys/$id/',
      );
      return Levantamiento.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<Levantamiento> publish({
    required String title,
    required List<LevantamientoQuestion> questions,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/surveys/surveys/',
        data: {
          'title': title,
          'survey_type': 'CUSTOM',
          'status': 'ACTIVE',
          'slug': _slug(title),
          'questions': [for (final question in questions) question.toJson()],
        },
      );
      return Levantamiento.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<LevantamientoRespuesta> submit({
    required String surveyId,
    required Map<String, Object?> answers,
    String? clientId,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/surveys/responses/',
        data: {
          'survey': surveyId,
          'answers': answers,
          if (clientId != null) 'client': int.tryParse(clientId) ?? clientId,
        },
      );
      return LevantamientoRespuesta.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<List<LevantamientoRespuesta>> responses({
    String? surveyId,
    String? clientId,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/surveys/responses/',
        queryParameters: {
          'page_size': 100,
          if (surveyId != null) 'survey': surveyId,
          if (clientId != null) 'client': clientId,
        },
      );
      return asResults(response.data)
          .map(LevantamientoRespuesta.fromJson)
          .toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }
}
