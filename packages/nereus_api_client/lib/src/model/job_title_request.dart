//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_title_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class JobTitleRequest {
  /// Returns a new [JobTitleRequest] instance.
  JobTitleRequest({

    required  this.name,

     this.description,

     this.level,

     this.department,

     this.isActive,

     this.isForSuppliers,
  });

      /// Ej: Gerente General, Jefe de Compras, Analista
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Descripción opcional del cargo
  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// * `EXECUTIVE` - Ejecutivo * `MANAGER` - Gerencial * `SUPERVISOR` - Supervisor * `ANALYST` - Analista * `ASSISTANT` - Asistente * `OPERATOR` - Operador * `OTHER` - Otro
  @JsonKey(
    
    name: r'level',
    required: false,
    includeIfNull: false,
  unknownEnumValue: JobTitleRequestLevelEnum.unknownDefaultOpenApi,
  )


  final JobTitleRequestLevelEnum? level;



  @JsonKey(
    
    name: r'department',
    required: false,
    includeIfNull: false,
  )


  final int? department;



      /// Indica si el cargo está disponible para usar
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



      /// Si es True, este cargo solo puede usarse en contactos de proveedores. Si es False, solo en contactos de clientes.
  @JsonKey(
    
    name: r'is_for_suppliers',
    required: false,
    includeIfNull: false,
  )


  final bool? isForSuppliers;





    @override
    bool operator ==(Object other) => identical(this, other) || other is JobTitleRequest &&
      other.name == name &&
      other.description == description &&
      other.level == level &&
      other.department == department &&
      other.isActive == isActive &&
      other.isForSuppliers == isForSuppliers;

    @override
    int get hashCode =>
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        level.hashCode +
        (department == null ? 0 : department.hashCode) +
        isActive.hashCode +
        isForSuppliers.hashCode;

  factory JobTitleRequest.fromJson(Map<String, dynamic> json) => _$JobTitleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$JobTitleRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `EXECUTIVE` - Ejecutivo * `MANAGER` - Gerencial * `SUPERVISOR` - Supervisor * `ANALYST` - Analista * `ASSISTANT` - Asistente * `OPERATOR` - Operador * `OTHER` - Otro
enum JobTitleRequestLevelEnum {
@JsonValue(r'EXECUTIVE')
EXECUTIVE(r'EXECUTIVE'),
@JsonValue(r'MANAGER')
MANAGER(r'MANAGER'),
@JsonValue(r'SUPERVISOR')
SUPERVISOR(r'SUPERVISOR'),
@JsonValue(r'ANALYST')
ANALYST(r'ANALYST'),
@JsonValue(r'ASSISTANT')
ASSISTANT(r'ASSISTANT'),
@JsonValue(r'OPERATOR')
OPERATOR(r'OPERATOR'),
@JsonValue(r'OTHER')
OTHER(r'OTHER'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const JobTitleRequestLevelEnum(this.value);

final String value;

@override
String toString() => value;
}


