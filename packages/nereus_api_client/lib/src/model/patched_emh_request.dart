//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_emh_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedEMHRequest {
  /// Returns a new [PatchedEMHRequest] instance.
  PatchedEMHRequest({

     this.client,

     this.birthDate,

     this.gender,

     this.maritalStatus,

     this.occupation,

     this.emergencyContactName,

     this.emergencyContactPhone,

     this.emergencyContactRelationship,

     this.insuranceType,

     this.insuranceProvider,

     this.insuranceNumber,

     this.bloodType,

     this.weightKg,

     this.heightCm,

     this.allergies,

     this.chronicDiseases,

     this.currentMedications,

     this.previousSurgeries,

     this.familyHistory,

     this.generalObservations,

     this.customFields,
  });

  @JsonKey(
    
    name: r'client',
    required: false,
    includeIfNull: false,
  )


  final int? client;



  @JsonKey(
    
    name: r'birth_date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? birthDate;



      /// * `M` - Masculino * `F` - Femenino * `NB` - No binario * `NR` - Prefiero no responder
  @JsonKey(
    
    name: r'gender',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedEMHRequestGenderEnum.unknownDefaultOpenApi,
  )


  final PatchedEMHRequestGenderEnum? gender;



      /// * `SINGLE` - Soltero/a * `MARRIED` - Casado/a * `DIVORCED` - Divorciado/a * `WIDOWED` - Viudo/a * `PARTNER` - Conviviente / Unión civil
  @JsonKey(
    
    name: r'marital_status',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedEMHRequestMaritalStatusEnum.unknownDefaultOpenApi,
  )


  final PatchedEMHRequestMaritalStatusEnum? maritalStatus;



  @JsonKey(
    
    name: r'occupation',
    required: false,
    includeIfNull: false,
  )


  final String? occupation;



  @JsonKey(
    
    name: r'emergency_contact_name',
    required: false,
    includeIfNull: false,
  )


  final String? emergencyContactName;



  @JsonKey(
    
    name: r'emergency_contact_phone',
    required: false,
    includeIfNull: false,
  )


  final String? emergencyContactPhone;



  @JsonKey(
    
    name: r'emergency_contact_relationship',
    required: false,
    includeIfNull: false,
  )


  final String? emergencyContactRelationship;



      /// * `FONASA` - FONASA (Chile) * `ISAPRE` - ISAPRE (Chile) * `PUBLIC` - Sistema público * `PRIVATE` - Seguro privado * `NONE` - Sin previsión * `OTHER` - Otro
  @JsonKey(
    
    name: r'insurance_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedEMHRequestInsuranceTypeEnum.unknownDefaultOpenApi,
  )


  final PatchedEMHRequestInsuranceTypeEnum? insuranceType;



  @JsonKey(
    
    name: r'insurance_provider',
    required: false,
    includeIfNull: false,
  )


  final String? insuranceProvider;



  @JsonKey(
    
    name: r'insurance_number',
    required: false,
    includeIfNull: false,
  )


  final String? insuranceNumber;



      /// * `A_POS` - A+ * `A_NEG` - A- * `B_POS` - B+ * `B_NEG` - B- * `AB_POS` - AB+ * `AB_NEG` - AB- * `O_POS` - O+ * `O_NEG` - O- * `UNKNOWN` - Desconocido / No aplica
  @JsonKey(
    
    name: r'blood_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedEMHRequestBloodTypeEnum.unknownDefaultOpenApi,
  )


  final PatchedEMHRequestBloodTypeEnum? bloodType;



          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'weight_kg',
    required: false,
    includeIfNull: false,
  )


  final double? weightKg;



          // minimum: -1000
          // maximum: 1000
  @JsonKey(
    
    name: r'height_cm',
    required: false,
    includeIfNull: false,
  )


  final double? heightCm;



  @JsonKey(
    
    name: r'allergies',
    required: false,
    includeIfNull: false,
  )


  final String? allergies;



  @JsonKey(
    
    name: r'chronic_diseases',
    required: false,
    includeIfNull: false,
  )


  final String? chronicDiseases;



  @JsonKey(
    
    name: r'current_medications',
    required: false,
    includeIfNull: false,
  )


  final String? currentMedications;



  @JsonKey(
    
    name: r'previous_surgeries',
    required: false,
    includeIfNull: false,
  )


  final String? previousSurgeries;



  @JsonKey(
    
    name: r'family_history',
    required: false,
    includeIfNull: false,
  )


  final String? familyHistory;



  @JsonKey(
    
    name: r'general_observations',
    required: false,
    includeIfNull: false,
  )


  final String? generalObservations;



      /// Campos adicionales definidos por la clínica. Ej: {odontograma_notes: '', implant_type: ''}
  @JsonKey(
    
    name: r'custom_fields',
    required: false,
    includeIfNull: false,
  )


  final Object? customFields;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedEMHRequest &&
      other.client == client &&
      other.birthDate == birthDate &&
      other.gender == gender &&
      other.maritalStatus == maritalStatus &&
      other.occupation == occupation &&
      other.emergencyContactName == emergencyContactName &&
      other.emergencyContactPhone == emergencyContactPhone &&
      other.emergencyContactRelationship == emergencyContactRelationship &&
      other.insuranceType == insuranceType &&
      other.insuranceProvider == insuranceProvider &&
      other.insuranceNumber == insuranceNumber &&
      other.bloodType == bloodType &&
      other.weightKg == weightKg &&
      other.heightCm == heightCm &&
      other.allergies == allergies &&
      other.chronicDiseases == chronicDiseases &&
      other.currentMedications == currentMedications &&
      other.previousSurgeries == previousSurgeries &&
      other.familyHistory == familyHistory &&
      other.generalObservations == generalObservations &&
      other.customFields == customFields;

    @override
    int get hashCode =>
        client.hashCode +
        (birthDate == null ? 0 : birthDate.hashCode) +
        (gender == null ? 0 : gender.hashCode) +
        (maritalStatus == null ? 0 : maritalStatus.hashCode) +
        (occupation == null ? 0 : occupation.hashCode) +
        (emergencyContactName == null ? 0 : emergencyContactName.hashCode) +
        (emergencyContactPhone == null ? 0 : emergencyContactPhone.hashCode) +
        (emergencyContactRelationship == null ? 0 : emergencyContactRelationship.hashCode) +
        (insuranceType == null ? 0 : insuranceType.hashCode) +
        (insuranceProvider == null ? 0 : insuranceProvider.hashCode) +
        (insuranceNumber == null ? 0 : insuranceNumber.hashCode) +
        (bloodType == null ? 0 : bloodType.hashCode) +
        (weightKg == null ? 0 : weightKg.hashCode) +
        (heightCm == null ? 0 : heightCm.hashCode) +
        (allergies == null ? 0 : allergies.hashCode) +
        (chronicDiseases == null ? 0 : chronicDiseases.hashCode) +
        (currentMedications == null ? 0 : currentMedications.hashCode) +
        (previousSurgeries == null ? 0 : previousSurgeries.hashCode) +
        (familyHistory == null ? 0 : familyHistory.hashCode) +
        (generalObservations == null ? 0 : generalObservations.hashCode) +
        (customFields == null ? 0 : customFields.hashCode);

  factory PatchedEMHRequest.fromJson(Map<String, dynamic> json) => _$PatchedEMHRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedEMHRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `M` - Masculino * `F` - Femenino * `NB` - No binario * `NR` - Prefiero no responder
enum PatchedEMHRequestGenderEnum {
@JsonValue(r'M')
M(r'M'),
@JsonValue(r'F')
F(r'F'),
@JsonValue(r'NB')
NB(r'NB'),
@JsonValue(r'NR')
NR(r'NR'),
@JsonValue(r'')
empty(r''),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedEMHRequestGenderEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `SINGLE` - Soltero/a * `MARRIED` - Casado/a * `DIVORCED` - Divorciado/a * `WIDOWED` - Viudo/a * `PARTNER` - Conviviente / Unión civil
enum PatchedEMHRequestMaritalStatusEnum {
@JsonValue(r'SINGLE')
SINGLE(r'SINGLE'),
@JsonValue(r'MARRIED')
MARRIED(r'MARRIED'),
@JsonValue(r'DIVORCED')
DIVORCED(r'DIVORCED'),
@JsonValue(r'WIDOWED')
WIDOWED(r'WIDOWED'),
@JsonValue(r'PARTNER')
PARTNER(r'PARTNER'),
@JsonValue(r'')
empty(r''),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedEMHRequestMaritalStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `FONASA` - FONASA (Chile) * `ISAPRE` - ISAPRE (Chile) * `PUBLIC` - Sistema público * `PRIVATE` - Seguro privado * `NONE` - Sin previsión * `OTHER` - Otro
enum PatchedEMHRequestInsuranceTypeEnum {
@JsonValue(r'FONASA')
FONASA(r'FONASA'),
@JsonValue(r'ISAPRE')
ISAPRE(r'ISAPRE'),
@JsonValue(r'PUBLIC')
PUBLIC(r'PUBLIC'),
@JsonValue(r'PRIVATE')
PRIVATE(r'PRIVATE'),
@JsonValue(r'NONE')
NONE(r'NONE'),
@JsonValue(r'OTHER')
OTHER(r'OTHER'),
@JsonValue(r'')
empty(r''),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedEMHRequestInsuranceTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `A_POS` - A+ * `A_NEG` - A- * `B_POS` - B+ * `B_NEG` - B- * `AB_POS` - AB+ * `AB_NEG` - AB- * `O_POS` - O+ * `O_NEG` - O- * `UNKNOWN` - Desconocido / No aplica
enum PatchedEMHRequestBloodTypeEnum {
@JsonValue(r'A_POS')
A_POS(r'A_POS'),
@JsonValue(r'A_NEG')
A_NEG(r'A_NEG'),
@JsonValue(r'B_POS')
B_POS(r'B_POS'),
@JsonValue(r'B_NEG')
B_NEG(r'B_NEG'),
@JsonValue(r'AB_POS')
AB_POS(r'AB_POS'),
@JsonValue(r'AB_NEG')
AB_NEG(r'AB_NEG'),
@JsonValue(r'O_POS')
O_POS(r'O_POS'),
@JsonValue(r'O_NEG')
O_NEG(r'O_NEG'),
@JsonValue(r'UNKNOWN')
UNKNOWN(r'UNKNOWN'),
@JsonValue(r'')
empty(r''),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedEMHRequestBloodTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


