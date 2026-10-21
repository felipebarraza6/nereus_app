// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_work_order_list_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedWorkOrderListListCWProxy {
  PaginatedWorkOrderListList count(int count);

  PaginatedWorkOrderListList next(String? next);

  PaginatedWorkOrderListList previous(String? previous);

  PaginatedWorkOrderListList results(List<WorkOrderList> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedWorkOrderListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedWorkOrderListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedWorkOrderListList call({
    int count,
    String? next,
    String? previous,
    List<WorkOrderList> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedWorkOrderListList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedWorkOrderListList.copyWith.fieldName(...)`
class _$PaginatedWorkOrderListListCWProxyImpl
    implements _$PaginatedWorkOrderListListCWProxy {
  const _$PaginatedWorkOrderListListCWProxyImpl(this._value);

  final PaginatedWorkOrderListList _value;

  @override
  PaginatedWorkOrderListList count(int count) => this(count: count);

  @override
  PaginatedWorkOrderListList next(String? next) => this(next: next);

  @override
  PaginatedWorkOrderListList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedWorkOrderListList results(List<WorkOrderList> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedWorkOrderListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedWorkOrderListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedWorkOrderListList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedWorkOrderListList(
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
          : results as List<WorkOrderList>,
    );
  }
}

extension $PaginatedWorkOrderListListCopyWith on PaginatedWorkOrderListList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedWorkOrderListList.copyWith(...)` or like so:`instanceOfPaginatedWorkOrderListList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedWorkOrderListListCWProxy get copyWith =>
      _$PaginatedWorkOrderListListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedWorkOrderListList _$PaginatedWorkOrderListListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedWorkOrderListList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedWorkOrderListList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => WorkOrderList.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedWorkOrderListListToJson(
  PaginatedWorkOrderListList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
