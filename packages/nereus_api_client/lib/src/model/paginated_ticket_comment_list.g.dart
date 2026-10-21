// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_ticket_comment_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTicketCommentListCWProxy {
  PaginatedTicketCommentList count(int count);

  PaginatedTicketCommentList next(String? next);

  PaginatedTicketCommentList previous(String? previous);

  PaginatedTicketCommentList results(List<TicketComment> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketCommentList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketCommentList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketCommentList call({
    int count,
    String? next,
    String? previous,
    List<TicketComment> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTicketCommentList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTicketCommentList.copyWith.fieldName(...)`
class _$PaginatedTicketCommentListCWProxyImpl
    implements _$PaginatedTicketCommentListCWProxy {
  const _$PaginatedTicketCommentListCWProxyImpl(this._value);

  final PaginatedTicketCommentList _value;

  @override
  PaginatedTicketCommentList count(int count) => this(count: count);

  @override
  PaginatedTicketCommentList next(String? next) => this(next: next);

  @override
  PaginatedTicketCommentList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTicketCommentList results(List<TicketComment> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketCommentList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketCommentList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketCommentList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTicketCommentList(
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
          : results as List<TicketComment>,
    );
  }
}

extension $PaginatedTicketCommentListCopyWith on PaginatedTicketCommentList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTicketCommentList.copyWith(...)` or like so:`instanceOfPaginatedTicketCommentList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTicketCommentListCWProxy get copyWith =>
      _$PaginatedTicketCommentListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTicketCommentList _$PaginatedTicketCommentListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTicketCommentList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTicketCommentList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TicketComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTicketCommentListToJson(
  PaginatedTicketCommentList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
