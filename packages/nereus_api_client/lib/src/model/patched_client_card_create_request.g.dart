// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_client_card_create_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedClientCardCreateRequestCWProxy {
  PatchedClientCardCreateRequest client(int? client);

  PatchedClientCardCreateRequest template(String? template);

  PatchedClientCardCreateRequest status(
    PatchedClientCardCreateRequestStatusEnum? status,
  );

  PatchedClientCardCreateRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedClientCardCreateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedClientCardCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedClientCardCreateRequest call({
    int? client,
    String? template,
    PatchedClientCardCreateRequestStatusEnum? status,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedClientCardCreateRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedClientCardCreateRequest.copyWith.fieldName(...)`
class _$PatchedClientCardCreateRequestCWProxyImpl
    implements _$PatchedClientCardCreateRequestCWProxy {
  const _$PatchedClientCardCreateRequestCWProxyImpl(this._value);

  final PatchedClientCardCreateRequest _value;

  @override
  PatchedClientCardCreateRequest client(int? client) => this(client: client);

  @override
  PatchedClientCardCreateRequest template(String? template) =>
      this(template: template);

  @override
  PatchedClientCardCreateRequest status(
    PatchedClientCardCreateRequestStatusEnum? status,
  ) => this(status: status);

  @override
  PatchedClientCardCreateRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedClientCardCreateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedClientCardCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedClientCardCreateRequest call({
    Object? client = const $CopyWithPlaceholder(),
    Object? template = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return PatchedClientCardCreateRequest(
      client: client == const $CopyWithPlaceholder()
          ? _value.client
          // ignore: cast_nullable_to_non_nullable
          : client as int?,
      template: template == const $CopyWithPlaceholder()
          ? _value.template
          // ignore: cast_nullable_to_non_nullable
          : template as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as PatchedClientCardCreateRequestStatusEnum?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $PatchedClientCardCreateRequestCopyWith
    on PatchedClientCardCreateRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedClientCardCreateRequest.copyWith(...)` or like so:`instanceOfPatchedClientCardCreateRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedClientCardCreateRequestCWProxy get copyWith =>
      _$PatchedClientCardCreateRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedClientCardCreateRequest _$PatchedClientCardCreateRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedClientCardCreateRequest',
  json,
  ($checkedConvert) {
    final val = PatchedClientCardCreateRequest(
      client: $checkedConvert('client', (v) => (v as num?)?.toInt()),
      template: $checkedConvert('template', (v) => v as String?),
      status: $checkedConvert(
        'status',
        (v) => $enumDecodeNullable(
          _$PatchedClientCardCreateRequestStatusEnumEnumMap,
          v,
          unknownValue:
              PatchedClientCardCreateRequestStatusEnum.unknownDefaultOpenApi,
        ),
      ),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {'isActive': 'is_active'},
);

Map<String, dynamic> _$PatchedClientCardCreateRequestToJson(
  PatchedClientCardCreateRequest instance,
) => <String, dynamic>{
  'client': ?instance.client,
  'template': ?instance.template,
  'status': ?_$PatchedClientCardCreateRequestStatusEnumEnumMap[instance.status],
  'is_active': ?instance.isActive,
};

const _$PatchedClientCardCreateRequestStatusEnumEnumMap = {
  PatchedClientCardCreateRequestStatusEnum.DRAFT: 'DRAFT',
  PatchedClientCardCreateRequestStatusEnum.GENERATED: 'GENERATED',
  PatchedClientCardCreateRequestStatusEnum.ARCHIVED: 'ARCHIVED',
  PatchedClientCardCreateRequestStatusEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
