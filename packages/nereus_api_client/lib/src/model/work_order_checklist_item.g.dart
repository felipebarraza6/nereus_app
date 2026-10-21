// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_checklist_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WorkOrderChecklistItemCWProxy {
  WorkOrderChecklistItem id(String id);

  WorkOrderChecklistItem workOrder(String workOrder);

  WorkOrderChecklistItem description(String description);

  WorkOrderChecklistItem isCompleted(bool? isCompleted);

  WorkOrderChecklistItem completedAt(DateTime? completedAt);

  WorkOrderChecklistItem notes(String? notes);

  WorkOrderChecklistItem created(DateTime created);

  WorkOrderChecklistItem modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderChecklistItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderChecklistItem(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderChecklistItem call({
    String id,
    String workOrder,
    String description,
    bool? isCompleted,
    DateTime? completedAt,
    String? notes,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWorkOrderChecklistItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWorkOrderChecklistItem.copyWith.fieldName(...)`
class _$WorkOrderChecklistItemCWProxyImpl
    implements _$WorkOrderChecklistItemCWProxy {
  const _$WorkOrderChecklistItemCWProxyImpl(this._value);

  final WorkOrderChecklistItem _value;

  @override
  WorkOrderChecklistItem id(String id) => this(id: id);

  @override
  WorkOrderChecklistItem workOrder(String workOrder) =>
      this(workOrder: workOrder);

  @override
  WorkOrderChecklistItem description(String description) =>
      this(description: description);

  @override
  WorkOrderChecklistItem isCompleted(bool? isCompleted) =>
      this(isCompleted: isCompleted);

  @override
  WorkOrderChecklistItem completedAt(DateTime? completedAt) =>
      this(completedAt: completedAt);

  @override
  WorkOrderChecklistItem notes(String? notes) => this(notes: notes);

  @override
  WorkOrderChecklistItem created(DateTime created) => this(created: created);

  @override
  WorkOrderChecklistItem modified(DateTime modified) =>
      this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderChecklistItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderChecklistItem(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderChecklistItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? workOrder = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isCompleted = const $CopyWithPlaceholder(),
    Object? completedAt = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return WorkOrderChecklistItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
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

extension $WorkOrderChecklistItemCopyWith on WorkOrderChecklistItem {
  /// Returns a callable class that can be used as follows: `instanceOfWorkOrderChecklistItem.copyWith(...)` or like so:`instanceOfWorkOrderChecklistItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WorkOrderChecklistItemCWProxy get copyWith =>
      _$WorkOrderChecklistItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrderChecklistItem _$WorkOrderChecklistItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WorkOrderChecklistItem',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'work_order',
        'description',
        'created',
        'modified',
      ],
    );
    final val = WorkOrderChecklistItem(
      id: $checkedConvert('id', (v) => v as String),
      workOrder: $checkedConvert('work_order', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String),
      isCompleted: $checkedConvert('is_completed', (v) => v as bool?),
      completedAt: $checkedConvert(
        'completed_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      notes: $checkedConvert('notes', (v) => v as String?),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'workOrder': 'work_order',
    'isCompleted': 'is_completed',
    'completedAt': 'completed_at',
  },
);

Map<String, dynamic> _$WorkOrderChecklistItemToJson(
  WorkOrderChecklistItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'work_order': instance.workOrder,
  'description': instance.description,
  'is_completed': ?instance.isCompleted,
  'completed_at': ?instance.completedAt?.toIso8601String(),
  'notes': ?instance.notes,
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};
