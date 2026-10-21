//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dio/dio.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_client_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedClientRequest {
  /// Returns a new [PatchedClientRequest] instance.
  PatchedClientRequest({

     this.user,

     this.name,

     this.clientCode,

     this.dni,

     this.photo,

     this.phoneNumber,

     this.email,

     this.commercialBusiness,

     this.receiverType,

     this.defaultDocumentType,

     this.region,

     this.province,

     this.commune,

     this.address,

     this.branch,

     this.isActive,

     this.sector,

     this.tags,

     this.autoCreateMeter = false,
  });

      /// Usuario con el que este cliente inicia sesión en la sucursal. Opcional: fichas sin portal no tienen usuario.
  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false,
  )


  final int? user;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'client_code',
    required: false,
    includeIfNull: false,
  )


  final String? clientCode;



  @JsonKey(
    
    name: r'dni',
    required: false,
    includeIfNull: false,
  )


  final String? dni;



      /// Imagen del cliente. Se muestra en el avatar.
  @JsonKey(ignore: true)


  final MultipartFile? photo;



  @JsonKey(
    
    name: r'phone_number',
    required: false,
    includeIfNull: false,
  )


  final String? phoneNumber;



  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false,
  )


  final String? email;



  @JsonKey(
    
    name: r'commercial_business',
    required: false,
    includeIfNull: false,
  )


  final String? commercialBusiness;



      /// Tipo de receptor para efectos tributarios.  * `PERSONA_NATURAL` - Persona natural * `EMPRESA` - Empresa
  @JsonKey(
    
    name: r'receiver_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedClientRequestReceiverTypeEnum.unknownDefaultOpenApi,
  )


  final PatchedClientRequestReceiverTypeEnum? receiverType;



      /// Tipo de documento tributario que se genera por defecto para este cliente.  * `BOLETA` - Boleta electrónica * `FACTURA` - Factura electrónica
  @JsonKey(
    
    name: r'default_document_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedClientRequestDefaultDocumentTypeEnum.unknownDefaultOpenApi,
  )


  final PatchedClientRequestDefaultDocumentTypeEnum? defaultDocumentType;



  @JsonKey(
    
    name: r'region',
    required: false,
    includeIfNull: false,
  )


  final String? region;



  @JsonKey(
    
    name: r'province',
    required: false,
    includeIfNull: false,
  )


  final String? province;



  @JsonKey(
    
    name: r'commune',
    required: false,
    includeIfNull: false,
  )


  final String? commune;



  @JsonKey(
    
    name: r'address',
    required: false,
    includeIfNull: false,
  )


  final String? address;



      /// Sucursal a la que pertenece este registro
  @JsonKey(
    
    name: r'branch',
    required: false,
    includeIfNull: false,
  )


  final int? branch;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'sector',
    required: false,
    includeIfNull: false,
  )


  final String? sector;



      /// Lista de etiquetas libres para categorizar el cliente (ej: [fiel, delivery])
  @JsonKey(
    
    name: r'tags',
    required: false,
    includeIfNull: false,
  )


  final Object? tags;



      /// Flag dictando si se debe pre-crear un Punto de Medición en sucursales tipo APR.
  @JsonKey(
    defaultValue: false,
    name: r'auto_create_meter',
    required: false,
    includeIfNull: false,
  )


  final bool? autoCreateMeter;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedClientRequest &&
      other.user == user &&
      other.name == name &&
      other.clientCode == clientCode &&
      other.dni == dni &&
      other.photo == photo &&
      other.phoneNumber == phoneNumber &&
      other.email == email &&
      other.commercialBusiness == commercialBusiness &&
      other.receiverType == receiverType &&
      other.defaultDocumentType == defaultDocumentType &&
      other.region == region &&
      other.province == province &&
      other.commune == commune &&
      other.address == address &&
      other.branch == branch &&
      other.isActive == isActive &&
      other.sector == sector &&
      other.tags == tags &&
      other.autoCreateMeter == autoCreateMeter;

    @override
    int get hashCode =>
        (user == null ? 0 : user.hashCode) +
        name.hashCode +
        (clientCode == null ? 0 : clientCode.hashCode) +
        (dni == null ? 0 : dni.hashCode) +
        (photo == null ? 0 : photo.hashCode) +
        (phoneNumber == null ? 0 : phoneNumber.hashCode) +
        (email == null ? 0 : email.hashCode) +
        (commercialBusiness == null ? 0 : commercialBusiness.hashCode) +
        (receiverType == null ? 0 : receiverType.hashCode) +
        (defaultDocumentType == null ? 0 : defaultDocumentType.hashCode) +
        (region == null ? 0 : region.hashCode) +
        (province == null ? 0 : province.hashCode) +
        (commune == null ? 0 : commune.hashCode) +
        (address == null ? 0 : address.hashCode) +
        (branch == null ? 0 : branch.hashCode) +
        isActive.hashCode +
        (sector == null ? 0 : sector.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        autoCreateMeter.hashCode;

  factory PatchedClientRequest.fromJson(Map<String, dynamic> json) => _$PatchedClientRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedClientRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Tipo de receptor para efectos tributarios.  * `PERSONA_NATURAL` - Persona natural * `EMPRESA` - Empresa
enum PatchedClientRequestReceiverTypeEnum {
@JsonValue(r'PERSONA_NATURAL')
PERSONA_NATURAL(r'PERSONA_NATURAL'),
@JsonValue(r'EMPRESA')
EMPRESA(r'EMPRESA'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedClientRequestReceiverTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Tipo de documento tributario que se genera por defecto para este cliente.  * `BOLETA` - Boleta electrónica * `FACTURA` - Factura electrónica
enum PatchedClientRequestDefaultDocumentTypeEnum {
@JsonValue(r'BOLETA')
BOLETA(r'BOLETA'),
@JsonValue(r'FACTURA')
FACTURA(r'FACTURA'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedClientRequestDefaultDocumentTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


