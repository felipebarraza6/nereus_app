//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'work_order_list_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WorkOrderListRequest {
  /// Returns a new [WorkOrderListRequest] instance.
  WorkOrderListRequest({

    required  this.ticket,

    required  this.scheduledDate,

     this.completedDate,

     this.technician,

     this.status,

     this.locationAddress,

     this.estimatedDurationMinutes,

     this.actualDurationMinutes,

     this.isActive,
  });

  @JsonKey(
    
    name: r'ticket',
    required: true,
    includeIfNull: false,
  )


  final String ticket;



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



      /// * `SCHEDULED` - Programada * `IN_ROUTE` - En Ruta * `ON_SITE` - En Sitio * `COMPLETED` - Completada * `CANCELLED` - Cancelada
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  unknownEnumValue: WorkOrderListRequestStatusEnum.unknownDefaultOpenApi,
  )


  final WorkOrderListRequestStatusEnum? status;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is WorkOrderListRequest &&
      other.ticket == ticket &&
      other.scheduledDate == scheduledDate &&
      other.completedDate == completedDate &&
      other.technician == technician &&
      other.status == status &&
      other.locationAddress == locationAddress &&
      other.estimatedDurationMinutes == estimatedDurationMinutes &&
      other.actualDurationMinutes == actualDurationMinutes &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        ticket.hashCode +
        scheduledDate.hashCode +
        (completedDate == null ? 0 : completedDate.hashCode) +
        (technician == null ? 0 : technician.hashCode) +
        status.hashCode +
        locationAddress.hashCode +
        estimatedDurationMinutes.hashCode +
        (actualDurationMinutes == null ? 0 : actualDurationMinutes.hashCode) +
        isActive.hashCode;

  factory WorkOrderListRequest.fromJson(Map<String, dynamic> json) => _$WorkOrderListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$WorkOrderListRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `SCHEDULED` - Programada * `IN_ROUTE` - En Ruta * `ON_SITE` - En Sitio * `COMPLETED` - Completada * `CANCELLED` - Cancelada
enum WorkOrderListRequestStatusEnum {
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

const WorkOrderListRequestStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


