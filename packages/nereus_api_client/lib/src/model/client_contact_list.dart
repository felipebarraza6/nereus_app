//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_contact_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientContactList {
  /// Returns a new [ClientContactList] instance.
  ClientContactList({

    required  this.id,

    required  this.firstName,

    required  this.lastName,

    required  this.fullName,

     this.dni,

    required  this.email,

     this.phone,

     this.jobTitle,

    required  this.jobTitleDisplay,

    required  this.departmentDisplay,

     this.contactType,

    required  this.contactTypeDisplay,

    required  this.client,

    required  this.clientName,

    required  this.branch,

    required  this.branchName,

     this.decisionMaker,

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
    
    name: r'first_name',
    required: true,
    includeIfNull: false,
  )


  final String firstName;



  @JsonKey(
    
    name: r'last_name',
    required: true,
    includeIfNull: false,
  )


  final String lastName;



      /// Obtener nombre completo.
  @JsonKey(
    
    name: r'full_name',
    required: true,
    includeIfNull: false,
  )


  final String fullName;



  @JsonKey(
    
    name: r'dni',
    required: false,
    includeIfNull: false,
  )


  final String? dni;



  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



  @JsonKey(
    
    name: r'phone',
    required: false,
    includeIfNull: false,
  )


  final String? phone;



      /// Cargo del contacto (puede ser de cualquier sucursal)
  @JsonKey(
    
    name: r'job_title',
    required: false,
    includeIfNull: false,
  )


  final int? jobTitle;



  @JsonKey(
    
    name: r'job_title_display',
    required: true,
    includeIfNull: false,
  )


  final String jobTitleDisplay;



  @JsonKey(
    
    name: r'department_display',
    required: true,
    includeIfNull: false,
  )


  final String departmentDisplay;



      /// * `PRIMARY` - Contacto Principal * `SECONDARY` - Contacto Secundario * `BILLING` - Contacto de Facturación * `TECHNICAL` - Contacto Técnico * `ADMINISTRATIVE` - Contacto Administrativo * `DECISION_MAKER` - Tomador de Decisiones
  @JsonKey(
    
    name: r'contact_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientContactListContactTypeEnum.unknownDefaultOpenApi,
  )


  final ClientContactListContactTypeEnum? contactType;



  @JsonKey(
    
    name: r'contact_type_display',
    required: true,
    includeIfNull: false,
  )


  final String contactTypeDisplay;



  @JsonKey(
    
    name: r'client',
    required: true,
    includeIfNull: false,
  )


  final int client;



  @JsonKey(
    
    name: r'client_name',
    required: true,
    includeIfNull: false,
  )


  final String clientName;



      /// Sucursal a la que pertenece este registro
  @JsonKey(
    
    name: r'branch',
    required: true,
    includeIfNull: false,
  )


  final int branch;



  @JsonKey(
    
    name: r'branch_name',
    required: true,
    includeIfNull: false,
  )


  final String branchName;



      /// Indica si es quien toma las decisiones de compra
  @JsonKey(
    
    name: r'decision_maker',
    required: false,
    includeIfNull: false,
  )


  final bool? decisionMaker;



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
    bool operator ==(Object other) => identical(this, other) || other is ClientContactList &&
      other.id == id &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.fullName == fullName &&
      other.dni == dni &&
      other.email == email &&
      other.phone == phone &&
      other.jobTitle == jobTitle &&
      other.jobTitleDisplay == jobTitleDisplay &&
      other.departmentDisplay == departmentDisplay &&
      other.contactType == contactType &&
      other.contactTypeDisplay == contactTypeDisplay &&
      other.client == client &&
      other.clientName == clientName &&
      other.branch == branch &&
      other.branchName == branchName &&
      other.decisionMaker == decisionMaker &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        firstName.hashCode +
        lastName.hashCode +
        fullName.hashCode +
        (dni == null ? 0 : dni.hashCode) +
        email.hashCode +
        (phone == null ? 0 : phone.hashCode) +
        (jobTitle == null ? 0 : jobTitle.hashCode) +
        jobTitleDisplay.hashCode +
        departmentDisplay.hashCode +
        contactType.hashCode +
        contactTypeDisplay.hashCode +
        client.hashCode +
        clientName.hashCode +
        branch.hashCode +
        branchName.hashCode +
        decisionMaker.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory ClientContactList.fromJson(Map<String, dynamic> json) => _$ClientContactListFromJson(json);

  Map<String, dynamic> toJson() => _$ClientContactListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `PRIMARY` - Contacto Principal * `SECONDARY` - Contacto Secundario * `BILLING` - Contacto de Facturación * `TECHNICAL` - Contacto Técnico * `ADMINISTRATIVE` - Contacto Administrativo * `DECISION_MAKER` - Tomador de Decisiones
enum ClientContactListContactTypeEnum {
@JsonValue(r'PRIMARY')
PRIMARY(r'PRIMARY'),
@JsonValue(r'SECONDARY')
SECONDARY(r'SECONDARY'),
@JsonValue(r'BILLING')
BILLING(r'BILLING'),
@JsonValue(r'TECHNICAL')
TECHNICAL(r'TECHNICAL'),
@JsonValue(r'ADMINISTRATIVE')
ADMINISTRATIVE(r'ADMINISTRATIVE'),
@JsonValue(r'DECISION_MAKER')
DECISION_MAKER(r'DECISION_MAKER'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientContactListContactTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


