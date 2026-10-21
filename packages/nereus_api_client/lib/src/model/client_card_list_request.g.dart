// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_card_list_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientCardListRequestCWProxy {
  ClientCardListRequest client(int client);

  ClientCardListRequest template(String? template);

  ClientCardListRequest file(MultipartFile? file);

  ClientCardListRequest fileSize(int? fileSize);

  ClientCardListRequest status(ClientCardListRequestStatusEnum? status);

  ClientCardListRequest version(int? version);

  ClientCardListRequest generatedBy(int? generatedBy);

  ClientCardListRequest generatedAt(DateTime? generatedAt);

  ClientCardListRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientCardListRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientCardListRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientCardListRequest call({
    int client,
    String? template,
    MultipartFile? file,
    int? fileSize,
    ClientCardListRequestStatusEnum? status,
    int? version,
    int? generatedBy,
    DateTime? generatedAt,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientCardListRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientCardListRequest.copyWith.fieldName(...)`
class _$ClientCardListRequestCWProxyImpl
    implements _$ClientCardListRequestCWProxy {
  const _$ClientCardListRequestCWProxyImpl(this._value);

  final ClientCardListRequest _value;

  @override
  ClientCardListRequest client(int client) => this(client: client);

  @override
  ClientCardListRequest template(String? template) => this(template: template);

  @override
  ClientCardListRequest file(MultipartFile? file) => this(file: file);

  @override
  ClientCardListRequest fileSize(int? fileSize) => this(fileSize: fileSize);

  @override
  ClientCardListRequest status(ClientCardListRequestStatusEnum? status) =>
      this(status: status);

  @override
  ClientCardListRequest version(int? version) => this(version: version);

  @override
  ClientCardListRequest generatedBy(int? generatedBy) =>
      this(generatedBy: generatedBy);

  @override
  ClientCardListRequest generatedAt(DateTime? generatedAt) =>
      this(generatedAt: generatedAt);

  @override
  ClientCardListRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientCardListRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientCardListRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientCardListRequest call({
    Object? client = const $CopyWithPlaceholder(),
    Object? template = const $CopyWithPlaceholder(),
    Object? file = const $CopyWithPlaceholder(),
    Object? fileSize = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? version = const $CopyWithPlaceholder(),
    Object? generatedBy = const $CopyWithPlaceholder(),
    Object? generatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return ClientCardListRequest(
      client: client == const $CopyWithPlaceholder()
          ? _value.client
          // ignore: cast_nullable_to_non_nullable
          : client as int,
      template: template == const $CopyWithPlaceholder()
          ? _value.template
          // ignore: cast_nullable_to_non_nullable
          : template as String?,
      file: file == const $CopyWithPlaceholder()
          ? _value.file
          // ignore: cast_nullable_to_non_nullable
          : file as MultipartFile?,
      fileSize: fileSize == const $CopyWithPlaceholder()
          ? _value.fileSize
          // ignore: cast_nullable_to_non_nullable
          : fileSize as int?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ClientCardListRequestStatusEnum?,
      version: version == const $CopyWithPlaceholder()
          ? _value.version
          // ignore: cast_nullable_to_non_nullable
          : version as int?,
      generatedBy: generatedBy == const $CopyWithPlaceholder()
          ? _value.generatedBy
          // ignore: cast_nullable_to_non_nullable
          : generatedBy as int?,
      generatedAt: generatedAt == const $CopyWithPlaceholder()
          ? _value.generatedAt
          // ignore: cast_nullable_to_non_nullable
          : generatedAt as DateTime?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $ClientCardListRequestCopyWith on ClientCardListRequest {
  /// Returns a callable class that can be used as follows: `instanceOfClientCardListRequest.copyWith(...)` or like so:`instanceOfClientCardListRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientCardListRequestCWProxy get copyWith =>
      _$ClientCardListRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientCardListRequest _$ClientCardListRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ClientCardListRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['client']);
    final val = ClientCardListRequest(
      client: $checkedConvert('client', (v) => (v as num).toInt()),
      template: $checkedConvert('template', (v) => v as String?),
      fileSize: $checkedConvert('file_size', (v) => (v as num?)?.toInt()),
      status: $checkedConvert(
        'status',
        (v) => $enumDecodeNullable(
          _$ClientCardListRequestStatusEnumEnumMap,
          v,
          unknownValue: ClientCardListRequestStatusEnum.unknownDefaultOpenApi,
        ),
      ),
      version: $checkedConvert('version', (v) => (v as num?)?.toInt()),
      generatedBy: $checkedConvert('generated_by', (v) => (v as num?)?.toInt()),
      generatedAt: $checkedConvert(
        'generated_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'fileSize': 'file_size',
    'generatedBy': 'generated_by',
    'generatedAt': 'generated_at',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$ClientCardListRequestToJson(
  ClientCardListRequest instance,
) => <String, dynamic>{
  'client': instance.client,
  'template': ?instance.template,
  'file_size': ?instance.fileSize,
  'status': ?_$ClientCardListRequestStatusEnumEnumMap[instance.status],
  'version': ?instance.version,
  'generated_by': ?instance.generatedBy,
  'generated_at': ?instance.generatedAt?.toIso8601String(),
  'is_active': ?instance.isActive,
};

const _$ClientCardListRequestStatusEnumEnumMap = {
  ClientCardListRequestStatusEnum.DRAFT: 'DRAFT',
  ClientCardListRequestStatusEnum.GENERATED: 'GENERATED',
  ClientCardListRequestStatusEnum.ARCHIVED: 'ARCHIVED',
  ClientCardListRequestStatusEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
