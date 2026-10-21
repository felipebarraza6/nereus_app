// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_ticket_escalation_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTicketEscalationListCWProxy {
  PaginatedTicketEscalationList count(int count);

  PaginatedTicketEscalationList next(String? next);

  PaginatedTicketEscalationList previous(String? previous);

  PaginatedTicketEscalationList results(List<TicketEscalation> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketEscalationList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketEscalationList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketEscalationList call({
    int count,
    String? next,
    String? previous,
    List<TicketEscalation> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTicketEscalationList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTicketEscalationList.copyWith.fieldName(...)`
class _$PaginatedTicketEscalationListCWProxyImpl
    implements _$PaginatedTicketEscalationListCWProxy {
  const _$PaginatedTicketEscalationListCWProxyImpl(this._value);

  final PaginatedTicketEscalationList _value;

  @override
  PaginatedTicketEscalationList count(int count) => this(count: count);

  @override
  PaginatedTicketEscalationList next(String? next) => this(next: next);

  @override
  PaginatedTicketEscalationList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTicketEscalationList results(List<TicketEscalation> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketEscalationList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketEscalationList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketEscalationList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTicketEscalationList(
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
          : results as List<TicketEscalation>,
    );
  }
}

extension $PaginatedTicketEscalationListCopyWith
    on PaginatedTicketEscalationList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTicketEscalationList.copyWith(...)` or like so:`instanceOfPaginatedTicketEscalationList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTicketEscalationListCWProxy get copyWith =>
      _$PaginatedTicketEscalationListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTicketEscalationList _$PaginatedTicketEscalationListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTicketEscalationList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTicketEscalationList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TicketEscalation.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTicketEscalationListToJson(
  PaginatedTicketEscalationList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
