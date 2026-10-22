import 'package:nereus_app/core/debug/nereus_log.dart';
import 'package:nereus_app/features/fichas/domain/ficha_mapping.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/ficha_repository.dart';
import 'package:nereus_app/features/fichas/domain/water_templates.dart';

/// Creates tenencias/captación sections, fields and survey templates if missing.
/// Listing the ficha never depends on surveys or PDF being available.
Future<void> ensureWaterTemplates({
  required FichaRepository fichas,
  required LevantamientoRepository levantamientos,
}) async {
  final sections = await fichas.sections();
  final fields = await fichas.fields();
  final sectionByKey = {for (final section in sections) section.key: section};

  for (final spec in waterSections) {
    var section = sectionByKey[spec.key];
    if (section == null) {
      try {
        section = await fichas.createSection(spec);
        sectionByKey[spec.key] = section;
      } on Object catch (error, stack) {
        nereusLog('ensure.createSection.${spec.key}', error, stack);
        continue;
      }
    }
    final existingKeys = {
      for (final field in fields)
        if (field.groupId == section.id || field.groupKey == spec.key) field.key,
    };
    for (final fieldSpec in spec.fields) {
      if (existingKeys.contains(fieldSpec.key)) continue;
      try {
        final created =
            await fichas.createField(groupId: section.id, spec: fieldSpec);
        fields.add(created);
        existingKeys.add(created.key);
      } on Object catch (error, stack) {
        nereusLog('ensure.createField.${fieldSpec.key}', error, stack);
      }
    }
  }

  try {
    final templates = await levantamientos.templates();
    final templateNames = {for (final item in templates) item.name};
    final latestFields = await fichas.fields();
    final latestSections = await fichas.sections();
    final idByKey = {
      for (final section in latestSections) section.key: section.id,
    };

    Future<void> seedTemplate(String name, String sectionKey) async {
      if (templateNames.contains(name)) return;
      final groupId = idByKey[sectionKey];
      final groupFields = [
        for (final field in latestFields)
          if (field.groupId == groupId || field.groupKey == sectionKey) field,
      ];
      await levantamientos.createTemplate(
        name: name,
        description: 'Plantilla de terreno',
        questions: questionsFromFields(groupFields),
      );
    }

    await seedTemplate(tenenciasTemplateName, tenenciasSection.key);
    await seedTemplate(captacionTemplateName, captacionSection.key);
  } on Object catch (error, stack) {
    nereusLog('ensure.surveyTemplates', error, stack);
  }

  try {
    await fichas.ensurePdfTemplate();
  } on Object catch (error, stack) {
    nereusLog('ensure.pdfTemplate', error, stack);
  }
}
