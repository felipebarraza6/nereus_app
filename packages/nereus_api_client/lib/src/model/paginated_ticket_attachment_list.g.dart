// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_ticket_attachment_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedTicketAttachmentListCWProxy {
  PaginatedTicketAttachmentList count(int count);

  PaginatedTicketAttachmentList next(String? next);

  PaginatedTicketAttachmentList previous(String? previous);

  PaginatedTicketAttachmentList results(List<TicketAttachment> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketAttachmentList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketAttachmentList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketAttachmentList call({
    int count,
    String? next,
    String? previous,
    List<TicketAttachment> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedTicketAttachmentList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedTicketAttachmentList.copyWith.fieldName(...)`
class _$PaginatedTicketAttachmentListCWProxyImpl
    implements _$PaginatedTicketAttachmentListCWProxy {
  const _$PaginatedTicketAttachmentListCWProxyImpl(this._value);

  final PaginatedTicketAttachmentList _value;

  @override
  PaginatedTicketAttachmentList count(int count) => this(count: count);

  @override
  PaginatedTicketAttachmentList next(String? next) => this(next: next);

  @override
  PaginatedTicketAttachmentList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedTicketAttachmentList results(List<TicketAttachment> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedTicketAttachmentList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedTicketAttachmentList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedTicketAttachmentList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedTicketAttachmentList(
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
          : results as List<TicketAttachment>,
    );
  }
}

extension $PaginatedTicketAttachmentListCopyWith
    on PaginatedTicketAttachmentList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedTicketAttachmentList.copyWith(...)` or like so:`instanceOfPaginatedTicketAttachmentList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedTicketAttachmentListCWProxy get copyWith =>
      _$PaginatedTicketAttachmentListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedTicketAttachmentList _$PaginatedTicketAttachmentListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedTicketAttachmentList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedTicketAttachmentList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => TicketAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedTicketAttachmentListToJson(
  PaginatedTicketAttachmentList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
