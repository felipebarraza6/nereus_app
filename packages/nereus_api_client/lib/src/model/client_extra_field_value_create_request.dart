//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_extra_field_value_create_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientExtraFieldValueCreateRequest {
  /// Returns a new [ClientExtraFieldValueCreateRequest] instance.
  ClientExtraFieldValueCreateRequest({

    required  this.client,

    required  this.fieldDefinition,

     this.value,

     this.notes,

     this.isActive,
  });

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
    bool operator ==(Object other) => identical(this, other) || other is ClientExtraFieldValueCreateRequest &&
      other.client == client &&
      other.fieldDefinition == fieldDefinition &&
      other.value == value &&
      other.notes == notes &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        client.hashCode +
        fieldDefinition.hashCode +
        (value == null ? 0 : value.hashCode) +
        notes.hashCode +
        isActive.hashCode;

  factory ClientExtraFieldValueCreateRequest.fromJson(Map<String, dynamic> json) => _$ClientExtraFieldValueCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClientExtraFieldValueCreateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

