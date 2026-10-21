// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_job_title_list_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedJobTitleListListCWProxy {
  PaginatedJobTitleListList count(int count);

  PaginatedJobTitleListList next(String? next);

  PaginatedJobTitleListList previous(String? previous);

  PaginatedJobTitleListList results(List<JobTitleList> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedJobTitleListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedJobTitleListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedJobTitleListList call({
    int count,
    String? next,
    String? previous,
    List<JobTitleList> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedJobTitleListList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedJobTitleListList.copyWith.fieldName(...)`
class _$PaginatedJobTitleListListCWProxyImpl
    implements _$PaginatedJobTitleListListCWProxy {
  const _$PaginatedJobTitleListListCWProxyImpl(this._value);

  final PaginatedJobTitleListList _value;

  @override
  PaginatedJobTitleListList count(int count) => this(count: count);

  @override
  PaginatedJobTitleListList next(String? next) => this(next: next);

  @override
  PaginatedJobTitleListList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedJobTitleListList results(List<JobTitleList> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedJobTitleListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedJobTitleListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedJobTitleListList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedJobTitleListList(
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
          : results as List<JobTitleList>,
    );
  }
}

extension $PaginatedJobTitleListListCopyWith on PaginatedJobTitleListList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedJobTitleListList.copyWith(...)` or like so:`instanceOfPaginatedJobTitleListList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedJobTitleListListCWProxy get copyWith =>
      _$PaginatedJobTitleListListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedJobTitleListList _$PaginatedJobTitleListListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedJobTitleListList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedJobTitleListList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => JobTitleList.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedJobTitleListListToJson(
  PaginatedJobTitleListList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
