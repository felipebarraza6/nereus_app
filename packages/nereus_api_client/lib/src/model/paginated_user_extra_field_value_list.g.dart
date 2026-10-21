// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_user_extra_field_value_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedUserExtraFieldValueListCWProxy {
  PaginatedUserExtraFieldValueList count(int count);

  PaginatedUserExtraFieldValueList next(String? next);

  PaginatedUserExtraFieldValueList previous(String? previous);

  PaginatedUserExtraFieldValueList results(List<UserExtraFieldValue> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedUserExtraFieldValueList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedUserExtraFieldValueList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedUserExtraFieldValueList call({
    int count,
    String? next,
    String? previous,
    List<UserExtraFieldValue> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedUserExtraFieldValueList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedUserExtraFieldValueList.copyWith.fieldName(...)`
class _$PaginatedUserExtraFieldValueListCWProxyImpl
    implements _$PaginatedUserExtraFieldValueListCWProxy {
  const _$PaginatedUserExtraFieldValueListCWProxyImpl(this._value);

  final PaginatedUserExtraFieldValueList _value;

  @override
  PaginatedUserExtraFieldValueList count(int count) => this(count: count);

  @override
  PaginatedUserExtraFieldValueList next(String? next) => this(next: next);

  @override
  PaginatedUserExtraFieldValueList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedUserExtraFieldValueList results(List<UserExtraFieldValue> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedUserExtraFieldValueList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedUserExtraFieldValueList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedUserExtraFieldValueList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedUserExtraFieldValueList(
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
          : results as List<UserExtraFieldValue>,
    );
  }
}

extension $PaginatedUserExtraFieldValueListCopyWith
    on PaginatedUserExtraFieldValueList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedUserExtraFieldValueList.copyWith(...)` or like so:`instanceOfPaginatedUserExtraFieldValueList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedUserExtraFieldValueListCWProxy get copyWith =>
      _$PaginatedUserExtraFieldValueListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedUserExtraFieldValueList _$PaginatedUserExtraFieldValueListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedUserExtraFieldValueList', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedUserExtraFieldValueList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => UserExtraFieldValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedUserExtraFieldValueListToJson(
  PaginatedUserExtraFieldValueList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
