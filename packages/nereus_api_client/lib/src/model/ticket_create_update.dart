//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_create_update.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketCreateUpdate {
  /// Returns a new [TicketCreateUpdate] instance.
  TicketCreateUpdate({

    required  this.id,

     this.branch,

    required  this.subject,

    required  this.description,

     this.ticketType,

    required  this.category,

     this.priority,

     this.status,

     this.slaPolicy,

     this.createdDate,

     this.dueDate,

     this.assignedTo,

     this.client,

    required  this.requester,

     this.requesterEmail,

     this.requesterName,

     this.source_,

     this.contentType,

     this.objectId,

     this.customData,

     this.satisfactionScore,

     this.satisfactionComment,

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



      /// UUID de la sucursal. Solo editable por super administradores.
  @JsonKey(
    
    name: r'branch',
    required: false,
    includeIfNull: false,
  )


  final int? branch;



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
  unknownEnumValue: TicketCreateUpdatePriorityEnum.unknownDefaultOpenApi,
  )


  final TicketCreateUpdatePriorityEnum? priority;



      /// * `OPEN` - Abierto * `IN_PROGRESS` - En Progreso * `WAITING` - En Espera * `REVISION` - En Revisión * `PENDING_VISIT` - Orden de Trabajo * `RESOLVED` - Resuelto * `CLOSED` - Cerrado * `CANCELLED` - Cancelado
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TicketCreateUpdateStatusEnum.unknownDefaultOpenApi,
  )


  final TicketCreateUpdateStatusEnum? status;



  @JsonKey(
    
    name: r'sla_policy',
    required: false,
    includeIfNull: false,
  )


  final String? slaPolicy;



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
  unknownEnumValue: TicketCreateUpdateSource_Enum.unknownDefaultOpenApi,
  )


  final TicketCreateUpdateSource_Enum? source_;



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
    bool operator ==(Object other) => identical(this, other) || other is TicketCreateUpdate &&
      other.id == id &&
      other.branch == branch &&
      other.subject == subject &&
      other.description == description &&
      other.ticketType == ticketType &&
      other.category == category &&
      other.priority == priority &&
      other.status == status &&
      other.slaPolicy == slaPolicy &&
      other.createdDate == createdDate &&
      other.dueDate == dueDate &&
      other.assignedTo == assignedTo &&
      other.client == client &&
      other.requester == requester &&
      other.requesterEmail == requesterEmail &&
      other.requesterName == requesterName &&
      other.source_ == source_ &&
      other.contentType == contentType &&
      other.objectId == objectId &&
      other.customData == customData &&
      other.satisfactionScore == satisfactionScore &&
      other.satisfactionComment == satisfactionComment &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        (branch == null ? 0 : branch.hashCode) +
        subject.hashCode +
        description.hashCode +
        (ticketType == null ? 0 : ticketType.hashCode) +
        category.hashCode +
        priority.hashCode +
        status.hashCode +
        (slaPolicy == null ? 0 : slaPolicy.hashCode) +
        createdDate.hashCode +
        (dueDate == null ? 0 : dueDate.hashCode) +
        (assignedTo == null ? 0 : assignedTo.hashCode) +
        (client == null ? 0 : client.hashCode) +
        (requester == null ? 0 : requester.hashCode) +
        requesterEmail.hashCode +
        requesterName.hashCode +
        source_.hashCode +
        (contentType == null ? 0 : contentType.hashCode) +
        (objectId == null ? 0 : objectId.hashCode) +
        (customData == null ? 0 : customData.hashCode) +
        (satisfactionScore == null ? 0 : satisfactionScore.hashCode) +
        satisfactionComment.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TicketCreateUpdate.fromJson(Map<String, dynamic> json) => _$TicketCreateUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$TicketCreateUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `LOW` - Baja * `MEDIUM` - Media * `HIGH` - Alta * `CRITICAL` - Crítica
enum TicketCreateUpdatePriorityEnum {
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

const TicketCreateUpdatePriorityEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `OPEN` - Abierto * `IN_PROGRESS` - En Progreso * `WAITING` - En Espera * `REVISION` - En Revisión * `PENDING_VISIT` - Orden de Trabajo * `RESOLVED` - Resuelto * `CLOSED` - Cerrado * `CANCELLED` - Cancelado
enum TicketCreateUpdateStatusEnum {
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

const TicketCreateUpdateStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `INTERNAL` - Interno * `WEB_FORM` - Formulario Web
enum TicketCreateUpdateSource_Enum {
@JsonValue(r'INTERNAL')
INTERNAL(r'INTERNAL'),
@JsonValue(r'WEB_FORM')
WEB_FORM(r'WEB_FORM'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TicketCreateUpdateSource_Enum(this.value);

final String value;

@override
String toString() => value;
}


