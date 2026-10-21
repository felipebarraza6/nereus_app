//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_extra_field_value_create.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientExtraFieldValueCreate {
  /// Returns a new [ClientExtraFieldValueCreate] instance.
  ClientExtraFieldValueCreate({

    required  this.id,

    required  this.client,

    required  this.fieldDefinition,

     this.value,

     this.notes,

     this.isActive,
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
    
    name: r'value',
    required: false,
    includeIfNull: false,
  )


  final Object? value;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is ClientExtraFieldValueCreate &&
      other.id == id &&
      other.client == client &&
      other.fieldDefinition == fieldDefinition &&
      other.value == value &&
      other.notes == notes &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        id.hashCode +
        client.hashCode +
        fieldDefinition.hashCode +
        (value == null ? 0 : value.hashCode) +
        notes.hashCode +
        isActive.hashCode;

  factory ClientExtraFieldValueCreate.fromJson(Map<String, dynamic> json) => _$ClientExtraFieldValueCreateFromJson(json);

  Map<String, dynamic> toJson() => _$ClientExtraFieldValueCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

