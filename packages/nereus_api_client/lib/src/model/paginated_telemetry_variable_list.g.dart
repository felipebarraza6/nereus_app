// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_telemetry_variable_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTelemetryVariableListCWProxy {
  PaginatedTelemetryVariableList count(int count);

  PaginatedTelemetryVariableList next(String? next);

  PaginatedTelemetryVariableList previous(String? previous);

  PaginatedTelemetryVariableList results(List<TelemetryVariable> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryVariableList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryVariableList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryVariableList call({
    int count,
    String? next,
    String? previous,
    List<TelemetryVariable> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTelemetryVariableList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTelemetryVariableList.copyWith.fieldName(...)`
class _$PaginatedTelemetryVariableListCWProxyImpl
    implements _$PaginatedTelemetryVariableListCWProxy {
  const _$PaginatedTelemetryVariableListCWProxyImpl(this._value);

  final PaginatedTelemetryVariableList _value;

  @override
  PaginatedTelemetryVariableList count(int count) => this(count: count);

  @override
  PaginatedTelemetryVariableList next(String? next) => this(next: next);

  @override
  PaginatedTelemetryVariableList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTelemetryVariableList results(List<TelemetryVariable> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTelemetryVariableList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTelemetryVariableList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTelemetryVariableList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTelemetryVariableList(
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
          : results as List<TelemetryVariable>,
    );
  }
}

extension $PaginatedTelemetryVariableListCopyWith
    on PaginatedTelemetryVariableList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTelemetryVariableList.copyWith(...)` or like so:`instanceOfPaginatedTelemetryVariableList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTelemetryVariableListCWProxy get copyWith =>
      _$PaginatedTelemetryVariableListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTelemetryVariableList _$PaginatedTelemetryVariableListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTelemetryVariableList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTelemetryVariableList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TelemetryVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTelemetryVariableListToJson(
  PaginatedTelemetryVariableList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
