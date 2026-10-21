// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_client_extra_field_group_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedClientExtraFieldGroupListCWProxy {
  PaginatedClientExtraFieldGroupList count(int count);

  PaginatedClientExtraFieldGroupList next(String? next);

  PaginatedClientExtraFieldGroupList previous(String? previous);

  PaginatedClientExtraFieldGroupList results(
    List<ClientExtraFieldGroup> results,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientExtraFieldGroupList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientExtraFieldGroupList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientExtraFieldGroupList call({
    int count,
    String? next,
    String? previous,
    List<ClientExtraFieldGroup> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedClientExtraFieldGroupList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedClientExtraFieldGroupList.copyWith.fieldName(...)`
class _$PaginatedClientExtraFieldGroupListCWProxyImpl
    implements _$PaginatedClientExtraFieldGroupListCWProxy {
  const _$PaginatedClientExtraFieldGroupListCWProxyImpl(this._value);

  final PaginatedClientExtraFieldGroupList _value;

  @override
  PaginatedClientExtraFieldGroupList count(int count) => this(count: count);

  @override
  PaginatedClientExtraFieldGroupList next(String? next) => this(next: next);

  @override
  PaginatedClientExtraFieldGroupList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedClientExtraFieldGroupList results(
    List<ClientExtraFieldGroup> results,
  ) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientExtraFieldGroupList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientExtraFieldGroupList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientExtraFieldGroupList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedClientExtraFieldGroupList(
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
          : results as List<ClientExtraFieldGroup>,
    );
  }
}

extension $PaginatedClientExtraFieldGroupListCopyWith
    on PaginatedClientExtraFieldGroupList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedClientExtraFieldGroupList.copyWith(...)` or like so:`instanceOfPaginatedClientExtraFieldGroupList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedClientExtraFieldGroupListCWProxy get copyWith =>
      _$PaginatedClientExtraFieldGroupListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedClientExtraFieldGroupList _$PaginatedClientExtraFieldGroupListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedClientExtraFieldGroupList', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedClientExtraFieldGroupList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => ClientExtraFieldGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedClientExtraFieldGroupListToJson(
  PaginatedClientExtraFieldGroupList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
