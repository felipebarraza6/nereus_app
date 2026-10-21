//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_user_extra_field_value_write_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedUserExtraFieldValueWriteRequest {
  /// Returns a new [PatchedUserExtraFieldValueWriteRequest] instance.
  PatchedUserExtraFieldValueWriteRequest({

     this.user,

     this.fieldDefinition,

     this.value,

     this.notes,

     this.isActive,
  });

  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false,
  )


  final int? user;



  @JsonKey(
    
    name: r'field_definition',
    required: false,
    includeIfNull: false,
  )


  final String? fieldDefinition;



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
    bool operator ==(Object other) => identical(this, other) || other is PatchedUserExtraFieldValueWriteRequest &&
      other.user == user &&
      other.fieldDefinition == fieldDefinition &&
      other.value == value &&
      other.notes == notes &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        user.hashCode +
        fieldDefinition.hashCode +
        (value == null ? 0 : value.hashCode) +
        notes.hashCode +
        isActive.hashCode;

  factory PatchedUserExtraFieldValueWriteRequest.fromJson(Map<String, dynamic> json) => _$PatchedUserExtraFieldValueWriteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedUserExtraFieldValueWriteRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

