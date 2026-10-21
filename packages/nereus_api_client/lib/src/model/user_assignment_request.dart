//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_assignment_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserAssignmentRequest {
  /// Returns a new [UserAssignmentRequest] instance.
  UserAssignmentRequest({

    required  this.userId,

    required  this.branchId,

     this.role = 'EMPLOYEE',

     this.isActive = true,
  });

  @JsonKey(
    
    name: r'user_id',
    required: true,
    includeIfNull: false,
  )


  final int userId;



  @JsonKey(
    
    name: r'branch_id',
    required: true,
    includeIfNull: false,
  )


  final int branchId;



      /// * `SUPERUSER` - Super Administrador * `ADM` - Administrador * `CL` - Cliente * `OWNER` - Propietario * `ADMIN_LOCAL` - Administrador Local * `MANAGER` - Gerente * `EMPLOYEE` - Empleado * `CAJERO` - Cajero * `METER` - Medidor * `RECEIVER` - Recepcionista * `DRIVER` - Conductor * `WAITER` - Mesero * `OPERATOR` - Operador * `VIEWER` - Solo Lectura * `NUTRITION_LABELER` - Etiquetador Nutricional * `WASTE_MANAGER` - Gestor de Residuos * `APR` - APR - Gestión Hídrica * `PAYROLL_ADMIN` - Administrativo de Nómina * `COACH` - Coach * `FORJA_ADMIN` - Admin Forja * `FORJA_ALUMNO` - Alumno Forja
  @JsonKey(
    defaultValue: 'EMPLOYEE',
    name: r'role',
    required: false,
    includeIfNull: false,
  )


  final String? role;



  @JsonKey(
    defaultValue: true,
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserAssignmentRequest &&
      other.userId == userId &&
      other.branchId == branchId &&
      other.role == role &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        userId.hashCode +
        branchId.hashCode +
        role.hashCode +
        isActive.hashCode;

  factory UserAssignmentRequest.fromJson(Map<String, dynamic> json) => _$UserAssignmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserAssignmentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

