import 'package:dio/dio.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/crm/domain/crm_models.dart';

class CrmRepository {
  CrmRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Never _rethrow(Object error, StackTrace stack) =>
      throw ApiError.fromAny(error, stack);

  Future<CrmDashboardSummary> summary({String? start, String? end}) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/crm/dashboard/summary/',
        queryParameters: {
          if (start != null && start.isNotEmpty) 'start': start,
          if (end != null && end.isNotEmpty) 'end': end,
        },
      );
      return CrmDashboardSummary.fromJson(response.data ?? const {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<LeadSourceItem>> leadSources() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/crm/lead-sources/',
        queryParameters: {'page_size': 100, 'ordering': 'name'},
      );
      return asResults(response.data).map(LeadSourceItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<LeadSourceItem> createLeadSource({
    required String name,
    String? description,
    String? color,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/crm/lead-sources/',
        data: {
          'name': name,
          if (description != null) 'description': description,
          if (color != null) 'color': color,
        },
      );
      return LeadSourceItem.fromJson(response.data ?? const {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<LeadItem>> leads({
    String? status,
    String? search,
    String? sourceId,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/crm/leads/',
        queryParameters: {
          'page_size': 100,
          'ordering': '-created',
          if (status != null && status.isNotEmpty) 'status': status,
          if (search != null && search.isNotEmpty) 'search': search,
          if (sourceId != null && sourceId.isNotEmpty) 'source': sourceId,
        },
      );
      return asResults(response.data).map(LeadItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<LeadItem> createLead({
    required String firstName,
    String? lastName,
    String? email,
    String? phone,
    String? company,
    String? notes,
    String? sourceId,
    int score = 0,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/crm/leads/',
        data: {
          'first_name': firstName,
          'last_name': lastName ?? '',
          'email': email ?? '',
          'phone': phone ?? '',
          'company': company ?? '',
          'notes': notes ?? '',
          'status': 'NEW',
          'score': score,
          if (sourceId != null && sourceId.isNotEmpty) 'source': sourceId,
        },
      );
      return LeadItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<LeadItem> updateLead({
    required String id,
    required String firstName,
    String? lastName,
    String? email,
    String? phone,
    String? company,
    String? notes,
    String? sourceId,
    String? status,
    int? score,
  }) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/crm/leads/$id/',
        data: {
          'first_name': firstName,
          if (lastName != null) 'last_name': lastName,
          if (email != null) 'email': email,
          if (phone != null) 'phone': phone,
          if (company != null) 'company': company,
          if (notes != null) 'notes': notes,
          if (sourceId != null) 'source': sourceId.isEmpty ? null : sourceId,
          if (status != null) 'status': status,
          if (score != null) 'score': score,
        },
      );
      return LeadItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> deleteLead(String id) async {
    try {
      await _dio.delete<dynamic>('/api/crm/leads/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> setLeadStatus({required String id, required String status}) async {
    try {
      await _dio.patch<dynamic>('/api/crm/leads/$id/', data: {'status': status});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<LeadItem> convertLead(String id) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/crm/leads/$id/convert/',
      );
      return LeadItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<OpportunityStageItem>> stages() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/crm/opportunity-stages/',
        queryParameters: {'page_size': 100, 'ordering': 'order'},
      );
      return asResults(response.data).map(OpportunityStageItem.fromJson).toList()
        ..sort((a, b) => a.order.compareTo(b.order));
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> createStage({
    required String name,
    required int order,
    required int probability,
    required String color,
    required bool isClosed,
    required bool isWon,
  }) async {
    try {
      await _dio.post<dynamic>(
        '/api/crm/opportunity-stages/',
        data: {
          'name': name,
          'order': order,
          'probability': probability,
          'color': color,
          'is_closed': isClosed,
          'is_won': isWon,
        },
      );
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> deleteStage(String id) async {
    try {
      await _dio.delete<dynamic>('/api/crm/opportunity-stages/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> seedWaterStages() async {
    final existing = await stages();
    final names = {for (final s in existing) s.name.toLowerCase().trim()};
    for (var i = 0; i < defaultWaterStages.length; i++) {
      final stage = defaultWaterStages[i];
      if (names.contains(stage.name.toLowerCase())) continue;
      await createStage(
        name: stage.name,
        order: i,
        probability: stage.probability,
        color: stage.color,
        isClosed: stage.closed,
        isWon: stage.won,
      );
    }
  }

  Future<List<OpportunityItem>> opportunities({
    String? clientId,
    String? stageId,
    String? search,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/crm/opportunities/',
        queryParameters: {
          'page_size': 100,
          'ordering': '-created',
          if (clientId != null && clientId.isNotEmpty) 'client': clientId,
          if (stageId != null && stageId.isNotEmpty) 'stage': stageId,
          if (search != null && search.isNotEmpty) 'search': search,
        },
      );
      return asResults(response.data).map(OpportunityItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<OpportunityItem> retrieve(String id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/crm/opportunities/$id/',
      );
      return OpportunityItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<OpportunityItem> createOpportunity({
    required String title,
    required String stageId,
    String? description,
    String? notes,
    String? clientId,
    String? leadId,
    double estimatedValue = 0,
    double actualValue = 0,
    String? expectedCloseDate,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/crm/opportunities/',
        data: {
          'title': title,
          'stage_id': stageId,
          'description': description ?? notes ?? '',
          'estimated_value': estimatedValue,
          if (actualValue > 0) 'actual_value': actualValue,
          if (clientId != null && clientId.isNotEmpty) 'client': clientId,
          if (leadId != null && leadId.isNotEmpty) 'lead': leadId,
          if (expectedCloseDate != null && expectedCloseDate.isNotEmpty)
            'expected_close_date': expectedCloseDate,
        },
      );
      return OpportunityItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<OpportunityItem> updateOpportunity({
    required String id,
    required String title,
    String? stageId,
    String? description,
    String? notes,
    String? clientId,
    double? estimatedValue,
    double? actualValue,
    String? expectedCloseDate,
  }) async {
    try {
      final desc = description ?? notes;
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/crm/opportunities/$id/',
        data: {
          'title': title,
          if (stageId != null && stageId.isNotEmpty) 'stage_id': stageId,
          if (desc != null) 'description': desc,
          if (clientId != null) 'client': clientId.isEmpty ? null : clientId,
          if (estimatedValue != null) 'estimated_value': estimatedValue,
          if (actualValue != null) 'actual_value': actualValue,
          if (expectedCloseDate != null)
            'expected_close_date':
                expectedCloseDate.isEmpty ? null : expectedCloseDate,
        },
      );
      return OpportunityItem.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> deleteOpportunity(String id) async {
    try {
      await _dio.delete<dynamic>('/api/crm/opportunities/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> move({required String id, required String stageId}) async {
    try {
      await _dio.post<dynamic>(
        '/api/crm/opportunities/$id/move/',
        data: {'stage_id': stageId},
      );
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<FollowUpCategoryItem>> followUpCategories() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/crm/follow-up-categories/',
        queryParameters: {'page_size': 100, 'ordering': 'order'},
      );
      return asResults(response.data)
          .map(FollowUpCategoryItem.fromJson)
          .toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<FollowUpItem>> activities(String opportunityId) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/crm/opportunity-activities/',
        queryParameters: {
          'opportunity': opportunityId,
          'page_size': 100,
          'ordering': '-created',
        },
      );
      return asResults(response.data).map(FollowUpItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> createActivity({
    required String opportunityId,
    required String activityType,
    required String description,
    String? categoryId,
    DateTime? scheduledAt,
  }) async {
    try {
      await _dio.post<dynamic>(
        '/api/crm/opportunity-activities/',
        data: {
          'opportunity': opportunityId,
          'activity_type': activityType,
          'description': description,
          if (categoryId != null && categoryId.isNotEmpty)
            'category': categoryId,
          if (scheduledAt != null)
            'scheduled_at': scheduledAt.toUtc().toIso8601String(),
        },
      );
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> deleteActivity(String id) async {
    try {
      await _dio.delete<dynamic>('/api/crm/opportunity-activities/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> completeActivity(String id) async {
    try {
      await _dio.post<dynamic>('/api/crm/opportunity-activities/$id/complete/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<ProposalItem>> proposals(String opportunityId) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/crm/opportunity-products/',
        queryParameters: {'opportunity': opportunityId, 'page_size': 100},
      );
      return asResults(response.data).map(ProposalItem.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> createProposal({
    required String opportunityId,
    String? productId,
    String? serviceId,
    double quantity = 1,
    double unitPrice = 0,
    double discount = 0,
    String? notes,
  }) async {
    try {
      await _dio.post<dynamic>(
        '/api/crm/opportunity-products/',
        data: {
          'opportunity': opportunityId,
          if (productId != null && productId.isNotEmpty) 'product': productId,
          if (serviceId != null && serviceId.isNotEmpty) 'service': serviceId,
          'quantity': quantity,
          'unit_price': unitPrice,
          if (discount > 0) 'discount': discount,
          'notes': notes ?? '',
        },
      );
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> deleteProposal(String id) async {
    try {
      await _dio.delete<dynamic>('/api/crm/opportunity-products/$id/');
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }
}
