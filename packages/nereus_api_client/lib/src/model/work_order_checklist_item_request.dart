//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'work_order_checklist_item_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WorkOrderChecklistItemRequest {
  /// Returns a new [WorkOrderChecklistItemRequest] instance.
  WorkOrderChecklistItemRequest({

    required  this.workOrder,

    required  this.description,

     this.isCompleted,

     this.completedAt,

     this.notes,
  });

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





    @override
    bool operator ==(Object other) => identical(this, other) || other is WorkOrderChecklistItemRequest &&
      other.workOrder == workOrder &&
      other.description == description &&
      other.isCompleted == isCompleted &&
      other.completedAt == completedAt &&
      other.notes == notes;

    @override
    int get hashCode =>
        workOrder.hashCode +
        description.hashCode +
        isCompleted.hashCode +
        (completedAt == null ? 0 : completedAt.hashCode) +
        notes.hashCode;

  factory WorkOrderChecklistItemRequest.fromJson(Map<String, dynamic> json) => _$WorkOrderChecklistItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$WorkOrderChecklistItemRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

