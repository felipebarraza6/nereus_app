//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_extra_field_value_write_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserExtraFieldValueWriteRequest {
  /// Returns a new [UserExtraFieldValueWriteRequest] instance.
  UserExtraFieldValueWriteRequest({

    required  this.user,

    required  this.fieldDefinition,

     this.value,

     this.notes,

     this.isActive,
  });

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
    bool operator ==(Object other) => identical(this, other) || other is UserExtraFieldValueWriteRequest &&
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

  factory UserExtraFieldValueWriteRequest.fromJson(Map<String, dynamic> json) => _$UserExtraFieldValueWriteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserExtraFieldValueWriteRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

