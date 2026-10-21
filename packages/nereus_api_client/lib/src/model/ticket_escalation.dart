//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_escalation.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketEscalation {
  /// Returns a new [TicketEscalation] instance.
  TicketEscalation({

    required  this.id,

    required  this.ticket,

     this.fromAgent,

    required  this.fromAgentName,

     this.toAgent,

    required  this.toAgentName,

    required  this.reason,

     this.escalatedBy,

    required  this.escalatedByName,

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
    
    name: r'from_agent',
    required: false,
    includeIfNull: false,
  )


  final String? fromAgent;



  @JsonKey(
    
    name: r'from_agent_name',
    required: true,
    includeIfNull: false,
  )


  final String fromAgentName;



  @JsonKey(
    
    name: r'to_agent',
    required: false,
    includeIfNull: false,
  )


  final String? toAgent;



  @JsonKey(
    
    name: r'to_agent_name',
    required: true,
    includeIfNull: false,
  )


  final String toAgentName;



  @JsonKey(
    
    name: r'reason',
    required: true,
    includeIfNull: false,
  )


  final String reason;



  @JsonKey(
    
    name: r'escalated_by',
    required: false,
    includeIfNull: false,
  )


  final int? escalatedBy;



  @JsonKey(
    
    name: r'escalated_by_name',
    required: true,
    includeIfNull: false,
  )


  final String escalatedByName;



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
    bool operator ==(Object other) => identical(this, other) || other is TicketEscalation &&
      other.id == id &&
      other.ticket == ticket &&
      other.fromAgent == fromAgent &&
      other.fromAgentName == fromAgentName &&
      other.toAgent == toAgent &&
      other.toAgentName == toAgentName &&
      other.reason == reason &&
      other.escalatedBy == escalatedBy &&
      other.escalatedByName == escalatedByName &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        ticket.hashCode +
        (fromAgent == null ? 0 : fromAgent.hashCode) +
        fromAgentName.hashCode +
        (toAgent == null ? 0 : toAgent.hashCode) +
        toAgentName.hashCode +
        reason.hashCode +
        (escalatedBy == null ? 0 : escalatedBy.hashCode) +
        escalatedByName.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TicketEscalation.fromJson(Map<String, dynamic> json) => _$TicketEscalationFromJson(json);

  Map<String, dynamic> toJson() => _$TicketEscalationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

