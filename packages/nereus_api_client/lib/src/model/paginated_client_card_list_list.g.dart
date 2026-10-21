// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_client_card_list_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedClientCardListListCWProxy {
  PaginatedClientCardListList count(int count);

  PaginatedClientCardListList next(String? next);

  PaginatedClientCardListList previous(String? previous);

  PaginatedClientCardListList results(List<ClientCardList> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientCardListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientCardListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientCardListList call({
    int count,
    String? next,
    String? previous,
    List<ClientCardList> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedClientCardListList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedClientCardListList.copyWith.fieldName(...)`
class _$PaginatedClientCardListListCWProxyImpl
    implements _$PaginatedClientCardListListCWProxy {
  const _$PaginatedClientCardListListCWProxyImpl(this._value);

  final PaginatedClientCardListList _value;

  @override
  PaginatedClientCardListList count(int count) => this(count: count);

  @override
  PaginatedClientCardListList next(String? next) => this(next: next);

  @override
  PaginatedClientCardListList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedClientCardListList results(List<ClientCardList> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientCardListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientCardListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientCardListList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedClientCardListList(
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
          : results as List<ClientCardList>,
    );
  }
}

extension $PaginatedClientCardListListCopyWith on PaginatedClientCardListList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedClientCardListList.copyWith(...)` or like so:`instanceOfPaginatedClientCardListList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedClientCardListListCWProxy get copyWith =>
      _$PaginatedClientCardListListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedClientCardListList _$PaginatedClientCardListListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedClientCardListList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedClientCardListList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => ClientCardList.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedClientCardListListToJson(
  PaginatedClientCardListList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
