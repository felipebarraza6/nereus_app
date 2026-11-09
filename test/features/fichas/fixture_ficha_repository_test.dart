import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/features/fichas/data/fixture_ficha_repository.dart';
import 'package:nereus_app/features/fichas/data/fixture_levantamiento_repository.dart';
import 'package:nereus_app/features/fichas/data/fixture_store.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/fichas/domain/ensure_water_templates.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/ficha_repository.dart';
import 'package:nereus_app/features/fichas/domain/water_templates.dart';

void main() {
  test('ensureWaterTemplates is idempotent and seeds tenencias', () async {
    final store = FixtureStore.seeded();
    final fichas = FixtureFichaRepository(store);
    final levantamientos = FixtureLevantamientoRepository(store);

    await ensureWaterTemplates(fichas: fichas, levantamientos: levantamientos);
    await ensureWaterTemplates(fichas: fichas, levantamientos: levantamientos);

    final sections = await fichas.sections();
    expect(sections.where((s) => s.key == 'derechos_agua'), hasLength(1));
    expect(sections.where((s) => s.key == 'captacion'), hasLength(1));

    final fields = await fichas.fields();
    expect(fields.where((f) => f.key == 'derechos_ls'), hasLength(1));
    expect(fields.where((f) => f.key == 'tipo_punto'), hasLength(1));

    final templates = await levantamientos.templates();
    expect(templates.where((t) => t.name == tenenciasTemplateName), hasLength(1));
    expect(templates.where((t) => t.name == captacionTemplateName), hasLength(1));
  });

  test('ensureWaterTemplates still seeds sections if surveys fail', () async {
    final store = FixtureStore.seeded();
    final fichas = FixtureFichaRepository(store);
    await ensureWaterTemplates(
      fichas: fichas,
      levantamientos: _BrokenLevantamientos(),
    );
    final sections = await fichas.sections();
    expect(sections.where((s) => s.key == 'derechos_agua'), hasLength(1));
    expect(sections.where((s) => s.key == 'captacion'), hasLength(1));
  });

  test('publish, submit and applyAnswers writes tenencia values', () async {
    final store = FixtureStore.seeded();
    final fichas = FixtureFichaRepository(store);
    final levantamientos = FixtureLevantamientoRepository(store);
    await ensureWaterTemplates(fichas: fichas, levantamientos: levantamientos);

    final template = (await levantamientos.templates()).firstWhere(
      (item) => item.name == tenenciasTemplateName,
    );
    final published = await levantamientos.publish(
      title: template.name,
      questions: template.questions,
    );
    await levantamientos.submit(
      surveyId: published.id,
      clientId: FixtureStore.demoClientId,
      answers: {
        'derechos_ls': 18.5,
        'rol_dga': 'DGA-ÑUBLE-12',
        'tipo_derecho': 'Consuntivo',
      },
    );
    final result = await fichas.applyAnswers(
      clientId: FixtureStore.demoClientId,
      answers: {
        'derechos_ls': 18.5,
        'rol_dga': 'DGA-ÑUBLE-12',
        'tipo_derecho': 'Consuntivo',
      },
    );
    expect(result.applied, 3);

    final values = await fichas.valuesForClient(FixtureStore.demoClientId);
    expect(
      values.where((v) => v.fieldKey == 'derechos_ls').first.displayValue,
      contains('18.5'),
    );
  });
}

class _BrokenLevantamientos implements LevantamientoRepository {
  Never _fail() => throw const ApiError(message: 'surveys down');

  @override
  Future<List<LevantamientoTemplate>> templates() async => _fail();

  @override
  Future<LevantamientoTemplate> createTemplate({
    required String name,
    required List<LevantamientoQuestion> questions,
    String? description,
  }) async =>
      _fail();

  @override
  Future<List<Levantamiento>> list() async => _fail();

  @override
  Future<Levantamiento> retrieve(String id) async => _fail();

  @override
  Future<Levantamiento> publish({
    required String title,
    required List<LevantamientoQuestion> questions,
  }) async =>
      _fail();

  @override
  Future<LevantamientoRespuesta> submit({
    required String surveyId,
    required Map<String, Object?> answers,
    String? clientId,
  }) async =>
      _fail();

  @override
  Future<List<LevantamientoRespuesta>> responses({
    String? surveyId,
    String? clientId,
  }) async =>
      _fail();
}
