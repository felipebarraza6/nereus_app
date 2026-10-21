//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_timer_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketTimerRequest {
  /// Returns a new [TicketTimerRequest] instance.
  TicketTimerRequest({

    required  this.ticket,

    required  this.agent,

    required  this.startedAt,

     this.endedAt,

     this.durationSeconds,

     this.isRunning,
  });

  @JsonKey(
    
    name: r'ticket',
    required: true,
    includeIfNull: false,
  )


  final String ticket;



  @JsonKey(
    
    name: r'agent',
    required: true,
    includeIfNull: false,
  )


  final String agent;



  @JsonKey(
    
    name: r'started_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime startedAt;



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
    bool operator ==(Object other) => identical(this, other) || other is TicketTimerRequest &&
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

  factory TicketTimerRequest.fromJson(Map<String, dynamic> json) => _$TicketTimerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TicketTimerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

