//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'support_agent.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SupportAgent {
  /// Returns a new [SupportAgent] instance.
  SupportAgent({

    required  this.id,

     this.branch,

    required  this.user,

    required  this.userName,

     this.employee,

    required  this.employeeName,

     this.workflow,

    required  this.workflowName,

     this.canHandleCritical,

     this.maxOpenTickets,

     this.specialties,

     this.accessibleTypes,

    required  this.accessibleTypesNames,

     this.accessibleCategories,

    required  this.accessibleCategoriesNames,

     this.isAvailable,

     this.isActive,

    required  this.openTickets,

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
    
    name: r'user',
    required: true,
    includeIfNull: false,
  )


  final int user;



  @JsonKey(
    
    name: r'user_name',
    required: true,
    includeIfNull: false,
  )


  final String userName;



  @JsonKey(
    
    name: r'employee',
    required: false,
    includeIfNull: false,
  )


  final int? employee;



  @JsonKey(
    
    name: r'employee_name',
    required: true,
    includeIfNull: false,
  )


  final String employeeName;



      /// Workflow que ejecuta este agente de forma autónoma
  @JsonKey(
    
    name: r'workflow',
    required: false,
    includeIfNull: false,
  )


  final String? workflow;



  @JsonKey(
    
    name: r'workflow_name',
    required: true,
    includeIfNull: false,
  )


  final String workflowName;



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
    
    name: r'accessible_types_names',
    required: true,
    includeIfNull: false,
  )


  final String accessibleTypesNames;



  @JsonKey(
    
    name: r'accessible_categories',
    required: false,
    includeIfNull: false,
  )


  final List<String>? accessibleCategories;



  @JsonKey(
    
    name: r'accessible_categories_names',
    required: true,
    includeIfNull: false,
  )


  final String accessibleCategoriesNames;



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



  @JsonKey(
    
    name: r'open_tickets',
    required: true,
    includeIfNull: false,
  )


  final int openTickets;



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
    bool operator ==(Object other) => identical(this, other) || other is SupportAgent &&
      other.id == id &&
      other.branch == branch &&
      other.user == user &&
      other.userName == userName &&
      other.employee == employee &&
      other.employeeName == employeeName &&
      other.workflow == workflow &&
      other.workflowName == workflowName &&
      other.canHandleCritical == canHandleCritical &&
      other.maxOpenTickets == maxOpenTickets &&
      other.specialties == specialties &&
      other.accessibleTypes == accessibleTypes &&
      other.accessibleTypesNames == accessibleTypesNames &&
      other.accessibleCategories == accessibleCategories &&
      other.accessibleCategoriesNames == accessibleCategoriesNames &&
      other.isAvailable == isAvailable &&
      other.isActive == isActive &&
      other.openTickets == openTickets &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        (branch == null ? 0 : branch.hashCode) +
        user.hashCode +
        userName.hashCode +
        (employee == null ? 0 : employee.hashCode) +
        employeeName.hashCode +
        (workflow == null ? 0 : workflow.hashCode) +
        workflowName.hashCode +
        canHandleCritical.hashCode +
        maxOpenTickets.hashCode +
        (specialties == null ? 0 : specialties.hashCode) +
        accessibleTypes.hashCode +
        accessibleTypesNames.hashCode +
        accessibleCategories.hashCode +
        accessibleCategoriesNames.hashCode +
        isAvailable.hashCode +
        isActive.hashCode +
        openTickets.hashCode +
        created.hashCode +
        modified.hashCode;

  factory SupportAgent.fromJson(Map<String, dynamic> json) => _$SupportAgentFromJson(json);

  Map<String, dynamic> toJson() => _$SupportAgentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

