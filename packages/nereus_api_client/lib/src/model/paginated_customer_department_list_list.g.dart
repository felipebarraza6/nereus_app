// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_customer_department_list_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaginatedCustomerDepartmentListListCWProxy {
  PaginatedCustomerDepartmentListList count(int count);

  PaginatedCustomerDepartmentListList next(String? next);

  PaginatedCustomerDepartmentListList previous(String? previous);

  PaginatedCustomerDepartmentListList results(
    List<CustomerDepartmentList> results,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedCustomerDepartmentListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedCustomerDepartmentListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedCustomerDepartmentListList call({
    int count,
    String? next,
    String? previous,
    List<CustomerDepartmentList> results,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPaginatedCustomerDepartmentListList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPaginatedCustomerDepartmentListList.copyWith.fieldName(...)`
class _$PaginatedCustomerDepartmentListListCWProxyImpl
    implements _$PaginatedCustomerDepartmentListListCWProxy {
  const _$PaginatedCustomerDepartmentListListCWProxyImpl(this._value);

  final PaginatedCustomerDepartmentListList _value;

  @override
  PaginatedCustomerDepartmentListList count(int count) => this(count: count);

  @override
  PaginatedCustomerDepartmentListList next(String? next) => this(next: next);

  @override
  PaginatedCustomerDepartmentListList previous(String? previous) =>
      this(previous: previous);

  @override
  PaginatedCustomerDepartmentListList results(
    List<CustomerDepartmentList> results,
  ) => this(results: results);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PaginatedCustomerDepartmentListList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PaginatedCustomerDepartmentListList(...).copyWith(id: 12, name: "My name")
  /// ````
  PaginatedCustomerDepartmentListList call({
    Object? count = const $CopyWithPlaceholder(),
    Object? next = const $CopyWithPlaceholder(),
    Object? previous = const $CopyWithPlaceholder(),
    Object? results = const $CopyWithPlaceholder(),
  }) {
    return PaginatedCustomerDepartmentListList(
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
          : results as List<CustomerDepartmentList>,
    );
  }
}

extension $PaginatedCustomerDepartmentListListCopyWith
    on PaginatedCustomerDepartmentListList {
  /// Returns a callable class that can be used as follows: `instanceOfPaginatedCustomerDepartmentListList.copyWith(...)` or like so:`instanceOfPaginatedCustomerDepartmentListList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaginatedCustomerDepartmentListListCWProxy get copyWith =>
      _$PaginatedCustomerDepartmentListListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedCustomerDepartmentListList
_$PaginatedCustomerDepartmentListListFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaginatedCustomerDepartmentListList', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['count', 'results']);
      final val = PaginatedCustomerDepartmentListList(
        count: $checkedConvert('count', (v) => (v as num).toInt()),
        next: $checkedConvert('next', (v) => v as String?),
        previous: $checkedConvert('previous', (v) => v as String?),
        results: $checkedConvert(
          'results',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    CustomerDepartmentList.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaginatedCustomerDepartmentListListToJson(
  PaginatedCustomerDepartmentListList instance,
) => <String, dynamic>{
  'count': instance.count,
  'next': ?instance.next,
  'previous': ?instance.previous,
  'results': instance.results.map((e) => e.toJson()).toList(),
};
