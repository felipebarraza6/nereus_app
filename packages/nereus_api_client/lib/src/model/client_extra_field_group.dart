//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_extra_field_group.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientExtraFieldGroup {
  /// Returns a new [ClientExtraFieldGroup] instance.
  ClientExtraFieldGroup({

    required  this.id,

    required  this.name,

    required  this.key,

     this.description,

     this.displayOrder,

     this.icon,

     this.color,

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
    bool operator ==(Object other) => identical(this, other) || other is ClientExtraFieldGroup &&
      other.id == id &&
      other.name == name &&
      other.key == key &&
      other.description == description &&
      other.displayOrder == displayOrder &&
      other.icon == icon &&
      other.color == color &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        key.hashCode +
        description.hashCode +
        displayOrder.hashCode +
        icon.hashCode +
        color.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory ClientExtraFieldGroup.fromJson(Map<String, dynamic> json) => _$ClientExtraFieldGroupFromJson(json);

  Map<String, dynamic> toJson() => _$ClientExtraFieldGroupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

