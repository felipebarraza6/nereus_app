import 'package:nereus_app/features/fichas/domain/ficha_models.dart';

LevantamientoQuestionType questionTypeForField(String fieldType) {
  switch (fieldType.toUpperCase()) {
    case 'BOOLEAN':
      return LevantamientoQuestionType.boolean;
    case 'SELECT':
    case 'MULTISELECT':
      return LevantamientoQuestionType.select;
    case 'NUMBER':
    case 'INTEGER':
    case 'DECIMAL':
      return LevantamientoQuestionType.number;
    case 'DATE':
    case 'DATETIME':
      return LevantamientoQuestionType.date;
    case 'URL':
      return LevantamientoQuestionType.url;
    case 'FILE':
    case 'IMAGE':
      return LevantamientoQuestionType.file;
    default:
      return LevantamientoQuestionType.text;
  }
}

List<LevantamientoQuestion> questionsFromFields(List<FichaField> fields) {
  return [
    for (final field in fields)
      LevantamientoQuestion(
        id: field.key.isNotEmpty ? field.key : field.id,
        label: field.name,
        type: questionTypeForField(field.fieldType),
        required: field.required,
        options: field.options,
      ),
  ];
}

Object? matchAnswer(FichaField field, Map<String, Object?> answers) {
  final key = field.key.trim();
  if (key.isNotEmpty && answers.containsKey(key)) return answers[key];
  final shortId = field.id.length >= 8 ? field.id.substring(0, 8) : field.id;
  if (answers.containsKey(shortId)) return answers[shortId];
  if (answers.containsKey(field.id)) return answers[field.id];
  return null;
}

bool isBlank(Object? value) {
  if (value == null) return true;
  if (value is String) return value.trim().isEmpty;
  return false;
}

String slugify(String title) {
  return title
      .toLowerCase()
      .replaceAll(RegExp('[^a-z0-9]+'), '-')
      .replaceAll(RegExp(r'^-+|-+$'), '');
}
