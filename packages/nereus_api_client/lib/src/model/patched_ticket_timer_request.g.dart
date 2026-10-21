// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_ticket_timer_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedTicketTimerRequestCWProxy {
  PatchedTicketTimerRequest ticket(String? ticket);

  PatchedTicketTimerRequest agent(String? agent);

  PatchedTicketTimerRequest startedAt(DateTime? startedAt);

  PatchedTicketTimerRequest endedAt(DateTime? endedAt);

  PatchedTicketTimerRequest durationSeconds(int? durationSeconds);

  PatchedTicketTimerRequest isRunning(bool? isRunning);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketTimerRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketTimerRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketTimerRequest call({
    String? ticket,
    String? agent,
    DateTime? startedAt,
    DateTime? endedAt,
    int? durationSeconds,
    bool? isRunning,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedTicketTimerRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedTicketTimerRequest.copyWith.fieldName(...)`
class _$PatchedTicketTimerRequestCWProxyImpl
    implements _$PatchedTicketTimerRequestCWProxy {
  const _$PatchedTicketTimerRequestCWProxyImpl(this._value);

  final PatchedTicketTimerRequest _value;

  @override
  PatchedTicketTimerRequest ticket(String? ticket) => this(ticket: ticket);

  @override
  PatchedTicketTimerRequest agent(String? agent) => this(agent: agent);

  @override
  PatchedTicketTimerRequest startedAt(DateTime? startedAt) =>
      this(startedAt: startedAt);

  @override
  PatchedTicketTimerRequest endedAt(DateTime? endedAt) =>
      this(endedAt: endedAt);

  @override
  PatchedTicketTimerRequest durationSeconds(int? durationSeconds) =>
      this(durationSeconds: durationSeconds);

  @override
  PatchedTicketTimerRequest isRunning(bool? isRunning) =>
      this(isRunning: isRunning);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketTimerRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketTimerRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketTimerRequest call({
    Object? ticket = const $CopyWithPlaceholder(),
    Object? agent = const $CopyWithPlaceholder(),
    Object? startedAt = const $CopyWithPlaceholder(),
    Object? endedAt = const $CopyWithPlaceholder(),
    Object? durationSeconds = const $CopyWithPlaceholder(),
    Object? isRunning = const $CopyWithPlaceholder(),
  }) {
    return PatchedTicketTimerRequest(
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String?,
      agent: agent == const $CopyWithPlaceholder()
          ? _value.agent
          // ignore: cast_nullable_to_non_nullable
          : agent as String?,
      startedAt: startedAt == const $CopyWithPlaceholder()
          ? _value.startedAt
          // ignore: cast_nullable_to_non_nullable
          : startedAt as DateTime?,
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

extension $PatchedTicketTimerRequestCopyWith on PatchedTicketTimerRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedTicketTimerRequest.copyWith(...)` or like so:`instanceOfPatchedTicketTimerRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedTicketTimerRequestCWProxy get copyWith =>
      _$PatchedTicketTimerRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedTicketTimerRequest _$PatchedTicketTimerRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedTicketTimerRequest',
  json,
  ($checkedConvert) {
    final val = PatchedTicketTimerRequest(
      ticket: $checkedConvert('ticket', (v) => v as String?),
      agent: $checkedConvert('agent', (v) => v as String?),
      startedAt: $checkedConvert(
        'started_at',
        (v) => v == null ? null : DateTime.parse(v as String),
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

Map<String, dynamic> _$PatchedTicketTimerRequestToJson(
  PatchedTicketTimerRequest instance,
) => <String, dynamic>{
  'ticket': ?instance.ticket,
  'agent': ?instance.agent,
  'started_at': ?instance.startedAt?.toIso8601String(),
  'ended_at': ?instance.endedAt?.toIso8601String(),
  'duration_seconds': ?instance.durationSeconds,
  'is_running': ?instance.isRunning,
};
