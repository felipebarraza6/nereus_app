// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_ticket_timer_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTicketTimerListCWProxy {
  PaginatedTicketTimerList count(int count);

  PaginatedTicketTimerList next(String? next);

  PaginatedTicketTimerList previous(String? previous);

  PaginatedTicketTimerList results(List<TicketTimer> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketTimerList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketTimerList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketTimerList call({
    int count,
    String? next,
    String? previous,
    List<TicketTimer> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTicketTimerList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTicketTimerList.copyWith.fieldName(...)`
class _$PaginatedTicketTimerListCWProxyImpl
    implements _$PaginatedTicketTimerListCWProxy {
  const _$PaginatedTicketTimerListCWProxyImpl(this._value);

  final PaginatedTicketTimerList _value;

  @override
  PaginatedTicketTimerList count(int count) => this(count: count);

  @override
  PaginatedTicketTimerList next(String? next) => this(next: next);

  @override
  PaginatedTicketTimerList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTicketTimerList results(List<TicketTimer> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketTimerList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketTimerList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketTimerList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTicketTimerList(
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
          : results as List<TicketTimer>,
    );
  }
}

extension $PaginatedTicketTimerListCopyWith on PaginatedTicketTimerList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTicketTimerList.copyWith(...)` or like so:`instanceOfPaginatedTicketTimerList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTicketTimerListCWProxy get copyWith =>
      _$PaginatedTicketTimerListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTicketTimerList _$PaginatedTicketTimerListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTicketTimerList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTicketTimerList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TicketTimer.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTicketTimerListToJson(
  PaginatedTicketTimerList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
