//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_depth.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientDepth {
  /// Returns a new [ClientDepth] instance.
  ClientDepth({

    required  this.id,

    required  this.name,

     this.dni,

     this.photo,

     this.email,

     this.phoneNumber,

     this.clientCode,

     this.commercialBusiness,

     this.receiverType,

     this.defaultDocumentType,

     this.region,

     this.province,

     this.commune,

     this.address,

     this.sector,

     this.tags,

     this.user,

    required  this.branch,

    required  this.branchName,

     this.isActive,

    required  this.created,

    required  this.modified,

    required  this.contacts,

    required  this.measurementPoints,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// RUT/DNI del cliente
  @JsonKey(
    
    name: r'dni',
    required: false,
    includeIfNull: false,
  )


  final String? dni;



      /// Imagen del cliente. Se muestra en el avatar.
  @JsonKey(
    
    name: r'photo',
    required: false,
    includeIfNull: false,
  )


  final String? photo;



      /// Correo electrónico del cliente
  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false,
  )


  final String? email;



      /// Número de teléfono del cliente
  @JsonKey(
    
    name: r'phone_number',
    required: false,
    includeIfNull: false,
  )


  final String? phoneNumber;



      /// Código identificador del cliente/socio (puede repetirse, el ID es el identificador único)
  @JsonKey(
    
    name: r'client_code',
    required: false,
    includeIfNull: false,
  )


  final String? clientCode;



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
  unknownEnumValue: ClientDepthReceiverTypeEnum.unknownDefaultOpenApi,
  )


  final ClientDepthReceiverTypeEnum? receiverType;



      /// Tipo de documento tributario que se genera por defecto para este cliente.  * `BOLETA` - Boleta electrónica * `FACTURA` - Factura electrónica
  @JsonKey(
    
    name: r'default_document_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientDepthDefaultDocumentTypeEnum.unknownDefaultOpenApi,
  )


  final ClientDepthDefaultDocumentTypeEnum? defaultDocumentType;



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



      /// Usuario con el que este cliente inicia sesión en la sucursal. Opcional: fichas sin portal no tienen usuario.
  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false,
  )


  final int? user;



      /// Sucursal a la que pertenece este registro
  @JsonKey(
    
    name: r'branch',
    required: true,
    includeIfNull: false,
  )


  final int branch;



      /// Get branch name.
  @JsonKey(
    
    name: r'branch_name',
    required: true,
    includeIfNull: false,
  )


  final String branchName;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



      /// Fecha de creacion.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final DateTime created;



      /// Fecha de modificacion.
  @JsonKey(
    
    name: r'modified',
    required: true,
    includeIfNull: false,
  )


  final DateTime modified;



      /// Get contacts.
  @JsonKey(
    
    name: r'contacts',
    required: true,
    includeIfNull: false,
  )


  final String contacts;



      /// Get measurement points for this client.
  @JsonKey(
    
    name: r'measurement_points',
    required: true,
    includeIfNull: false,
  )


  final String measurementPoints;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ClientDepth &&
      other.id == id &&
      other.name == name &&
      other.dni == dni &&
      other.photo == photo &&
      other.email == email &&
      other.phoneNumber == phoneNumber &&
      other.clientCode == clientCode &&
      other.commercialBusiness == commercialBusiness &&
      other.receiverType == receiverType &&
      other.defaultDocumentType == defaultDocumentType &&
      other.region == region &&
      other.province == province &&
      other.commune == commune &&
      other.address == address &&
      other.sector == sector &&
      other.tags == tags &&
      other.user == user &&
      other.branch == branch &&
      other.branchName == branchName &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified &&
      other.contacts == contacts &&
      other.measurementPoints == measurementPoints;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        (dni == null ? 0 : dni.hashCode) +
        (photo == null ? 0 : photo.hashCode) +
        (email == null ? 0 : email.hashCode) +
        (phoneNumber == null ? 0 : phoneNumber.hashCode) +
        (clientCode == null ? 0 : clientCode.hashCode) +
        (commercialBusiness == null ? 0 : commercialBusiness.hashCode) +
        receiverType.hashCode +
        defaultDocumentType.hashCode +
        (region == null ? 0 : region.hashCode) +
        (province == null ? 0 : province.hashCode) +
        (commune == null ? 0 : commune.hashCode) +
        (address == null ? 0 : address.hashCode) +
        (sector == null ? 0 : sector.hashCode) +
        (tags == null ? 0 : tags.hashCode) +
        (user == null ? 0 : user.hashCode) +
        branch.hashCode +
        branchName.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode +
        contacts.hashCode +
        measurementPoints.hashCode;

  factory ClientDepth.fromJson(Map<String, dynamic> json) => _$ClientDepthFromJson(json);

  Map<String, dynamic> toJson() => _$ClientDepthToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Tipo de receptor para efectos tributarios.  * `PERSONA_NATURAL` - Persona natural * `EMPRESA` - Empresa
enum ClientDepthReceiverTypeEnum {
@JsonValue(r'PERSONA_NATURAL')
PERSONA_NATURAL(r'PERSONA_NATURAL'),
@JsonValue(r'EMPRESA')
EMPRESA(r'EMPRESA'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientDepthReceiverTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Tipo de documento tributario que se genera por defecto para este cliente.  * `BOLETA` - Boleta electrónica * `FACTURA` - Factura electrónica
enum ClientDepthDefaultDocumentTypeEnum {
@JsonValue(r'BOLETA')
BOLETA(r'BOLETA'),
@JsonValue(r'FACTURA')
FACTURA(r'FACTURA'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientDepthDefaultDocumentTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


