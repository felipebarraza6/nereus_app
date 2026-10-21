//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_client_contact_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedClientContactRequest {
  /// Returns a new [PatchedClientContactRequest] instance.
  PatchedClientContactRequest({

     this.firstName,

     this.lastName,

     this.dni,

     this.email,

     this.phone,

     this.jobTitle,

     this.contactType,

     this.client,

     this.decisionMaker,

     this.notes,

     this.isActive,
  });

  @JsonKey(
    
    name: r'first_name',
    required: false,
    includeIfNull: false,
  )


  final String? firstName;



  @JsonKey(
    
    name: r'last_name',
    required: false,
    includeIfNull: false,
  )


  final String? lastName;



  @JsonKey(
    
    name: r'dni',
    required: false,
    includeIfNull: false,
  )


  final String? dni;



  @JsonKey(
    
    name: r'email',
    required: false,
    includeIfNull: false,
  )


  final String? email;



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



      /// * `PRIMARY` - Contacto Principal * `SECONDARY` - Contacto Secundario * `BILLING` - Contacto de Facturación * `TECHNICAL` - Contacto Técnico * `ADMINISTRATIVE` - Contacto Administrativo * `DECISION_MAKER` - Tomador de Decisiones
  @JsonKey(
    
    name: r'contact_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedClientContactRequestContactTypeEnum.unknownDefaultOpenApi,
  )


  final PatchedClientContactRequestContactTypeEnum? contactType;



  @JsonKey(
    
    name: r'client',
    required: false,
    includeIfNull: false,
  )


  final int? client;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedClientContactRequest &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.dni == dni &&
      other.email == email &&
      other.phone == phone &&
      other.jobTitle == jobTitle &&
      other.contactType == contactType &&
      other.client == client &&
      other.decisionMaker == decisionMaker &&
      other.notes == notes &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        firstName.hashCode +
        lastName.hashCode +
        (dni == null ? 0 : dni.hashCode) +
        email.hashCode +
        (phone == null ? 0 : phone.hashCode) +
        (jobTitle == null ? 0 : jobTitle.hashCode) +
        contactType.hashCode +
        client.hashCode +
        decisionMaker.hashCode +
        (notes == null ? 0 : notes.hashCode) +
        isActive.hashCode;

  factory PatchedClientContactRequest.fromJson(Map<String, dynamic> json) => _$PatchedClientContactRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedClientContactRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `PRIMARY` - Contacto Principal * `SECONDARY` - Contacto Secundario * `BILLING` - Contacto de Facturación * `TECHNICAL` - Contacto Técnico * `ADMINISTRATIVE` - Contacto Administrativo * `DECISION_MAKER` - Tomador de Decisiones
enum PatchedClientContactRequestContactTypeEnum {
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

const PatchedClientContactRequestContactTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


