//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:nereus_api_client/src/model/ticket_timer.dart';
import 'package:nereus_api_client/src/model/ticket_escalation.dart';
import 'package:nereus_api_client/src/model/ticket_comment.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_detail.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketDetail {
  /// Returns a new [TicketDetail] instance.
  TicketDetail({

    required  this.id,

    required  this.ticketNumber,

    required  this.subject,

    required  this.description,

     this.ticketType,

    required  this.ticketTypeName,

    required  this.category,

    required  this.categoryName,

     this.categoryCode = '',

    required  this.categoryParentName,

     this.categoryColor = '#1890ff',

     this.priority,

     this.status,

    required  this.slaPolicy,

    required  this.slaPolicyName,

     this.slaResponseDeadline,

     this.slaResolutionDeadline,

     this.slaResponseMet,

     this.slaResolutionMet,

     this.createdDate,

     this.dueDate,

     this.assignedTo,

    required  this.assignedToName,

     this.client,

    required  this.clientName,

    required  this.requester,

     this.requesterEmail,

     this.requesterName,

     this.source_,

     this.contentType,

     this.objectId,

     this.customData,

     this.firstResponseAt,

     this.resolvedAt,

     this.closedAt,

     this.satisfactionScore,

     this.satisfactionComment,

    required  this.comments,

    required  this.escalations,

    required  this.timers,

     this.isActive,

    required  this.created,

    required  this.modified,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



  @JsonKey(
    
    name: r'ticket_number',
    required: true,
    includeIfNull: false,
  )


  final String ticketNumber;



  @JsonKey(
    
    name: r'subject',
    required: true,
    includeIfNull: false,
  )


  final String subject;



  @JsonKey(
    
    name: r'description',
    required: true,
    includeIfNull: false,
  )


  final String description;



  @JsonKey(
    
    name: r'ticket_type',
    required: false,
    includeIfNull: false,
  )


  final String? ticketType;



  @JsonKey(
    
    name: r'ticket_type_name',
    required: true,
    includeIfNull: false,
  )


  final String ticketTypeName;



  @JsonKey(
    
    name: r'category',
    required: true,
    includeIfNull: false,
  )


  final String category;



  @JsonKey(
    
    name: r'category_name',
    required: true,
    includeIfNull: false,
  )


  final String categoryName;



  @JsonKey(
    defaultValue: '',
    name: r'category_code',
    required: true,
    includeIfNull: false,
  )


  final String categoryCode;



  @JsonKey(
    
    name: r'category_parent_name',
    required: true,
    includeIfNull: false,
  )


  final String categoryParentName;



  @JsonKey(
    defaultValue: '#1890ff',
    name: r'category_color',
    required: true,
    includeIfNull: false,
  )


  final String categoryColor;



      /// * `LOW` - Baja * `MEDIUM` - Media * `HIGH` - Alta * `CRITICAL` - Crítica
  @JsonKey(
    
    name: r'priority',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TicketDetailPriorityEnum.unknownDefaultOpenApi,
  )


  final TicketDetailPriorityEnum? priority;



      /// * `OPEN` - Abierto * `IN_PROGRESS` - En Progreso * `WAITING` - En Espera * `REVISION` - En Revisión * `PENDING_VISIT` - Orden de Trabajo * `RESOLVED` - Resuelto * `CLOSED` - Cerrado * `CANCELLED` - Cancelado
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TicketDetailStatusEnum.unknownDefaultOpenApi,
  )


  final TicketDetailStatusEnum? status;



  @JsonKey(
    
    name: r'sla_policy',
    required: true,
    includeIfNull: false,
  )


  final String slaPolicy;



  @JsonKey(
    
    name: r'sla_policy_name',
    required: true,
    includeIfNull: false,
  )


  final String slaPolicyName;



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
    
    name: r'assigned_to_name',
    required: true,
    includeIfNull: false,
  )


  final String assignedToName;



  @JsonKey(
    
    name: r'client',
    required: false,
    includeIfNull: false,
  )


  final int? client;



  @JsonKey(
    
    name: r'client_name',
    required: true,
    includeIfNull: false,
  )


  final String clientName;



  @JsonKey(
    
    name: r'requester',
    required: true,
    includeIfNull: true,
  )


  final int? requester;



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
  unknownEnumValue: TicketDetailSource_Enum.unknownDefaultOpenApi,
  )


  final TicketDetailSource_Enum? source_;



  @JsonKey(
    
    name: r'content_type',
    required: false,
    includeIfNull: false,
  )


  final int? contentType;



  @JsonKey(
    
    name: r'object_id',
    required: false,
    includeIfNull: false,
  )


  final String? objectId;



      /// Valores de campos personalizados definidos por el TicketType
  @JsonKey(
    
    name: r'custom_data',
    required: false,
    includeIfNull: false,
  )


  final Object? customData;



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



  @JsonKey(
    
    name: r'satisfaction_comment',
    required: false,
    includeIfNull: false,
  )


  final String? satisfactionComment;



  @JsonKey(
    
    name: r'comments',
    required: true,
    includeIfNull: false,
  )


  final List<TicketComment> comments;



  @JsonKey(
    
    name: r'escalations',
    required: true,
    includeIfNull: false,
  )


  final List<TicketEscalation> escalations;



  @JsonKey(
    
    name: r'timers',
    required: true,
    includeIfNull: false,
  )


  final List<TicketTimer> timers;



      /// Indica si el registro está activo. Use esto en lugar de eliminar.
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



      /// Fecha de creacion.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final DateTime created;



      /// Fecha de modificacion.
  @JsonKey(
    
    name: r'modified',
    required: true,
    includeIfNull: false,
  )


  final DateTime modified;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TicketDetail &&
      other.id == id &&
      other.ticketNumber == ticketNumber &&
      other.subject == subject &&
      other.description == description &&
      other.ticketType == ticketType &&
      other.ticketTypeName == ticketTypeName &&
      other.category == category &&
      other.categoryName == categoryName &&
      other.categoryCode == categoryCode &&
      other.categoryParentName == categoryParentName &&
      other.categoryColor == categoryColor &&
      other.priority == priority &&
      other.status == status &&
      other.slaPolicy == slaPolicy &&
      other.slaPolicyName == slaPolicyName &&
      other.slaResponseDeadline == slaResponseDeadline &&
      other.slaResolutionDeadline == slaResolutionDeadline &&
      other.slaResponseMet == slaResponseMet &&
      other.slaResolutionMet == slaResolutionMet &&
      other.createdDate == createdDate &&
      other.dueDate == dueDate &&
      other.assignedTo == assignedTo &&
      other.assignedToName == assignedToName &&
      other.client == client &&
      other.clientName == clientName &&
      other.requester == requester &&
      other.requesterEmail == requesterEmail &&
      other.requesterName == requesterName &&
      other.source_ == source_ &&
      other.contentType == contentType &&
      other.objectId == objectId &&
      other.customData == customData &&
      other.firstResponseAt == firstResponseAt &&
      other.resolvedAt == resolvedAt &&
      other.closedAt == closedAt &&
      other.satisfactionScore == satisfactionScore &&
      other.satisfactionComment == satisfactionComment &&
      other.comments == comments &&
      other.escalations == escalations &&
      other.timers == timers &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        ticketNumber.hashCode +
        subject.hashCode +
        description.hashCode +
        (ticketType == null ? 0 : ticketType.hashCode) +
        ticketTypeName.hashCode +
        category.hashCode +
        categoryName.hashCode +
        categoryCode.hashCode +
        categoryParentName.hashCode +
        categoryColor.hashCode +
        priority.hashCode +
        status.hashCode +
        slaPolicy.hashCode +
        slaPolicyName.hashCode +
        (slaResponseDeadline == null ? 0 : slaResponseDeadline.hashCode) +
        (slaResolutionDeadline == null ? 0 : slaResolutionDeadline.hashCode) +
        (slaResponseMet == null ? 0 : slaResponseMet.hashCode) +
        (slaResolutionMet == null ? 0 : slaResolutionMet.hashCode) +
        createdDate.hashCode +
        (dueDate == null ? 0 : dueDate.hashCode) +
        (assignedTo == null ? 0 : assignedTo.hashCode) +
        assignedToName.hashCode +
        (client == null ? 0 : client.hashCode) +
        clientName.hashCode +
        (requester == null ? 0 : requester.hashCode) +
        requesterEmail.hashCode +
        requesterName.hashCode +
        source_.hashCode +
        (contentType == null ? 0 : contentType.hashCode) +
        (objectId == null ? 0 : objectId.hashCode) +
        (customData == null ? 0 : customData.hashCode) +
        (firstResponseAt == null ? 0 : firstResponseAt.hashCode) +
        (resolvedAt == null ? 0 : resolvedAt.hashCode) +
        (closedAt == null ? 0 : closedAt.hashCode) +
        (satisfactionScore == null ? 0 : satisfactionScore.hashCode) +
        satisfactionComment.hashCode +
        comments.hashCode +
        escalations.hashCode +
        timers.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TicketDetail.fromJson(Map<String, dynamic> json) => _$TicketDetailFromJson(json);

  Map<String, dynamic> toJson() => _$TicketDetailToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `LOW` - Baja * `MEDIUM` - Media * `HIGH` - Alta * `CRITICAL` - Crítica
enum TicketDetailPriorityEnum {
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

const TicketDetailPriorityEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `OPEN` - Abierto * `IN_PROGRESS` - En Progreso * `WAITING` - En Espera * `REVISION` - En Revisión * `PENDING_VISIT` - Orden de Trabajo * `RESOLVED` - Resuelto * `CLOSED` - Cerrado * `CANCELLED` - Cancelado
enum TicketDetailStatusEnum {
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

const TicketDetailStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `INTERNAL` - Interno * `WEB_FORM` - Formulario Web
enum TicketDetailSource_Enum {
@JsonValue(r'INTERNAL')
INTERNAL(r'INTERNAL'),
@JsonValue(r'WEB_FORM')
WEB_FORM(r'WEB_FORM'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TicketDetailSource_Enum(this.value);

final String value;

@override
String toString() => value;
}


