// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_client_extra_field_definition_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedClientExtraFieldDefinitionListCWProxy {
  PaginatedClientExtraFieldDefinitionList count(int count);

  PaginatedClientExtraFieldDefinitionList next(String? next);

  PaginatedClientExtraFieldDefinitionList previous(String? previous);

  PaginatedClientExtraFieldDefinitionList results(
    List<ClientExtraFieldDefinition> results,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientExtraFieldDefinitionList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientExtraFieldDefinitionList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientExtraFieldDefinitionList call({
    int count,
    String? next,
    String? previous,
    List<ClientExtraFieldDefinition> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedClientExtraFieldDefinitionList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedClientExtraFieldDefinitionList.copyWith.fieldName(...)`
class _$PaginatedClientExtraFieldDefinitionListCWProxyImpl
    implements _$PaginatedClientExtraFieldDefinitionListCWProxy {
  const _$PaginatedClientExtraFieldDefinitionListCWProxyImpl(this._value);

  final PaginatedClientExtraFieldDefinitionList _value;

  @override
  PaginatedClientExtraFieldDefinitionList count(int count) =>
      this(count: count);

  @override
  PaginatedClientExtraFieldDefinitionList next(String? next) =>
      this(next: next);

  @override
  PaginatedClientExtraFieldDefinitionList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedClientExtraFieldDefinitionList results(
    List<ClientExtraFieldDefinition> results,
  ) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedClientExtraFieldDefinitionList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedClientExtraFieldDefinitionList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedClientExtraFieldDefinitionList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedClientExtraFieldDefinitionList(
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
          : results as List<ClientExtraFieldDefinition>,
    );
  }
}

extension $PaginatedClientExtraFieldDefinitionListCopyWith
    on PaginatedClientExtraFieldDefinitionList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedClientExtraFieldDefinitionList.copyWith(...)` or like so:`instanceOfPaginatedClientExtraFieldDefinitionList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedClientExtraFieldDefinitionListCWProxy get copyWith =>
      _$PaginatedClientExtraFieldDefinitionListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedClientExtraFieldDefinitionList
_$PaginatedClientExtraFieldDefinitionListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaginatedClientExtraFieldDefinitionList', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['count', 'results']);
      final val = PaginatedClientExtraFieldDefinitionList(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        next: $checkedConvert('next', (v) => v as String?),
        previous: $checkedConvert('previous', (v) => v as String?),
        results: $checkedConvert(
          'results',
          (v) => (v as List<dynamic>)
              .map(
                (e) => ClientExtraFieldDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaginatedClientExtraFieldDefinitionListToJson(
  PaginatedClientExtraFieldDefinitionList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
