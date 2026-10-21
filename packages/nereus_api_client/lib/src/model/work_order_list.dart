//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'work_order_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WorkOrderList {
  /// Returns a new [WorkOrderList] instance.
  WorkOrderList({

    required  this.id,

    required  this.workOrderNumber,

    required  this.ticket,

    required  this.ticketNumber,

    required  this.ticketSubject,

    required  this.scheduledDate,

     this.completedDate,

     this.technician,

    required  this.technicianName,

    required  this.clientName,

     this.status,

     this.locationAddress,

     this.estimatedDurationMinutes,

     this.actualDurationMinutes,

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
    
    name: r'work_order_number',
    required: true,
    includeIfNull: false,
  )


  final String workOrderNumber;



  @JsonKey(
    
    name: r'ticket',
    required: true,
    includeIfNull: false,
  )


  final String ticket;



  @JsonKey(
    
    name: r'ticket_number',
    required: true,
    includeIfNull: false,
  )


  final String ticketNumber;



  @JsonKey(
    
    name: r'ticket_subject',
    required: true,
    includeIfNull: false,
  )


  final String ticketSubject;



  @JsonKey(
    
    name: r'scheduled_date',
    required: true,
    includeIfNull: false,
  )


  final DateTime scheduledDate;



  @JsonKey(
    
    name: r'completed_date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? completedDate;



  @JsonKey(
    
    name: r'technician',
    required: false,
    includeIfNull: false,
  )


  final String? technician;



  @JsonKey(
    
    name: r'technician_name',
    required: true,
    includeIfNull: false,
  )


  final String technicianName;



  @JsonKey(
    
    name: r'client_name',
    required: true,
    includeIfNull: false,
  )


  final String clientName;



      /// * `SCHEDULED` - Programada * `IN_ROUTE` - En Ruta * `ON_SITE` - En Sitio * `COMPLETED` - Completada * `CANCELLED` - Cancelada
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  unknownEnumValue: WorkOrderListStatusEnum.unknownDefaultOpenApi,
  )


  final WorkOrderListStatusEnum? status;



  @JsonKey(
    
    name: r'location_address',
    required: false,
    includeIfNull: false,
  )


  final String? locationAddress;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'estimated_duration_minutes',
    required: false,
    includeIfNull: false,
  )


  final int? estimatedDurationMinutes;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'actual_duration_minutes',
    required: false,
    includeIfNull: false,
  )


  final int? actualDurationMinutes;



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
    bool operator ==(Object other) => identical(this, other) || other is WorkOrderList &&
      other.id == id &&
      other.workOrderNumber == workOrderNumber &&
      other.ticket == ticket &&
      other.ticketNumber == ticketNumber &&
      other.ticketSubject == ticketSubject &&
      other.scheduledDate == scheduledDate &&
      other.completedDate == completedDate &&
      other.technician == technician &&
      other.technicianName == technicianName &&
      other.clientName == clientName &&
      other.status == status &&
      other.locationAddress == locationAddress &&
      other.estimatedDurationMinutes == estimatedDurationMinutes &&
      other.actualDurationMinutes == actualDurationMinutes &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        workOrderNumber.hashCode +
        ticket.hashCode +
        ticketNumber.hashCode +
        ticketSubject.hashCode +
        scheduledDate.hashCode +
        (completedDate == null ? 0 : completedDate.hashCode) +
        (technician == null ? 0 : technician.hashCode) +
        technicianName.hashCode +
        clientName.hashCode +
        status.hashCode +
        locationAddress.hashCode +
        estimatedDurationMinutes.hashCode +
        (actualDurationMinutes == null ? 0 : actualDurationMinutes.hashCode) +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory WorkOrderList.fromJson(Map<String, dynamic> json) => _$WorkOrderListFromJson(json);

  Map<String, dynamic> toJson() => _$WorkOrderListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `SCHEDULED` - Programada * `IN_ROUTE` - En Ruta * `ON_SITE` - En Sitio * `COMPLETED` - Completada * `CANCELLED` - Cancelada
enum WorkOrderListStatusEnum {
@JsonValue(r'SCHEDULED')
SCHEDULED(r'SCHEDULED'),
@JsonValue(r'IN_ROUTE')
IN_ROUTE(r'IN_ROUTE'),
@JsonValue(r'ON_SITE')
ON_SITE(r'ON_SITE'),
@JsonValue(r'COMPLETED')
COMPLETED(r'COMPLETED'),
@JsonValue(r'CANCELLED')
CANCELLED(r'CANCELLED'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const WorkOrderListStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


