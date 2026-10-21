//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'compliance_config.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ComplianceConfig {
  /// Returns a new [ComplianceConfig] instance.
  ComplianceConfig({

    required  this.id,

    required  this.device,

     this.sendDga,

     this.standard,

     this.typeDga,

     this.codeDga,

     this.flowGrantedLs,

     this.totalGrantedM3,

     this.shac,

     this.regionDga,

     this.dateStartCompliance,

     this.informantName,

     this.informantRut,

     this.providerInstallation,

     this.sendEndpoint,

     this.sendSma,

     this.smaDeviceId,

     this.aggregateDeviceIds,

    required  this.created,

    required  this.modified,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'device',
    required: true,
    includeIfNull: false,
  )


  final int device;



  @JsonKey(
    
    name: r'send_dga',
    required: false,
    includeIfNull: false,
  )


  final bool? sendDga;



      /// * `SIN_ESTANDAR` - Sin estandar * `MAYOR` - Mayor * `MEDIO` - Medio * `MENOR` - Menor * `CAUDALES_MUY_PEQUENOS` - CMP
  @JsonKey(
    
    name: r'standard',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ComplianceConfigStandardEnum.unknownDefaultOpenApi,
  )


  final ComplianceConfigStandardEnum? standard;



      /// * `SUBTERRANEO` - Subterraneo * `SUPERFICIAL` - Superficial
  @JsonKey(
    
    name: r'type_dga',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ComplianceConfigTypeDgaEnum.unknownDefaultOpenApi,
  )


  final ComplianceConfigTypeDgaEnum? typeDga;



  @JsonKey(
    
    name: r'code_dga',
    required: false,
    includeIfNull: false,
  )


  final String? codeDga;



          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'flow_granted_ls',
    required: false,
    includeIfNull: false,
  )


  final double? flowGrantedLs;



          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'total_granted_m3',
    required: false,
    includeIfNull: false,
  )


  final int? totalGrantedM3;



  @JsonKey(
    
    name: r'shac',
    required: false,
    includeIfNull: false,
  )


  final String? shac;



  @JsonKey(
    
    name: r'region_dga',
    required: false,
    includeIfNull: false,
  )


  final String? regionDga;



  @JsonKey(
    
    name: r'date_start_compliance',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateStartCompliance;



  @JsonKey(
    
    name: r'informant_name',
    required: false,
    includeIfNull: false,
  )


  final String? informantName;



  @JsonKey(
    
    name: r'informant_rut',
    required: false,
    includeIfNull: false,
  )


  final String? informantRut;



      /// Instalación de la sucursal que envía las lecturas.
  @JsonKey(
    
    name: r'provider_installation',
    required: false,
    includeIfNull: false,
  )


  final String? providerInstallation;



      /// Endpoint de esa app. La URL y el body se eligen ahí.
  @JsonKey(
    
    name: r'send_endpoint',
    required: false,
    includeIfNull: false,
  )


  final String? sendEndpoint;



  @JsonKey(
    
    name: r'send_sma',
    required: false,
    includeIfNull: false,
  )


  final bool? sendSma;



  @JsonKey(
    
    name: r'sma_device_id',
    required: false,
    includeIfNull: false,
  )


  final String? smaDeviceId;



      /// Lista de IDs de dispositivos cuyo total se suma al enviar a DGA
  @JsonKey(
    
    name: r'aggregate_device_ids',
    required: false,
    includeIfNull: false,
  )


  final Object? aggregateDeviceIds;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is ComplianceConfig &&
      other.id == id &&
      other.device == device &&
      other.sendDga == sendDga &&
      other.standard == standard &&
      other.typeDga == typeDga &&
      other.codeDga == codeDga &&
      other.flowGrantedLs == flowGrantedLs &&
      other.totalGrantedM3 == totalGrantedM3 &&
      other.shac == shac &&
      other.regionDga == regionDga &&
      other.dateStartCompliance == dateStartCompliance &&
      other.informantName == informantName &&
      other.informantRut == informantRut &&
      other.providerInstallation == providerInstallation &&
      other.sendEndpoint == sendEndpoint &&
      other.sendSma == sendSma &&
      other.smaDeviceId == smaDeviceId &&
      other.aggregateDeviceIds == aggregateDeviceIds &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        device.hashCode +
        sendDga.hashCode +
        standard.hashCode +
        (typeDga == null ? 0 : typeDga.hashCode) +
        (codeDga == null ? 0 : codeDga.hashCode) +
        flowGrantedLs.hashCode +
        (totalGrantedM3 == null ? 0 : totalGrantedM3.hashCode) +
        (shac == null ? 0 : shac.hashCode) +
        (regionDga == null ? 0 : regionDga.hashCode) +
        (dateStartCompliance == null ? 0 : dateStartCompliance.hashCode) +
        informantName.hashCode +
        informantRut.hashCode +
        (providerInstallation == null ? 0 : providerInstallation.hashCode) +
        (sendEndpoint == null ? 0 : sendEndpoint.hashCode) +
        sendSma.hashCode +
        (smaDeviceId == null ? 0 : smaDeviceId.hashCode) +
        (aggregateDeviceIds == null ? 0 : aggregateDeviceIds.hashCode) +
        created.hashCode +
        modified.hashCode;

  factory ComplianceConfig.fromJson(Map<String, dynamic> json) => _$ComplianceConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ComplianceConfigToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `SIN_ESTANDAR` - Sin estandar * `MAYOR` - Mayor * `MEDIO` - Medio * `MENOR` - Menor * `CAUDALES_MUY_PEQUENOS` - CMP
enum ComplianceConfigStandardEnum {
@JsonValue(r'SIN_ESTANDAR')
SIN_ESTANDAR(r'SIN_ESTANDAR'),
@JsonValue(r'MAYOR')
MAYOR(r'MAYOR'),
@JsonValue(r'MEDIO')
MEDIO(r'MEDIO'),
@JsonValue(r'MENOR')
MENOR(r'MENOR'),
@JsonValue(r'CAUDALES_MUY_PEQUENOS')
CAUDALES_MUY_PEQUENOS(r'CAUDALES_MUY_PEQUENOS'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ComplianceConfigStandardEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `SUBTERRANEO` - Subterraneo * `SUPERFICIAL` - Superficial
enum ComplianceConfigTypeDgaEnum {
@JsonValue(r'SUBTERRANEO')
SUBTERRANEO(r'SUBTERRANEO'),
@JsonValue(r'SUPERFICIAL')
SUPERFICIAL(r'SUPERFICIAL'),
@JsonValue(r'')
empty(r''),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ComplianceConfigTypeDgaEnum(this.value);

final String value;

@override
String toString() => value;
}


