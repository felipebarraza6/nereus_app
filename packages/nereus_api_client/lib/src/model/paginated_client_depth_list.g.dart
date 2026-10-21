// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_client_depth_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedClientDepthListCWProxy {
  PaginatedClientDepthList count(int count);

  PaginatedClientDepthList next(String? next);

  PaginatedClientDepthList previous(String? previous);

  PaginatedClientDepthList results(List<ClientDepth> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientDepthList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientDepthList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientDepthList call({
    int count,
    String? next,
    String? previous,
    List<ClientDepth> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedClientDepthList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedClientDepthList.copyWith.fieldName(...)`
class _$PaginatedClientDepthListCWProxyImpl
    implements _$PaginatedClientDepthListCWProxy {
  const _$PaginatedClientDepthListCWProxyImpl(this._value);

  final PaginatedClientDepthList _value;

  @override
  PaginatedClientDepthList count(int count) => this(count: count);

  @override
  PaginatedClientDepthList next(String? next) => this(next: next);

  @override
  PaginatedClientDepthList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedClientDepthList results(List<ClientDepth> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientDepthList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientDepthList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientDepthList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedClientDepthList(
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
          : results as List<ClientDepth>,
    );
  }
}

extension $PaginatedClientDepthListCopyWith on PaginatedClientDepthList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedClientDepthList.copyWith(...)` or like so:`instanceOfPaginatedClientDepthList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedClientDepthListCWProxy get copyWith =>
      _$PaginatedClientDepthListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedClientDepthList _$PaginatedClientDepthListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedClientDepthList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedClientDepthList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => ClientDepth.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedClientDepthListToJson(
  PaginatedClientDepthList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
