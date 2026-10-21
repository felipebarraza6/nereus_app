// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_work_order_feedback_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedWorkOrderFeedbackListCWProxy {
  PaginatedWorkOrderFeedbackList count(int count);

  PaginatedWorkOrderFeedbackList next(String? next);

  PaginatedWorkOrderFeedbackList previous(String? previous);

  PaginatedWorkOrderFeedbackList results(List<WorkOrderFeedback> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedWorkOrderFeedbackList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedWorkOrderFeedbackList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedWorkOrderFeedbackList call({
    int count,
    String? next,
    String? previous,
    List<WorkOrderFeedback> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedWorkOrderFeedbackList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedWorkOrderFeedbackList.copyWith.fieldName(...)`
class _$PaginatedWorkOrderFeedbackListCWProxyImpl
    implements _$PaginatedWorkOrderFeedbackListCWProxy {
  const _$PaginatedWorkOrderFeedbackListCWProxyImpl(this._value);

  final PaginatedWorkOrderFeedbackList _value;

  @override
  PaginatedWorkOrderFeedbackList count(int count) => this(count: count);

  @override
  PaginatedWorkOrderFeedbackList next(String? next) => this(next: next);

  @override
  PaginatedWorkOrderFeedbackList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedWorkOrderFeedbackList results(List<WorkOrderFeedback> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedWorkOrderFeedbackList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedWorkOrderFeedbackList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedWorkOrderFeedbackList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedWorkOrderFeedbackList(
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
          : results as List<WorkOrderFeedback>,
    );
  }
}

extension $PaginatedWorkOrderFeedbackListCopyWith
    on PaginatedWorkOrderFeedbackList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedWorkOrderFeedbackList.copyWith(...)` or like so:`instanceOfPaginatedWorkOrderFeedbackList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedWorkOrderFeedbackListCWProxy get copyWith =>
      _$PaginatedWorkOrderFeedbackListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedWorkOrderFeedbackList _$PaginatedWorkOrderFeedbackListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedWorkOrderFeedbackList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedWorkOrderFeedbackList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => WorkOrderFeedback.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedWorkOrderFeedbackListToJson(
  PaginatedWorkOrderFeedbackList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
