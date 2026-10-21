// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_support_agent_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedSupportAgentListCWProxy {
  PaginatedSupportAgentList count(int count);

  PaginatedSupportAgentList next(String? next);

  PaginatedSupportAgentList previous(String? previous);

  PaginatedSupportAgentList results(List<SupportAgent> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedSupportAgentList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedSupportAgentList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedSupportAgentList call({
    int count,
    String? next,
    String? previous,
    List<SupportAgent> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedSupportAgentList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedSupportAgentList.copyWith.fieldName(...)`
class _$PaginatedSupportAgentListCWProxyImpl
    implements _$PaginatedSupportAgentListCWProxy {
  const _$PaginatedSupportAgentListCWProxyImpl(this._value);

  final PaginatedSupportAgentList _value;

  @override
  PaginatedSupportAgentList count(int count) => this(count: count);

  @override
  PaginatedSupportAgentList next(String? next) => this(next: next);

  @override
  PaginatedSupportAgentList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedSupportAgentList results(List<SupportAgent> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedSupportAgentList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedSupportAgentList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedSupportAgentList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedSupportAgentList(
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
          : results as List<SupportAgent>,
    );
  }
}

extension $PaginatedSupportAgentListCopyWith on PaginatedSupportAgentList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedSupportAgentList.copyWith(...)` or like so:`instanceOfPaginatedSupportAgentList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedSupportAgentListCWProxy get copyWith =>
      _$PaginatedSupportAgentListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedSupportAgentList _$PaginatedSupportAgentListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedSupportAgentList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedSupportAgentList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => SupportAgent.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedSupportAgentListToJson(
  PaginatedSupportAgentList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
