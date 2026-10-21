//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_category.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketCategory {
  /// Returns a new [TicketCategory] instance.
  TicketCategory({

    required  this.id,

     this.branch,

    required  this.name,

     this.code = '',

     this.description,

     this.parent,

    required  this.parentName,

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



      /// UUID de la sucursal. Solo editable por super administradores.
  @JsonKey(
    
    name: r'branch',
    required: false,
    includeIfNull: false,
  )


  final int? branch;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Código estable para clientes (ej. feedback, incidencia).
  @JsonKey(
    defaultValue: '',
    name: r'code',
    required: false,
    includeIfNull: false,
  )


  final String? code;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



  @JsonKey(
    
    name: r'parent',
    required: false,
    includeIfNull: false,
  )


  final String? parent;



  @JsonKey(
    
    name: r'parent_name',
    required: true,
    includeIfNull: false,
  )


  final String parentName;



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
    bool operator ==(Object other) => identical(this, other) || other is TicketCategory &&
      other.id == id &&
      other.branch == branch &&
      other.name == name &&
      other.code == code &&
      other.description == description &&
      other.parent == parent &&
      other.parentName == parentName &&
      other.color == color &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        (branch == null ? 0 : branch.hashCode) +
        name.hashCode +
        code.hashCode +
        description.hashCode +
        (parent == null ? 0 : parent.hashCode) +
        parentName.hashCode +
        color.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TicketCategory.fromJson(Map<String, dynamic> json) => _$TicketCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$TicketCategoryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

