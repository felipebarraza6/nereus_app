// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_work_order_checklist_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedWorkOrderChecklistItemRequestCWProxy {
  PatchedWorkOrderChecklistItemRequest workOrder(String? workOrder);

  PatchedWorkOrderChecklistItemRequest description(String? description);

  PatchedWorkOrderChecklistItemRequest isCompleted(bool? isCompleted);

  PatchedWorkOrderChecklistItemRequest completedAt(DateTime? completedAt);

  PatchedWorkOrderChecklistItemRequest notes(String? notes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedWorkOrderChecklistItemRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedWorkOrderChecklistItemRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedWorkOrderChecklistItemRequest call({
    String? workOrder,
    String? description,
    bool? isCompleted,
    DateTime? completedAt,
    String? notes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedWorkOrderChecklistItemRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedWorkOrderChecklistItemRequest.copyWith.fieldName(...)`
class _$PatchedWorkOrderChecklistItemRequestCWProxyImpl
    implements _$PatchedWorkOrderChecklistItemRequestCWProxy {
  const _$PatchedWorkOrderChecklistItemRequestCWProxyImpl(this._value);

  final PatchedWorkOrderChecklistItemRequest _value;

  @override
  PatchedWorkOrderChecklistItemRequest workOrder(String? workOrder) =>
      this(workOrder: workOrder);

  @override
  PatchedWorkOrderChecklistItemRequest description(String? description) =>
      this(description: description);

  @override
  PatchedWorkOrderChecklistItemRequest isCompleted(bool? isCompleted) =>
      this(isCompleted: isCompleted);

  @override
  PatchedWorkOrderChecklistItemRequest completedAt(DateTime? completedAt) =>
      this(completedAt: completedAt);

  @override
  PatchedWorkOrderChecklistItemRequest notes(String? notes) =>
      this(notes: notes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedWorkOrderChecklistItemRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedWorkOrderChecklistItemRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedWorkOrderChecklistItemRequest call({
    Object? workOrder = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isCompleted = const $CopyWithPlaceholder(),
    Object? completedAt = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
  }) {
    return PatchedWorkOrderChecklistItemRequest(
      workOrder: workOrder == const $CopyWithPlaceholder()
          ? _value.workOrder
          // ignore: cast_nullable_to_non_nullable
          : workOrder as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
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

extension $PatchedWorkOrderChecklistItemRequestCopyWith
    on PatchedWorkOrderChecklistItemRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedWorkOrderChecklistItemRequest.copyWith(...)` or like so:`instanceOfPatchedWorkOrderChecklistItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedWorkOrderChecklistItemRequestCWProxy get copyWith =>
      _$PatchedWorkOrderChecklistItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedWorkOrderChecklistItemRequest
_$PatchedWorkOrderChecklistItemRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedWorkOrderChecklistItemRequest',
      json,
      ($checkedConvert) {
        final val = PatchedWorkOrderChecklistItemRequest(
          workOrder: $checkedConvert('work_order', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
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

Map<String, dynamic> _$PatchedWorkOrderChecklistItemRequestToJson(
  PatchedWorkOrderChecklistItemRequest instance,
) => <String, dynamic>{
  'work_order': ?instance.workOrder,
  'description': ?instance.description,
  'is_completed': ?instance.isCompleted,
  'completed_at': ?instance.completedAt?.toIso8601String(),
  'notes': ?instance.notes,
};
