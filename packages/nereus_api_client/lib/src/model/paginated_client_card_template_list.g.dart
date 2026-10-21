// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_client_card_template_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedClientCardTemplateListCWProxy {
  PaginatedClientCardTemplateList count(int count);

  PaginatedClientCardTemplateList next(String? next);

  PaginatedClientCardTemplateList previous(String? previous);

  PaginatedClientCardTemplateList results(List<ClientCardTemplate> results);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientCardTemplateList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientCardTemplateList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientCardTemplateList call({
    int count,
    String? next,
    String? previous,
    List<ClientCardTemplate> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedClientCardTemplateList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedClientCardTemplateList.copyWith.fieldName(...)`
class _$PaginatedClientCardTemplateListCWProxyImpl
    implements _$PaginatedClientCardTemplateListCWProxy {
  const _$PaginatedClientCardTemplateListCWProxyImpl(this._value);

  final PaginatedClientCardTemplateList _value;

  @override
  PaginatedClientCardTemplateList count(int count) => this(count: count);

  @override
  PaginatedClientCardTemplateList next(String? next) => this(next: next);

  @override
  PaginatedClientCardTemplateList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedClientCardTemplateList results(List<ClientCardTemplate> results) =>
      this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientCardTemplateList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientCardTemplateList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientCardTemplateList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedClientCardTemplateList(
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
          : results as List<ClientCardTemplate>,
    );
  }
}

extension $PaginatedClientCardTemplateListCopyWith
    on PaginatedClientCardTemplateList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedClientCardTemplateList.copyWith(...)` or like so:`instanceOfPaginatedClientCardTemplateList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedClientCardTemplateListCWProxy get copyWith =>
      _$PaginatedClientCardTemplateListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedClientCardTemplateList _$PaginatedClientCardTemplateListFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaginatedClientCardTemplateList', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['count', 'results']);
  final val = PaginatedClientCardTemplateList(
    count: $checkedConvert('count', (v) => (v as num).toInt()),
    next: $checkedConvert('next', (v) => v as String?),
    previous: $checkedConvert('previous', (v) => v as String?),
    results: $checkedConvert(
      'results',
      (v) => (v as List<dynamic>)
          .map((e) => ClientCardTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PaginatedClientCardTemplateListToJson(
  PaginatedClientCardTemplateList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
