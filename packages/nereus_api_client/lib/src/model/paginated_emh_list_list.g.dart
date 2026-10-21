// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_emh_list_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedEMHListListCWProxy {
  PaginatedEMHListList count(int count);

  PaginatedEMHListList next(String? next);

  PaginatedEMHListList previous(String? previous);

  PaginatedEMHListList results(List<EMHList> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedEMHListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedEMHListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedEMHListList call({
    int count,
    String? next,
    String? previous,
    List<EMHList> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedEMHListList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedEMHListList.copyWith.fieldName(...)`
class _$PaginatedEMHListListCWProxyImpl
    implements _$PaginatedEMHListListCWProxy {
  const _$PaginatedEMHListListCWProxyImpl(this._value);

  final PaginatedEMHListList _value;

  @override
  PaginatedEMHListList count(int count) => this(count: count);

  @override
  PaginatedEMHListList next(String? next) => this(next: next);

  @override
  PaginatedEMHListList previous(String? previous) => this(previous: previous);

  @override
  PaginatedEMHListList results(List<EMHList> results) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedEMHListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedEMHListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedEMHListList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedEMHListList(
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
          : results as List<EMHList>,
    );
  }
}

extension $PaginatedEMHListListCopyWith on PaginatedEMHListList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedEMHListList.copyWith(...)` or like so:`instanceOfPaginatedEMHListList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedEMHListListCWProxy get copyWith =>
      _$PaginatedEMHListListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedEMHListList _$PaginatedEMHListListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedEMHListList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedEMHListList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => EMHList.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedEMHListListToJson(
  PaginatedEMHListList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
