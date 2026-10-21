//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_client_extra_field_group_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedClientExtraFieldGroupRequest {
  /// Returns a new [PatchedClientExtraFieldGroupRequest] instance.
  PatchedClientExtraFieldGroupRequest({

     this.name,

     this.key,

     this.description,

     this.displayOrder,

     this.icon,

     this.color,

     this.isActive,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'key',
    required: false,
    includeIfNull: false,
  )


  final String? key;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'display_order',
    required: false,
    includeIfNull: false,
  )


  final int? displayOrder;



      /// Nombre del ícono (ej: HeartOutlined, SettingOutlined)
  @JsonKey(
    
    name: r'icon',
    required: false,
    includeIfNull: false,
  )


  final String? icon;



  @JsonKey(
    
    name: r'color',
    required: false,
    includeIfNull: false,
  )


  final String? color;



      /// Indica si el registro está activo. Use esto en lugar de eliminar.
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedClientExtraFieldGroupRequest &&
      other.name == name &&
      other.key == key &&
      other.description == description &&
      other.displayOrder == displayOrder &&
      other.icon == icon &&
      other.color == color &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        name.hashCode +
        key.hashCode +
        description.hashCode +
        displayOrder.hashCode +
        icon.hashCode +
        color.hashCode +
        isActive.hashCode;

  factory PatchedClientExtraFieldGroupRequest.fromJson(Map<String, dynamic> json) => _$PatchedClientExtraFieldGroupRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedClientExtraFieldGroupRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

