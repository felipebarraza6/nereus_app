// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_client_contact_list_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedClientContactListListCWProxy {
  PaginatedClientContactListList count(int count);

  PaginatedClientContactListList next(String? next);

  PaginatedClientContactListList previous(String? previous);

  PaginatedClientContactListList results(List<ClientContactList> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientContactListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientContactListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientContactListList call({
    int count,
    String? next,
    String? previous,
    List<ClientContactList> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedClientContactListList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedClientContactListList.copyWith.fieldName(...)`
class _$PaginatedClientContactListListCWProxyImpl
    implements _$PaginatedClientContactListListCWProxy {
  const _$PaginatedClientContactListListCWProxyImpl(this._value);

  final PaginatedClientContactListList _value;

  @override
  PaginatedClientContactListList count(int count) => this(count: count);

  @override
  PaginatedClientContactListList next(String? next) => this(next: next);

  @override
  PaginatedClientContactListList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedClientContactListList results(List<ClientContactList> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientContactListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientContactListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientContactListList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedClientContactListList(
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
          : results as List<ClientContactList>,
    );
  }
}

extension $PaginatedClientContactListListCopyWith
    on PaginatedClientContactListList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedClientContactListList.copyWith(...)` or like so:`instanceOfPaginatedClientContactListList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedClientContactListListCWProxy get copyWith =>
      _$PaginatedClientContactListListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedClientContactListList _$PaginatedClientContactListListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedClientContactListList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedClientContactListList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => ClientContactList.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedClientContactListListToJson(
  PaginatedClientContactListList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
