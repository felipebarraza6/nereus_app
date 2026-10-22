import 'package:nereus_app/features/fichas/domain/ficha_mapping.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';

Future<ApplyAnswersResult> applyMatchedAnswers({
  required List<FichaField> fields,
  required List<FichaValue> existing,
  required Map<String, Object?> answers,
  required Future<void> Function({
    required FichaField field,
    required Object value,
    String? existingId,
  }) write,
}) async {
  final byDef = {for (final value in existing) value.fieldId: value};
  var applied = 0;
  var skipped = 0;
  for (final field in fields) {
    final raw = matchAnswer(field, answers);
    if (isBlank(raw)) {
      skipped += 1;
      continue;
    }
    await write(
      field: field,
      value: raw!,
      existingId: byDef[field.id]?.id,
    );
    applied += 1;
  }
  return ApplyAnswersResult(applied: applied, skipped: skipped);
}

String displayFor(Object value, {String? unit}) {
  final text = value is bool
      ? (value ? 'Sí' : 'No')
      : '$value';
  if (unit == null || unit.isEmpty) return text;
  return '$text $unit';
}
