//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_contact.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientContact {
  /// Returns a new [ClientContact] instance.
  ClientContact({

    required  this.id,

    required  this.firstName,

    required  this.lastName,

    required  this.fullName,

     this.dni,

    required  this.email,

     this.phone,

     this.jobTitle,

    required  this.jobTitleName,

    required  this.jobTitleLevel,

    required  this.jobTitleDisplay,

    required  this.departmentName,

    required  this.departmentType,

    required  this.departmentDisplay,

     this.contactType,

    required  this.contactTypeDisplay,

    required  this.client,

    required  this.clientName,

    required  this.branch,

    required  this.branchName,

     this.decisionMaker,

     this.notes,

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



  @JsonKey(
    
    name: r'job_title',
    required: false,
    includeIfNull: false,
  )


  final int? jobTitle;



  @JsonKey(
    
    name: r'job_title_name',
    required: true,
    includeIfNull: false,
  )


  final String jobTitleName;



  @JsonKey(
    
    name: r'job_title_level',
    required: true,
    includeIfNull: false,
  )


  final String jobTitleLevel;



  @JsonKey(
    
    name: r'job_title_display',
    required: true,
    includeIfNull: false,
  )


  final String jobTitleDisplay;



  @JsonKey(
    
    name: r'department_name',
    required: true,
    includeIfNull: false,
  )


  final String departmentName;



  @JsonKey(
    
    name: r'department_type',
    required: true,
    includeIfNull: false,
  )


  final String departmentType;



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
  unknownEnumValue: ClientContactContactTypeEnum.unknownDefaultOpenApi,
  )


  final ClientContactContactTypeEnum? contactType;



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
    
    name: r'notes',
    required: false,
    includeIfNull: false,
  )


  final String? notes;



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
    bool operator ==(Object other) => identical(this, other) || other is ClientContact &&
      other.id == id &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.fullName == fullName &&
      other.dni == dni &&
      other.email == email &&
      other.phone == phone &&
      other.jobTitle == jobTitle &&
      other.jobTitleName == jobTitleName &&
      other.jobTitleLevel == jobTitleLevel &&
      other.jobTitleDisplay == jobTitleDisplay &&
      other.departmentName == departmentName &&
      other.departmentType == departmentType &&
      other.departmentDisplay == departmentDisplay &&
      other.contactType == contactType &&
      other.contactTypeDisplay == contactTypeDisplay &&
      other.client == client &&
      other.clientName == clientName &&
      other.branch == branch &&
      other.branchName == branchName &&
      other.decisionMaker == decisionMaker &&
      other.notes == notes &&
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
        jobTitleName.hashCode +
        jobTitleLevel.hashCode +
        jobTitleDisplay.hashCode +
        departmentName.hashCode +
        departmentType.hashCode +
        departmentDisplay.hashCode +
        contactType.hashCode +
        contactTypeDisplay.hashCode +
        client.hashCode +
        clientName.hashCode +
        branch.hashCode +
        branchName.hashCode +
        decisionMaker.hashCode +
        (notes == null ? 0 : notes.hashCode) +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory ClientContact.fromJson(Map<String, dynamic> json) => _$ClientContactFromJson(json);

  Map<String, dynamic> toJson() => _$ClientContactToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `PRIMARY` - Contacto Principal * `SECONDARY` - Contacto Secundario * `BILLING` - Contacto de Facturación * `TECHNICAL` - Contacto Técnico * `ADMINISTRATIVE` - Contacto Administrativo * `DECISION_MAKER` - Tomador de Decisiones
enum ClientContactContactTypeEnum {
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

const ClientContactContactTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


