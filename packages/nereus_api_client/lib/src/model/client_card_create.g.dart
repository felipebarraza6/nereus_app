// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_card_create.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientCardCreateCWProxy {
  ClientCardCreate id(String id);

  ClientCardCreate client(int client);

  ClientCardCreate template(String? template);

  ClientCardCreate status(ClientCardCreateStatusEnum? status);

  ClientCardCreate isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientCardCreate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientCardCreate(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientCardCreate call({
    String id,
    int client,
    String? template,
    ClientCardCreateStatusEnum? status,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientCardCreate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientCardCreate.copyWith.fieldName(...)`
class _$ClientCardCreateCWProxyImpl implements _$ClientCardCreateCWProxy {
  const _$ClientCardCreateCWProxyImpl(this._value);

  final ClientCardCreate _value;

  @override
  ClientCardCreate id(String id) => this(id: id);

  @override
  ClientCardCreate client(int client) => this(client: client);

  @override
  ClientCardCreate template(String? template) => this(template: template);

  @override
  ClientCardCreate status(ClientCardCreateStatusEnum? status) =>
      this(status: status);

  @override
  ClientCardCreate isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientCardCreate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientCardCreate(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientCardCreate call({
    Object? id = const $CopyWithPlaceholder(),
    Object? client = const $CopyWithPlaceholder(),
    Object? template = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return ClientCardCreate(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
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
          : status as ClientCardCreateStatusEnum?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $ClientCardCreateCopyWith on ClientCardCreate {
  /// Returns a callable class that can be used as follows: `instanceOfClientCardCreate.copyWith(...)` or like so:`instanceOfClientCardCreate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientCardCreateCWProxy get copyWith => _$ClientCardCreateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientCardCreate _$ClientCardCreateFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ClientCardCreate', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['id', 'client']);
      final val = ClientCardCreate(
        id: $checkedConvert('id', (v) => v as String),
        client: $checkedConvert('client', (v) => (v as num).toInt()),
        template: $checkedConvert('template', (v) => v as String?),
        status: $checkedConvert(
          'status',
          (v) => $enumDecodeNullable(
            _$ClientCardCreateStatusEnumEnumMap,
            v,
            unknownValue: ClientCardCreateStatusEnum.unknownDefaultOpenApi,
          ),
        ),
        isActive: $checkedConvert('is_active', (v) => v as bool?),
      );
      return val;
    }, fieldKeyMap: const {'isActive': 'is_active'});

Map<String, dynamic> _$ClientCardCreateToJson(ClientCardCreate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'client': instance.client,
      'template': ?instance.template,
      'status': ?_$ClientCardCreateStatusEnumEnumMap[instance.status],
      'is_active': ?instance.isActive,
    };

const _$ClientCardCreateStatusEnumEnumMap = {
  ClientCardCreateStatusEnum.DRAFT: 'DRAFT',
  ClientCardCreateStatusEnum.GENERATED: 'GENERATED',
  ClientCardCreateStatusEnum.ARCHIVED: 'ARCHIVED',
  ClientCardCreateStatusEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
