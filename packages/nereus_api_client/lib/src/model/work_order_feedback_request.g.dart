// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_feedback_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WorkOrderFeedbackRequestCWProxy {
  WorkOrderFeedbackRequest workOrder(String workOrder);

  WorkOrderFeedbackRequest diagnosis(String diagnosis);

  WorkOrderFeedbackRequest actionsTaken(String actionsTaken);

  WorkOrderFeedbackRequest partsUsed(Object? partsUsed);

  WorkOrderFeedbackRequest clientSignature(String? clientSignature);

  WorkOrderFeedbackRequest clientName(String? clientName);

  WorkOrderFeedbackRequest isSatisfied(bool? isSatisfied);

  WorkOrderFeedbackRequest followUpNeeded(bool? followUpNeeded);

  WorkOrderFeedbackRequest followUpNotes(String? followUpNotes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderFeedbackRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderFeedbackRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderFeedbackRequest call({
    String workOrder,
    String diagnosis,
    String actionsTaken,
    Object? partsUsed,
    String? clientSignature,
    String? clientName,
    bool? isSatisfied,
    bool? followUpNeeded,
    String? followUpNotes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWorkOrderFeedbackRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWorkOrderFeedbackRequest.copyWith.fieldName(...)`
class _$WorkOrderFeedbackRequestCWProxyImpl
    implements _$WorkOrderFeedbackRequestCWProxy {
  const _$WorkOrderFeedbackRequestCWProxyImpl(this._value);

  final WorkOrderFeedbackRequest _value;

  @override
  WorkOrderFeedbackRequest workOrder(String workOrder) =>
      this(workOrder: workOrder);

  @override
  WorkOrderFeedbackRequest diagnosis(String diagnosis) =>
      this(diagnosis: diagnosis);

  @override
  WorkOrderFeedbackRequest actionsTaken(String actionsTaken) =>
      this(actionsTaken: actionsTaken);

  @override
  WorkOrderFeedbackRequest partsUsed(Object? partsUsed) =>
      this(partsUsed: partsUsed);

  @override
  WorkOrderFeedbackRequest clientSignature(String? clientSignature) =>
      this(clientSignature: clientSignature);

  @override
  WorkOrderFeedbackRequest clientName(String? clientName) =>
      this(clientName: clientName);

  @override
  WorkOrderFeedbackRequest isSatisfied(bool? isSatisfied) =>
      this(isSatisfied: isSatisfied);

  @override
  WorkOrderFeedbackRequest followUpNeeded(bool? followUpNeeded) =>
      this(followUpNeeded: followUpNeeded);

  @override
  WorkOrderFeedbackRequest followUpNotes(String? followUpNotes) =>
      this(followUpNotes: followUpNotes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderFeedbackRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderFeedbackRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderFeedbackRequest call({
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
    return WorkOrderFeedbackRequest(
      workOrder: workOrder == const $CopyWithPlaceholder()
          ? _value.workOrder
          // ignore: cast_nullable_to_non_nullable
          : workOrder as String,
      diagnosis: diagnosis == const $CopyWithPlaceholder()
          ? _value.diagnosis
          // ignore: cast_nullable_to_non_nullable
          : diagnosis as String,
      actionsTaken: actionsTaken == const $CopyWithPlaceholder()
          ? _value.actionsTaken
          // ignore: cast_nullable_to_non_nullable
          : actionsTaken as String,
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

extension $WorkOrderFeedbackRequestCopyWith on WorkOrderFeedbackRequest {
  /// Returns a callable class that can be used as follows: `instanceOfWorkOrderFeedbackRequest.copyWith(...)` or like so:`instanceOfWorkOrderFeedbackRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WorkOrderFeedbackRequestCWProxy get copyWith =>
      _$WorkOrderFeedbackRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrderFeedbackRequest _$WorkOrderFeedbackRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WorkOrderFeedbackRequest',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['work_order', 'diagnosis', 'actions_taken'],
    );
    final val = WorkOrderFeedbackRequest(
      workOrder: $checkedConvert('work_order', (v) => v as String),
      diagnosis: $checkedConvert('diagnosis', (v) => v as String),
      actionsTaken: $checkedConvert('actions_taken', (v) => v as String),
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

Map<String, dynamic> _$WorkOrderFeedbackRequestToJson(
  WorkOrderFeedbackRequest instance,
) => <String, dynamic>{
  'work_order': instance.workOrder,
  'diagnosis': instance.diagnosis,
  'actions_taken': instance.actionsTaken,
  'parts_used': ?instance.partsUsed,
  'client_signature': ?instance.clientSignature,
  'client_name': ?instance.clientName,
  'is_satisfied': ?instance.isSatisfied,
  'follow_up_needed': ?instance.followUpNeeded,
  'follow_up_notes': ?instance.followUpNotes,
};
