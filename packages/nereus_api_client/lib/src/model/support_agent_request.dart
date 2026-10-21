//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'support_agent_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SupportAgentRequest {
  /// Returns a new [SupportAgentRequest] instance.
  SupportAgentRequest({

     this.branch,

    required  this.user,

     this.employee,

     this.workflow,

     this.canHandleCritical,

     this.maxOpenTickets,

     this.specialties,

     this.accessibleTypes,

     this.accessibleCategories,

     this.isAvailable,

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
    
    name: r'user',
    required: true,
    includeIfNull: false,
  )


  final int user;



  @JsonKey(
    
    name: r'employee',
    required: false,
    includeIfNull: false,
  )


  final int? employee;



      /// Workflow que ejecuta este agente de forma autónoma
  @JsonKey(
    
    name: r'workflow',
    required: false,
    includeIfNull: false,
  )


  final String? workflow;



  @JsonKey(
    
    name: r'can_handle_critical',
    required: false,
    includeIfNull: false,
  )


  final bool? canHandleCritical;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'max_open_tickets',
    required: false,
    includeIfNull: false,
  )


  final int? maxOpenTickets;



      /// Lista de categorías que maneja
  @JsonKey(
    
    name: r'specialties',
    required: false,
    includeIfNull: false,
  )


  final Object? specialties;



  @JsonKey(
    
    name: r'accessible_types',
    required: false,
    includeIfNull: false,
  )


  final List<String>? accessibleTypes;



  @JsonKey(
    
    name: r'accessible_categories',
    required: false,
    includeIfNull: false,
  )


  final List<String>? accessibleCategories;



  @JsonKey(
    
    name: r'is_available',
    required: false,
    includeIfNull: false,
  )


  final bool? isAvailable;



      /// Indica si el registro está activo. Use esto en lugar de eliminar.
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SupportAgentRequest &&
      other.branch == branch &&
      other.user == user &&
      other.employee == employee &&
      other.workflow == workflow &&
      other.canHandleCritical == canHandleCritical &&
      other.maxOpenTickets == maxOpenTickets &&
      other.specialties == specialties &&
      other.accessibleTypes == accessibleTypes &&
      other.accessibleCategories == accessibleCategories &&
      other.isAvailable == isAvailable &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        (branch == null ? 0 : branch.hashCode) +
        user.hashCode +
        (employee == null ? 0 : employee.hashCode) +
        (workflow == null ? 0 : workflow.hashCode) +
        canHandleCritical.hashCode +
        maxOpenTickets.hashCode +
        (specialties == null ? 0 : specialties.hashCode) +
        accessibleTypes.hashCode +
        accessibleCategories.hashCode +
        isAvailable.hashCode +
        isActive.hashCode;

  factory SupportAgentRequest.fromJson(Map<String, dynamic> json) => _$SupportAgentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SupportAgentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

