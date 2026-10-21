//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_type.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketType {
  /// Returns a new [TicketType] instance.
  TicketType({

    required  this.id,

     this.branch,

    required  this.name,

     this.description,

     this.requiresVisit,

     this.defaultSlaPolicy,

    required  this.defaultSlaPolicyName,

     this.customFields,

     this.color,

     this.icon,

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



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// Si es True, los tickets de este tipo generan una orden de trabajo
  @JsonKey(
    
    name: r'requires_visit',
    required: false,
    includeIfNull: false,
  )


  final bool? requiresVisit;



  @JsonKey(
    
    name: r'default_sla_policy',
    required: false,
    includeIfNull: false,
  )


  final String? defaultSlaPolicy;



  @JsonKey(
    
    name: r'default_sla_policy_name',
    required: true,
    includeIfNull: false,
  )


  final String defaultSlaPolicyName;



      /// Definición de campos adicionales para este tipo de ticket
  @JsonKey(
    
    name: r'custom_fields',
    required: false,
    includeIfNull: false,
  )


  final Object? customFields;



  @JsonKey(
    
    name: r'color',
    required: false,
    includeIfNull: false,
  )


  final String? color;



  @JsonKey(
    
    name: r'icon',
    required: false,
    includeIfNull: false,
  )


  final String? icon;



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
    bool operator ==(Object other) => identical(this, other) || other is TicketType &&
      other.id == id &&
      other.branch == branch &&
      other.name == name &&
      other.description == description &&
      other.requiresVisit == requiresVisit &&
      other.defaultSlaPolicy == defaultSlaPolicy &&
      other.defaultSlaPolicyName == defaultSlaPolicyName &&
      other.customFields == customFields &&
      other.color == color &&
      other.icon == icon &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        (branch == null ? 0 : branch.hashCode) +
        name.hashCode +
        description.hashCode +
        requiresVisit.hashCode +
        (defaultSlaPolicy == null ? 0 : defaultSlaPolicy.hashCode) +
        defaultSlaPolicyName.hashCode +
        (customFields == null ? 0 : customFields.hashCode) +
        color.hashCode +
        icon.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TicketType.fromJson(Map<String, dynamic> json) => _$TicketTypeFromJson(json);

  Map<String, dynamic> toJson() => _$TicketTypeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

