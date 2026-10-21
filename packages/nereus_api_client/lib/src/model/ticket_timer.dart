//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_timer.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketTimer {
  /// Returns a new [TicketTimer] instance.
  TicketTimer({

    required  this.id,

    required  this.ticket,

    required  this.agent,

    required  this.agentName,

    required  this.startedAt,

     this.endedAt,

     this.durationSeconds,

     this.isRunning,

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
    
    name: r'agent',
    required: true,
    includeIfNull: false,
  )


  final String agent;



  @JsonKey(
    
    name: r'agent_name',
    required: true,
    includeIfNull: false,
  )


  final String agentName;



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
    bool operator ==(Object other) => identical(this, other) || other is TicketTimer &&
      other.id == id &&
      other.ticket == ticket &&
      other.agent == agent &&
      other.agentName == agentName &&
      other.startedAt == startedAt &&
      other.endedAt == endedAt &&
      other.durationSeconds == durationSeconds &&
      other.isRunning == isRunning &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        ticket.hashCode +
        agent.hashCode +
        agentName.hashCode +
        startedAt.hashCode +
        (endedAt == null ? 0 : endedAt.hashCode) +
        durationSeconds.hashCode +
        isRunning.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TicketTimer.fromJson(Map<String, dynamic> json) => _$TicketTimerFromJson(json);

  Map<String, dynamic> toJson() => _$TicketTimerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

