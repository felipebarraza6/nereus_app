import 'package:dio/dio.dart';
import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';

class StromRepository {
  StromRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Never _rethrow(Object error, StackTrace stack) {
    throw ApiError.fromAny(error, stack);
  }

  Future<List<StromProject>> projects({String? search}) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/support/tickets/',
        queryParameters: {
          'page_size': 50,
          'ordering': '-created',
          if (search != null && search.isNotEmpty) 'search': search,
        },
      );
      return asResults(response.data).map(StromProject.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<StromProject> createProject({
    required String subject,
    required String kind,
    required String client,
    required String po,
    required String committed,
    required String responsible,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/support/tickets/submit/',
        data: {
          'subject': subject,
          'description': composeProjectDescription(
            kind: kind,
            client: client,
            po: po,
            committed: committed,
            responsible: responsible,
          ),
          'category_code': kind == 'SOPORTE' ? 'soporte' : 'proyecto',
          'priority': 'MEDIUM',
        },
      );
      return StromProject.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<StromProject> updateProject({
    required String id,
    required String subject,
    required String kind,
    required String client,
    required String po,
    required String committed,
    required String responsible,
  }) async {
    try {
      final response = await _dio.patch<Map<String, dynamic>>(
        '/api/support/tickets/$id/',
        data: {
          'subject': subject,
          'description': composeProjectDescription(
            kind: kind,
            client: client,
            po: po,
            committed: committed,
            responsible: responsible,
          ),
        },
      );
      return StromProject.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<StromVisit>> visits() async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/support/work-orders/',
        queryParameters: {'page_size': 50, 'ordering': '-scheduled_date'},
      );
      return asResults(response.data).map(StromVisit.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<List<StromVisit>> visitsForTicket(String ticketId) async {
    try {
      final response = await _dio.get<dynamic>(
        '/api/support/work-orders/',
        queryParameters: {
          'ticket': ticketId,
          'page_size': 50,
          'ordering': '-scheduled_date',
        },
      );
      return asResults(response.data).map(StromVisit.fromJson).toList();
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<StromVisit> visit(String id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/support/work-orders/$id/',
      );
      return StromVisit.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<StromVisit> createVisit({
    required String ticketId,
    required DateTime scheduledDate,
    required VisitSpecialty specialty,
    required String crew,
    required String address,
    required String notes,
    int durationMinutes = 60,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/support/work-orders/',
        data: {
          'ticket': ticketId,
          'scheduled_date': scheduledDate.toUtc().toIso8601String(),
          'status': 'SCHEDULED',
          'location_address': address,
          'estimated_duration_minutes': durationMinutes,
          'notes': composeVisitNotes(
            specialty: specialty,
            crew: crew,
            body: notes,
          ),
        },
      );
      final created = StromVisit.fromJson(response.data ?? {});
      return await visit(created.id);
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<StromVisit> updateVisit({
    required StromVisit current,
    required DateTime scheduledDate,
    required VisitSpecialty specialty,
    required String crew,
    required String address,
    required String notes,
  }) async {
    try {
      await _dio.patch<dynamic>(
        '/api/support/work-orders/${current.id}/',
        data: {
          'scheduled_date': scheduledDate.toUtc().toIso8601String(),
          'location_address': address,
          'notes': composeVisitNotes(
            specialty: specialty,
            crew: crew,
            body: notes,
          ),
        },
      );
      return await visit(current.id);
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> renameActivity({
    required String itemId,
    required String description,
  }) async {
    try {
      await _dio.patch<dynamic>(
        '/api/support/checklist-items/$itemId/',
        data: {'description': description.trim()},
      );
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> reschedule({
    required StromVisit current,
    required DateTime scheduledDate,
    required String reason,
  }) async {
    try {
      await _dio.patch<dynamic>(
        '/api/support/work-orders/${current.id}/',
        data: {
          'scheduled_date': scheduledDate.toUtc().toIso8601String(),
          'status': 'SCHEDULED',
          'notes': current.notes,
        },
      );
      await _dio.post<dynamic>(
        '/api/support/comments/',
        data: {
          'ticket': current.ticketId,
          'content':
              'Reprogramación de visita ${current.number}: ${reason.trim()}',
          'visibility': 'INTERNAL',
        },
      );
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<StromActivity> addActivity({
    required String workOrderId,
    required String description,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/api/support/checklist-items/',
        data: {
          'work_order': workOrderId,
          'description': description,
          'is_completed': false,
        },
      );
      return StromActivity.fromJson(response.data ?? {});
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> recordActivity({
    required String itemId,
    required ActivityResult result,
    required String measurement,
    required String observation,
  }) async {
    try {
      await _dio.patch<dynamic>(
        '/api/support/checklist-items/$itemId/',
        data: {
          'is_completed': result == ActivityResult.completa,
          'notes': composeActivityNotes(
            result: result,
            measurement: measurement,
            observation: observation,
          ),
        },
      );
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> saveTechnicalCheck({
    required StromVisit current,
    required TechnicalDecision decision,
    required String note,
    required bool markExecuted,
  }) async {
    try {
      final payload = {
        'work_order': current.id,
        'diagnosis': composeDiagnosis(decision, note),
        'actions_taken': '',
        'follow_up_needed': decision == TechnicalDecision.correccion,
        'follow_up_notes': decision == TechnicalDecision.correccion ? note : '',
      };
      if (current.feedbackId == null) {
        await _dio.post<dynamic>(
          '/api/support/work-order-feedback/',
          data: payload,
        );
      } else {
        await _dio.patch<dynamic>(
          '/api/support/work-order-feedback/${current.feedbackId}/',
          data: payload,
        );
      }
      if (markExecuted) {
        await _dio.patch<dynamic>(
          '/api/support/work-orders/${current.id}/',
          data: {'status': 'COMPLETED'},
        );
      }
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> addClarification({
    required String ticketId,
    required String content,
  }) async {
    try {
      await _dio.post<dynamic>(
        '/api/support/comments/',
        data: {
          'ticket': ticketId,
          'content': content.trim(),
          'visibility': 'INTERNAL',
        },
      );
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }

  Future<void> uploadPhoto({
    required String workOrderId,
    required List<int> bytes,
    required String filename,
    String description = 'Check terreno',
  }) async {
    try {
      await _dio.post<dynamic>(
        '/api/support/work-order-attachments/',
        data: FormData.fromMap({
          'work_order': workOrderId,
          'description': description,
          'file': MultipartFile.fromBytes(bytes, filename: filename),
        }),
      );
    } on Object catch (error, stack) {
      _rethrow(error, stack);
    }
  }
}
