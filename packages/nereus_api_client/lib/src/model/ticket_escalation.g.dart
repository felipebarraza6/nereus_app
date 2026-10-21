// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_escalation.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketEscalationCWProxy {
  TicketEscalation id(String id);

  TicketEscalation ticket(String ticket);

  TicketEscalation fromAgent(String? fromAgent);

  TicketEscalation fromAgentName(String fromAgentName);

  TicketEscalation toAgent(String? toAgent);

  TicketEscalation toAgentName(String toAgentName);

  TicketEscalation reason(String reason);

  TicketEscalation escalatedBy(int? escalatedBy);

  TicketEscalation escalatedByName(String escalatedByName);

  TicketEscalation created(DateTime created);

  TicketEscalation modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketEscalation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketEscalation(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketEscalation call({
    String id,
    String ticket,
    String? fromAgent,
    String fromAgentName,
    String? toAgent,
    String toAgentName,
    String reason,
    int? escalatedBy,
    String escalatedByName,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketEscalation.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketEscalation.copyWith.fieldName(...)`
class _$TicketEscalationCWProxyImpl implements _$TicketEscalationCWProxy {
  const _$TicketEscalationCWProxyImpl(this._value);

  final TicketEscalation _value;

  @override
  TicketEscalation id(String id) => this(id: id);

  @override
  TicketEscalation ticket(String ticket) => this(ticket: ticket);

  @override
  TicketEscalation fromAgent(String? fromAgent) => this(fromAgent: fromAgent);

  @override
  TicketEscalation fromAgentName(String fromAgentName) =>
      this(fromAgentName: fromAgentName);

  @override
  TicketEscalation toAgent(String? toAgent) => this(toAgent: toAgent);

  @override
  TicketEscalation toAgentName(String toAgentName) =>
      this(toAgentName: toAgentName);

  @override
  TicketEscalation reason(String reason) => this(reason: reason);

  @override
  TicketEscalation escalatedBy(int? escalatedBy) =>
      this(escalatedBy: escalatedBy);

  @override
  TicketEscalation escalatedByName(String escalatedByName) =>
      this(escalatedByName: escalatedByName);

  @override
  TicketEscalation created(DateTime created) => this(created: created);

  @override
  TicketEscalation modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketEscalation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketEscalation(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketEscalation call({
    Object? id = const $CopyWithPlaceholder(),
    Object? ticket = const $CopyWithPlaceholder(),
    Object? fromAgent = const $CopyWithPlaceholder(),
    Object? fromAgentName = const $CopyWithPlaceholder(),
    Object? toAgent = const $CopyWithPlaceholder(),
    Object? toAgentName = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? escalatedBy = const $CopyWithPlaceholder(),
    Object? escalatedByName = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TicketEscalation(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String,
      fromAgent: fromAgent == const $CopyWithPlaceholder()
          ? _value.fromAgent
          // ignore: cast_nullable_to_non_nullable
          : fromAgent as String?,
      fromAgentName: fromAgentName == const $CopyWithPlaceholder()
          ? _value.fromAgentName
          // ignore: cast_nullable_to_non_nullable
          : fromAgentName as String,
      toAgent: toAgent == const $CopyWithPlaceholder()
          ? _value.toAgent
          // ignore: cast_nullable_to_non_nullable
          : toAgent as String?,
      toAgentName: toAgentName == const $CopyWithPlaceholder()
          ? _value.toAgentName
          // ignore: cast_nullable_to_non_nullable
          : toAgentName as String,
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String,
      escalatedBy: escalatedBy == const $CopyWithPlaceholder()
          ? _value.escalatedBy
          // ignore: cast_nullable_to_non_nullable
          : escalatedBy as int?,
      escalatedByName: escalatedByName == const $CopyWithPlaceholder()
          ? _value.escalatedByName
          // ignore: cast_nullable_to_non_nullable
          : escalatedByName as String,
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

extension $TicketEscalationCopyWith on TicketEscalation {
  /// Returns a callable class that can be used as follows: `instanceOfTicketEscalation.copyWith(...)` or like so:`instanceOfTicketEscalation.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketEscalationCWProxy get copyWith => _$TicketEscalationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketEscalation _$TicketEscalationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TicketEscalation',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'ticket',
        'from_agent_name',
        'to_agent_name',
        'reason',
        'escalated_by_name',
        'created',
        'modified',
      ],
    );
    final val = TicketEscalation(
      id: $checkedConvert('id', (v) => v as String),
      ticket: $checkedConvert('ticket', (v) => v as String),
      fromAgent: $checkedConvert('from_agent', (v) => v as String?),
      fromAgentName: $checkedConvert('from_agent_name', (v) => v as String),
      toAgent: $checkedConvert('to_agent', (v) => v as String?),
      toAgentName: $checkedConvert('to_agent_name', (v) => v as String),
      reason: $checkedConvert('reason', (v) => v as String),
      escalatedBy: $checkedConvert('escalated_by', (v) => (v as num?)?.toInt()),
      escalatedByName: $checkedConvert('escalated_by_name', (v) => v as String),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'fromAgent': 'from_agent',
    'fromAgentName': 'from_agent_name',
    'toAgent': 'to_agent',
    'toAgentName': 'to_agent_name',
    'escalatedBy': 'escalated_by',
    'escalatedByName': 'escalated_by_name',
  },
);

Map<String, dynamic> _$TicketEscalationToJson(TicketEscalation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket': instance.ticket,
      'from_agent': ?instance.fromAgent,
      'from_agent_name': instance.fromAgentName,
      'to_agent': ?instance.toAgent,
      'to_agent_name': instance.toAgentName,
      'reason': instance.reason,
      'escalated_by': ?instance.escalatedBy,
      'escalated_by_name': instance.escalatedByName,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
