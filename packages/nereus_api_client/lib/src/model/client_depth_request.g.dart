// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_depth_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientDepthRequestCWProxy {
  ClientDepthRequest name(String name);

  ClientDepthRequest dni(String? dni);

  ClientDepthRequest photo(MultipartFile? photo);

  ClientDepthRequest email(String? email);

  ClientDepthRequest phoneNumber(String? phoneNumber);

  ClientDepthRequest clientCode(String? clientCode);

  ClientDepthRequest commercialBusiness(String? commercialBusiness);

  ClientDepthRequest receiverType(
    ClientDepthRequestReceiverTypeEnum? receiverType,
  );

  ClientDepthRequest defaultDocumentType(
    ClientDepthRequestDefaultDocumentTypeEnum? defaultDocumentType,
  );

  ClientDepthRequest region(String? region);

  ClientDepthRequest province(String? province);

  ClientDepthRequest commune(String? commune);

  ClientDepthRequest address(String? address);

  ClientDepthRequest sector(String? sector);

  ClientDepthRequest tags(Object? tags);

  ClientDepthRequest user(int? user);

  ClientDepthRequest branch(int branch);

  ClientDepthRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientDepthRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientDepthRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientDepthRequest call({
    String name,
    String? dni,
    MultipartFile? photo,
    String? email,
    String? phoneNumber,
    String? clientCode,
    String? commercialBusiness,
    ClientDepthRequestReceiverTypeEnum? receiverType,
    ClientDepthRequestDefaultDocumentTypeEnum? defaultDocumentType,
    String? region,
    String? province,
    String? commune,
    String? address,
    String? sector,
    Object? tags,
    int? user,
    int branch,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientDepthRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientDepthRequest.copyWith.fieldName(...)`
class _$ClientDepthRequestCWProxyImpl implements _$ClientDepthRequestCWProxy {
  const _$ClientDepthRequestCWProxyImpl(this._value);

  final ClientDepthRequest _value;

  @override
  ClientDepthRequest name(String name) => this(name: name);

  @override
  ClientDepthRequest dni(String? dni) => this(dni: dni);

  @override
  ClientDepthRequest photo(MultipartFile? photo) => this(photo: photo);

  @override
  ClientDepthRequest email(String? email) => this(email: email);

  @override
  ClientDepthRequest phoneNumber(String? phoneNumber) =>
      this(phoneNumber: phoneNumber);

  @override
  ClientDepthRequest clientCode(String? clientCode) =>
      this(clientCode: clientCode);

  @override
  ClientDepthRequest commercialBusiness(String? commercialBusiness) =>
      this(commercialBusiness: commercialBusiness);

  @override
  ClientDepthRequest receiverType(
    ClientDepthRequestReceiverTypeEnum? receiverType,
  ) => this(receiverType: receiverType);

  @override
  ClientDepthRequest defaultDocumentType(
    ClientDepthRequestDefaultDocumentTypeEnum? defaultDocumentType,
  ) => this(defaultDocumentType: defaultDocumentType);

  @override
  ClientDepthRequest region(String? region) => this(region: region);

  @override
  ClientDepthRequest province(String? province) => this(province: province);

  @override
  ClientDepthRequest commune(String? commune) => this(commune: commune);

  @override
  ClientDepthRequest address(String? address) => this(address: address);

  @override
  ClientDepthRequest sector(String? sector) => this(sector: sector);

  @override
  ClientDepthRequest tags(Object? tags) => this(tags: tags);

  @override
  ClientDepthRequest user(int? user) => this(user: user);

  @override
  ClientDepthRequest branch(int branch) => this(branch: branch);

  @override
  ClientDepthRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientDepthRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientDepthRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientDepthRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? dni = const $CopyWithPlaceholder(),
    Object? photo = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? clientCode = const $CopyWithPlaceholder(),
    Object? commercialBusiness = const $CopyWithPlaceholder(),
    Object? receiverType = const $CopyWithPlaceholder(),
    Object? defaultDocumentType = const $CopyWithPlaceholder(),
    Object? region = const $CopyWithPlaceholder(),
    Object? province = const $CopyWithPlaceholder(),
    Object? commune = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? sector = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return ClientDepthRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      dni: dni == const $CopyWithPlaceholder()
          ? _value.dni
          // ignore: cast_nullable_to_non_nullable
          : dni as String?,
      photo: photo == const $CopyWithPlaceholder()
          ? _value.photo
          // ignore: cast_nullable_to_non_nullable
          : photo as MultipartFile?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      phoneNumber: phoneNumber == const $CopyWithPlaceholder()
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String?,
      clientCode: clientCode == const $CopyWithPlaceholder()
          ? _value.clientCode
          // ignore: cast_nullable_to_non_nullable
          : clientCode as String?,
      commercialBusiness: commercialBusiness == const $CopyWithPlaceholder()
          ? _value.commercialBusiness
          // ignore: cast_nullable_to_non_nullable
          : commercialBusiness as String?,
      receiverType: receiverType == const $CopyWithPlaceholder()
          ? _value.receiverType
          // ignore: cast_nullable_to_non_nullable
          : receiverType as ClientDepthRequestReceiverTypeEnum?,
      defaultDocumentType: defaultDocumentType == const $CopyWithPlaceholder()
          ? _value.defaultDocumentType
          // ignore: cast_nullable_to_non_nullable
          : defaultDocumentType as ClientDepthRequestDefaultDocumentTypeEnum?,
      region: region == const $CopyWithPlaceholder()
          ? _value.region
          // ignore: cast_nullable_to_non_nullable
          : region as String?,
      province: province == const $CopyWithPlaceholder()
          ? _value.province
          // ignore: cast_nullable_to_non_nullable
          : province as String?,
      commune: commune == const $CopyWithPlaceholder()
          ? _value.commune
          // ignore: cast_nullable_to_non_nullable
          : commune as String?,
      address: address == const $CopyWithPlaceholder()
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String?,
      sector: sector == const $CopyWithPlaceholder()
          ? _value.sector
          // ignore: cast_nullable_to_non_nullable
          : sector as String?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as Object?,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as int?,
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as int,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $ClientDepthRequestCopyWith on ClientDepthRequest {
  /// Returns a callable class that can be used as follows: `instanceOfClientDepthRequest.copyWith(...)` or like so:`instanceOfClientDepthRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientDepthRequestCWProxy get copyWith =>
      _$ClientDepthRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientDepthRequest _$ClientDepthRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ClientDepthRequest',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['name', 'branch']);
        final val = ClientDepthRequest(
          name: $checkedConvert('name', (v) => v as String),
          dni: $checkedConvert('dni', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
          clientCode: $checkedConvert('client_code', (v) => v as String?),
          commercialBusiness: $checkedConvert(
            'commercial_business',
            (v) => v as String?,
          ),
          receiverType: $checkedConvert(
            'receiver_type',
            (v) => $enumDecodeNullable(
              _$ClientDepthRequestReceiverTypeEnumEnumMap,
              v,
              unknownValue:
                  ClientDepthRequestReceiverTypeEnum.unknownDefaultOpenApi,
            ),
          ),
          defaultDocumentType: $checkedConvert(
            'default_document_type',
            (v) => $enumDecodeNullable(
              _$ClientDepthRequestDefaultDocumentTypeEnumEnumMap,
              v,
              unknownValue: ClientDepthRequestDefaultDocumentTypeEnum
                  .unknownDefaultOpenApi,
            ),
          ),
          region: $checkedConvert('region', (v) => v as String?),
          province: $checkedConvert('province', (v) => v as String?),
          commune: $checkedConvert('commune', (v) => v as String?),
          address: $checkedConvert('address', (v) => v as String?),
          sector: $checkedConvert('sector', (v) => v as String?),
          tags: $checkedConvert('tags', (v) => v),
          user: $checkedConvert('user', (v) => (v as num?)?.toInt()),
          branch: $checkedConvert('branch', (v) => (v as num).toInt()),
          isActive: $checkedConvert('is_active', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'phoneNumber': 'phone_number',
        'clientCode': 'client_code',
        'commercialBusiness': 'commercial_business',
        'receiverType': 'receiver_type',
        'defaultDocumentType': 'default_document_type',
        'isActive': 'is_active',
      },
    );

Map<String, dynamic> _$ClientDepthRequestToJson(ClientDepthRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dni': ?instance.dni,
      'email': ?instance.email,
      'phone_number': ?instance.phoneNumber,
      'client_code': ?instance.clientCode,
      'commercial_business': ?instance.commercialBusiness,
      'receiver_type':
          ?_$ClientDepthRequestReceiverTypeEnumEnumMap[instance.receiverType],
      'default_document_type':
          ?_$ClientDepthRequestDefaultDocumentTypeEnumEnumMap[instance
              .defaultDocumentType],
      'region': ?instance.region,
      'province': ?instance.province,
      'commune': ?instance.commune,
      'address': ?instance.address,
      'sector': ?instance.sector,
      'tags': ?instance.tags,
      'user': ?instance.user,
      'branch': instance.branch,
      'is_active': ?instance.isActive,
    };

const _$ClientDepthRequestReceiverTypeEnumEnumMap = {
  ClientDepthRequestReceiverTypeEnum.PERSONA_NATURAL: 'PERSONA_NATURAL',
  ClientDepthRequestReceiverTypeEnum.EMPRESA: 'EMPRESA',
  ClientDepthRequestReceiverTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};

const _$ClientDepthRequestDefaultDocumentTypeEnumEnumMap = {
  ClientDepthRequestDefaultDocumentTypeEnum.BOLETA: 'BOLETA',
  ClientDepthRequestDefaultDocumentTypeEnum.FACTURA: 'FACTURA',
  ClientDepthRequestDefaultDocumentTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
