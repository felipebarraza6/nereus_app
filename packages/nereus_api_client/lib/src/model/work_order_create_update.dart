//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'work_order_create_update.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WorkOrderCreateUpdate {
  /// Returns a new [WorkOrderCreateUpdate] instance.
  WorkOrderCreateUpdate({

    required  this.id,

    required  this.ticket,

    required  this.scheduledDate,

     this.technician,

     this.status,

     this.locationAddress,

     this.locationLat,

     this.locationLng,

     this.estimatedDurationMinutes,

     this.actualDurationMinutes,

     this.equipmentContentType,

     this.equipmentObjectId,

     this.notes,

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
  unknownEnumValue: WorkOrderCreateUpdateStatusEnum.unknownDefaultOpenApi,
  )


  final WorkOrderCreateUpdateStatusEnum? status;



  @JsonKey(
    
    name: r'location_address',
    required: false,
    includeIfNull: false,
  )


  final String? locationAddress;



          // minimum: -100
          // maximum: 100
  @JsonKey(
    
    name: r'location_lat',
    required: false,
    includeIfNull: false,
  )


  final double? locationLat;



          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'location_lng',
    required: false,
    includeIfNull: false,
  )


  final double? locationLng;



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



  @JsonKey(
    
    name: r'equipment_content_type',
    required: false,
    includeIfNull: false,
  )


  final int? equipmentContentType;



  @JsonKey(
    
    name: r'equipment_object_id',
    required: false,
    includeIfNull: false,
  )


  final String? equipmentObjectId;



  @JsonKey(
    
    name: r'notes',
    required: false,
    includeIfNull: false,
  )


  final String? notes;



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
    bool operator ==(Object other) => identical(this, other) || other is WorkOrderCreateUpdate &&
      other.id == id &&
      other.ticket == ticket &&
      other.scheduledDate == scheduledDate &&
      other.technician == technician &&
      other.status == status &&
      other.locationAddress == locationAddress &&
      other.locationLat == locationLat &&
      other.locationLng == locationLng &&
      other.estimatedDurationMinutes == estimatedDurationMinutes &&
      other.actualDurationMinutes == actualDurationMinutes &&
      other.equipmentContentType == equipmentContentType &&
      other.equipmentObjectId == equipmentObjectId &&
      other.notes == notes &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        ticket.hashCode +
        scheduledDate.hashCode +
        (technician == null ? 0 : technician.hashCode) +
        status.hashCode +
        locationAddress.hashCode +
        (locationLat == null ? 0 : locationLat.hashCode) +
        (locationLng == null ? 0 : locationLng.hashCode) +
        estimatedDurationMinutes.hashCode +
        (actualDurationMinutes == null ? 0 : actualDurationMinutes.hashCode) +
        (equipmentContentType == null ? 0 : equipmentContentType.hashCode) +
        (equipmentObjectId == null ? 0 : equipmentObjectId.hashCode) +
        notes.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory WorkOrderCreateUpdate.fromJson(Map<String, dynamic> json) => _$WorkOrderCreateUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$WorkOrderCreateUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `SCHEDULED` - Programada * `IN_ROUTE` - En Ruta * `ON_SITE` - En Sitio * `COMPLETED` - Completada * `CANCELLED` - Cancelada
enum WorkOrderCreateUpdateStatusEnum {
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

const WorkOrderCreateUpdateStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


