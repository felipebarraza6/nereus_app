// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_ticket_category_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTicketCategoryListCWProxy {
  PaginatedTicketCategoryList count(int count);

  PaginatedTicketCategoryList next(String? next);

  PaginatedTicketCategoryList previous(String? previous);

  PaginatedTicketCategoryList results(List<TicketCategory> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketCategoryList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketCategoryList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketCategoryList call({
    int count,
    String? next,
    String? previous,
    List<TicketCategory> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTicketCategoryList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTicketCategoryList.copyWith.fieldName(...)`
class _$PaginatedTicketCategoryListCWProxyImpl
    implements _$PaginatedTicketCategoryListCWProxy {
  const _$PaginatedTicketCategoryListCWProxyImpl(this._value);

  final PaginatedTicketCategoryList _value;

  @override
  PaginatedTicketCategoryList count(int count) => this(count: count);

  @override
  PaginatedTicketCategoryList next(String? next) => this(next: next);

  @override
  PaginatedTicketCategoryList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTicketCategoryList results(List<TicketCategory> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketCategoryList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketCategoryList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketCategoryList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTicketCategoryList(
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
          : results as List<TicketCategory>,
    );
  }
}

extension $PaginatedTicketCategoryListCopyWith on PaginatedTicketCategoryList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTicketCategoryList.copyWith(...)` or like so:`instanceOfPaginatedTicketCategoryList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTicketCategoryListCWProxy get copyWith =>
      _$PaginatedTicketCategoryListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTicketCategoryList _$PaginatedTicketCategoryListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTicketCategoryList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTicketCategoryList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TicketCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTicketCategoryListToJson(
  PaginatedTicketCategoryList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
