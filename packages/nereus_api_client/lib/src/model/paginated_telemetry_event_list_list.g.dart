// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_telemetry_event_list_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTelemetryEventListListCWProxy {
  PaginatedTelemetryEventListList count(int count);

  PaginatedTelemetryEventListList next(String? next);

  PaginatedTelemetryEventListList previous(String? previous);

  PaginatedTelemetryEventListList results(List<TelemetryEventList> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryEventListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryEventListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryEventListList call({
    int count,
    String? next,
    String? previous,
    List<TelemetryEventList> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTelemetryEventListList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTelemetryEventListList.copyWith.fieldName(...)`
class _$PaginatedTelemetryEventListListCWProxyImpl
    implements _$PaginatedTelemetryEventListListCWProxy {
  const _$PaginatedTelemetryEventListListCWProxyImpl(this._value);

  final PaginatedTelemetryEventListList _value;

  @override
  PaginatedTelemetryEventListList count(int count) => this(count: count);

  @override
  PaginatedTelemetryEventListList next(String? next) => this(next: next);

  @override
  PaginatedTelemetryEventListList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTelemetryEventListList results(List<TelemetryEventList> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryEventListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryEventListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryEventListList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTelemetryEventListList(
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
          : results as List<TelemetryEventList>,
    );
  }
}

extension $PaginatedTelemetryEventListListCopyWith
    on PaginatedTelemetryEventListList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTelemetryEventListList.copyWith(...)` or like so:`instanceOfPaginatedTelemetryEventListList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTelemetryEventListListCWProxy get copyWith =>
      _$PaginatedTelemetryEventListListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTelemetryEventListList _$PaginatedTelemetryEventListListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTelemetryEventListList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTelemetryEventListList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TelemetryEventList.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTelemetryEventListListToJson(
  PaginatedTelemetryEventListList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
