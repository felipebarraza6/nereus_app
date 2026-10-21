//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'work_order_feedback.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WorkOrderFeedback {
  /// Returns a new [WorkOrderFeedback] instance.
  WorkOrderFeedback({

    required  this.id,

    required  this.workOrder,

    required  this.diagnosis,

    required  this.actionsTaken,

     this.partsUsed,

     this.clientSignature,

     this.clientName,

     this.isSatisfied,

     this.followUpNeeded,

     this.followUpNotes,

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
    
    name: r'diagnosis',
    required: true,
    includeIfNull: false,
  )


  final String diagnosis;



  @JsonKey(
    
    name: r'actions_taken',
    required: true,
    includeIfNull: false,
  )


  final String actionsTaken;



      /// Lista de repuestos usados: [{name, quantity, cost}]
  @JsonKey(
    
    name: r'parts_used',
    required: false,
    includeIfNull: false,
  )


  final Object? partsUsed;



  @JsonKey(
    
    name: r'client_signature',
    required: false,
    includeIfNull: false,
  )


  final String? clientSignature;



  @JsonKey(
    
    name: r'client_name',
    required: false,
    includeIfNull: false,
  )


  final String? clientName;



  @JsonKey(
    
    name: r'is_satisfied',
    required: false,
    includeIfNull: false,
  )


  final bool? isSatisfied;



  @JsonKey(
    
    name: r'follow_up_needed',
    required: false,
    includeIfNull: false,
  )


  final bool? followUpNeeded;



  @JsonKey(
    
    name: r'follow_up_notes',
    required: false,
    includeIfNull: false,
  )


  final String? followUpNotes;



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
    bool operator ==(Object other) => identical(this, other) || other is WorkOrderFeedback &&
      other.id == id &&
      other.workOrder == workOrder &&
      other.diagnosis == diagnosis &&
      other.actionsTaken == actionsTaken &&
      other.partsUsed == partsUsed &&
      other.clientSignature == clientSignature &&
      other.clientName == clientName &&
      other.isSatisfied == isSatisfied &&
      other.followUpNeeded == followUpNeeded &&
      other.followUpNotes == followUpNotes &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        workOrder.hashCode +
        diagnosis.hashCode +
        actionsTaken.hashCode +
        (partsUsed == null ? 0 : partsUsed.hashCode) +
        clientSignature.hashCode +
        clientName.hashCode +
        (isSatisfied == null ? 0 : isSatisfied.hashCode) +
        followUpNeeded.hashCode +
        followUpNotes.hashCode +
        created.hashCode +
        modified.hashCode;

  factory WorkOrderFeedback.fromJson(Map<String, dynamic> json) => _$WorkOrderFeedbackFromJson(json);

  Map<String, dynamic> toJson() => _$WorkOrderFeedbackToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

