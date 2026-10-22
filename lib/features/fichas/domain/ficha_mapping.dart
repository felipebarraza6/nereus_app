import 'package:nereus_app/features/fichas/domain/ficha_models.dart';

LevantamientoQuestionType questionTypeForField(String fieldType) {
  switch (fieldType.toUpperCase()) {
    case 'BOOLEAN':
      return LevantamientoQuestionType.boolean;
    case 'SELECT':
      return LevantamientoQuestionType.select;
    case 'MULTISELECT':
      return LevantamientoQuestionType.multiselect;
    case 'INTEGER':
      return LevantamientoQuestionType.integer;
    case 'DECIMAL':
      return LevantamientoQuestionType.decimal;
    case 'NUMBER':
      return LevantamientoQuestionType.number;
    case 'DATE':
      return LevantamientoQuestionType.date;
    case 'DATETIME':
      return LevantamientoQuestionType.datetime;
    case 'URL':
      return LevantamientoQuestionType.url;
    case 'EMAIL':
      return LevantamientoQuestionType.email;
    case 'PHONE':
      return LevantamientoQuestionType.phone;
    case 'FILE':
      return LevantamientoQuestionType.file;
    case 'IMAGE':
      return LevantamientoQuestionType.image;
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
  if (value is List) return value.isEmpty;
  return false;
}

String slugify(String title) {
  return title
      .toLowerCase()
      .replaceAll(RegExp('[^a-z0-9]+'), '-')
      .replaceAll(RegExp(r'^-+|-+$'), '');
}

/// Validates a single answer against its question type.
///
/// Returns `null` when valid, or a short Spanish error message.
String? validateAnswer(LevantamientoQuestion question, Object? value) {
  if (question.required && isBlank(value)) {
    return 'Este campo es obligatorio';
  }
  if (isBlank(value)) return null;

  final raw = value is String ? value.trim() : value.toString();

  switch (question.type) {
    case LevantamientoQuestionType.number:
    case LevantamientoQuestionType.decimal:
      if (num.tryParse(raw) == null) {
        return 'Ingresa un número válido';
      }
    case LevantamientoQuestionType.integer:
      if (int.tryParse(raw) == null) {
        return 'Ingresa un número entero';
      }
    case LevantamientoQuestionType.email:
      final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
      if (!emailRegex.hasMatch(raw)) {
        return 'Ingresa un correo válido';
      }
    case LevantamientoQuestionType.url:
      final urlRegex = RegExp(r'^https?://[^\s]+');
      if (!urlRegex.hasMatch(raw)) {
        return 'Ingresa una URL que empiece con http:// o https://';
      }
    case LevantamientoQuestionType.phone:
      final digits = raw.replaceAll(RegExp('[^0-9+]'), '');
      if (digits.length < 8) {
        return 'Ingresa un teléfono válido';
      }
    case LevantamientoQuestionType.select:
      if (question.options.isNotEmpty && !question.options.contains(raw)) {
        return 'Elige una opción válida';
      }
    case LevantamientoQuestionType.multiselect:
      final list = value is List ? value : [raw];
      if (question.options.isNotEmpty) {
        for (final item in list) {
          if (!question.options.contains(item)) {
            return 'Elige opciones válidas';
          }
        }
      }
    case LevantamientoQuestionType.boolean:
    case LevantamientoQuestionType.text:
    case LevantamientoQuestionType.date:
    case LevantamientoQuestionType.datetime:
    case LevantamientoQuestionType.file:
    case LevantamientoQuestionType.image:
      return null;
  }
  return null;
}
