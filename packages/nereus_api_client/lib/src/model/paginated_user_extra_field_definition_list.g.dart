// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_user_extra_field_definition_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedUserExtraFieldDefinitionListCWProxy {
  PaginatedUserExtraFieldDefinitionList count(int count);

  PaginatedUserExtraFieldDefinitionList next(String? next);

  PaginatedUserExtraFieldDefinitionList previous(String? previous);

  PaginatedUserExtraFieldDefinitionList results(
    List<UserExtraFieldDefinition> results,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedUserExtraFieldDefinitionList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedUserExtraFieldDefinitionList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedUserExtraFieldDefinitionList call({
    int count,
    String? next,
    String? previous,
    List<UserExtraFieldDefinition> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedUserExtraFieldDefinitionList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedUserExtraFieldDefinitionList.copyWith.fieldName(...)`
class _$PaginatedUserExtraFieldDefinitionListCWProxyImpl
    implements _$PaginatedUserExtraFieldDefinitionListCWProxy {
  const _$PaginatedUserExtraFieldDefinitionListCWProxyImpl(this._value);

  final PaginatedUserExtraFieldDefinitionList _value;

  @override
  PaginatedUserExtraFieldDefinitionList count(int count) => this(count: count);

  @override
  PaginatedUserExtraFieldDefinitionList next(String? next) => this(next: next);

  @override
  PaginatedUserExtraFieldDefinitionList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedUserExtraFieldDefinitionList results(
    List<UserExtraFieldDefinition> results,
  ) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedUserExtraFieldDefinitionList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedUserExtraFieldDefinitionList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedUserExtraFieldDefinitionList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedUserExtraFieldDefinitionList(
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
          : results as List<UserExtraFieldDefinition>,
    );
  }
}

extension $PaginatedUserExtraFieldDefinitionListCopyWith
    on PaginatedUserExtraFieldDefinitionList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedUserExtraFieldDefinitionList.copyWith(...)` or like so:`instanceOfPaginatedUserExtraFieldDefinitionList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedUserExtraFieldDefinitionListCWProxy get copyWith =>
      _$PaginatedUserExtraFieldDefinitionListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedUserExtraFieldDefinitionList
_$PaginatedUserExtraFieldDefinitionListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaginatedUserExtraFieldDefinitionList', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['count', 'results']);
      final val = PaginatedUserExtraFieldDefinitionList(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        next: $checkedConvert('next', (v) => v as String?),
        previous: $checkedConvert('previous', (v) => v as String?),
        results: $checkedConvert(
          'results',
          (v) => (v as List<dynamic>)
              .map(
                (e) => UserExtraFieldDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaginatedUserExtraFieldDefinitionListToJson(
  PaginatedUserExtraFieldDefinitionList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
