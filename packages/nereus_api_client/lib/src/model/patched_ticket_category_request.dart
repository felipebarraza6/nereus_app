//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_ticket_category_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTicketCategoryRequest {
  /// Returns a new [PatchedTicketCategoryRequest] instance.
  PatchedTicketCategoryRequest({

     this.branch,

     this.name,

     this.code = '',

     this.description,

     this.parent,

     this.color,

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
    required: false,
    includeIfNull: false,
  )


  final String? name;



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
    bool operator ==(Object other) => identical(this, other) || other is PatchedTicketCategoryRequest &&
      other.branch == branch &&
      other.name == name &&
      other.code == code &&
      other.description == description &&
      other.parent == parent &&
      other.color == color &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        (branch == null ? 0 : branch.hashCode) +
        name.hashCode +
        code.hashCode +
        description.hashCode +
        (parent == null ? 0 : parent.hashCode) +
        color.hashCode +
        isActive.hashCode;

  factory PatchedTicketCategoryRequest.fromJson(Map<String, dynamic> json) => _$PatchedTicketCategoryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTicketCategoryRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

