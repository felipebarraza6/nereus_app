import 'package:flutter/material.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/theme/tokens.dart';

/// Etapas iniciales para una sucursal de agua que aún no tiene pipeline.
const defaultWaterStages = <({
  String name,
  int probability,
  String color,
  bool closed,
  bool won,
})>[
  (name: 'Contacto', probability: 10, color: '#0F766E', closed: false, won: false),
  (name: 'Visita', probability: 30, color: '#0284C7', closed: false, won: false),
  (name: 'Propuesta', probability: 60, color: '#D97706', closed: false, won: false),
  (name: 'Ganada', probability: 100, color: '#15803D', closed: true, won: true),
  (name: 'Perdida', probability: 0, color: '#E11D48', closed: true, won: false),
];

const leadStatusLabels = <String, String>{
  'NEW': 'Nuevo',
  'CONTACTED': 'Contactado',
  'QUALIFIED': 'Calificado',
  'CONVERTED': 'Cliente',
  'LOST': 'Perdido',
  'ARCHIVED': 'Archivado',
};

String leadStatusLabel(String code) => leadStatusLabels[code] ?? code;

const activityTypeLabels = <String, String>{
  'CALL': 'Llamada',
  'EMAIL': 'Correo',
  'MEETING': 'Reunión',
  'NOTE': 'Nota',
  'TASK': 'Tarea',
  'QUOTE': 'Cotización',
  'STAGE_CHANGE': 'Cambio de etapa',
  'OTHER': 'Otro',
};

String activityTypeLabel(String code) => activityTypeLabels[code] ?? code;

String clp(num value) {
  final rounded = value.round();
  final digits = rounded.abs().toString();
  final buffer = StringBuffer();
  for (var i = 0; i < digits.length; i++) {
    if (i > 0 && (digits.length - i) % 3 == 0) buffer.write('.');
    buffer.write(digits[i]);
  }
  return '${rounded < 0 ? '-' : ''}\$$buffer';
}

Color colorFromHex(String? hex, {Color fallback = NereusTokens.teal}) {
  final raw = (hex ?? '').replaceAll('#', '').trim();
  if (raw.length != 6) return fallback;
  final value = int.tryParse(raw, radix: 16);
  if (value == null) return fallback;
  return Color(0xFF000000 | value);
}

@immutable
class LeadSourceItem {
  const LeadSourceItem({
    required this.id,
    required this.name,
    this.description,
    this.color,
    this.isActive = true,
  });

  final String id;
  final String name;
  final String? description;
  final String? color;
  final bool isActive;

  factory LeadSourceItem.fromJson(Map<String, dynamic> json) => LeadSourceItem(
    id: asString(json['id']),
    name: asString(json['name'], fallback: 'Fuente'),
    description: asStringOrNull(json['description']),
    color: asStringOrNull(json['color']),
    isActive: json['is_active'] != false,
  );
}

@immutable
class FollowUpCategoryItem {
  const FollowUpCategoryItem({
    required this.id,
    required this.name,
    this.color,
    this.order = 0,
    this.isActive = true,
  });

  final String id;
  final String name;
  final String? color;
  final int order;
  final bool isActive;

  factory FollowUpCategoryItem.fromJson(Map<String, dynamic> json) =>
      FollowUpCategoryItem(
        id: asString(json['id']),
        name: asString(json['name'], fallback: 'Categoría'),
        color: asStringOrNull(json['color']),
        order: asInt(json['order']),
        isActive: json['is_active'] != false,
      );
}

@immutable
class OpportunityStageItem {
  const OpportunityStageItem({
    required this.id,
    required this.name,
    this.description,
    this.order = 0,
    this.probability = 0,
    this.color,
    this.isClosed = false,
    this.isWon = false,
  });

  final String id;
  final String name;
  final String? description;
  final int order;
  final double probability;
  final String? color;
  final bool isClosed;
  final bool isWon;

  bool get isLost => isClosed && !isWon;

  factory OpportunityStageItem.fromJson(Map<String, dynamic> json) =>
      OpportunityStageItem(
        id: asString(json['id']),
        name: asString(json['name'], fallback: 'Etapa'),
        description: asStringOrNull(json['description']),
        order: asInt(json['order']),
        probability: asDoubleOrNull(json['probability']) ?? 0,
        color: asStringOrNull(json['color']),
        isClosed: json['is_closed'] == true,
        isWon: json['is_won'] == true,
      );
}

@immutable
class OpportunityItem {
  const OpportunityItem({
    required this.id,
    required this.title,
    this.description,
    this.stageId,
    this.stageName,
    this.clientId,
    this.clientName,
    this.leadId,
    this.leadName,
    this.estimatedValue = 0,
    this.actualValue = 0,
    this.weightedValue = 0,
    this.expectedCloseDate,
    this.closedAt,
    this.assignedToName,
  });

  final String id;
  final String title;
  final String? description;
  final String? stageId;
  final String? stageName;
  final String? clientId;
  final String? clientName;
  final String? leadId;
  final String? leadName;
  final double estimatedValue;
  final double actualValue;
  final double weightedValue;
  final String? expectedCloseDate;
  final DateTime? closedAt;
  final String? assignedToName;

  String? get notes => description;
  double get probability => weightedValue > 0 && estimatedValue > 0
      ? (weightedValue / estimatedValue) * 100
      : 0;
  bool get isWon => (stageName ?? '').toLowerCase().contains('ganad');
  bool get isLost => (stageName ?? '').toLowerCase().contains('perdid');

  factory OpportunityItem.fromJson(Map<String, dynamic> json) {
    final stage = json['stage'];
    final client = json['client'];
    final lead = json['lead'];
    final assigned = json['assigned_to'];
    return OpportunityItem(
      id: asString(json['id']),
      title: asString(json['title'], fallback: 'Oportunidad'),
      description: asStringOrNull(json['description'] ?? json['notes']),
      stageId:
          stage is Map ? asStringOrNull(stage['id']) : asStringOrNull(stage),
      stageName: asStringOrNull(json['stage_name']) ??
          (stage is Map ? asStringOrNull(stage['name']) : null),
      clientId: client is Map
          ? asStringOrNull(client['id'])
          : asStringOrNull(client),
      clientName: asStringOrNull(json['client_name']) ??
          (client is Map ? asStringOrNull(client['name']) : null),
      leadId: lead is Map ? asStringOrNull(lead['id']) : asStringOrNull(lead),
      leadName: asStringOrNull(json['lead_name']) ??
          (lead is Map ? asStringOrNull(lead['full_name']) : null),
      estimatedValue: asDoubleOrNull(json['estimated_value']) ?? 0,
      actualValue: asDoubleOrNull(json['actual_value']) ?? 0,
      weightedValue: asDoubleOrNull(json['weighted_value']) ?? 0,
      expectedCloseDate: asStringOrNull(json['expected_close_date']),
      closedAt: asDateTime(json['closed_at']),
      assignedToName: asStringOrNull(json['assigned_to_name']) ??
          (assigned is Map
              ? (asStringOrNull(assigned['full_name']) ??
                  asStringOrNull(assigned['username']))
              : null),
    );
  }
}

@immutable
class LeadItem {
  const LeadItem({
    required this.id,
    required this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.company,
    this.status = 'NEW',
    this.score = 0,
    this.sourceId,
    this.sourceName,
    this.sourceDetail,
    this.assignedToName,
    this.notes,
    this.convertedClientId,
  });

  final String id;
  final String firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? company;
  final String status;
  final int score;
  final String? sourceId;
  final String? sourceName;
  final String? sourceDetail;
  final String? assignedToName;
  final String? notes;
  final String? convertedClientId;

  String get name {
    final full = '$firstName ${lastName ?? ''}'.trim();
    return full.isNotEmpty ? full : (company ?? 'Prospecto');
  }

  bool get canConvert => status == 'CONTACTED' || status == 'QUALIFIED';

  factory LeadItem.fromJson(Map<String, dynamic> json) {
    final converted = json['converted_to_client'];
    final source = json['source'];
    final assigned = json['assigned_to'];
    return LeadItem(
      id: asString(json['id']),
      firstName: asString(json['first_name'], fallback: 'Prospecto'),
      lastName: asStringOrNull(json['last_name']),
      email: asStringOrNull(json['email']),
      phone: asStringOrNull(json['phone']),
      company: asStringOrNull(json['company']),
      status: asString(json['status'], fallback: 'NEW'),
      score: asInt(json['score']),
      sourceId: source is Map
          ? asStringOrNull(source['id'])
          : asStringOrNull(source),
      sourceName: asStringOrNull(json['source_name']) ??
          (source is Map ? asStringOrNull(source['name']) : null),
      sourceDetail: asStringOrNull(json['source_detail']),
      assignedToName: asStringOrNull(json['assigned_to_name']) ??
          (assigned is Map
              ? (asStringOrNull(assigned['full_name']) ??
                  asStringOrNull(assigned['username']))
              : null),
      notes: asStringOrNull(json['notes']),
      convertedClientId: converted is Map
          ? asStringOrNull(converted['id'])
          : asStringOrNull(converted),
    );
  }
}

@immutable
class FollowUpItem {
  const FollowUpItem({
    required this.id,
    required this.description,
    this.activityType = 'NOTE',
    this.categoryId,
    this.categoryName,
    this.categoryColor,
    this.scheduledAt,
    this.completedAt,
    this.isCompleted = false,
    this.createdByName,
    this.assignedToName,
  });

  final String id;
  final String description;
  final String activityType;
  final String? categoryId;
  final String? categoryName;
  final String? categoryColor;
  final DateTime? scheduledAt;
  final DateTime? completedAt;
  final bool isCompleted;
  final String? createdByName;
  final String? assignedToName;

  factory FollowUpItem.fromJson(Map<String, dynamic> json) {
    final cat = json['category'];
    return FollowUpItem(
      id: asString(json['id']),
      description: asString(json['description']),
      activityType: asString(json['activity_type'], fallback: 'NOTE'),
      categoryId: cat is Map ? asStringOrNull(cat['id']) : asStringOrNull(cat),
      categoryName: asStringOrNull(json['category_name']),
      categoryColor: asStringOrNull(json['category_color']),
      scheduledAt: asDateTime(json['scheduled_at']),
      completedAt: asDateTime(json['completed_at']),
      isCompleted: json['is_completed'] == true,
      createdByName: asStringOrNull(json['created_by_name']),
      assignedToName: asStringOrNull(json['assigned_to_name']),
    );
  }
}

@immutable
class ProposalItem {
  const ProposalItem({
    required this.id,
    this.productId,
    this.productName,
    this.serviceId,
    this.serviceName,
    this.quantity = 1,
    this.unitPrice = 0,
    this.discount = 0,
    this.totalPrice = 0,
    this.notes,
  });

  final String id;
  final String? productId;
  final String? productName;
  final String? serviceId;
  final String? serviceName;
  final double quantity;
  final double unitPrice;
  final double discount;
  final double totalPrice;
  final String? notes;

  String get label {
    final name = productName ?? serviceName;
    if (name != null && name.isNotEmpty) return name;
    if (notes != null && notes!.isNotEmpty) return notes!;
    return 'Ítem de propuesta';
  }

  factory ProposalItem.fromJson(Map<String, dynamic> json) {
    final prod = json['product'];
    final srv = json['service'];
    return ProposalItem(
      id: asString(json['id']),
      productId:
          prod is Map ? asStringOrNull(prod['id']) : asStringOrNull(prod),
      productName: asStringOrNull(json['product_name']),
      serviceId: srv is Map ? asStringOrNull(srv['id']) : asStringOrNull(srv),
      serviceName: asStringOrNull(json['service_name']),
      quantity: asDoubleOrNull(json['quantity']) ?? 1,
      unitPrice: asDoubleOrNull(json['unit_price']) ?? 0,
      discount: asDoubleOrNull(json['discount']) ?? 0,
      totalPrice: asDoubleOrNull(json['total_price']) ?? 0,
      notes: asStringOrNull(json['notes']),
    );
  }
}

@immutable
class CrmDashboardSummary {
  const CrmDashboardSummary({
    this.newLeads = 0,
    this.convertedLeads = 0,
    this.openOpportunities = 0,
    this.openValue = 0,
    this.openWeightedValue = 0,
    this.wonCount = 0,
    this.wonValue = 0,
    this.completedActivities = 0,
    this.overdueActivities = 0,
    this.todayActivities = 0,
    this.totalCustomers = 0,
  });

  final int newLeads;
  final int convertedLeads;
  final int openOpportunities;
  final double openValue;
  final double openWeightedValue;
  final int wonCount;
  final double wonValue;
  final int completedActivities;
  final int overdueActivities;
  final int todayActivities;
  final int totalCustomers;

  int get activitiesDueToday => todayActivities;

  factory CrmDashboardSummary.fromJson(Map<String, dynamic> json) {
    final leads = asMap(json['leads']);
    final opps = asMap(json['opportunities']);
    final acts = asMap(json['activities']);
    final cust = asMap(json['customers']);
    return CrmDashboardSummary(
      newLeads: asInt(leads['new']),
      convertedLeads: asInt(leads['converted']),
      openOpportunities: asInt(opps['open_count']),
      openValue: asDoubleOrNull(opps['open_value']) ?? 0,
      openWeightedValue: asDoubleOrNull(opps['open_weighted']) ?? 0,
      wonCount: asInt(opps['won_count']),
      wonValue: asDoubleOrNull(opps['won_value']) ?? 0,
      completedActivities: asInt(acts['completed']),
      overdueActivities: asInt(acts['overdue']),
      todayActivities: asInt(acts['today']),
      totalCustomers: asInt(cust['total']),
    );
  }
}
