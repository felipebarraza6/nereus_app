// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_timer_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketTimerRequestCWProxy {
  TicketTimerRequest ticket(String ticket);

  TicketTimerRequest agent(String agent);

  TicketTimerRequest startedAt(DateTime startedAt);

  TicketTimerRequest endedAt(DateTime? endedAt);

  TicketTimerRequest durationSeconds(int? durationSeconds);

  TicketTimerRequest isRunning(bool? isRunning);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketTimerRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketTimerRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketTimerRequest call({
    String ticket,
    String agent,
    DateTime startedAt,
    DateTime? endedAt,
    int? durationSeconds,
    bool? isRunning,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketTimerRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketTimerRequest.copyWith.fieldName(...)`
class _$TicketTimerRequestCWProxyImpl implements _$TicketTimerRequestCWProxy {
  const _$TicketTimerRequestCWProxyImpl(this._value);

  final TicketTimerRequest _value;

  @override
  TicketTimerRequest ticket(String ticket) => this(ticket: ticket);

  @override
  TicketTimerRequest agent(String agent) => this(agent: agent);

  @override
  TicketTimerRequest startedAt(DateTime startedAt) =>
      this(startedAt: startedAt);

  @override
  TicketTimerRequest endedAt(DateTime? endedAt) => this(endedAt: endedAt);

  @override
  TicketTimerRequest durationSeconds(int? durationSeconds) =>
      this(durationSeconds: durationSeconds);

  @override
  TicketTimerRequest isRunning(bool? isRunning) => this(isRunning: isRunning);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketTimerRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketTimerRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketTimerRequest call({
    Object? ticket = const $CopyWithPlaceholder(),
    Object? agent = const $CopyWithPlaceholder(),
    Object? startedAt = const $CopyWithPlaceholder(),
    Object? endedAt = const $CopyWithPlaceholder(),
    Object? durationSeconds = const $CopyWithPlaceholder(),
    Object? isRunning = const $CopyWithPlaceholder(),
  }) {
    return TicketTimerRequest(
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String,
      agent: agent == const $CopyWithPlaceholder()
          ? _value.agent
          // ignore: cast_nullable_to_non_nullable
          : agent as String,
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
    );
  }
}

extension $TicketTimerRequestCopyWith on TicketTimerRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTicketTimerRequest.copyWith(...)` or like so:`instanceOfTicketTimerRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketTimerRequestCWProxy get copyWith =>
      _$TicketTimerRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketTimerRequest _$TicketTimerRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TicketTimerRequest',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['ticket', 'agent', 'started_at']);
        final val = TicketTimerRequest(
          ticket: $checkedConvert('ticket', (v) => v as String),
          agent: $checkedConvert('agent', (v) => v as String),
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
        );
        return val;
      },
      fieldKeyMap: const {
        'startedAt': 'started_at',
        'endedAt': 'ended_at',
        'durationSeconds': 'duration_seconds',
        'isRunning': 'is_running',
      },
    );

Map<String, dynamic> _$TicketTimerRequestToJson(TicketTimerRequest instance) =>
    <String, dynamic>{
      'ticket': instance.ticket,
      'agent': instance.agent,
      'started_at': instance.startedAt.toIso8601String(),
      'ended_at': ?instance.endedAt?.toIso8601String(),
      'duration_seconds': ?instance.durationSeconds,
      'is_running': ?instance.isRunning,
    };
