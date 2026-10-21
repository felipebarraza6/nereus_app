//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_extra_field_value.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientExtraFieldValue {
  /// Returns a new [ClientExtraFieldValue] instance.
  ClientExtraFieldValue({

    required  this.id,

    required  this.client,

    required  this.fieldDefinition,

    required  this.fieldName,

    required  this.fieldKey,

    required  this.fieldType,

    required  this.fieldUnit,

     this.value,

    required  this.displayValue,

     this.valueNumber,

    required  this.recordedAt,

     this.recordedBy,

     this.notes,

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
    
    name: r'client',
    required: true,
    includeIfNull: false,
  )


  final int client;



  @JsonKey(
    
    name: r'field_definition',
    required: true,
    includeIfNull: false,
  )


  final String fieldDefinition;



  @JsonKey(
    
    name: r'field_name',
    required: true,
    includeIfNull: false,
  )


  final String fieldName;



  @JsonKey(
    
    name: r'field_key',
    required: true,
    includeIfNull: false,
  )


  final String fieldKey;



  @JsonKey(
    
    name: r'field_type',
    required: true,
    includeIfNull: false,
  )


  final String fieldType;



  @JsonKey(
    
    name: r'field_unit',
    required: true,
    includeIfNull: false,
  )


  final String fieldUnit;



  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false,
  )


  final Object? value;



  @JsonKey(
    
    name: r'display_value',
    required: true,
    includeIfNull: false,
  )


  final String displayValue;



          // minimum: -100000000000
          // maximum: 100000000000
  @JsonKey(
    
    name: r'value_number',
    required: false,
    includeIfNull: false,
  )


  final double? valueNumber;



  @JsonKey(
    
    name: r'recorded_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime recordedAt;



  @JsonKey(
    
    name: r'recorded_by',
    required: false,
    includeIfNull: false,
  )


  final int? recordedBy;



  @JsonKey(
    
    name: r'notes',
    required: false,
    includeIfNull: false,
  )


  final String? notes;



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
    bool operator ==(Object other) => identical(this, other) || other is ClientExtraFieldValue &&
      other.id == id &&
      other.client == client &&
      other.fieldDefinition == fieldDefinition &&
      other.fieldName == fieldName &&
      other.fieldKey == fieldKey &&
      other.fieldType == fieldType &&
      other.fieldUnit == fieldUnit &&
      other.value == value &&
      other.displayValue == displayValue &&
      other.valueNumber == valueNumber &&
      other.recordedAt == recordedAt &&
      other.recordedBy == recordedBy &&
      other.notes == notes &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        client.hashCode +
        fieldDefinition.hashCode +
        fieldName.hashCode +
        fieldKey.hashCode +
        fieldType.hashCode +
        fieldUnit.hashCode +
        (value == null ? 0 : value.hashCode) +
        displayValue.hashCode +
        (valueNumber == null ? 0 : valueNumber.hashCode) +
        recordedAt.hashCode +
        (recordedBy == null ? 0 : recordedBy.hashCode) +
        notes.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory ClientExtraFieldValue.fromJson(Map<String, dynamic> json) => _$ClientExtraFieldValueFromJson(json);

  Map<String, dynamic> toJson() => _$ClientExtraFieldValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

