import 'package:nereus_app/core/json_util.dart';

enum VisitSpecialty { hidraulica, electrica }

enum ActivityResult { completa, parcial, noRealizada }

enum TechnicalDecision { aprobada, observaciones, correccion }

class StromProject {
  const StromProject({
    required this.id,
    required this.subject,
    this.ticketNumber = '',
    this.status = '',
    this.clientName,
    this.typeName = '',
    this.categoryName = '',
    this.description = '',
  });

  final String id;
  final String subject;
  final String ticketNumber;
  final String status;
  final String? clientName;
  final String typeName;
  final String categoryName;
  final String description;

  bool get looksLikeSupport {
    final blob = '$typeName $categoryName ${projectKind(this)}'.toLowerCase();
    return blob.contains('soporte');
  }

  bool get looksLikeMaintenance {
    return projectKind(this) == 'MANTENCION' ||
        typeName.toLowerCase().contains('mantenci');
  }

  factory StromProject.fromJson(Map<String, dynamic> json) {
    return StromProject(
      id: asString(json['id']),
      subject: asString(json['subject']),
      ticketNumber: asString(json['ticket_number']),
      status: asString(json['status']),
      clientName: asStringOrNull(json['client_name']),
      typeName: asString(json['ticket_type_name']),
      categoryName: asString(json['category_name']),
      description: asString(json['description']),
    );
  }
}

class StromVisit {
  const StromVisit({
    required this.id,
    required this.number,
    required this.ticketId,
    required this.scheduledDate,
    this.status = 'SCHEDULED',
    this.address = '',
    this.notes = '',
    this.ticketSubject = '',
    this.clientName,
    this.durationMinutes = 60,
    this.items = const [],
    this.decision,
    this.feedbackId,
    this.attachmentCount = 0,
  });

  final String id;
  final String number;
  final String ticketId;
  final DateTime? scheduledDate;
  final String status;
  final String address;
  final String notes;
  final String ticketSubject;
  final String? clientName;
  final int durationMinutes;
  final List<StromActivity> items;
  final TechnicalDecision? decision;
  final String? feedbackId;
  final int attachmentCount;

  VisitSpecialty? get specialty => specialtyFromNotes(notes);

  String get crew => lineValue(notes, 'CUADRILLA');

  bool get isCompleted => status == 'COMPLETED';

  factory StromVisit.fromJson(Map<String, dynamic> json) {
    final feedback = asMap(json['feedback']);
    final diagnosis = asString(feedback['diagnosis']);
    return StromVisit(
      id: asString(json['id']),
      number: asString(json['work_order_number']),
      ticketId: asString(json['ticket']),
      scheduledDate: asDateTime(json['scheduled_date']),
      status: asString(json['status'], fallback: 'SCHEDULED'),
      address: asString(json['location_address']),
      notes: asString(json['notes']),
      ticketSubject: asString(json['ticket_subject']),
      clientName: asStringOrNull(json['client_name']),
      durationMinutes: asInt(json['estimated_duration_minutes'], fallback: 60),
      items: asMapList(json['checklist_items']).map(StromActivity.fromJson).toList(),
      decision: decisionFromDiagnosis(diagnosis),
      feedbackId: asStringOrNull(feedback['id']),
      attachmentCount: asMapList(json['attachments']).length,
    );
  }
}

class StromActivity {
  const StromActivity({
    required this.id,
    required this.workOrderId,
    required this.description,
    this.result,
    this.measurement = '',
    this.observation = '',
    this.completed = false,
  });

  final String id;
  final String workOrderId;
  final String description;
  final ActivityResult? result;
  final String measurement;
  final String observation;
  final bool completed;

  factory StromActivity.fromJson(Map<String, dynamic> json) {
    final parsed = parseActivityNotes(asString(json['notes']));
    return StromActivity(
      id: asString(json['id']),
      workOrderId: asString(json['work_order']),
      description: asString(json['description']),
      result: parsed.result,
      measurement: parsed.measurement,
      observation: parsed.observation,
      completed: json['is_completed'] == true,
    );
  }
}

class ParsedActivityNotes {
  const ParsedActivityNotes({
    this.result,
    this.measurement = '',
    this.observation = '',
  });

  final ActivityResult? result;
  final String measurement;
  final String observation;
}

VisitSpecialty? specialtyFromNotes(String notes) {
  switch (lineValue(notes, 'ESPECIALIDAD')) {
    case 'HIDRAULICA':
      return VisitSpecialty.hidraulica;
    case 'ELECTRICA':
      return VisitSpecialty.electrica;
    default:
      return null;
  }
}

String projectKind(StromProject project) {
  final fromDescription = lineValue(project.description, 'TIPO');
  if (fromDescription.isNotEmpty) return fromDescription;
  return lineValue(project.categoryName, 'TIPO');
}

String projectKindLabel(StromProject project) {
  if (project.looksLikeSupport) return 'Soporte';
  if (project.looksLikeMaintenance) return 'Mantención';
  return 'Proyecto';
}

String composeProjectDescription({
  required String kind,
  required String client,
  required String po,
  required String committed,
  required String responsible,
}) {
  return [
    'TIPO=$kind',
    if (client.trim().isNotEmpty) 'CLIENTE=${client.trim()}',
    if (po.trim().isNotEmpty) 'OC=${po.trim()}',
    if (committed.trim().isNotEmpty) 'COMPROMISO=${committed.trim()}',
    if (responsible.trim().isNotEmpty) 'RESPONSABLE=${responsible.trim()}',
  ].join('\n');
}

String projectStatusLabel(String status) {
  switch (status) {
    case 'OPEN':
      return 'Abierto';
    case 'IN_PROGRESS':
      return 'En ejecución';
    case 'WAITING':
      return 'En espera';
    case 'RESOLVED':
      return 'Resuelto';
    case 'CLOSED':
      return 'Cerrado';
    case 'CANCELLED':
      return 'Cancelado';
    default:
      return status.isEmpty ? 'Sin estado' : status;
  }
}

String visitStatusLabel(String status) {
  switch (status) {
    case 'SCHEDULED':
      return 'Programada';
    case 'IN_ROUTE':
      return 'En ruta';
    case 'ON_SITE':
      return 'En terreno';
    case 'COMPLETED':
      return 'Ejecutada';
    case 'CANCELLED':
      return 'Cancelada';
    default:
      return status.isEmpty ? 'Sin estado' : status;
  }
}

String specialtyLabel(VisitSpecialty specialty) {
  return specialty == VisitSpecialty.hidraulica ? 'Hidráulica' : 'Eléctrica';
}

String resultLabel(ActivityResult result) {
  switch (result) {
    case ActivityResult.completa:
      return 'Completa';
    case ActivityResult.parcial:
      return 'Parcial';
    case ActivityResult.noRealizada:
      return 'No realizada';
  }
}

String decisionLabel(TechnicalDecision decision) {
  switch (decision) {
    case TechnicalDecision.aprobada:
      return 'Aprobada';
    case TechnicalDecision.observaciones:
      return 'Aprobada con observaciones';
    case TechnicalDecision.correccion:
      return 'Requiere corrección';
  }
}

String lineValue(String notes, String key) {
  for (final line in notes.split('\n')) {
    final prefix = '$key=';
    if (line.startsWith(prefix)) return line.substring(prefix.length).trim();
  }
  return '';
}

String composeVisitNotes({
  required VisitSpecialty specialty,
  required String crew,
  required String body,
}) {
  final lines = <String>[
    'ESPECIALIDAD=${specialty == VisitSpecialty.hidraulica ? 'HIDRAULICA' : 'ELECTRICA'}',
    if (crew.trim().isNotEmpty) 'CUADRILLA=${crew.trim()}',
    if (body.trim().isNotEmpty) body.trim(),
  ];
  return lines.join('\n');
}

String visitBody(String notes) {
  return notes
      .split('\n')
      .where((line) => !line.startsWith('ESPECIALIDAD=') && !line.startsWith('CUADRILLA='))
      .join('\n')
      .trim();
}

ParsedActivityNotes parseActivityNotes(String notes) {
  ActivityResult? result;
  var measurement = '';
  final observation = <String>[];
  for (final line in notes.split('\n')) {
    if (line.startsWith('RESULTADO=')) {
      result = switch (line.substring('RESULTADO='.length).trim()) {
        'COMPLETA' => ActivityResult.completa,
        'PARCIAL' => ActivityResult.parcial,
        'NO_REALIZADA' => ActivityResult.noRealizada,
        _ => result,
      };
    } else if (line.startsWith('MEDICION=')) {
      measurement = line.substring('MEDICION='.length).trim();
    } else if (line.trim().isNotEmpty) {
      observation.add(line);
    }
  }
  return ParsedActivityNotes(
    result: result,
    measurement: measurement,
    observation: observation.join('\n'),
  );
}

String composeActivityNotes({
  required ActivityResult result,
  required String measurement,
  required String observation,
}) {
  final code = switch (result) {
    ActivityResult.completa => 'COMPLETA',
    ActivityResult.parcial => 'PARCIAL',
    ActivityResult.noRealizada => 'NO_REALIZADA',
  };
  return [
    'RESULTADO=$code',
    if (measurement.trim().isNotEmpty) 'MEDICION=${measurement.trim()}',
    if (observation.trim().isNotEmpty) observation.trim(),
  ].join('\n');
}

TechnicalDecision? decisionFromDiagnosis(String diagnosis) {
  return switch (lineValue(diagnosis, 'CHECK')) {
    'APROBADA' => TechnicalDecision.aprobada,
    'OBSERVACIONES' => TechnicalDecision.observaciones,
    'CORRECCION' => TechnicalDecision.correccion,
    _ => null,
  };
}

String composeDiagnosis(TechnicalDecision decision, String note) {
  final code = switch (decision) {
    TechnicalDecision.aprobada => 'APROBADA',
    TechnicalDecision.observaciones => 'OBSERVACIONES',
    TechnicalDecision.correccion => 'CORRECCION',
  };
  return [
    'CHECK=$code',
    if (note.trim().isNotEmpty) note.trim(),
  ].join('\n');
}

bool canMarkVisitExecuted(List<StromActivity> items) {
  if (items.isEmpty) return false;
  return items.every((item) => item.result != null);
}
