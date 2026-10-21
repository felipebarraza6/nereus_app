// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_client_extra_field_value_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedClientExtraFieldValueListCWProxy {
  PaginatedClientExtraFieldValueList count(int count);

  PaginatedClientExtraFieldValueList next(String? next);

  PaginatedClientExtraFieldValueList previous(String? previous);

  PaginatedClientExtraFieldValueList results(
    List<ClientExtraFieldValue> results,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientExtraFieldValueList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientExtraFieldValueList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientExtraFieldValueList call({
    int count,
    String? next,
    String? previous,
    List<ClientExtraFieldValue> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedClientExtraFieldValueList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedClientExtraFieldValueList.copyWith.fieldName(...)`
class _$PaginatedClientExtraFieldValueListCWProxyImpl
    implements _$PaginatedClientExtraFieldValueListCWProxy {
  const _$PaginatedClientExtraFieldValueListCWProxyImpl(this._value);

  final PaginatedClientExtraFieldValueList _value;

  @override
  PaginatedClientExtraFieldValueList count(int count) => this(count: count);

  @override
  PaginatedClientExtraFieldValueList next(String? next) => this(next: next);

  @override
  PaginatedClientExtraFieldValueList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedClientExtraFieldValueList results(
    List<ClientExtraFieldValue> results,
  ) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientExtraFieldValueList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientExtraFieldValueList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientExtraFieldValueList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedClientExtraFieldValueList(
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
          : results as List<ClientExtraFieldValue>,
    );
  }
}

extension $PaginatedClientExtraFieldValueListCopyWith
    on PaginatedClientExtraFieldValueList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedClientExtraFieldValueList.copyWith(...)` or like so:`instanceOfPaginatedClientExtraFieldValueList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedClientExtraFieldValueListCWProxy get copyWith =>
      _$PaginatedClientExtraFieldValueListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedClientExtraFieldValueList _$PaginatedClientExtraFieldValueListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedClientExtraFieldValueList', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedClientExtraFieldValueList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => ClientExtraFieldValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedClientExtraFieldValueListToJson(
  PaginatedClientExtraFieldValueList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
