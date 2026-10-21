// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_user_response_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedUserResponseListCWProxy {
  PaginatedUserResponseList count(int count);

  PaginatedUserResponseList next(String? next);

  PaginatedUserResponseList previous(String? previous);

  PaginatedUserResponseList results(List<UserResponse> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedUserResponseList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedUserResponseList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedUserResponseList call({
    int count,
    String? next,
    String? previous,
    List<UserResponse> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedUserResponseList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedUserResponseList.copyWith.fieldName(...)`
class _$PaginatedUserResponseListCWProxyImpl
    implements _$PaginatedUserResponseListCWProxy {
  const _$PaginatedUserResponseListCWProxyImpl(this._value);

  final PaginatedUserResponseList _value;

  @override
  PaginatedUserResponseList count(int count) => this(count: count);

  @override
  PaginatedUserResponseList next(String? next) => this(next: next);

  @override
  PaginatedUserResponseList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedUserResponseList results(List<UserResponse> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedUserResponseList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedUserResponseList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedUserResponseList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedUserResponseList(
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
          : results as List<UserResponse>,
    );
  }
}

extension $PaginatedUserResponseListCopyWith on PaginatedUserResponseList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedUserResponseList.copyWith(...)` or like so:`instanceOfPaginatedUserResponseList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedUserResponseListCWProxy get copyWith =>
      _$PaginatedUserResponseListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedUserResponseList _$PaginatedUserResponseListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedUserResponseList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedUserResponseList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => UserResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedUserResponseListToJson(
  PaginatedUserResponseList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
