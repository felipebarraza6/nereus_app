// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_work_order_feedback_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedWorkOrderFeedbackRequestCWProxy {
  PatchedWorkOrderFeedbackRequest workOrder(String? workOrder);

  PatchedWorkOrderFeedbackRequest diagnosis(String? diagnosis);

  PatchedWorkOrderFeedbackRequest actionsTaken(String? actionsTaken);

  PatchedWorkOrderFeedbackRequest partsUsed(Object? partsUsed);

  PatchedWorkOrderFeedbackRequest clientSignature(String? clientSignature);

  PatchedWorkOrderFeedbackRequest clientName(String? clientName);

  PatchedWorkOrderFeedbackRequest isSatisfied(bool? isSatisfied);

  PatchedWorkOrderFeedbackRequest followUpNeeded(bool? followUpNeeded);

  PatchedWorkOrderFeedbackRequest followUpNotes(String? followUpNotes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedWorkOrderFeedbackRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedWorkOrderFeedbackRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedWorkOrderFeedbackRequest call({
    String? workOrder,
    String? diagnosis,
    String? actionsTaken,
    Object? partsUsed,
    String? clientSignature,
    String? clientName,
    bool? isSatisfied,
    bool? followUpNeeded,
    String? followUpNotes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedWorkOrderFeedbackRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedWorkOrderFeedbackRequest.copyWith.fieldName(...)`
class _$PatchedWorkOrderFeedbackRequestCWProxyImpl
    implements _$PatchedWorkOrderFeedbackRequestCWProxy {
  const _$PatchedWorkOrderFeedbackRequestCWProxyImpl(this._value);

  final PatchedWorkOrderFeedbackRequest _value;

  @override
  PatchedWorkOrderFeedbackRequest workOrder(String? workOrder) =>
      this(workOrder: workOrder);

  @override
  PatchedWorkOrderFeedbackRequest diagnosis(String? diagnosis) =>
      this(diagnosis: diagnosis);

  @override
  PatchedWorkOrderFeedbackRequest actionsTaken(String? actionsTaken) =>
      this(actionsTaken: actionsTaken);

  @override
  PatchedWorkOrderFeedbackRequest partsUsed(Object? partsUsed) =>
      this(partsUsed: partsUsed);

  @override
  PatchedWorkOrderFeedbackRequest clientSignature(String? clientSignature) =>
      this(clientSignature: clientSignature);

  @override
  PatchedWorkOrderFeedbackRequest clientName(String? clientName) =>
      this(clientName: clientName);

  @override
  PatchedWorkOrderFeedbackRequest isSatisfied(bool? isSatisfied) =>
      this(isSatisfied: isSatisfied);

  @override
  PatchedWorkOrderFeedbackRequest followUpNeeded(bool? followUpNeeded) =>
      this(followUpNeeded: followUpNeeded);

  @override
  PatchedWorkOrderFeedbackRequest followUpNotes(String? followUpNotes) =>
      this(followUpNotes: followUpNotes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedWorkOrderFeedbackRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedWorkOrderFeedbackRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedWorkOrderFeedbackRequest call({
    Object? workOrder = const $CopyWithPlaceholder(),
    Object? diagnosis = const $CopyWithPlaceholder(),
    Object? actionsTaken = const $CopyWithPlaceholder(),
    Object? partsUsed = const $CopyWithPlaceholder(),
    Object? clientSignature = const $CopyWithPlaceholder(),
    Object? clientName = const $CopyWithPlaceholder(),
    Object? isSatisfied = const $CopyWithPlaceholder(),
    Object? followUpNeeded = const $CopyWithPlaceholder(),
    Object? followUpNotes = const $CopyWithPlaceholder(),
  }) {
    return PatchedWorkOrderFeedbackRequest(
      workOrder: workOrder == const $CopyWithPlaceholder()
          ? _value.workOrder
          // ignore: cast_nullable_to_non_nullable
          : workOrder as String?,
      diagnosis: diagnosis == const $CopyWithPlaceholder()
          ? _value.diagnosis
          // ignore: cast_nullable_to_non_nullable
          : diagnosis as String?,
      actionsTaken: actionsTaken == const $CopyWithPlaceholder()
          ? _value.actionsTaken
          // ignore: cast_nullable_to_non_nullable
          : actionsTaken as String?,
      partsUsed: partsUsed == const $CopyWithPlaceholder()
          ? _value.partsUsed
          // ignore: cast_nullable_to_non_nullable
          : partsUsed as Object?,
      clientSignature: clientSignature == const $CopyWithPlaceholder()
          ? _value.clientSignature
          // ignore: cast_nullable_to_non_nullable
          : clientSignature as String?,
      clientName: clientName == const $CopyWithPlaceholder()
          ? _value.clientName
          // ignore: cast_nullable_to_non_nullable
          : clientName as String?,
      isSatisfied: isSatisfied == const $CopyWithPlaceholder()
          ? _value.isSatisfied
          // ignore: cast_nullable_to_non_nullable
          : isSatisfied as bool?,
      followUpNeeded: followUpNeeded == const $CopyWithPlaceholder()
          ? _value.followUpNeeded
          // ignore: cast_nullable_to_non_nullable
          : followUpNeeded as bool?,
      followUpNotes: followUpNotes == const $CopyWithPlaceholder()
          ? _value.followUpNotes
          // ignore: cast_nullable_to_non_nullable
          : followUpNotes as String?,
    );
  }
}

extension $PatchedWorkOrderFeedbackRequestCopyWith
    on PatchedWorkOrderFeedbackRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedWorkOrderFeedbackRequest.copyWith(...)` or like so:`instanceOfPatchedWorkOrderFeedbackRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedWorkOrderFeedbackRequestCWProxy get copyWith =>
      _$PatchedWorkOrderFeedbackRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedWorkOrderFeedbackRequest _$PatchedWorkOrderFeedbackRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedWorkOrderFeedbackRequest',
  json,
  ($checkedConvert) {
    final val = PatchedWorkOrderFeedbackRequest(
      workOrder: $checkedConvert('work_order', (v) => v as String?),
      diagnosis: $checkedConvert('diagnosis', (v) => v as String?),
      actionsTaken: $checkedConvert('actions_taken', (v) => v as String?),
      partsUsed: $checkedConvert('parts_used', (v) => v),
      clientSignature: $checkedConvert('client_signature', (v) => v as String?),
      clientName: $checkedConvert('client_name', (v) => v as String?),
      isSatisfied: $checkedConvert('is_satisfied', (v) => v as bool?),
      followUpNeeded: $checkedConvert('follow_up_needed', (v) => v as bool?),
      followUpNotes: $checkedConvert('follow_up_notes', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'workOrder': 'work_order',
    'actionsTaken': 'actions_taken',
    'partsUsed': 'parts_used',
    'clientSignature': 'client_signature',
    'clientName': 'client_name',
    'isSatisfied': 'is_satisfied',
    'followUpNeeded': 'follow_up_needed',
    'followUpNotes': 'follow_up_notes',
  },
);

Map<String, dynamic> _$PatchedWorkOrderFeedbackRequestToJson(
  PatchedWorkOrderFeedbackRequest instance,
) => <String, dynamic>{
  'work_order': ?instance.workOrder,
  'diagnosis': ?instance.diagnosis,
  'actions_taken': ?instance.actionsTaken,
  'parts_used': ?instance.partsUsed,
  'client_signature': ?instance.clientSignature,
  'client_name': ?instance.clientName,
  'is_satisfied': ?instance.isSatisfied,
  'follow_up_needed': ?instance.followUpNeeded,
  'follow_up_notes': ?instance.followUpNotes,
};
