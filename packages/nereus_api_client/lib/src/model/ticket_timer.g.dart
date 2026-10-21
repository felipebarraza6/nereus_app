// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_timer.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketTimerCWProxy {
  TicketTimer id(String id);

  TicketTimer ticket(String ticket);

  TicketTimer agent(String agent);

  TicketTimer agentName(String agentName);

  TicketTimer startedAt(DateTime startedAt);

  TicketTimer endedAt(DateTime? endedAt);

  TicketTimer durationSeconds(int? durationSeconds);

  TicketTimer isRunning(bool? isRunning);

  TicketTimer created(DateTime created);

  TicketTimer modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketTimer(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketTimer(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketTimer call({
    String id,
    String ticket,
    String agent,
    String agentName,
    DateTime startedAt,
    DateTime? endedAt,
    int? durationSeconds,
    bool? isRunning,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketTimer.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketTimer.copyWith.fieldName(...)`
class _$TicketTimerCWProxyImpl implements _$TicketTimerCWProxy {
  const _$TicketTimerCWProxyImpl(this._value);

  final TicketTimer _value;

  @override
  TicketTimer id(String id) => this(id: id);

  @override
  TicketTimer ticket(String ticket) => this(ticket: ticket);

  @override
  TicketTimer agent(String agent) => this(agent: agent);

  @override
  TicketTimer agentName(String agentName) => this(agentName: agentName);

  @override
  TicketTimer startedAt(DateTime startedAt) => this(startedAt: startedAt);

  @override
  TicketTimer endedAt(DateTime? endedAt) => this(endedAt: endedAt);

  @override
  TicketTimer durationSeconds(int? durationSeconds) =>
      this(durationSeconds: durationSeconds);

  @override
  TicketTimer isRunning(bool? isRunning) => this(isRunning: isRunning);

  @override
  TicketTimer created(DateTime created) => this(created: created);

  @override
  TicketTimer modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketTimer(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketTimer(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketTimer call({
    Object? id = const $CopyWithPlaceholder(),
    Object? ticket = const $CopyWithPlaceholder(),
    Object? agent = const $CopyWithPlaceholder(),
    Object? agentName = const $CopyWithPlaceholder(),
    Object? startedAt = const $CopyWithPlaceholder(),
    Object? endedAt = const $CopyWithPlaceholder(),
    Object? durationSeconds = const $CopyWithPlaceholder(),
    Object? isRunning = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TicketTimer(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String,
      agent: agent == const $CopyWithPlaceholder()
          ? _value.agent
          // ignore: cast_nullable_to_non_nullable
          : agent as String,
      agentName: agentName == const $CopyWithPlaceholder()
          ? _value.agentName
          // ignore: cast_nullable_to_non_nullable
          : agentName as String,
      startedAt: startedAt == const $CopyWithPlaceholder()
          ? _value.startedAt
          // ignore: cast_nullable_to_non_nullable
          : startedAt as DateTime,
      endedAt: endedAt == const $CopyWithPlaceholder()
          ? _value.endedAt
          // ignore: cast_nullable_to_non_nullable
          : endedAt as DateTime?,
      durationSeconds: durationSeconds == const $CopyWithPlaceholder()
          ? _value.durationSeconds
          // ignore: cast_nullable_to_non_nullable
          : durationSeconds as int?,
      isRunning: isRunning == const $CopyWithPlaceholder()
          ? _value.isRunning
          // ignore: cast_nullable_to_non_nullable
          : isRunning as bool?,
      created: created == const $CopyWithPlaceholder()
          ? _value.created
          // ignore: cast_nullable_to_non_nullable
          : created as DateTime,
      modified: modified == const $CopyWithPlaceholder()
          ? _value.modified
          // ignore: cast_nullable_to_non_nullable
          : modified as DateTime,
    );
  }
}

extension $TicketTimerCopyWith on TicketTimer {
  /// Returns a callable class that can be used as follows: `instanceOfTicketTimer.copyWith(...)` or like so:`instanceOfTicketTimer.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketTimerCWProxy get copyWith => _$TicketTimerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketTimer _$TicketTimerFromJson(Map<String, dynamic> json) => $checkedCreate(
  'TicketTimer',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'ticket',
        'agent',
        'agent_name',
        'started_at',
        'created',
        'modified',
      ],
    );
    final val = TicketTimer(
      id: $checkedConvert('id', (v) => v as String),
      ticket: $checkedConvert('ticket', (v) => v as String),
      agent: $checkedConvert('agent', (v) => v as String),
      agentName: $checkedConvert('agent_name', (v) => v as String),
      startedAt: $checkedConvert(
        'started_at',
        (v) => DateTime.parse(v as String),
      ),
      endedAt: $checkedConvert(
        'ended_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      durationSeconds: $checkedConvert(
        'duration_seconds',
        (v) => (v as num?)?.toInt(),
      ),
      isRunning: $checkedConvert('is_running', (v) => v as bool?),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'agentName': 'agent_name',
    'startedAt': 'started_at',
    'endedAt': 'ended_at',
    'durationSeconds': 'duration_seconds',
    'isRunning': 'is_running',
  },
);

Map<String, dynamic> _$TicketTimerToJson(TicketTimer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket': instance.ticket,
      'agent': instance.agent,
      'agent_name': instance.agentName,
      'started_at': instance.startedAt.toIso8601String(),
      'ended_at': ?instance.endedAt?.toIso8601String(),
      'duration_seconds': ?instance.durationSeconds,
      'is_running': ?instance.isRunning,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
