// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_telemetry_alert_channel_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTelemetryAlertChannelListCWProxy {
  PaginatedTelemetryAlertChannelList count(int count);

  PaginatedTelemetryAlertChannelList next(String? next);

  PaginatedTelemetryAlertChannelList previous(String? previous);

  PaginatedTelemetryAlertChannelList results(
    List<TelemetryAlertChannel> results,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryAlertChannelList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryAlertChannelList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryAlertChannelList call({
    int count,
    String? next,
    String? previous,
    List<TelemetryAlertChannel> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTelemetryAlertChannelList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTelemetryAlertChannelList.copyWith.fieldName(...)`
class _$PaginatedTelemetryAlertChannelListCWProxyImpl
    implements _$PaginatedTelemetryAlertChannelListCWProxy {
  const _$PaginatedTelemetryAlertChannelListCWProxyImpl(this._value);

  final PaginatedTelemetryAlertChannelList _value;

  @override
  PaginatedTelemetryAlertChannelList count(int count) => this(count: count);

  @override
  PaginatedTelemetryAlertChannelList next(String? next) => this(next: next);

  @override
  PaginatedTelemetryAlertChannelList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTelemetryAlertChannelList results(
    List<TelemetryAlertChannel> results,
  ) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryAlertChannelList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryAlertChannelList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryAlertChannelList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTelemetryAlertChannelList(
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
          : results as List<TelemetryAlertChannel>,
    );
  }
}

extension $PaginatedTelemetryAlertChannelListCopyWith
    on PaginatedTelemetryAlertChannelList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTelemetryAlertChannelList.copyWith(...)` or like so:`instanceOfPaginatedTelemetryAlertChannelList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTelemetryAlertChannelListCWProxy get copyWith =>
      _$PaginatedTelemetryAlertChannelListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTelemetryAlertChannelList _$PaginatedTelemetryAlertChannelListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTelemetryAlertChannelList', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTelemetryAlertChannelList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TelemetryAlertChannel.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTelemetryAlertChannelListToJson(
  PaginatedTelemetryAlertChannelList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
