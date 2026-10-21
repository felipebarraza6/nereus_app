//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_type_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketTypeRequest {
  /// Returns a new [TicketTypeRequest] instance.
  TicketTypeRequest({

     this.branch,

    required  this.name,

     this.description,

     this.requiresVisit,

     this.defaultSlaPolicy,

     this.customFields,

     this.color,

     this.icon,

     this.isActive,
  });

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





    @override
    bool operator ==(Object other) => identical(this, other) || other is TicketTypeRequest &&
      other.branch == branch &&
      other.name == name &&
      other.description == description &&
      other.requiresVisit == requiresVisit &&
      other.defaultSlaPolicy == defaultSlaPolicy &&
      other.customFields == customFields &&
      other.color == color &&
      other.icon == icon &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        (branch == null ? 0 : branch.hashCode) +
        name.hashCode +
        description.hashCode +
        requiresVisit.hashCode +
        (defaultSlaPolicy == null ? 0 : defaultSlaPolicy.hashCode) +
        (customFields == null ? 0 : customFields.hashCode) +
        color.hashCode +
        icon.hashCode +
        isActive.hashCode;

  factory TicketTypeRequest.fromJson(Map<String, dynamic> json) => _$TicketTypeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TicketTypeRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

