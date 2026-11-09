import 'package:dio/dio.dart';
import 'package:nereus_app/core/cache/read_cache.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/fichas/data/ficha_apply.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/ficha_repository.dart';
import 'package:nereus_app/features/fichas/domain/water_templates.dart';

class YggdraFichaRepository implements FichaRepository {
  YggdraFichaRepository({required Dio dio, required ReadCache cache})
      : _dio = dio,
        _cache = cache;

  final Dio _dio;
  final ReadCache _cache;

  Never _rethrow(Object error, StackTrace stack) {
    throw ApiError.fromAny(error, stack);
  }

  Object _clientRef(String clientId) => int.tryParse(clientId) ?? clientId;

  @override
  Future<List<FichaSection>> sections() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/customers/extra-field-groups/',
        queryParameters: {'page_size': 100},
      );
      return [
        for (final item in asResults(response.data))
          if (item['is_active'] != false) FichaSection.fromJson(item),
      ];
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<FichaSection> createSection(WaterSectionSpec spec) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/customers/extra-field-groups/',
        data: {
          'name': spec.name,
          'key': spec.key,
          'description': spec.description,
          'color': spec.color,
          'icon': spec.icon,
        },
      );
      return FichaSection.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<FichaSection> updateSection(String id, WaterSectionSpec spec) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/customers/extra-field-groups/$id/',
        data: {
          'name': spec.name,
          'key': spec.key,
          'description': spec.description,
          'color': spec.color,
          'icon': spec.icon,
        },
      );
      return FichaSection.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<void> deleteSection(String id) async {
    try {
      await _dio.delete<dynamic>('/api/customers/extra-field-groups/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<List<FichaField>> fields({String? groupId}) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/customers/extra-field-definitions/',
        queryParameters: {
          'page_size': 200,
          if (groupId != null) 'group': groupId,
        },
      );
      return [
        for (final item in asResults(response.data))
          if (item['is_active'] != false) FichaField.fromJson(item),
      ];
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<FichaField> createField({
    required String groupId,
    required WaterFieldSpec spec,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/customers/extra-field-definitions/',
        data: {
          'name': spec.name,
          'key': spec.key,
          'field_type': spec.fieldType,
          'unit': spec.unit,
          'options': [
            for (final option in spec.options) {'value': option, 'label': option},
          ],
          'is_required': spec.required,
          'group': int.tryParse(groupId) ?? groupId,
          'display_in_card': true,
          'is_active': true,
        },
      );
      return FichaField.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<FichaField> updateField(String id, WaterFieldSpec spec) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/customers/extra-field-definitions/$id/',
        data: {
          'name': spec.name,
          'key': spec.key,
          'field_type': spec.fieldType,
          'unit': spec.unit,
          'options': [
            for (final option in spec.options) {'value': option, 'label': option},
          ],
          'is_required': spec.required,
          'display_in_card': true,
          'is_active': true,
        },
      );
      return FichaField.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<void> deleteField(String id) async {
    try {
      await _dio.delete<dynamic>('/api/customers/extra-field-definitions/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<List<FichaValue>> valuesForClient(String clientId) async {
    final key = 'fichas.values.$clientId';
    try {
      final response = await _dio.get<dynamic>(
        '/api/customers/extra-field-values/',
        queryParameters: {
          'client': clientId,
          'page_size': 200,
        },
      );
      await _cache.putJson(key, asMap(response.data).isEmpty
          ? {'results': asResults(response.data)}
          : asMap(response.data));
      return asResults(response.data).map(FichaValue.fromJson).toList();
    } on Object catch (error, stack) {
      final cached = await _cache.getJson(key);
      if (cached != null) {
        return asResults(cached)
            .map(FichaValue.fromJson)
            .where((value) => value.clientId == clientId)
            .toList();
      }
      _rethrow(error, stack);
    }
  }

  @override
  Future<FichaValue> upsertValue({
    required String clientId,
    required String fieldId,
    required Object value,
    String? existingId,
  }) async {
    try {
      final Response<Map<String, dynamic>> response;
      if (existingId != null) {
        response = await _dio.patch<Map<String, dynamic>>(
          '/api/customers/extra-field-values/$existingId/',
          data: {'value': value},
        );
      } else {
        response = await _dio.post<Map<String, dynamic>>(
          '/api/customers/extra-field-values/',
          data: {
            'client': _clientRef(clientId),
            'field_definition': fieldId,
            'value': value,
          },
        );
      }
      return FichaValue.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<ApplyAnswersResult> applyAnswers({
    required String clientId,
    required Map<String, Object?> answers,
  }) async {
    final defs = await fields();
    final existing = await valuesForClient(clientId);
    return applyMatchedAnswers(
      fields: defs,
      existing: existing,
      answers: answers,
      write: ({required field, required value, existingId}) {
        return upsertValue(
          clientId: clientId,
          fieldId: field.id,
          value: value,
          existingId: existingId,
        );
      },
    );
  }

  @override
  Future<PdfFichaTemplate> ensurePdfTemplate() async {
    try {
      final listed = await _dio.get<dynamic>(
        '/api/customers/card-templates/',
        queryParameters: {'page_size': 50, 'is_active': true},
      );
      final templates = asResults(listed.data).map(PdfFichaTemplate.fromJson);
      for (final template in templates) {
        if (template.name == pdfTemplateName) return template;
      }
      final created = await _dio.post<Map<String, dynamic>>(
        '/api/customers/card-templates/',
        data: {
          'name': pdfTemplateName,
          'include_basic_info': true,
          'include_extra_fields': true,
          'include_emh': false,
          'include_contacts': true,
          'is_default': true,
          'extra_fields_filter': [
            for (final section in waterSections)
              for (final field in section.fields) field.key,
          ],
        },
      );
      return PdfFichaTemplate.fromJson(created.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  @override
  Future<String> generatePdf({
    required String clientId,
    required String templateId,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/customers/client-cards/generate/',
        data: {
          'client': _clientRef(clientId),
          'template': templateId,
        },
      );
      final data = response.data ?? {};
      return asString(
        data['file_url'] ?? data['file'] ?? data['id'],
        fallback: templateId,
      );
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }
}
