// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_escalation_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketEscalationRequestCWProxy {
  TicketEscalationRequest ticket(String ticket);

  TicketEscalationRequest fromAgent(String? fromAgent);

  TicketEscalationRequest toAgent(String? toAgent);

  TicketEscalationRequest reason(String reason);

  TicketEscalationRequest escalatedBy(int? escalatedBy);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketEscalationRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketEscalationRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketEscalationRequest call({
    String ticket,
    String? fromAgent,
    String? toAgent,
    String reason,
    int? escalatedBy,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketEscalationRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketEscalationRequest.copyWith.fieldName(...)`
class _$TicketEscalationRequestCWProxyImpl
    implements _$TicketEscalationRequestCWProxy {
  const _$TicketEscalationRequestCWProxyImpl(this._value);

  final TicketEscalationRequest _value;

  @override
  TicketEscalationRequest ticket(String ticket) => this(ticket: ticket);

  @override
  TicketEscalationRequest fromAgent(String? fromAgent) =>
      this(fromAgent: fromAgent);

  @override
  TicketEscalationRequest toAgent(String? toAgent) => this(toAgent: toAgent);

  @override
  TicketEscalationRequest reason(String reason) => this(reason: reason);

  @override
  TicketEscalationRequest escalatedBy(int? escalatedBy) =>
      this(escalatedBy: escalatedBy);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketEscalationRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketEscalationRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketEscalationRequest call({
    Object? ticket = const $CopyWithPlaceholder(),
    Object? fromAgent = const $CopyWithPlaceholder(),
    Object? toAgent = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? escalatedBy = const $CopyWithPlaceholder(),
  }) {
    return TicketEscalationRequest(
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String,
      fromAgent: fromAgent == const $CopyWithPlaceholder()
          ? _value.fromAgent
          // ignore: cast_nullable_to_non_nullable
          : fromAgent as String?,
      toAgent: toAgent == const $CopyWithPlaceholder()
          ? _value.toAgent
          // ignore: cast_nullable_to_non_nullable
          : toAgent as String?,
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String,
      escalatedBy: escalatedBy == const $CopyWithPlaceholder()
          ? _value.escalatedBy
          // ignore: cast_nullable_to_non_nullable
          : escalatedBy as int?,
    );
  }
}

extension $TicketEscalationRequestCopyWith on TicketEscalationRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTicketEscalationRequest.copyWith(...)` or like so:`instanceOfTicketEscalationRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketEscalationRequestCWProxy get copyWith =>
      _$TicketEscalationRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketEscalationRequest _$TicketEscalationRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TicketEscalationRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['ticket', 'reason']);
    final val = TicketEscalationRequest(
      ticket: $checkedConvert('ticket', (v) => v as String),
      fromAgent: $checkedConvert('from_agent', (v) => v as String?),
      toAgent: $checkedConvert('to_agent', (v) => v as String?),
      reason: $checkedConvert('reason', (v) => v as String),
      escalatedBy: $checkedConvert('escalated_by', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'fromAgent': 'from_agent',
    'toAgent': 'to_agent',
    'escalatedBy': 'escalated_by',
  },
);

Map<String, dynamic> _$TicketEscalationRequestToJson(
  TicketEscalationRequest instance,
) => <String, dynamic>{
  'ticket': instance.ticket,
  'from_agent': ?instance.fromAgent,
  'to_agent': ?instance.toAgent,
  'reason': instance.reason,
  'escalated_by': ?instance.escalatedBy,
};
