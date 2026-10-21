//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_ticket_timer_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTicketTimerRequest {
  /// Returns a new [PatchedTicketTimerRequest] instance.
  PatchedTicketTimerRequest({

     this.ticket,

     this.agent,

     this.startedAt,

     this.endedAt,

     this.durationSeconds,

     this.isRunning,
  });

  @JsonKey(
    
    name: r'ticket',
    required: false,
    includeIfNull: false,
  )


  final String? ticket;



  @JsonKey(
    
    name: r'agent',
    required: false,
    includeIfNull: false,
  )


  final String? agent;



  @JsonKey(
    
    name: r'started_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? startedAt;



  @JsonKey(
    
    name: r'ended_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? endedAt;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'duration_seconds',
    required: false,
    includeIfNull: false,
  )


  final int? durationSeconds;



  @JsonKey(
    
    name: r'is_running',
    required: false,
    includeIfNull: false,
  )


  final bool? isRunning;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedTicketTimerRequest &&
      other.ticket == ticket &&
      other.agent == agent &&
      other.startedAt == startedAt &&
      other.endedAt == endedAt &&
      other.durationSeconds == durationSeconds &&
      other.isRunning == isRunning;

    @override
    int get hashCode =>
        ticket.hashCode +
        agent.hashCode +
        startedAt.hashCode +
        (endedAt == null ? 0 : endedAt.hashCode) +
        durationSeconds.hashCode +
        isRunning.hashCode;

  factory PatchedTicketTimerRequest.fromJson(Map<String, dynamic> json) => _$PatchedTicketTimerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTicketTimerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

