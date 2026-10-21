//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_variable.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryVariable {
  /// Returns a new [TelemetryVariable] instance.
  TelemetryVariable({

    required  this.id,

    required  this.device,

    required  this.deviceName,

    required  this.name,

     this.variableType,

     this.providerVariableId,

     this.unit,

     this.conversionFactor,

     this.conversionOffset,

     this.minValue,

     this.maxValue,

     this.isCounter,

     this.pulsesFactor,

     this.displayOrder,

     this.isVisible,

     this.chartColor,

     this.isActive,

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
    
    name: r'device_name',
    required: true,
    includeIfNull: false,
  )


  final String deviceName;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// * `FLOW` - Caudal * `LEVEL` - Nivel * `TOTAL` - Totalizado * `FLOW_AVG` - Caudal promedio * `TEMPERATURE` - Temperatura * `PRESSURE` - Presion * `HUMIDITY` - Humedad * `RAIN` - Precipitacion * `WIND_SPEED` - Velocidad viento * `WIND_DIRECTION` - Direccion viento * `SOLAR_RADIATION` - Radiacion solar * `BATTERY` - Bateria * `SIGNAL` - Senal * `CUSTOM` - Personalizado
  @JsonKey(
    
    name: r'variable_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TelemetryVariableVariableTypeEnum.unknownDefaultOpenApi,
  )


  final TelemetryVariableVariableTypeEnum? variableType;



      /// Identificador de la variable en el sistema del proveedor
  @JsonKey(
    
    name: r'provider_variable_id',
    required: false,
    includeIfNull: false,
  )


  final String? providerVariableId;



      /// Ej: lt/s, m, m3, C, %
  @JsonKey(
    
    name: r'unit',
    required: false,
    includeIfNull: false,
  )


  final String? unit;



      /// Multiplicador para convertir valor crudo a unidad final
          // minimum: -10000
          // maximum: 10000
  @JsonKey(
    
    name: r'conversion_factor',
    required: false,
    includeIfNull: false,
  )


  final double? conversionFactor;



          // minimum: -10000
          // maximum: 10000
  @JsonKey(
    
    name: r'conversion_offset',
    required: false,
    includeIfNull: false,
  )


  final double? conversionOffset;



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



      /// True si esta variable es un totalizador acumulativo
  @JsonKey(
    
    name: r'is_counter',
    required: false,
    includeIfNull: false,
  )


  final bool? isCounter;



      /// Solo aplica a totalizadores: (pulsos * factor) / 1000
          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'pulses_factor',
    required: false,
    includeIfNull: false,
  )


  final int? pulsesFactor;



          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'display_order',
    required: false,
    includeIfNull: false,
  )


  final int? displayOrder;



  @JsonKey(
    
    name: r'is_visible',
    required: false,
    includeIfNull: false,
  )


  final bool? isVisible;



      /// Color HEX para graficos
  @JsonKey(
    
    name: r'chart_color',
    required: false,
    includeIfNull: false,
  )


  final String? chartColor;



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
    bool operator ==(Object other) => identical(this, other) || other is TelemetryVariable &&
      other.id == id &&
      other.device == device &&
      other.deviceName == deviceName &&
      other.name == name &&
      other.variableType == variableType &&
      other.providerVariableId == providerVariableId &&
      other.unit == unit &&
      other.conversionFactor == conversionFactor &&
      other.conversionOffset == conversionOffset &&
      other.minValue == minValue &&
      other.maxValue == maxValue &&
      other.isCounter == isCounter &&
      other.pulsesFactor == pulsesFactor &&
      other.displayOrder == displayOrder &&
      other.isVisible == isVisible &&
      other.chartColor == chartColor &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        device.hashCode +
        deviceName.hashCode +
        name.hashCode +
        variableType.hashCode +
        (providerVariableId == null ? 0 : providerVariableId.hashCode) +
        unit.hashCode +
        conversionFactor.hashCode +
        conversionOffset.hashCode +
        (minValue == null ? 0 : minValue.hashCode) +
        (maxValue == null ? 0 : maxValue.hashCode) +
        isCounter.hashCode +
        (pulsesFactor == null ? 0 : pulsesFactor.hashCode) +
        displayOrder.hashCode +
        isVisible.hashCode +
        chartColor.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TelemetryVariable.fromJson(Map<String, dynamic> json) => _$TelemetryVariableFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryVariableToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `FLOW` - Caudal * `LEVEL` - Nivel * `TOTAL` - Totalizado * `FLOW_AVG` - Caudal promedio * `TEMPERATURE` - Temperatura * `PRESSURE` - Presion * `HUMIDITY` - Humedad * `RAIN` - Precipitacion * `WIND_SPEED` - Velocidad viento * `WIND_DIRECTION` - Direccion viento * `SOLAR_RADIATION` - Radiacion solar * `BATTERY` - Bateria * `SIGNAL` - Senal * `CUSTOM` - Personalizado
enum TelemetryVariableVariableTypeEnum {
@JsonValue(r'FLOW')
FLOW(r'FLOW'),
@JsonValue(r'LEVEL')
LEVEL(r'LEVEL'),
@JsonValue(r'TOTAL')
TOTAL(r'TOTAL'),
@JsonValue(r'FLOW_AVG')
FLOW_AVG(r'FLOW_AVG'),
@JsonValue(r'TEMPERATURE')
TEMPERATURE(r'TEMPERATURE'),
@JsonValue(r'PRESSURE')
PRESSURE(r'PRESSURE'),
@JsonValue(r'HUMIDITY')
HUMIDITY(r'HUMIDITY'),
@JsonValue(r'RAIN')
RAIN(r'RAIN'),
@JsonValue(r'WIND_SPEED')
WIND_SPEED(r'WIND_SPEED'),
@JsonValue(r'WIND_DIRECTION')
WIND_DIRECTION(r'WIND_DIRECTION'),
@JsonValue(r'SOLAR_RADIATION')
SOLAR_RADIATION(r'SOLAR_RADIATION'),
@JsonValue(r'BATTERY')
BATTERY(r'BATTERY'),
@JsonValue(r'SIGNAL')
SIGNAL(r'SIGNAL'),
@JsonValue(r'CUSTOM')
CUSTOM(r'CUSTOM'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TelemetryVariableVariableTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


