// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_ticket_type_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTicketTypeListCWProxy {
  PaginatedTicketTypeList count(int count);

  PaginatedTicketTypeList next(String? next);

  PaginatedTicketTypeList previous(String? previous);

  PaginatedTicketTypeList results(List<TicketType> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketTypeList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketTypeList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketTypeList call({
    int count,
    String? next,
    String? previous,
    List<TicketType> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTicketTypeList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTicketTypeList.copyWith.fieldName(...)`
class _$PaginatedTicketTypeListCWProxyImpl
    implements _$PaginatedTicketTypeListCWProxy {
  const _$PaginatedTicketTypeListCWProxyImpl(this._value);

  final PaginatedTicketTypeList _value;

  @override
  PaginatedTicketTypeList count(int count) => this(count: count);

  @override
  PaginatedTicketTypeList next(String? next) => this(next: next);

  @override
  PaginatedTicketTypeList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTicketTypeList results(List<TicketType> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketTypeList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketTypeList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketTypeList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTicketTypeList(
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
          : results as List<TicketType>,
    );
  }
}

extension $PaginatedTicketTypeListCopyWith on PaginatedTicketTypeList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTicketTypeList.copyWith(...)` or like so:`instanceOfPaginatedTicketTypeList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTicketTypeListCWProxy get copyWith =>
      _$PaginatedTicketTypeListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTicketTypeList _$PaginatedTicketTypeListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTicketTypeList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTicketTypeList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TicketType.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTicketTypeListToJson(
  PaginatedTicketTypeList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
