// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_checklist_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WorkOrderChecklistItemRequestCWProxy {
  WorkOrderChecklistItemRequest workOrder(String workOrder);

  WorkOrderChecklistItemRequest description(String description);

  WorkOrderChecklistItemRequest isCompleted(bool? isCompleted);

  WorkOrderChecklistItemRequest completedAt(DateTime? completedAt);

  WorkOrderChecklistItemRequest notes(String? notes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderChecklistItemRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderChecklistItemRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderChecklistItemRequest call({
    String workOrder,
    String description,
    bool? isCompleted,
    DateTime? completedAt,
    String? notes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWorkOrderChecklistItemRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWorkOrderChecklistItemRequest.copyWith.fieldName(...)`
class _$WorkOrderChecklistItemRequestCWProxyImpl
    implements _$WorkOrderChecklistItemRequestCWProxy {
  const _$WorkOrderChecklistItemRequestCWProxyImpl(this._value);

  final WorkOrderChecklistItemRequest _value;

  @override
  WorkOrderChecklistItemRequest workOrder(String workOrder) =>
      this(workOrder: workOrder);

  @override
  WorkOrderChecklistItemRequest description(String description) =>
      this(description: description);

  @override
  WorkOrderChecklistItemRequest isCompleted(bool? isCompleted) =>
      this(isCompleted: isCompleted);

  @override
  WorkOrderChecklistItemRequest completedAt(DateTime? completedAt) =>
      this(completedAt: completedAt);

  @override
  WorkOrderChecklistItemRequest notes(String? notes) => this(notes: notes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderChecklistItemRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderChecklistItemRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderChecklistItemRequest call({
    Object? workOrder = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isCompleted = const $CopyWithPlaceholder(),
    Object? completedAt = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
  }) {
    return WorkOrderChecklistItemRequest(
      workOrder: workOrder == const $CopyWithPlaceholder()
          ? _value.workOrder
          // ignore: cast_nullable_to_non_nullable
          : workOrder as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String,
      isCompleted: isCompleted == const $CopyWithPlaceholder()
          ? _value.isCompleted
          // ignore: cast_nullable_to_non_nullable
          : isCompleted as bool?,
      completedAt: completedAt == const $CopyWithPlaceholder()
          ? _value.completedAt
          // ignore: cast_nullable_to_non_nullable
          : completedAt as DateTime?,
      notes: notes == const $CopyWithPlaceholder()
          ? _value.notes
          // ignore: cast_nullable_to_non_nullable
          : notes as String?,
    );
  }
}

extension $WorkOrderChecklistItemRequestCopyWith
    on WorkOrderChecklistItemRequest {
  /// Returns a callable class that can be used as follows: `instanceOfWorkOrderChecklistItemRequest.copyWith(...)` or like so:`instanceOfWorkOrderChecklistItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WorkOrderChecklistItemRequestCWProxy get copyWith =>
      _$WorkOrderChecklistItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrderChecklistItemRequest _$WorkOrderChecklistItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WorkOrderChecklistItemRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['work_order', 'description']);
    final val = WorkOrderChecklistItemRequest(
      workOrder: $checkedConvert('work_order', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String),
      isCompleted: $checkedConvert('is_completed', (v) => v as bool?),
      completedAt: $checkedConvert(
        'completed_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      notes: $checkedConvert('notes', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'workOrder': 'work_order',
    'isCompleted': 'is_completed',
    'completedAt': 'completed_at',
  },
);

Map<String, dynamic> _$WorkOrderChecklistItemRequestToJson(
  WorkOrderChecklistItemRequest instance,
) => <String, dynamic>{
  'work_order': instance.workOrder,
  'description': instance.description,
  'is_completed': ?instance.isCompleted,
  'completed_at': ?instance.completedAt?.toIso8601String(),
  'notes': ?instance.notes,
};
