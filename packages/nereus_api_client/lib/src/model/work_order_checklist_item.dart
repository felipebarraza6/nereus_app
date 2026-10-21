//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'work_order_checklist_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WorkOrderChecklistItem {
  /// Returns a new [WorkOrderChecklistItem] instance.
  WorkOrderChecklistItem({

    required  this.id,

    required  this.workOrder,

    required  this.description,

     this.isCompleted,

     this.completedAt,

     this.notes,

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
    
    name: r'work_order',
    required: true,
    includeIfNull: false,
  )


  final String workOrder;



  @JsonKey(
    
    name: r'description',
    required: true,
    includeIfNull: false,
  )


  final String description;



  @JsonKey(
    
    name: r'is_completed',
    required: false,
    includeIfNull: false,
  )


  final bool? isCompleted;



  @JsonKey(
    
    name: r'completed_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? completedAt;



  @JsonKey(
    
    name: r'notes',
    required: false,
    includeIfNull: false,
  )


  final String? notes;



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
    bool operator ==(Object other) => identical(this, other) || other is WorkOrderChecklistItem &&
      other.id == id &&
      other.workOrder == workOrder &&
      other.description == description &&
      other.isCompleted == isCompleted &&
      other.completedAt == completedAt &&
      other.notes == notes &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        workOrder.hashCode +
        description.hashCode +
        isCompleted.hashCode +
        (completedAt == null ? 0 : completedAt.hashCode) +
        notes.hashCode +
        created.hashCode +
        modified.hashCode;

  factory WorkOrderChecklistItem.fromJson(Map<String, dynamic> json) => _$WorkOrderChecklistItemFromJson(json);

  Map<String, dynamic> toJson() => _$WorkOrderChecklistItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

