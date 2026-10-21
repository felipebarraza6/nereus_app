// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_telemetry_reading_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTelemetryReadingListCWProxy {
  PaginatedTelemetryReadingList count(int count);

  PaginatedTelemetryReadingList next(String? next);

  PaginatedTelemetryReadingList previous(String? previous);

  PaginatedTelemetryReadingList results(List<TelemetryReading> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryReadingList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryReadingList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryReadingList call({
    int count,
    String? next,
    String? previous,
    List<TelemetryReading> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTelemetryReadingList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTelemetryReadingList.copyWith.fieldName(...)`
class _$PaginatedTelemetryReadingListCWProxyImpl
    implements _$PaginatedTelemetryReadingListCWProxy {
  const _$PaginatedTelemetryReadingListCWProxyImpl(this._value);

  final PaginatedTelemetryReadingList _value;

  @override
  PaginatedTelemetryReadingList count(int count) => this(count: count);

  @override
  PaginatedTelemetryReadingList next(String? next) => this(next: next);

  @override
  PaginatedTelemetryReadingList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTelemetryReadingList results(List<TelemetryReading> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryReadingList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryReadingList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryReadingList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTelemetryReadingList(
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
          : results as List<TelemetryReading>,
    );
  }
}

extension $PaginatedTelemetryReadingListCopyWith
    on PaginatedTelemetryReadingList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTelemetryReadingList.copyWith(...)` or like so:`instanceOfPaginatedTelemetryReadingList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTelemetryReadingListCWProxy get copyWith =>
      _$PaginatedTelemetryReadingListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTelemetryReadingList _$PaginatedTelemetryReadingListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTelemetryReadingList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTelemetryReadingList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TelemetryReading.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTelemetryReadingListToJson(
  PaginatedTelemetryReadingList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
