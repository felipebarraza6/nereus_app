// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_work_order_checklist_item_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedWorkOrderChecklistItemListCWProxy {
  PaginatedWorkOrderChecklistItemList count(int count);

  PaginatedWorkOrderChecklistItemList next(String? next);

  PaginatedWorkOrderChecklistItemList previous(String? previous);

  PaginatedWorkOrderChecklistItemList results(
    List<WorkOrderChecklistItem> results,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedWorkOrderChecklistItemList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedWorkOrderChecklistItemList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedWorkOrderChecklistItemList call({
    int count,
    String? next,
    String? previous,
    List<WorkOrderChecklistItem> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedWorkOrderChecklistItemList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedWorkOrderChecklistItemList.copyWith.fieldName(...)`
class _$PaginatedWorkOrderChecklistItemListCWProxyImpl
    implements _$PaginatedWorkOrderChecklistItemListCWProxy {
  const _$PaginatedWorkOrderChecklistItemListCWProxyImpl(this._value);

  final PaginatedWorkOrderChecklistItemList _value;

  @override
  PaginatedWorkOrderChecklistItemList count(int count) => this(count: count);

  @override
  PaginatedWorkOrderChecklistItemList next(String? next) => this(next: next);

  @override
  PaginatedWorkOrderChecklistItemList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedWorkOrderChecklistItemList results(
    List<WorkOrderChecklistItem> results,
  ) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedWorkOrderChecklistItemList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedWorkOrderChecklistItemList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedWorkOrderChecklistItemList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedWorkOrderChecklistItemList(
      count: count == const $CopyWithPlaceholder()
          ? _value.count
          // ignore: cast_nullable_to_non_nullable
          : count as int,
      next: next == const $CopyWithPlaceholder()
          ? _value.next
          // ignore: cast_nullable_to_non_nullable
          : next as String?,
      previous: previous == const $CopyWithPlaceholder()
          ? _value.previous
          // ignore: cast_nullable_to_non_nullable
          : previous as String?,
      results: results == const $CopyWithPlaceholder()
          ? _value.results
          // ignore: cast_nullable_to_non_nullable
          : results as List<WorkOrderChecklistItem>,
    );
  }
}

extension $PaginatedWorkOrderChecklistItemListCopyWith
    on PaginatedWorkOrderChecklistItemList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedWorkOrderChecklistItemList.copyWith(...)` or like so:`instanceOfPaginatedWorkOrderChecklistItemList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedWorkOrderChecklistItemListCWProxy get copyWith =>
      _$PaginatedWorkOrderChecklistItemListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedWorkOrderChecklistItemList
_$PaginatedWorkOrderChecklistItemListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaginatedWorkOrderChecklistItemList', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['count', 'results']);
      final val = PaginatedWorkOrderChecklistItemList(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        next: $checkedConvert('next', (v) => v as String?),
        previous: $checkedConvert('previous', (v) => v as String?),
        results: $checkedConvert(
          'results',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    WorkOrderChecklistItem.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaginatedWorkOrderChecklistItemListToJson(
  PaginatedWorkOrderChecklistItemList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
