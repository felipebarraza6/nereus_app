import 'package:nereus_app/features/fichas/data/fixture_store.dart';
import 'package:nereus_app/features/fichas/domain/ficha_mapping.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/ficha_repository.dart';

class FixtureLevantamientoRepository implements LevantamientoRepository {
  FixtureLevantamientoRepository(this._store);

  final FixtureStore _store;

  @override
  Future<List<LevantamientoTemplate>> templates() async {
    return [
      for (final row in _store.templates.values)
        LevantamientoTemplate.fromJson(row),
    ];
  }

  @override
  Future<LevantamientoTemplate> createTemplate({
    required String name,
    required List<LevantamientoQuestion> questions,
    String? description,
  }) async {
    final id = _store.nextId('tpl');
    final row = {
      'id': id,
      'name': name,
      'description': description,
      'survey_type': 'CUSTOM',
      'questions': [for (final question in questions) question.toJson()],
    };
    _store.templates[id] = row;
    return LevantamientoTemplate.fromJson(row);
  }

  @override
  Future<List<Levantamiento>> list() async {
    return [
      for (final row in _store.surveys.values) Levantamiento.fromJson(row),
    ];
  }

  @override
  Future<Levantamiento> retrieve(String id) async {
    final row = _store.surveys[id];
    if (row == null) {
      throw StateError('Levantamiento no encontrado');
    }
    return Levantamiento.fromJson(row);
  }

  @override
  Future<Levantamiento> publish({
    required String title,
    required List<LevantamientoQuestion> questions,
  }) async {
    final id = _store.nextId('sv');
    final slug = slugify(title);
    final row = {
      'id': id,
      'title': title,
      'slug': slug.isEmpty ? id : slug,
      'status': 'ACTIVE',
      'survey_type': 'CUSTOM',
      'questions': [for (final question in questions) question.toJson()],
    };
    _store.surveys[id] = row;
    return Levantamiento.fromJson(row);
  }

  @override
  Future<LevantamientoRespuesta> submit({
    required String surveyId,
    required Map<String, Object?> answers,
    String? clientId,
  }) async {
    final id = _store.nextId('rsp');
    final row = {
      'id': id,
      'survey': surveyId,
      'client': clientId,
      'answers': answers,
      'created': DateTime.now().toIso8601String(),
    };
    _store.responses[id] = row;
    return LevantamientoRespuesta.fromJson(row);
  }

  @override
  Future<List<LevantamientoRespuesta>> responses({
    String? surveyId,
    String? clientId,
  }) async {
    return [
      for (final row in _store.responses.values)
        if ((surveyId == null || row['survey'] == surveyId) &&
            (clientId == null || '${row['client']}' == clientId))
          LevantamientoRespuesta.fromJson(row),
    ];
  }
}
