//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_extra_field_definition_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserExtraFieldDefinitionRequest {
  /// Returns a new [UserExtraFieldDefinitionRequest] instance.
  UserExtraFieldDefinitionRequest({

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

     this.groupName,

     this.isActive,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Identificador único del campo (ej: licencia, turno_preferido)
  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false,
  )


  final String key;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// * `TEXT` - Texto * `NUMBER` - Número * `INTEGER` - Entero * `DECIMAL` - Decimal * `DATE` - Fecha * `DATETIME` - Fecha y Hora * `BOOLEAN` - Sí/No * `SELECT` - Selección Única * `MULTISELECT` - Selección Múltiple * `EMAIL` - Email * `PHONE` - Teléfono * `URL` - URL
  @JsonKey(
    
    name: r'field_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: UserExtraFieldDefinitionRequestFieldTypeEnum.unknownDefaultOpenApi,
  )


  final UserExtraFieldDefinitionRequestFieldTypeEnum? fieldType;



  @JsonKey(
    
    name: r'is_required',
    required: false,
    includeIfNull: false,
  )


  final bool? isRequired;



      /// Si el valor debe ser único entre usuarios de la sucursal
  @JsonKey(
    
    name: r'is_unique',
    required: false,
    includeIfNull: false,
  )


  final bool? isUnique;



  @JsonKey(
    
    name: r'unit',
    required: false,
    includeIfNull: false,
  )


  final String? unit;



      /// Opciones para SELECT/MULTISELECT: [{\"value\": \"A\", \"label\": \"Opción A\"}]
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



  @JsonKey(
    
    name: r'display_in_list',
    required: false,
    includeIfNull: false,
  )


  final bool? displayInList;



  @JsonKey(
    
    name: r'group_name',
    required: false,
    includeIfNull: false,
  )


  final String? groupName;



      /// Indica si el registro está activo. Use esto en lugar de eliminar.
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserExtraFieldDefinitionRequest &&
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
      other.groupName == groupName &&
      other.isActive == isActive;

    @override
    int get hashCode =>
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
        groupName.hashCode +
        isActive.hashCode;

  factory UserExtraFieldDefinitionRequest.fromJson(Map<String, dynamic> json) => _$UserExtraFieldDefinitionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserExtraFieldDefinitionRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `TEXT` - Texto * `NUMBER` - Número * `INTEGER` - Entero * `DECIMAL` - Decimal * `DATE` - Fecha * `DATETIME` - Fecha y Hora * `BOOLEAN` - Sí/No * `SELECT` - Selección Única * `MULTISELECT` - Selección Múltiple * `EMAIL` - Email * `PHONE` - Teléfono * `URL` - URL
enum UserExtraFieldDefinitionRequestFieldTypeEnum {
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
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const UserExtraFieldDefinitionRequestFieldTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


