// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_ticket_list_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTicketListListCWProxy {
  PaginatedTicketListList count(int count);

  PaginatedTicketListList next(String? next);

  PaginatedTicketListList previous(String? previous);

  PaginatedTicketListList results(List<TicketList> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketListList call({
    int count,
    String? next,
    String? previous,
    List<TicketList> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTicketListList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTicketListList.copyWith.fieldName(...)`
class _$PaginatedTicketListListCWProxyImpl
    implements _$PaginatedTicketListListCWProxy {
  const _$PaginatedTicketListListCWProxyImpl(this._value);

  final PaginatedTicketListList _value;

  @override
  PaginatedTicketListList count(int count) => this(count: count);

  @override
  PaginatedTicketListList next(String? next) => this(next: next);

  @override
  PaginatedTicketListList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTicketListList results(List<TicketList> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketListList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTicketListList(
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
          : results as List<TicketList>,
    );
  }
}

extension $PaginatedTicketListListCopyWith on PaginatedTicketListList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTicketListList.copyWith(...)` or like so:`instanceOfPaginatedTicketListList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTicketListListCWProxy get copyWith =>
      _$PaginatedTicketListListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTicketListList _$PaginatedTicketListListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTicketListList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTicketListList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TicketList.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTicketListListToJson(
  PaginatedTicketListList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
