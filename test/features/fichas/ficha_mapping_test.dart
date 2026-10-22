import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/features/fichas/domain/ficha_mapping.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/water_templates.dart';

void main() {
  test('tenencias and captacion specs have stable keys', () {
    expect(tenenciasSection.key, 'derechos_agua');
    expect(captacionSection.key, 'captacion');
    expect(tenenciasSection.fields.map((f) => f.key), containsAll(['derechos_ls', 'rol_dga', 'tipo_derecho']));
    expect(captacionSection.fields.map((f) => f.key), contains('tipo_punto'));
  });

  test('questionsFromFields uses field key as question id', () {
    final questions = questionsFromFields([
      const FichaField(
        id: 'uuid-long',
        name: 'Caudal otorgado',
        key: 'derechos_ls',
        fieldType: 'DECIMAL',
        required: true,
      ),
      const FichaField(
        id: 'uuid-bool',
        name: 'Tiene bomba',
        key: 'tiene_bomba',
        fieldType: 'BOOLEAN',
      ),
    ]);
    expect(questions, hasLength(2));
    expect(questions.first.id, 'derechos_ls');
    expect(questions.first.type, LevantamientoQuestionType.number);
    expect(questions.last.type, LevantamientoQuestionType.boolean);
  });

  test('matchAnswer reads key, short id, then full id', () {
    const field = FichaField(
      id: 'abcdef12-9999',
      name: 'Rol DGA',
      key: 'rol_dga',
      fieldType: 'TEXT',
    );
    expect(matchAnswer(field, {'rol_dga': 'R-1'}), 'R-1');
    expect(matchAnswer(field, {'abcdef12': 'R-2'}), 'R-2');
    expect(matchAnswer(field, {'abcdef12-9999': 'R-3'}), 'R-3');
    expect(matchAnswer(field, {'other': 'x'}), isNull);
  });

  test('field group uses nested id not name', () {
    final field = FichaField.fromJson({
      'id': 9,
      'name': 'Caudal otorgado',
      'key': 'derechos_ls',
      'field_type': 'DECIMAL',
      'group': {'id': 3, 'name': 'Tenencias', 'key': 'derechos_agua'},
    });
    expect(field.groupId, '3');
    expect(field.groupKey, 'derechos_agua');
    expect(field.groupName, 'Tenencias');
  });

  test('slugify strips punctuation and edges', () {
    expect(slugify('Ficha de tenencias'), 'ficha-de-tenencias');
    expect(slugify('  --Hola--  '), 'hola');
  });
}
