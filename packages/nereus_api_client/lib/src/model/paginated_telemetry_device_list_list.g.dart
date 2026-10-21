// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_telemetry_device_list_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTelemetryDeviceListListCWProxy {
  PaginatedTelemetryDeviceListList count(int count);

  PaginatedTelemetryDeviceListList next(String? next);

  PaginatedTelemetryDeviceListList previous(String? previous);

  PaginatedTelemetryDeviceListList results(List<TelemetryDeviceList> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryDeviceListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryDeviceListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryDeviceListList call({
    int count,
    String? next,
    String? previous,
    List<TelemetryDeviceList> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTelemetryDeviceListList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTelemetryDeviceListList.copyWith.fieldName(...)`
class _$PaginatedTelemetryDeviceListListCWProxyImpl
    implements _$PaginatedTelemetryDeviceListListCWProxy {
  const _$PaginatedTelemetryDeviceListListCWProxyImpl(this._value);

  final PaginatedTelemetryDeviceListList _value;

  @override
  PaginatedTelemetryDeviceListList count(int count) => this(count: count);

  @override
  PaginatedTelemetryDeviceListList next(String? next) => this(next: next);

  @override
  PaginatedTelemetryDeviceListList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTelemetryDeviceListList results(List<TelemetryDeviceList> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryDeviceListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryDeviceListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryDeviceListList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTelemetryDeviceListList(
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
          : results as List<TelemetryDeviceList>,
    );
  }
}

extension $PaginatedTelemetryDeviceListListCopyWith
    on PaginatedTelemetryDeviceListList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTelemetryDeviceListList.copyWith(...)` or like so:`instanceOfPaginatedTelemetryDeviceListList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTelemetryDeviceListListCWProxy get copyWith =>
      _$PaginatedTelemetryDeviceListListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTelemetryDeviceListList _$PaginatedTelemetryDeviceListListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTelemetryDeviceListList', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTelemetryDeviceListList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TelemetryDeviceList.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTelemetryDeviceListListToJson(
  PaginatedTelemetryDeviceListList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
