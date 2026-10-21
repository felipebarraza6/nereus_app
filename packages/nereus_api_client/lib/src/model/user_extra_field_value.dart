//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_extra_field_value.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserExtraFieldValue {
  /// Returns a new [UserExtraFieldValue] instance.
  UserExtraFieldValue({

    required  this.id,

    required  this.user,

    required  this.fieldDefinition,

    required  this.fieldName,

    required  this.fieldKey,

    required  this.fieldType,

     this.value,

    required  this.displayValue,

    required  this.recordedBy,

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
    
    name: r'user',
    required: true,
    includeIfNull: false,
  )


  final int user;



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



  @JsonKey(
    
    name: r'recorded_by',
    required: true,
    includeIfNull: true,
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
    bool operator ==(Object other) => identical(this, other) || other is UserExtraFieldValue &&
      other.id == id &&
      other.user == user &&
      other.fieldDefinition == fieldDefinition &&
      other.fieldName == fieldName &&
      other.fieldKey == fieldKey &&
      other.fieldType == fieldType &&
      other.value == value &&
      other.displayValue == displayValue &&
      other.recordedBy == recordedBy &&
      other.notes == notes &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        user.hashCode +
        fieldDefinition.hashCode +
        fieldName.hashCode +
        fieldKey.hashCode +
        fieldType.hashCode +
        (value == null ? 0 : value.hashCode) +
        displayValue.hashCode +
        (recordedBy == null ? 0 : recordedBy.hashCode) +
        notes.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory UserExtraFieldValue.fromJson(Map<String, dynamic> json) => _$UserExtraFieldValueFromJson(json);

  Map<String, dynamic> toJson() => _$UserExtraFieldValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

