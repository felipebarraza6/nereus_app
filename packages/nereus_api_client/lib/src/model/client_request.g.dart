// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientRequestCWProxy {
  ClientRequest user(int? user);

  ClientRequest name(String? name);

  ClientRequest clientCode(String? clientCode);

  ClientRequest dni(String? dni);

  ClientRequest photo(MultipartFile? photo);

  ClientRequest phoneNumber(String? phoneNumber);

  ClientRequest email(String? email);

  ClientRequest commercialBusiness(String? commercialBusiness);

  ClientRequest receiverType(ClientRequestReceiverTypeEnum? receiverType);

  ClientRequest defaultDocumentType(
    ClientRequestDefaultDocumentTypeEnum? defaultDocumentType,
  );

  ClientRequest region(String? region);

  ClientRequest province(String? province);

  ClientRequest commune(String? commune);

  ClientRequest address(String? address);

  ClientRequest branch(int? branch);

  ClientRequest isActive(bool? isActive);

  ClientRequest sector(String? sector);

  ClientRequest tags(Object? tags);

  ClientRequest autoCreateMeter(bool? autoCreateMeter);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientRequest call({
    int? user,
    String? name,
    String? clientCode,
    String? dni,
    MultipartFile? photo,
    String? phoneNumber,
    String? email,
    String? commercialBusiness,
    ClientRequestReceiverTypeEnum? receiverType,
    ClientRequestDefaultDocumentTypeEnum? defaultDocumentType,
    String? region,
    String? province,
    String? commune,
    String? address,
    int? branch,
    bool? isActive,
    String? sector,
    Object? tags,
    bool? autoCreateMeter,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientRequest.copyWith.fieldName(...)`
class _$ClientRequestCWProxyImpl implements _$ClientRequestCWProxy {
  const _$ClientRequestCWProxyImpl(this._value);

  final ClientRequest _value;

  @override
  ClientRequest user(int? user) => this(user: user);

  @override
  ClientRequest name(String? name) => this(name: name);

  @override
  ClientRequest clientCode(String? clientCode) => this(clientCode: clientCode);

  @override
  ClientRequest dni(String? dni) => this(dni: dni);

  @override
  ClientRequest photo(MultipartFile? photo) => this(photo: photo);

  @override
  ClientRequest phoneNumber(String? phoneNumber) =>
      this(phoneNumber: phoneNumber);

  @override
  ClientRequest email(String? email) => this(email: email);

  @override
  ClientRequest commercialBusiness(String? commercialBusiness) =>
      this(commercialBusiness: commercialBusiness);

  @override
  ClientRequest receiverType(ClientRequestReceiverTypeEnum? receiverType) =>
      this(receiverType: receiverType);

  @override
  ClientRequest defaultDocumentType(
    ClientRequestDefaultDocumentTypeEnum? defaultDocumentType,
  ) => this(defaultDocumentType: defaultDocumentType);

  @override
  ClientRequest region(String? region) => this(region: region);

  @override
  ClientRequest province(String? province) => this(province: province);

  @override
  ClientRequest commune(String? commune) => this(commune: commune);

  @override
  ClientRequest address(String? address) => this(address: address);

  @override
  ClientRequest branch(int? branch) => this(branch: branch);

  @override
  ClientRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  ClientRequest sector(String? sector) => this(sector: sector);

  @override
  ClientRequest tags(Object? tags) => this(tags: tags);

  @override
  ClientRequest autoCreateMeter(bool? autoCreateMeter) =>
      this(autoCreateMeter: autoCreateMeter);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientRequest call({
    Object? user = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? clientCode = const $CopyWithPlaceholder(),
    Object? dni = const $CopyWithPlaceholder(),
    Object? photo = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? commercialBusiness = const $CopyWithPlaceholder(),
    Object? receiverType = const $CopyWithPlaceholder(),
    Object? defaultDocumentType = const $CopyWithPlaceholder(),
    Object? region = const $CopyWithPlaceholder(),
    Object? province = const $CopyWithPlaceholder(),
    Object? commune = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? sector = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? autoCreateMeter = const $CopyWithPlaceholder(),
  }) {
    return ClientRequest(
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      clientCode: clientCode == const $CopyWithPlaceholder()
          ? _value.clientCode
          // ignore: cast_nullable_to_non_nullable
          : clientCode as String?,
      dni: dni == const $CopyWithPlaceholder()
          ? _value.dni
          // ignore: cast_nullable_to_non_nullable
          : dni as String?,
      photo: photo == const $CopyWithPlaceholder()
          ? _value.photo
          // ignore: cast_nullable_to_non_nullable
          : photo as MultipartFile?,
      phoneNumber: phoneNumber == const $CopyWithPlaceholder()
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      commercialBusiness: commercialBusiness == const $CopyWithPlaceholder()
          ? _value.commercialBusiness
          // ignore: cast_nullable_to_non_nullable
          : commercialBusiness as String?,
      receiverType: receiverType == const $CopyWithPlaceholder()
          ? _value.receiverType
          // ignore: cast_nullable_to_non_nullable
          : receiverType as ClientRequestReceiverTypeEnum?,
      defaultDocumentType: defaultDocumentType == const $CopyWithPlaceholder()
          ? _value.defaultDocumentType
          // ignore: cast_nullable_to_non_nullable
          : defaultDocumentType as ClientRequestDefaultDocumentTypeEnum?,
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
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as int?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      sector: sector == const $CopyWithPlaceholder()
          ? _value.sector
          // ignore: cast_nullable_to_non_nullable
          : sector as String?,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as Object?,
      autoCreateMeter: autoCreateMeter == const $CopyWithPlaceholder()
          ? _value.autoCreateMeter
          // ignore: cast_nullable_to_non_nullable
          : autoCreateMeter as bool?,
    );
  }
}

extension $ClientRequestCopyWith on ClientRequest {
  /// Returns a callable class that can be used as follows: `instanceOfClientRequest.copyWith(...)` or like so:`instanceOfClientRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientRequestCWProxy get copyWith => _$ClientRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientRequest _$ClientRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ClientRequest',
      json,
      ($checkedConvert) {
        final val = ClientRequest(
          user: $checkedConvert('user', (v) => (v as num?)?.toInt()),
          name: $checkedConvert('name', (v) => v as String?),
          clientCode: $checkedConvert('client_code', (v) => v as String?),
          dni: $checkedConvert('dni', (v) => v as String?),
          phoneNumber: $checkedConvert('phone_number', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          commercialBusiness: $checkedConvert(
            'commercial_business',
            (v) => v as String?,
          ),
          receiverType: $checkedConvert(
            'receiver_type',
            (v) => $enumDecodeNullable(
              _$ClientRequestReceiverTypeEnumEnumMap,
              v,
              unknownValue: ClientRequestReceiverTypeEnum.unknownDefaultOpenApi,
            ),
          ),
          defaultDocumentType: $checkedConvert(
            'default_document_type',
            (v) => $enumDecodeNullable(
              _$ClientRequestDefaultDocumentTypeEnumEnumMap,
              v,
              unknownValue:
                  ClientRequestDefaultDocumentTypeEnum.unknownDefaultOpenApi,
            ),
          ),
          region: $checkedConvert('region', (v) => v as String?),
          province: $checkedConvert('province', (v) => v as String?),
          commune: $checkedConvert('commune', (v) => v as String?),
          address: $checkedConvert('address', (v) => v as String?),
          branch: $checkedConvert('branch', (v) => (v as num?)?.toInt()),
          isActive: $checkedConvert('is_active', (v) => v as bool?),
          sector: $checkedConvert('sector', (v) => v as String?),
          tags: $checkedConvert('tags', (v) => v),
          autoCreateMeter: $checkedConvert(
            'auto_create_meter',
            (v) => v as bool? ?? false,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'clientCode': 'client_code',
        'phoneNumber': 'phone_number',
        'commercialBusiness': 'commercial_business',
        'receiverType': 'receiver_type',
        'defaultDocumentType': 'default_document_type',
        'isActive': 'is_active',
        'autoCreateMeter': 'auto_create_meter',
      },
    );

Map<String, dynamic> _$ClientRequestToJson(ClientRequest instance) =>
    <String, dynamic>{
      'user': ?instance.user,
      'name': ?instance.name,
      'client_code': ?instance.clientCode,
      'dni': ?instance.dni,
      'phone_number': ?instance.phoneNumber,
      'email': ?instance.email,
      'commercial_business': ?instance.commercialBusiness,
      'receiver_type':
          ?_$ClientRequestReceiverTypeEnumEnumMap[instance.receiverType],
      'default_document_type':
          ?_$ClientRequestDefaultDocumentTypeEnumEnumMap[instance
              .defaultDocumentType],
      'region': ?instance.region,
      'province': ?instance.province,
      'commune': ?instance.commune,
      'address': ?instance.address,
      'branch': ?instance.branch,
      'is_active': ?instance.isActive,
      'sector': ?instance.sector,
      'tags': ?instance.tags,
      'auto_create_meter': ?instance.autoCreateMeter,
    };

const _$ClientRequestReceiverTypeEnumEnumMap = {
  ClientRequestReceiverTypeEnum.PERSONA_NATURAL: 'PERSONA_NATURAL',
  ClientRequestReceiverTypeEnum.EMPRESA: 'EMPRESA',
  ClientRequestReceiverTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};

const _$ClientRequestDefaultDocumentTypeEnumEnumMap = {
  ClientRequestDefaultDocumentTypeEnum.BOLETA: 'BOLETA',
  ClientRequestDefaultDocumentTypeEnum.FACTURA: 'FACTURA',
  ClientRequestDefaultDocumentTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
