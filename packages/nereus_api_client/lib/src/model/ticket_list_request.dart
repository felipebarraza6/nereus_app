//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_list_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketListRequest {
  /// Returns a new [TicketListRequest] instance.
  TicketListRequest({

    required  this.subject,

     this.ticketType,

    required  this.category,

     this.priority,

     this.status,

    required  this.slaPolicy,

     this.slaResponseDeadline,

     this.slaResolutionDeadline,

     this.slaResponseMet,

     this.slaResolutionMet,

     this.createdDate,

     this.dueDate,

     this.assignedTo,

     this.client,

     this.requesterEmail,

     this.requesterName,

     this.source_,

     this.firstResponseAt,

     this.resolvedAt,

     this.closedAt,

     this.satisfactionScore,

     this.isActive,
  });

  @JsonKey(
    
    name: r'subject',
    required: true,
    includeIfNull: false,
  )


  final String subject;



  @JsonKey(
    
    name: r'ticket_type',
    required: false,
    includeIfNull: false,
  )


  final String? ticketType;



  @JsonKey(
    
    name: r'category',
    required: true,
    includeIfNull: false,
  )


  final String category;



      /// * `LOW` - Baja * `MEDIUM` - Media * `HIGH` - Alta * `CRITICAL` - Crítica
  @JsonKey(
    
    name: r'priority',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TicketListRequestPriorityEnum.unknownDefaultOpenApi,
  )


  final TicketListRequestPriorityEnum? priority;



      /// * `OPEN` - Abierto * `IN_PROGRESS` - En Progreso * `WAITING` - En Espera * `REVISION` - En Revisión * `PENDING_VISIT` - Orden de Trabajo * `RESOLVED` - Resuelto * `CLOSED` - Cerrado * `CANCELLED` - Cancelado
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TicketListRequestStatusEnum.unknownDefaultOpenApi,
  )


  final TicketListRequestStatusEnum? status;



  @JsonKey(
    
    name: r'sla_policy',
    required: true,
    includeIfNull: false,
  )


  final String slaPolicy;



  @JsonKey(
    
    name: r'sla_response_deadline',
    required: false,
    includeIfNull: false,
  )


  final DateTime? slaResponseDeadline;



  @JsonKey(
    
    name: r'sla_resolution_deadline',
    required: false,
    includeIfNull: false,
  )


  final DateTime? slaResolutionDeadline;



  @JsonKey(
    
    name: r'sla_response_met',
    required: false,
    includeIfNull: false,
  )


  final bool? slaResponseMet;



  @JsonKey(
    
    name: r'sla_resolution_met',
    required: false,
    includeIfNull: false,
  )


  final bool? slaResolutionMet;



      /// Fecha/hora en que se registra el ticket (por defecto el momento actual)
  @JsonKey(
    
    name: r'created_date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdDate;



      /// Fecha/hora límite opcional para resolver el ticket
  @JsonKey(
    
    name: r'due_date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dueDate;



  @JsonKey(
    
    name: r'assigned_to',
    required: false,
    includeIfNull: false,
  )


  final String? assignedTo;



  @JsonKey(
    
    name: r'client',
    required: false,
    includeIfNull: false,
  )


  final int? client;



  @JsonKey(
    
    name: r'requester_email',
    required: false,
    includeIfNull: false,
  )


  final String? requesterEmail;



  @JsonKey(
    
    name: r'requester_name',
    required: false,
    includeIfNull: false,
  )


  final String? requesterName;



      /// * `INTERNAL` - Interno * `WEB_FORM` - Formulario Web
  @JsonKey(
    
    name: r'source',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TicketListRequestSource_Enum.unknownDefaultOpenApi,
  )


  final TicketListRequestSource_Enum? source_;



  @JsonKey(
    
    name: r'first_response_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? firstResponseAt;



  @JsonKey(
    
    name: r'resolved_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? resolvedAt;



  @JsonKey(
    
    name: r'closed_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? closedAt;



      /// 1-5
          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'satisfaction_score',
    required: false,
    includeIfNull: false,
  )


  final int? satisfactionScore;



      /// Indica si el registro está activo. Use esto en lugar de eliminar.
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TicketListRequest &&
      other.subject == subject &&
      other.ticketType == ticketType &&
      other.category == category &&
      other.priority == priority &&
      other.status == status &&
      other.slaPolicy == slaPolicy &&
      other.slaResponseDeadline == slaResponseDeadline &&
      other.slaResolutionDeadline == slaResolutionDeadline &&
      other.slaResponseMet == slaResponseMet &&
      other.slaResolutionMet == slaResolutionMet &&
      other.createdDate == createdDate &&
      other.dueDate == dueDate &&
      other.assignedTo == assignedTo &&
      other.client == client &&
      other.requesterEmail == requesterEmail &&
      other.requesterName == requesterName &&
      other.source_ == source_ &&
      other.firstResponseAt == firstResponseAt &&
      other.resolvedAt == resolvedAt &&
      other.closedAt == closedAt &&
      other.satisfactionScore == satisfactionScore &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        subject.hashCode +
        (ticketType == null ? 0 : ticketType.hashCode) +
        category.hashCode +
        priority.hashCode +
        status.hashCode +
        slaPolicy.hashCode +
        (slaResponseDeadline == null ? 0 : slaResponseDeadline.hashCode) +
        (slaResolutionDeadline == null ? 0 : slaResolutionDeadline.hashCode) +
        (slaResponseMet == null ? 0 : slaResponseMet.hashCode) +
        (slaResolutionMet == null ? 0 : slaResolutionMet.hashCode) +
        createdDate.hashCode +
        (dueDate == null ? 0 : dueDate.hashCode) +
        (assignedTo == null ? 0 : assignedTo.hashCode) +
        (client == null ? 0 : client.hashCode) +
        requesterEmail.hashCode +
        requesterName.hashCode +
        source_.hashCode +
        (firstResponseAt == null ? 0 : firstResponseAt.hashCode) +
        (resolvedAt == null ? 0 : resolvedAt.hashCode) +
        (closedAt == null ? 0 : closedAt.hashCode) +
        (satisfactionScore == null ? 0 : satisfactionScore.hashCode) +
        isActive.hashCode;

  factory TicketListRequest.fromJson(Map<String, dynamic> json) => _$TicketListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TicketListRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `LOW` - Baja * `MEDIUM` - Media * `HIGH` - Alta * `CRITICAL` - Crítica
enum TicketListRequestPriorityEnum {
@JsonValue(r'LOW')
LOW(r'LOW'),
@JsonValue(r'MEDIUM')
MEDIUM(r'MEDIUM'),
@JsonValue(r'HIGH')
HIGH(r'HIGH'),
@JsonValue(r'CRITICAL')
CRITICAL(r'CRITICAL'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TicketListRequestPriorityEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `OPEN` - Abierto * `IN_PROGRESS` - En Progreso * `WAITING` - En Espera * `REVISION` - En Revisión * `PENDING_VISIT` - Orden de Trabajo * `RESOLVED` - Resuelto * `CLOSED` - Cerrado * `CANCELLED` - Cancelado
enum TicketListRequestStatusEnum {
@JsonValue(r'OPEN')
OPEN(r'OPEN'),
@JsonValue(r'IN_PROGRESS')
IN_PROGRESS(r'IN_PROGRESS'),
@JsonValue(r'WAITING')
WAITING(r'WAITING'),
@JsonValue(r'REVISION')
REVISION(r'REVISION'),
@JsonValue(r'PENDING_VISIT')
PENDING_VISIT(r'PENDING_VISIT'),
@JsonValue(r'RESOLVED')
RESOLVED(r'RESOLVED'),
@JsonValue(r'CLOSED')
CLOSED(r'CLOSED'),
@JsonValue(r'CANCELLED')
CANCELLED(r'CANCELLED'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TicketListRequestStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `INTERNAL` - Interno * `WEB_FORM` - Formulario Web
enum TicketListRequestSource_Enum {
@JsonValue(r'INTERNAL')
INTERNAL(r'INTERNAL'),
@JsonValue(r'WEB_FORM')
WEB_FORM(r'WEB_FORM'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TicketListRequestSource_Enum(this.value);

final String value;

@override
String toString() => value;
}


