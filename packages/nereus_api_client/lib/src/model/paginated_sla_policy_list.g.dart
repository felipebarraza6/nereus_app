// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_sla_policy_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedSLAPolicyListCWProxy {
  PaginatedSLAPolicyList count(int count);

  PaginatedSLAPolicyList next(String? next);

  PaginatedSLAPolicyList previous(String? previous);

  PaginatedSLAPolicyList results(List<SLAPolicy> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedSLAPolicyList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedSLAPolicyList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedSLAPolicyList call({
    int count,
    String? next,
    String? previous,
    List<SLAPolicy> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedSLAPolicyList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedSLAPolicyList.copyWith.fieldName(...)`
class _$PaginatedSLAPolicyListCWProxyImpl
    implements _$PaginatedSLAPolicyListCWProxy {
  const _$PaginatedSLAPolicyListCWProxyImpl(this._value);

  final PaginatedSLAPolicyList _value;

  @override
  PaginatedSLAPolicyList count(int count) => this(count: count);

  @override
  PaginatedSLAPolicyList next(String? next) => this(next: next);

  @override
  PaginatedSLAPolicyList previous(String? previous) => this(previous: previous);

  @override
  PaginatedSLAPolicyList results(List<SLAPolicy> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedSLAPolicyList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedSLAPolicyList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedSLAPolicyList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedSLAPolicyList(
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
          : results as List<SLAPolicy>,
    );
  }
}

extension $PaginatedSLAPolicyListCopyWith on PaginatedSLAPolicyList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedSLAPolicyList.copyWith(...)` or like so:`instanceOfPaginatedSLAPolicyList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedSLAPolicyListCWProxy get copyWith =>
      _$PaginatedSLAPolicyListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedSLAPolicyList _$PaginatedSLAPolicyListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedSLAPolicyList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedSLAPolicyList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => SLAPolicy.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedSLAPolicyListToJson(
  PaginatedSLAPolicyList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
