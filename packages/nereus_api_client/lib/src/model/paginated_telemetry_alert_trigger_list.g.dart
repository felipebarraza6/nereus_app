// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_telemetry_alert_trigger_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTelemetryAlertTriggerListCWProxy {
  PaginatedTelemetryAlertTriggerList count(int count);

  PaginatedTelemetryAlertTriggerList next(String? next);

  PaginatedTelemetryAlertTriggerList previous(String? previous);

  PaginatedTelemetryAlertTriggerList results(
    List<TelemetryAlertTrigger> results,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryAlertTriggerList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryAlertTriggerList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryAlertTriggerList call({
    int count,
    String? next,
    String? previous,
    List<TelemetryAlertTrigger> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTelemetryAlertTriggerList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTelemetryAlertTriggerList.copyWith.fieldName(...)`
class _$PaginatedTelemetryAlertTriggerListCWProxyImpl
    implements _$PaginatedTelemetryAlertTriggerListCWProxy {
  const _$PaginatedTelemetryAlertTriggerListCWProxyImpl(this._value);

  final PaginatedTelemetryAlertTriggerList _value;

  @override
  PaginatedTelemetryAlertTriggerList count(int count) => this(count: count);

  @override
  PaginatedTelemetryAlertTriggerList next(String? next) => this(next: next);

  @override
  PaginatedTelemetryAlertTriggerList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTelemetryAlertTriggerList results(
    List<TelemetryAlertTrigger> results,
  ) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryAlertTriggerList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryAlertTriggerList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryAlertTriggerList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTelemetryAlertTriggerList(
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
          : results as List<TelemetryAlertTrigger>,
    );
  }
}

extension $PaginatedTelemetryAlertTriggerListCopyWith
    on PaginatedTelemetryAlertTriggerList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTelemetryAlertTriggerList.copyWith(...)` or like so:`instanceOfPaginatedTelemetryAlertTriggerList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTelemetryAlertTriggerListCWProxy get copyWith =>
      _$PaginatedTelemetryAlertTriggerListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTelemetryAlertTriggerList _$PaginatedTelemetryAlertTriggerListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTelemetryAlertTriggerList', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTelemetryAlertTriggerList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TelemetryAlertTrigger.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTelemetryAlertTriggerListToJson(
  PaginatedTelemetryAlertTriggerList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
