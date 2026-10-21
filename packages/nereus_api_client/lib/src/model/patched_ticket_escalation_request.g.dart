// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_ticket_escalation_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedTicketEscalationRequestCWProxy {
  PatchedTicketEscalationRequest ticket(String? ticket);

  PatchedTicketEscalationRequest fromAgent(String? fromAgent);

  PatchedTicketEscalationRequest toAgent(String? toAgent);

  PatchedTicketEscalationRequest reason(String? reason);

  PatchedTicketEscalationRequest escalatedBy(int? escalatedBy);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketEscalationRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketEscalationRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketEscalationRequest call({
    String? ticket,
    String? fromAgent,
    String? toAgent,
    String? reason,
    int? escalatedBy,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedTicketEscalationRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedTicketEscalationRequest.copyWith.fieldName(...)`
class _$PatchedTicketEscalationRequestCWProxyImpl
    implements _$PatchedTicketEscalationRequestCWProxy {
  const _$PatchedTicketEscalationRequestCWProxyImpl(this._value);

  final PatchedTicketEscalationRequest _value;

  @override
  PatchedTicketEscalationRequest ticket(String? ticket) => this(ticket: ticket);

  @override
  PatchedTicketEscalationRequest fromAgent(String? fromAgent) =>
      this(fromAgent: fromAgent);

  @override
  PatchedTicketEscalationRequest toAgent(String? toAgent) =>
      this(toAgent: toAgent);

  @override
  PatchedTicketEscalationRequest reason(String? reason) => this(reason: reason);

  @override
  PatchedTicketEscalationRequest escalatedBy(int? escalatedBy) =>
      this(escalatedBy: escalatedBy);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketEscalationRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketEscalationRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketEscalationRequest call({
    Object? ticket = const $CopyWithPlaceholder(),
    Object? fromAgent = const $CopyWithPlaceholder(),
    Object? toAgent = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? escalatedBy = const $CopyWithPlaceholder(),
  }) {
    return PatchedTicketEscalationRequest(
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String?,
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
          : reason as String?,
      escalatedBy: escalatedBy == const $CopyWithPlaceholder()
          ? _value.escalatedBy
          // ignore: cast_nullable_to_non_nullable
          : escalatedBy as int?,
    );
  }
}

extension $PatchedTicketEscalationRequestCopyWith
    on PatchedTicketEscalationRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedTicketEscalationRequest.copyWith(...)` or like so:`instanceOfPatchedTicketEscalationRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedTicketEscalationRequestCWProxy get copyWith =>
      _$PatchedTicketEscalationRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedTicketEscalationRequest _$PatchedTicketEscalationRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedTicketEscalationRequest',
  json,
  ($checkedConvert) {
    final val = PatchedTicketEscalationRequest(
      ticket: $checkedConvert('ticket', (v) => v as String?),
      fromAgent: $checkedConvert('from_agent', (v) => v as String?),
      toAgent: $checkedConvert('to_agent', (v) => v as String?),
      reason: $checkedConvert('reason', (v) => v as String?),
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

Map<String, dynamic> _$PatchedTicketEscalationRequestToJson(
  PatchedTicketEscalationRequest instance,
) => <String, dynamic>{
  'ticket': ?instance.ticket,
  'from_agent': ?instance.fromAgent,
  'to_agent': ?instance.toAgent,
  'reason': ?instance.reason,
  'escalated_by': ?instance.escalatedBy,
};
