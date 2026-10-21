// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_telemetry_alert_rule_list_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTelemetryAlertRuleListListCWProxy {
  PaginatedTelemetryAlertRuleListList count(int count);

  PaginatedTelemetryAlertRuleListList next(String? next);

  PaginatedTelemetryAlertRuleListList previous(String? previous);

  PaginatedTelemetryAlertRuleListList results(
    List<TelemetryAlertRuleList> results,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryAlertRuleListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryAlertRuleListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryAlertRuleListList call({
    int count,
    String? next,
    String? previous,
    List<TelemetryAlertRuleList> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTelemetryAlertRuleListList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTelemetryAlertRuleListList.copyWith.fieldName(...)`
class _$PaginatedTelemetryAlertRuleListListCWProxyImpl
    implements _$PaginatedTelemetryAlertRuleListListCWProxy {
  const _$PaginatedTelemetryAlertRuleListListCWProxyImpl(this._value);

  final PaginatedTelemetryAlertRuleListList _value;

  @override
  PaginatedTelemetryAlertRuleListList count(int count) => this(count: count);

  @override
  PaginatedTelemetryAlertRuleListList next(String? next) => this(next: next);

  @override
  PaginatedTelemetryAlertRuleListList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTelemetryAlertRuleListList results(
    List<TelemetryAlertRuleList> results,
  ) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryAlertRuleListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryAlertRuleListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryAlertRuleListList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTelemetryAlertRuleListList(
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
          : results as List<TelemetryAlertRuleList>,
    );
  }
}

extension $PaginatedTelemetryAlertRuleListListCopyWith
    on PaginatedTelemetryAlertRuleListList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTelemetryAlertRuleListList.copyWith(...)` or like so:`instanceOfPaginatedTelemetryAlertRuleListList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTelemetryAlertRuleListListCWProxy get copyWith =>
      _$PaginatedTelemetryAlertRuleListListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTelemetryAlertRuleListList
_$PaginatedTelemetryAlertRuleListListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaginatedTelemetryAlertRuleListList', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['count', 'results']);
      final val = PaginatedTelemetryAlertRuleListList(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        next: $checkedConvert('next', (v) => v as String?),
        previous: $checkedConvert('previous', (v) => v as String?),
        results: $checkedConvert(
          'results',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    TelemetryAlertRuleList.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaginatedTelemetryAlertRuleListListToJson(
  PaginatedTelemetryAlertRuleListList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
