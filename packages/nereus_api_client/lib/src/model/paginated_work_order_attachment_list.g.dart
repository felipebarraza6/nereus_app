// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_work_order_attachment_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedWorkOrderAttachmentListCWProxy {
  PaginatedWorkOrderAttachmentList count(int count);

  PaginatedWorkOrderAttachmentList next(String? next);

  PaginatedWorkOrderAttachmentList previous(String? previous);

  PaginatedWorkOrderAttachmentList results(List<WorkOrderAttachment> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedWorkOrderAttachmentList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedWorkOrderAttachmentList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedWorkOrderAttachmentList call({
    int count,
    String? next,
    String? previous,
    List<WorkOrderAttachment> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedWorkOrderAttachmentList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedWorkOrderAttachmentList.copyWith.fieldName(...)`
class _$PaginatedWorkOrderAttachmentListCWProxyImpl
    implements _$PaginatedWorkOrderAttachmentListCWProxy {
  const _$PaginatedWorkOrderAttachmentListCWProxyImpl(this._value);

  final PaginatedWorkOrderAttachmentList _value;

  @override
  PaginatedWorkOrderAttachmentList count(int count) => this(count: count);

  @override
  PaginatedWorkOrderAttachmentList next(String? next) => this(next: next);

  @override
  PaginatedWorkOrderAttachmentList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedWorkOrderAttachmentList results(List<WorkOrderAttachment> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedWorkOrderAttachmentList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedWorkOrderAttachmentList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedWorkOrderAttachmentList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedWorkOrderAttachmentList(
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
          : results as List<WorkOrderAttachment>,
    );
  }
}

extension $PaginatedWorkOrderAttachmentListCopyWith
    on PaginatedWorkOrderAttachmentList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedWorkOrderAttachmentList.copyWith(...)` or like so:`instanceOfPaginatedWorkOrderAttachmentList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedWorkOrderAttachmentListCWProxy get copyWith =>
      _$PaginatedWorkOrderAttachmentListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedWorkOrderAttachmentList _$PaginatedWorkOrderAttachmentListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedWorkOrderAttachmentList', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedWorkOrderAttachmentList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => WorkOrderAttachment.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedWorkOrderAttachmentListToJson(
  PaginatedWorkOrderAttachmentList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
