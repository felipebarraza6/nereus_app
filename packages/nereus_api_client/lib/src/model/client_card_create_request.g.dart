// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_card_create_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientCardCreateRequestCWProxy {
  ClientCardCreateRequest client(int client);

  ClientCardCreateRequest template(String? template);

  ClientCardCreateRequest status(ClientCardCreateRequestStatusEnum? status);

  ClientCardCreateRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientCardCreateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientCardCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientCardCreateRequest call({
    int client,
    String? template,
    ClientCardCreateRequestStatusEnum? status,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientCardCreateRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientCardCreateRequest.copyWith.fieldName(...)`
class _$ClientCardCreateRequestCWProxyImpl
    implements _$ClientCardCreateRequestCWProxy {
  const _$ClientCardCreateRequestCWProxyImpl(this._value);

  final ClientCardCreateRequest _value;

  @override
  ClientCardCreateRequest client(int client) => this(client: client);

  @override
  ClientCardCreateRequest template(String? template) =>
      this(template: template);

  @override
  ClientCardCreateRequest status(ClientCardCreateRequestStatusEnum? status) =>
      this(status: status);

  @override
  ClientCardCreateRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientCardCreateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientCardCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientCardCreateRequest call({
    Object? client = const $CopyWithPlaceholder(),
    Object? template = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return ClientCardCreateRequest(
      client: client == const $CopyWithPlaceholder()
          ? _value.client
          // ignore: cast_nullable_to_non_nullable
          : client as int,
      template: template == const $CopyWithPlaceholder()
          ? _value.template
          // ignore: cast_nullable_to_non_nullable
          : template as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ClientCardCreateRequestStatusEnum?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $ClientCardCreateRequestCopyWith on ClientCardCreateRequest {
  /// Returns a callable class that can be used as follows: `instanceOfClientCardCreateRequest.copyWith(...)` or like so:`instanceOfClientCardCreateRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientCardCreateRequestCWProxy get copyWith =>
      _$ClientCardCreateRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientCardCreateRequest _$ClientCardCreateRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ClientCardCreateRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['client']);
  final val = ClientCardCreateRequest(
    client: $checkedConvert('client', (v) => (v as num).toInt()),
    template: $checkedConvert('template', (v) => v as String?),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(
        _$ClientCardCreateRequestStatusEnumEnumMap,
        v,
        unknownValue: ClientCardCreateRequestStatusEnum.unknownDefaultOpenApi,
      ),
    ),
    isActive: $checkedConvert('is_active', (v) => v as bool?),
  );
  return val;
}, fieldKeyMap: const {'isActive': 'is_active'});

Map<String, dynamic> _$ClientCardCreateRequestToJson(
  ClientCardCreateRequest instance,
) => <String, dynamic>{
  'client': instance.client,
  'template': ?instance.template,
  'status': ?_$ClientCardCreateRequestStatusEnumEnumMap[instance.status],
  'is_active': ?instance.isActive,
};

const _$ClientCardCreateRequestStatusEnumEnumMap = {
  ClientCardCreateRequestStatusEnum.DRAFT: 'DRAFT',
  ClientCardCreateRequestStatusEnum.GENERATED: 'GENERATED',
  ClientCardCreateRequestStatusEnum.ARCHIVED: 'ARCHIVED',
  ClientCardCreateRequestStatusEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
