// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_feedback.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WorkOrderFeedbackCWProxy {
  WorkOrderFeedback id(String id);

  WorkOrderFeedback workOrder(String workOrder);

  WorkOrderFeedback diagnosis(String diagnosis);

  WorkOrderFeedback actionsTaken(String actionsTaken);

  WorkOrderFeedback partsUsed(Object? partsUsed);

  WorkOrderFeedback clientSignature(String? clientSignature);

  WorkOrderFeedback clientName(String? clientName);

  WorkOrderFeedback isSatisfied(bool? isSatisfied);

  WorkOrderFeedback followUpNeeded(bool? followUpNeeded);

  WorkOrderFeedback followUpNotes(String? followUpNotes);

  WorkOrderFeedback created(DateTime created);

  WorkOrderFeedback modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderFeedback(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderFeedback(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderFeedback call({
    String id,
    String workOrder,
    String diagnosis,
    String actionsTaken,
    Object? partsUsed,
    String? clientSignature,
    String? clientName,
    bool? isSatisfied,
    bool? followUpNeeded,
    String? followUpNotes,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWorkOrderFeedback.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWorkOrderFeedback.copyWith.fieldName(...)`
class _$WorkOrderFeedbackCWProxyImpl implements _$WorkOrderFeedbackCWProxy {
  const _$WorkOrderFeedbackCWProxyImpl(this._value);

  final WorkOrderFeedback _value;

  @override
  WorkOrderFeedback id(String id) => this(id: id);

  @override
  WorkOrderFeedback workOrder(String workOrder) => this(workOrder: workOrder);

  @override
  WorkOrderFeedback diagnosis(String diagnosis) => this(diagnosis: diagnosis);

  @override
  WorkOrderFeedback actionsTaken(String actionsTaken) =>
      this(actionsTaken: actionsTaken);

  @override
  WorkOrderFeedback partsUsed(Object? partsUsed) => this(partsUsed: partsUsed);

  @override
  WorkOrderFeedback clientSignature(String? clientSignature) =>
      this(clientSignature: clientSignature);

  @override
  WorkOrderFeedback clientName(String? clientName) =>
      this(clientName: clientName);

  @override
  WorkOrderFeedback isSatisfied(bool? isSatisfied) =>
      this(isSatisfied: isSatisfied);

  @override
  WorkOrderFeedback followUpNeeded(bool? followUpNeeded) =>
      this(followUpNeeded: followUpNeeded);

  @override
  WorkOrderFeedback followUpNotes(String? followUpNotes) =>
      this(followUpNotes: followUpNotes);

  @override
  WorkOrderFeedback created(DateTime created) => this(created: created);

  @override
  WorkOrderFeedback modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderFeedback(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderFeedback(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderFeedback call({
    Object? id = const $CopyWithPlaceholder(),
    Object? workOrder = const $CopyWithPlaceholder(),
    Object? diagnosis = const $CopyWithPlaceholder(),
    Object? actionsTaken = const $CopyWithPlaceholder(),
    Object? partsUsed = const $CopyWithPlaceholder(),
    Object? clientSignature = const $CopyWithPlaceholder(),
    Object? clientName = const $CopyWithPlaceholder(),
    Object? isSatisfied = const $CopyWithPlaceholder(),
    Object? followUpNeeded = const $CopyWithPlaceholder(),
    Object? followUpNotes = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return WorkOrderFeedback(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
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

extension $WorkOrderFeedbackCopyWith on WorkOrderFeedback {
  /// Returns a callable class that can be used as follows: `instanceOfWorkOrderFeedback.copyWith(...)` or like so:`instanceOfWorkOrderFeedback.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WorkOrderFeedbackCWProxy get copyWith =>
      _$WorkOrderFeedbackCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrderFeedback _$WorkOrderFeedbackFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WorkOrderFeedback',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'work_order',
        'diagnosis',
        'actions_taken',
        'created',
        'modified',
      ],
    );
    final val = WorkOrderFeedback(
      id: $checkedConvert('id', (v) => v as String),
      workOrder: $checkedConvert('work_order', (v) => v as String),
      diagnosis: $checkedConvert('diagnosis', (v) => v as String),
      actionsTaken: $checkedConvert('actions_taken', (v) => v as String),
      partsUsed: $checkedConvert('parts_used', (v) => v),
      clientSignature: $checkedConvert('client_signature', (v) => v as String?),
      clientName: $checkedConvert('client_name', (v) => v as String?),
      isSatisfied: $checkedConvert('is_satisfied', (v) => v as bool?),
      followUpNeeded: $checkedConvert('follow_up_needed', (v) => v as bool?),
      followUpNotes: $checkedConvert('follow_up_notes', (v) => v as String?),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
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

Map<String, dynamic> _$WorkOrderFeedbackToJson(WorkOrderFeedback instance) =>
    <String, dynamic>{
      'id': instance.id,
      'work_order': instance.workOrder,
      'diagnosis': instance.diagnosis,
      'actions_taken': instance.actionsTaken,
      'parts_used': ?instance.partsUsed,
      'client_signature': ?instance.clientSignature,
      'client_name': ?instance.clientName,
      'is_satisfied': ?instance.isSatisfied,
      'follow_up_needed': ?instance.followUpNeeded,
      'follow_up_notes': ?instance.followUpNotes,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
