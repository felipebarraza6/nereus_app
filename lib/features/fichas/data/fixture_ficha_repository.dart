import 'package:nereus_app/features/fichas/data/ficha_apply.dart';
import 'package:nereus_app/features/fichas/data/fixture_store.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/ficha_repository.dart';
import 'package:nereus_app/features/fichas/domain/water_templates.dart';

class FixtureFichaRepository implements FichaRepository {
  FixtureFichaRepository(this._store);

  final FixtureStore _store;

  @override
  Future<List<FichaSection>> sections() async {
    return [
      for (final row in _store.groups.values) FichaSection.fromJson(row),
    ];
  }

  @override
  Future<FichaSection> createSection(WaterSectionSpec spec) async {
    final id = _store.nextId('grp');
    final row = {
      'id': id,
      'name': spec.name,
      'key': spec.key,
      'description': spec.description,
      'color': spec.color,
      'icon': spec.icon,
      'display_order': _store.groups.length + 1,
      'is_active': true,
    };
    _store.groups[id] = row;
    return FichaSection.fromJson(row);
  }

  @override
  Future<List<FichaField>> fields({String? groupId}) async {
    return [
      for (final row in _store.fieldDefs.values)
        if (groupId == null || row['group'] == groupId) FichaField.fromJson(row),
    ];
  }

  @override
  Future<FichaField> createField({
    required String groupId,
    required WaterFieldSpec spec,
  }) async {
    final group = _store.groups[groupId];
    final id = _store.nextId('fld');
    final row = {
      'id': id,
      'name': spec.name,
      'key': spec.key,
      'field_type': spec.fieldType,
      'unit': spec.unit ?? '',
      'options': spec.options,
      'is_required': spec.required,
      'group': groupId,
      'group_key': group?['key'],
      'group_name': group?['name'],
      'display_in_card': true,
      'is_active': true,
    };
    _store.fieldDefs[id] = row;
    return FichaField.fromJson(row);
  }

  @override
  Future<List<FichaValue>> valuesForClient(String clientId) async {
    return [
      for (final row in _store.values.values)
        if ('${row['client']}' == clientId) FichaValue.fromJson(row),
    ];
  }

  @override
  Future<FichaValue> upsertValue({
    required String clientId,
    required String fieldId,
    required Object value,
    String? existingId,
  }) async {
    final field = _store.fieldDefs[fieldId];
    final id = existingId ?? _store.nextId('val');
    final row = {
      'id': id,
      'client': clientId,
      'field_definition': fieldId,
      'field_key': field?['key'],
      'value': value,
      'display_value': displayFor(value, unit: field?['unit'] as String?),
    };
    _store.values[id] = row;
    return FichaValue.fromJson(row);
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
    final found = _store.cardTemplates.values.where(
      (row) => row['name'] == pdfTemplateName,
    );
    if (found.isNotEmpty) return PdfFichaTemplate.fromJson(found.first);
    final id = _store.nextId('pdf');
    final row = {
      'id': id,
      'name': pdfTemplateName,
      'include_basic_info': true,
      'include_extra_fields': true,
      'include_emh': false,
      'is_default': true,
      'is_active': true,
    };
    _store.cardTemplates[id] = row;
    return PdfFichaTemplate.fromJson(row);
  }

  @override
  Future<String> generatePdf({
    required String clientId,
    required String templateId,
  }) async {
    return 'demo://ficha/$clientId/$templateId.pdf';
  }
}
