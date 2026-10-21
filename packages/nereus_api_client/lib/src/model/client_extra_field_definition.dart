//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_extra_field_definition.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientExtraFieldDefinition {
  /// Returns a new [ClientExtraFieldDefinition] instance.
  ClientExtraFieldDefinition({

    required  this.id,

    required  this.name,

    required  this.key,

     this.description,

     this.fieldType,

     this.isRequired,

     this.isUnique,

     this.unit,

     this.options,

     this.minValue,

     this.maxValue,

     this.displayOrder,

     this.displayInList,

     this.displayInCard,

     this.processingLevel,

     this.indicatorType,

     this.aggregationType,

     this.hideInStats,

     this.group,

    required  this.groupName,

    required  this.groupOrder,

    required  this.isQuantifiable,

    required  this.isNumeric,

     this.isActive,

    required  this.created,

    required  this.modified,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Identificador único del campo (ej: peso, presion_arterial)
  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false,
  )


  final String key;



      /// Descripción de qué representa este campo
  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// * `TEXT` - Texto * `NUMBER` - Número * `INTEGER` - Entero * `DECIMAL` - Decimal * `DATE` - Fecha * `DATETIME` - Fecha y Hora * `BOOLEAN` - Sí/No * `SELECT` - Selección Única * `MULTISELECT` - Selección Múltiple * `EMAIL` - Email * `PHONE` - Teléfono * `URL` - URL * `FILE` - Archivo * `IMAGE` - Imagen
  @JsonKey(
    
    name: r'field_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientExtraFieldDefinitionFieldTypeEnum.unknownDefaultOpenApi,
  )


  final ClientExtraFieldDefinitionFieldTypeEnum? fieldType;



  @JsonKey(
    
    name: r'is_required',
    required: false,
    includeIfNull: false,
  )


  final bool? isRequired;



      /// Si el valor debe ser único entre todos los clientes de la sucursal
  @JsonKey(
    
    name: r'is_unique',
    required: false,
    includeIfNull: false,
  )


  final bool? isUnique;



      /// Ej: kg, cm, %, mmHg, puntos
  @JsonKey(
    
    name: r'unit',
    required: false,
    includeIfNull: false,
  )


  final String? unit;



      /// Lista de opciones para campos de selección: [{\"value\": \"A\", \"label\": \"Opción A\"}]
  @JsonKey(
    
    name: r'options',
    required: false,
    includeIfNull: false,
  )


  final Object? options;



          // minimum: -100000000000
          // maximum: 100000000000
  @JsonKey(
    
    name: r'min_value',
    required: false,
    includeIfNull: false,
  )


  final double? minValue;



          // minimum: -100000000000
          // maximum: 100000000000
  @JsonKey(
    
    name: r'max_value',
    required: false,
    includeIfNull: false,
  )


  final double? maxValue;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'display_order',
    required: false,
    includeIfNull: false,
  )


  final int? displayOrder;



      /// Si se muestra en la lista de clientes
  @JsonKey(
    
    name: r'display_in_list',
    required: false,
    includeIfNull: false,
  )


  final bool? displayInList;



      /// Si se muestra en la ficha detalle del cliente
  @JsonKey(
    
    name: r'display_in_card',
    required: false,
    includeIfNull: false,
  )


  final bool? displayInCard;



      /// Qué tanto se procesa este campo: sin procesamiento, solo validaciones, stats o dashboard completo  * `NONE` - Sin procesamiento — campo simple * `VALIDATE` - Solo validaciones * `STATS` - Validaciones + Estadísticas * `FULL` - Validaciones + Estadísticas + Dashboard
  @JsonKey(
    
    name: r'processing_level',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientExtraFieldDefinitionProcessingLevelEnum.unknownDefaultOpenApi,
  )


  final ClientExtraFieldDefinitionProcessingLevelEnum? processingLevel;



      /// Cómo se visualiza este campo en dashboards  * `NONE` - Sin indicador * `LINE_CHART` - Gráfico de Líneas * `BAR_CHART` - Gráfico de Barras * `PIE_CHART` - Gráfico Circular * `GAUGE` - Medidor/Gauge * `NUMBER` - Número Simple * `TABLE` - Tabla * `TIMELINE` - Línea de Tiempo
  @JsonKey(
    
    name: r'indicator_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientExtraFieldDefinitionIndicatorTypeEnum.unknownDefaultOpenApi,
  )


  final ClientExtraFieldDefinitionIndicatorTypeEnum? indicatorType;



      /// Cómo se agrega este campo para estadísticas  * `NONE` - Sin agregación * `COUNT` - Conteo * `SUM` - Suma * `AVG` - Promedio * `MIN` - Mínimo * `MAX` - Máximo * `MEDIAN` - Mediana
  @JsonKey(
    
    name: r'aggregation_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientExtraFieldDefinitionAggregationTypeEnum.unknownDefaultOpenApi,
  )


  final ClientExtraFieldDefinitionAggregationTypeEnum? aggregationType;



      /// Si es True, no aparece en dashboards ni stats
  @JsonKey(
    
    name: r'hide_in_stats',
    required: false,
    includeIfNull: false,
  )


  final bool? hideInStats;



      /// Grupo/section donde aparece este campo (ej: 'Datos Médicos')
  @JsonKey(
    
    name: r'group',
    required: false,
    includeIfNull: false,
  )


  final String? group;



  @JsonKey(
    
    name: r'group_name',
    required: true,
    includeIfNull: false,
  )


  final String groupName;



  @JsonKey(
    
    name: r'group_order',
    required: true,
    includeIfNull: false,
  )


  final String groupOrder;



  @JsonKey(
    
    name: r'is_quantifiable',
    required: true,
    includeIfNull: false,
  )


  final bool isQuantifiable;



  @JsonKey(
    
    name: r'is_numeric',
    required: true,
    includeIfNull: false,
  )


  final bool isNumeric;



      /// Indica si el registro está activo. Use esto en lugar de eliminar.
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





    @override
    bool operator ==(Object other) => identical(this, other) || other is ClientExtraFieldDefinition &&
      other.id == id &&
      other.name == name &&
      other.key == key &&
      other.description == description &&
      other.fieldType == fieldType &&
      other.isRequired == isRequired &&
      other.isUnique == isUnique &&
      other.unit == unit &&
      other.options == options &&
      other.minValue == minValue &&
      other.maxValue == maxValue &&
      other.displayOrder == displayOrder &&
      other.displayInList == displayInList &&
      other.displayInCard == displayInCard &&
      other.processingLevel == processingLevel &&
      other.indicatorType == indicatorType &&
      other.aggregationType == aggregationType &&
      other.hideInStats == hideInStats &&
      other.group == group &&
      other.groupName == groupName &&
      other.groupOrder == groupOrder &&
      other.isQuantifiable == isQuantifiable &&
      other.isNumeric == isNumeric &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        key.hashCode +
        description.hashCode +
        fieldType.hashCode +
        isRequired.hashCode +
        isUnique.hashCode +
        unit.hashCode +
        (options == null ? 0 : options.hashCode) +
        (minValue == null ? 0 : minValue.hashCode) +
        (maxValue == null ? 0 : maxValue.hashCode) +
        displayOrder.hashCode +
        displayInList.hashCode +
        displayInCard.hashCode +
        processingLevel.hashCode +
        indicatorType.hashCode +
        aggregationType.hashCode +
        hideInStats.hashCode +
        (group == null ? 0 : group.hashCode) +
        groupName.hashCode +
        groupOrder.hashCode +
        isQuantifiable.hashCode +
        isNumeric.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory ClientExtraFieldDefinition.fromJson(Map<String, dynamic> json) => _$ClientExtraFieldDefinitionFromJson(json);

  Map<String, dynamic> toJson() => _$ClientExtraFieldDefinitionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `TEXT` - Texto * `NUMBER` - Número * `INTEGER` - Entero * `DECIMAL` - Decimal * `DATE` - Fecha * `DATETIME` - Fecha y Hora * `BOOLEAN` - Sí/No * `SELECT` - Selección Única * `MULTISELECT` - Selección Múltiple * `EMAIL` - Email * `PHONE` - Teléfono * `URL` - URL * `FILE` - Archivo * `IMAGE` - Imagen
enum ClientExtraFieldDefinitionFieldTypeEnum {
@JsonValue(r'TEXT')
TEXT(r'TEXT'),
@JsonValue(r'NUMBER')
NUMBER(r'NUMBER'),
@JsonValue(r'INTEGER')
INTEGER(r'INTEGER'),
@JsonValue(r'DECIMAL')
DECIMAL(r'DECIMAL'),
@JsonValue(r'DATE')
DATE(r'DATE'),
@JsonValue(r'DATETIME')
DATETIME(r'DATETIME'),
@JsonValue(r'BOOLEAN')
BOOLEAN(r'BOOLEAN'),
@JsonValue(r'SELECT')
SELECT(r'SELECT'),
@JsonValue(r'MULTISELECT')
MULTISELECT(r'MULTISELECT'),
@JsonValue(r'EMAIL')
EMAIL(r'EMAIL'),
@JsonValue(r'PHONE')
PHONE(r'PHONE'),
@JsonValue(r'URL')
URL(r'URL'),
@JsonValue(r'FILE')
FILE(r'FILE'),
@JsonValue(r'IMAGE')
IMAGE(r'IMAGE'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientExtraFieldDefinitionFieldTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Qué tanto se procesa este campo: sin procesamiento, solo validaciones, stats o dashboard completo  * `NONE` - Sin procesamiento — campo simple * `VALIDATE` - Solo validaciones * `STATS` - Validaciones + Estadísticas * `FULL` - Validaciones + Estadísticas + Dashboard
enum ClientExtraFieldDefinitionProcessingLevelEnum {
@JsonValue(r'NONE')
NONE(r'NONE'),
@JsonValue(r'VALIDATE')
VALIDATE(r'VALIDATE'),
@JsonValue(r'STATS')
STATS(r'STATS'),
@JsonValue(r'FULL')
FULL(r'FULL'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientExtraFieldDefinitionProcessingLevelEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Cómo se visualiza este campo en dashboards  * `NONE` - Sin indicador * `LINE_CHART` - Gráfico de Líneas * `BAR_CHART` - Gráfico de Barras * `PIE_CHART` - Gráfico Circular * `GAUGE` - Medidor/Gauge * `NUMBER` - Número Simple * `TABLE` - Tabla * `TIMELINE` - Línea de Tiempo
enum ClientExtraFieldDefinitionIndicatorTypeEnum {
@JsonValue(r'NONE')
NONE(r'NONE'),
@JsonValue(r'LINE_CHART')
LINE_CHART(r'LINE_CHART'),
@JsonValue(r'BAR_CHART')
BAR_CHART(r'BAR_CHART'),
@JsonValue(r'PIE_CHART')
PIE_CHART(r'PIE_CHART'),
@JsonValue(r'GAUGE')
GAUGE(r'GAUGE'),
@JsonValue(r'NUMBER')
NUMBER(r'NUMBER'),
@JsonValue(r'TABLE')
TABLE(r'TABLE'),
@JsonValue(r'TIMELINE')
TIMELINE(r'TIMELINE'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientExtraFieldDefinitionIndicatorTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Cómo se agrega este campo para estadísticas  * `NONE` - Sin agregación * `COUNT` - Conteo * `SUM` - Suma * `AVG` - Promedio * `MIN` - Mínimo * `MAX` - Máximo * `MEDIAN` - Mediana
enum ClientExtraFieldDefinitionAggregationTypeEnum {
@JsonValue(r'NONE')
NONE(r'NONE'),
@JsonValue(r'COUNT')
COUNT(r'COUNT'),
@JsonValue(r'SUM')
SUM(r'SUM'),
@JsonValue(r'AVG')
AVG(r'AVG'),
@JsonValue(r'MIN')
MIN(r'MIN'),
@JsonValue(r'MAX')
MAX(r'MAX'),
@JsonValue(r'MEDIAN')
MEDIAN(r'MEDIAN'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientExtraFieldDefinitionAggregationTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


