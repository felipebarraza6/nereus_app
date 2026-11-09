import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/water_templates.dart';

abstract class FichaRepository {
  Future<List<FichaSection>> sections();

  Future<FichaSection> createSection(WaterSectionSpec spec);

  Future<FichaSection> updateSection(String id, WaterSectionSpec spec);

  Future<void> deleteSection(String id);

  Future<List<FichaField>> fields({String? groupId});

  Future<FichaField> createField({
    required String groupId,
    required WaterFieldSpec spec,
  });

  Future<FichaField> updateField(String id, WaterFieldSpec spec);

  Future<void> deleteField(String id);

  Future<List<FichaValue>> valuesForClient(String clientId);

  Future<FichaValue> upsertValue({
    required String clientId,
    required String fieldId,
    required Object value,
    String? existingId,
  });

  Future<ApplyAnswersResult> applyAnswers({
    required String clientId,
    required Map<String, Object?> answers,
  });

  Future<PdfFichaTemplate> ensurePdfTemplate();

  Future<String> generatePdf({
    required String clientId,
    required String templateId,
  });
}

abstract class LevantamientoRepository {
  Future<List<LevantamientoTemplate>> templates();

  Future<LevantamientoTemplate> createTemplate({
    required String name,
    required List<LevantamientoQuestion> questions,
    String? description,
  });

  Future<List<Levantamiento>> list();

  Future<Levantamiento> retrieve(String id);

  Future<Levantamiento> publish({
    required String title,
    required List<LevantamientoQuestion> questions,
  });

  Future<LevantamientoRespuesta> submit({
    required String surveyId,
    required Map<String, Object?> answers,
    String? clientId,
  });

  Future<List<LevantamientoRespuesta>> responses({
    String? surveyId,
    String? clientId,
  });
}
