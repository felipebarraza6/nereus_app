//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_ticket_escalation_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTicketEscalationRequest {
  /// Returns a new [PatchedTicketEscalationRequest] instance.
  PatchedTicketEscalationRequest({

     this.ticket,

     this.fromAgent,

     this.toAgent,

     this.reason,

     this.escalatedBy,
  });

  @JsonKey(
    
    name: r'ticket',
    required: false,
    includeIfNull: false,
  )


  final String? ticket;



  @JsonKey(
    
    name: r'from_agent',
    required: false,
    includeIfNull: false,
  )


  final String? fromAgent;



  @JsonKey(
    
    name: r'to_agent',
    required: false,
    includeIfNull: false,
  )


  final String? toAgent;



  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false,
  )


  final String? reason;



  @JsonKey(
    
    name: r'escalated_by',
    required: false,
    includeIfNull: false,
  )


  final int? escalatedBy;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedTicketEscalationRequest &&
      other.ticket == ticket &&
      other.fromAgent == fromAgent &&
      other.toAgent == toAgent &&
      other.reason == reason &&
      other.escalatedBy == escalatedBy;

    @override
    int get hashCode =>
        ticket.hashCode +
        (fromAgent == null ? 0 : fromAgent.hashCode) +
        (toAgent == null ? 0 : toAgent.hashCode) +
        reason.hashCode +
        (escalatedBy == null ? 0 : escalatedBy.hashCode);

  factory PatchedTicketEscalationRequest.fromJson(Map<String, dynamic> json) => _$PatchedTicketEscalationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTicketEscalationRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

