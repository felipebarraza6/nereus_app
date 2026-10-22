import 'package:nereus_app/core/json_util.dart';

class FichaSection {
  const FichaSection({
    required this.id,
    required this.name,
    required this.key,
    this.description,
    this.color,
    this.icon,
    this.displayOrder = 0,
  });

  final String id;
  final String name;
  final String key;
  final String? description;
  final String? color;
  final String? icon;
  final int displayOrder;

  bool get isTenencias => key == 'derechos_agua';
  bool get isCaptacion => key == 'captacion';

  factory FichaSection.fromJson(Map<String, dynamic> json) {
    return FichaSection(
      id: asString(json['id']),
      name: asString(json['name']),
      key: asString(json['key']),
      description: asStringOrNull(json['description']),
      color: asStringOrNull(json['color']),
      icon: asStringOrNull(json['icon']),
      displayOrder: asInt(json['display_order']),
    );
  }
}

class FichaField {
  const FichaField({
    required this.id,
    required this.name,
    required this.key,
    this.fieldType = 'TEXT',
    this.unit,
    this.options = const [],
    this.required = false,
    this.groupId,
    this.groupKey,
    this.groupName,
  });

  final String id;
  final String name;
  final String key;
  final String fieldType;
  final String? unit;
  final List<String> options;
  final bool required;
  final String? groupId;
  final String? groupKey;
  final String? groupName;

  factory FichaField.fromJson(Map<String, dynamic> json) {
    return FichaField(
      id: asString(json['id']),
      name: asString(json['name']),
      key: asString(json['key']),
      fieldType: asString(json['field_type'], fallback: 'TEXT'),
      unit: asStringOrNull(json['unit']),
      options: _parseOptions(json['options']),
      required: json['is_required'] == true,
      groupId: _refId(json['group']),
      groupKey: asStringOrNull(
        json['group_key'] ??
            (json['group'] is Map ? (json['group'] as Map)['key'] : null),
      ),
      groupName: asStringOrNull(
        json['group_name'] ??
            (json['group'] is Map ? (json['group'] as Map)['name'] : null),
      ),
    );
  }
}

String? _refId(dynamic value) {
  if (value == null) return null;
  if (value is Map) return asStringOrNull(value['id']);
  return asStringOrNull(value);
}

List<String> _parseOptions(dynamic raw) {
  if (raw is! List) return const [];
  return [
    for (final item in raw)
      if (item is String)
        item
      else if (item is Map)
        asString(item['label'] ?? item['value']),
  ].where((value) => value.isNotEmpty).toList();
}

class FichaValue {
  const FichaValue({
    required this.id,
    required this.clientId,
    required this.fieldId,
    this.fieldKey,
    this.displayValue,
    this.raw,
  });

  final String id;
  final String clientId;
  final String fieldId;
  final String? fieldKey;
  final String? displayValue;
  final Object? raw;

  factory FichaValue.fromJson(Map<String, dynamic> json) {
    return FichaValue(
      id: asString(json['id']),
      clientId: asString(json['client']),
      fieldId: asString(json['field_definition']),
      fieldKey: asStringOrNull(json['field_key']),
      displayValue: asStringOrNull(json['display_value'] ?? json['value']),
      raw: json['value'],
    );
  }
}

class PdfFichaTemplate {
  const PdfFichaTemplate({
    required this.id,
    required this.name,
    this.isDefault = false,
  });

  final String id;
  final String name;
  final bool isDefault;

  factory PdfFichaTemplate.fromJson(Map<String, dynamic> json) {
    return PdfFichaTemplate(
      id: asString(json['id']),
      name: asString(json['name']),
      isDefault: json['is_default'] == true,
    );
  }
}

enum LevantamientoQuestionType { text, number, boolean, select, date, url, file }

class LevantamientoQuestion {
  const LevantamientoQuestion({
    required this.id,
    required this.label,
    this.type = LevantamientoQuestionType.text,
    this.required = false,
    this.options = const [],
  });

  final String id;
  final String label;
  final LevantamientoQuestionType type;
  final bool required;
  final List<String> options;

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type.name,
        'label': label,
        'required': required,
        if (options.isNotEmpty) 'options': options,
      };

  factory LevantamientoQuestion.fromJson(Map<String, dynamic> json) {
    final rawType = asString(json['type'], fallback: 'text').toLowerCase();
    return LevantamientoQuestion(
      id: asString(json['id']),
      label: asString(json['label']),
      type: LevantamientoQuestionType.values.firstWhere(
        (value) => value.name == rawType,
        orElse: () => LevantamientoQuestionType.text,
      ),
      required: json['required'] == true,
      options: [
        if (json['options'] is List)
          for (final item in json['options'] as List)
            if (item is String) item,
      ],
    );
  }
}

class LevantamientoTemplate {
  const LevantamientoTemplate({
    required this.id,
    required this.name,
    this.description,
    this.questions = const [],
  });

  final String id;
  final String name;
  final String? description;
  final List<LevantamientoQuestion> questions;

  factory LevantamientoTemplate.fromJson(Map<String, dynamic> json) {
    return LevantamientoTemplate(
      id: asString(json['id']),
      name: asString(json['name']),
      description: asStringOrNull(json['description']),
      questions: [
        for (final item in asMapList(json['questions']))
          LevantamientoQuestion.fromJson(item),
      ],
    );
  }
}

class Levantamiento {
  const Levantamiento({
    required this.id,
    required this.title,
    this.slug,
    this.status = 'DRAFT',
    this.questions = const [],
  });

  final String id;
  final String title;
  final String? slug;
  final String status;
  final List<LevantamientoQuestion> questions;

  bool get isActive => status == 'ACTIVE';

  factory Levantamiento.fromJson(Map<String, dynamic> json) {
    return Levantamiento(
      id: asString(json['id']),
      title: asString(json['title']),
      slug: asStringOrNull(json['slug']),
      status: asString(json['status'], fallback: 'DRAFT'),
      questions: [
        for (final item in asMapList(json['questions']))
          LevantamientoQuestion.fromJson(item),
      ],
    );
  }
}

class LevantamientoRespuesta {
  const LevantamientoRespuesta({
    required this.id,
    required this.surveyId,
    this.clientId,
    this.answers = const {},
    this.createdAt,
  });

  final String id;
  final String surveyId;
  final String? clientId;
  final Map<String, Object?> answers;
  final DateTime? createdAt;

  factory LevantamientoRespuesta.fromJson(Map<String, dynamic> json) {
    final raw = json['answers'];
    return LevantamientoRespuesta(
      id: asString(json['id']),
      surveyId: asString(json['survey']),
      clientId: asStringOrNull(json['client']),
      answers: raw is Map
          ? Map<String, Object?>.from(raw)
          : const {},
      createdAt: asDateTime(json['created'] ?? json['created_at']),
    );
  }
}

class ApplyAnswersResult {
  const ApplyAnswersResult({required this.applied, required this.skipped});

  final int applied;
  final int skipped;
}
