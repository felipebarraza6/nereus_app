// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emh_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EMHRequestCWProxy {
  EMHRequest client(int client);

  EMHRequest birthDate(DateTime? birthDate);

  EMHRequest gender(EMHRequestGenderEnum? gender);

  EMHRequest maritalStatus(EMHRequestMaritalStatusEnum? maritalStatus);

  EMHRequest occupation(String? occupation);

  EMHRequest emergencyContactName(String? emergencyContactName);

  EMHRequest emergencyContactPhone(String? emergencyContactPhone);

  EMHRequest emergencyContactRelationship(String? emergencyContactRelationship);

  EMHRequest insuranceType(EMHRequestInsuranceTypeEnum? insuranceType);

  EMHRequest insuranceProvider(String? insuranceProvider);

  EMHRequest insuranceNumber(String? insuranceNumber);

  EMHRequest bloodType(EMHRequestBloodTypeEnum? bloodType);

  EMHRequest weightKg(double? weightKg);

  EMHRequest heightCm(double? heightCm);

  EMHRequest allergies(String? allergies);

  EMHRequest chronicDiseases(String? chronicDiseases);

  EMHRequest currentMedications(String? currentMedications);

  EMHRequest previousSurgeries(String? previousSurgeries);

  EMHRequest familyHistory(String? familyHistory);

  EMHRequest generalObservations(String? generalObservations);

  EMHRequest customFields(Object? customFields);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EMHRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EMHRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  EMHRequest call({
    int client,
    DateTime? birthDate,
    EMHRequestGenderEnum? gender,
    EMHRequestMaritalStatusEnum? maritalStatus,
    String? occupation,
    String? emergencyContactName,
    String? emergencyContactPhone,
    String? emergencyContactRelationship,
    EMHRequestInsuranceTypeEnum? insuranceType,
    String? insuranceProvider,
    String? insuranceNumber,
    EMHRequestBloodTypeEnum? bloodType,
    double? weightKg,
    double? heightCm,
    String? allergies,
    String? chronicDiseases,
    String? currentMedications,
    String? previousSurgeries,
    String? familyHistory,
    String? generalObservations,
    Object? customFields,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEMHRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEMHRequest.copyWith.fieldName(...)`
class _$EMHRequestCWProxyImpl implements _$EMHRequestCWProxy {
  const _$EMHRequestCWProxyImpl(this._value);

  final EMHRequest _value;

  @override
  EMHRequest client(int client) => this(client: client);

  @override
  EMHRequest birthDate(DateTime? birthDate) => this(birthDate: birthDate);

  @override
  EMHRequest gender(EMHRequestGenderEnum? gender) => this(gender: gender);

  @override
  EMHRequest maritalStatus(EMHRequestMaritalStatusEnum? maritalStatus) =>
      this(maritalStatus: maritalStatus);

  @override
  EMHRequest occupation(String? occupation) => this(occupation: occupation);

  @override
  EMHRequest emergencyContactName(String? emergencyContactName) =>
      this(emergencyContactName: emergencyContactName);

  @override
  EMHRequest emergencyContactPhone(String? emergencyContactPhone) =>
      this(emergencyContactPhone: emergencyContactPhone);

  @override
  EMHRequest emergencyContactRelationship(
    String? emergencyContactRelationship,
  ) => this(emergencyContactRelationship: emergencyContactRelationship);

  @override
  EMHRequest insuranceType(EMHRequestInsuranceTypeEnum? insuranceType) =>
      this(insuranceType: insuranceType);

  @override
  EMHRequest insuranceProvider(String? insuranceProvider) =>
      this(insuranceProvider: insuranceProvider);

  @override
  EMHRequest insuranceNumber(String? insuranceNumber) =>
      this(insuranceNumber: insuranceNumber);

  @override
  EMHRequest bloodType(EMHRequestBloodTypeEnum? bloodType) =>
      this(bloodType: bloodType);

  @override
  EMHRequest weightKg(double? weightKg) => this(weightKg: weightKg);

  @override
  EMHRequest heightCm(double? heightCm) => this(heightCm: heightCm);

  @override
  EMHRequest allergies(String? allergies) => this(allergies: allergies);

  @override
  EMHRequest chronicDiseases(String? chronicDiseases) =>
      this(chronicDiseases: chronicDiseases);

  @override
  EMHRequest currentMedications(String? currentMedications) =>
      this(currentMedications: currentMedications);

  @override
  EMHRequest previousSurgeries(String? previousSurgeries) =>
      this(previousSurgeries: previousSurgeries);

  @override
  EMHRequest familyHistory(String? familyHistory) =>
      this(familyHistory: familyHistory);

  @override
  EMHRequest generalObservations(String? generalObservations) =>
      this(generalObservations: generalObservations);

  @override
  EMHRequest customFields(Object? customFields) =>
      this(customFields: customFields);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EMHRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EMHRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  EMHRequest call({
    Object? client = const $CopyWithPlaceholder(),
    Object? birthDate = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? maritalStatus = const $CopyWithPlaceholder(),
    Object? occupation = const $CopyWithPlaceholder(),
    Object? emergencyContactName = const $CopyWithPlaceholder(),
    Object? emergencyContactPhone = const $CopyWithPlaceholder(),
    Object? emergencyContactRelationship = const $CopyWithPlaceholder(),
    Object? insuranceType = const $CopyWithPlaceholder(),
    Object? insuranceProvider = const $CopyWithPlaceholder(),
    Object? insuranceNumber = const $CopyWithPlaceholder(),
    Object? bloodType = const $CopyWithPlaceholder(),
    Object? weightKg = const $CopyWithPlaceholder(),
    Object? heightCm = const $CopyWithPlaceholder(),
    Object? allergies = const $CopyWithPlaceholder(),
    Object? chronicDiseases = const $CopyWithPlaceholder(),
    Object? currentMedications = const $CopyWithPlaceholder(),
    Object? previousSurgeries = const $CopyWithPlaceholder(),
    Object? familyHistory = const $CopyWithPlaceholder(),
    Object? generalObservations = const $CopyWithPlaceholder(),
    Object? customFields = const $CopyWithPlaceholder(),
  }) {
    return EMHRequest(
      client: client == const $CopyWithPlaceholder()
          ? _value.client
          // ignore: cast_nullable_to_non_nullable
          : client as int,
      birthDate: birthDate == const $CopyWithPlaceholder()
          ? _value.birthDate
          // ignore: cast_nullable_to_non_nullable
          : birthDate as DateTime?,
      gender: gender == const $CopyWithPlaceholder()
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as EMHRequestGenderEnum?,
      maritalStatus: maritalStatus == const $CopyWithPlaceholder()
          ? _value.maritalStatus
          // ignore: cast_nullable_to_non_nullable
          : maritalStatus as EMHRequestMaritalStatusEnum?,
      occupation: occupation == const $CopyWithPlaceholder()
          ? _value.occupation
          // ignore: cast_nullable_to_non_nullable
          : occupation as String?,
      emergencyContactName: emergencyContactName == const $CopyWithPlaceholder()
          ? _value.emergencyContactName
          // ignore: cast_nullable_to_non_nullable
          : emergencyContactName as String?,
      emergencyContactPhone:
          emergencyContactPhone == const $CopyWithPlaceholder()
          ? _value.emergencyContactPhone
          // ignore: cast_nullable_to_non_nullable
          : emergencyContactPhone as String?,
      emergencyContactRelationship:
          emergencyContactRelationship == const $CopyWithPlaceholder()
          ? _value.emergencyContactRelationship
          // ignore: cast_nullable_to_non_nullable
          : emergencyContactRelationship as String?,
      insuranceType: insuranceType == const $CopyWithPlaceholder()
          ? _value.insuranceType
          // ignore: cast_nullable_to_non_nullable
          : insuranceType as EMHRequestInsuranceTypeEnum?,
      insuranceProvider: insuranceProvider == const $CopyWithPlaceholder()
          ? _value.insuranceProvider
          // ignore: cast_nullable_to_non_nullable
          : insuranceProvider as String?,
      insuranceNumber: insuranceNumber == const $CopyWithPlaceholder()
          ? _value.insuranceNumber
          // ignore: cast_nullable_to_non_nullable
          : insuranceNumber as String?,
      bloodType: bloodType == const $CopyWithPlaceholder()
          ? _value.bloodType
          // ignore: cast_nullable_to_non_nullable
          : bloodType as EMHRequestBloodTypeEnum?,
      weightKg: weightKg == const $CopyWithPlaceholder()
          ? _value.weightKg
          // ignore: cast_nullable_to_non_nullable
          : weightKg as double?,
      heightCm: heightCm == const $CopyWithPlaceholder()
          ? _value.heightCm
          // ignore: cast_nullable_to_non_nullable
          : heightCm as double?,
      allergies: allergies == const $CopyWithPlaceholder()
          ? _value.allergies
          // ignore: cast_nullable_to_non_nullable
          : allergies as String?,
      chronicDiseases: chronicDiseases == const $CopyWithPlaceholder()
          ? _value.chronicDiseases
          // ignore: cast_nullable_to_non_nullable
          : chronicDiseases as String?,
      currentMedications: currentMedications == const $CopyWithPlaceholder()
          ? _value.currentMedications
          // ignore: cast_nullable_to_non_nullable
          : currentMedications as String?,
      previousSurgeries: previousSurgeries == const $CopyWithPlaceholder()
          ? _value.previousSurgeries
          // ignore: cast_nullable_to_non_nullable
          : previousSurgeries as String?,
      familyHistory: familyHistory == const $CopyWithPlaceholder()
          ? _value.familyHistory
          // ignore: cast_nullable_to_non_nullable
          : familyHistory as String?,
      generalObservations: generalObservations == const $CopyWithPlaceholder()
          ? _value.generalObservations
          // ignore: cast_nullable_to_non_nullable
          : generalObservations as String?,
      customFields: customFields == const $CopyWithPlaceholder()
          ? _value.customFields
          // ignore: cast_nullable_to_non_nullable
          : customFields as Object?,
    );
  }
}

extension $EMHRequestCopyWith on EMHRequest {
  /// Returns a callable class that can be used as follows: `instanceOfEMHRequest.copyWith(...)` or like so:`instanceOfEMHRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EMHRequestCWProxy get copyWith => _$EMHRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EMHRequest _$EMHRequestFromJson(Map<String, dynamic> json) => $checkedCreate(
  'EMHRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['client']);
    final val = EMHRequest(
      client: $checkedConvert('client', (v) => (v as num).toInt()),
      birthDate: $checkedConvert(
        'birth_date',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      gender: $checkedConvert(
        'gender',
        (v) => $enumDecodeNullable(
          _$EMHRequestGenderEnumEnumMap,
          v,
          unknownValue: EMHRequestGenderEnum.unknownDefaultOpenApi,
        ),
      ),
      maritalStatus: $checkedConvert(
        'marital_status',
        (v) => $enumDecodeNullable(
          _$EMHRequestMaritalStatusEnumEnumMap,
          v,
          unknownValue: EMHRequestMaritalStatusEnum.unknownDefaultOpenApi,
        ),
      ),
      occupation: $checkedConvert('occupation', (v) => v as String?),
      emergencyContactName: $checkedConvert(
        'emergency_contact_name',
        (v) => v as String?,
      ),
      emergencyContactPhone: $checkedConvert(
        'emergency_contact_phone',
        (v) => v as String?,
      ),
      emergencyContactRelationship: $checkedConvert(
        'emergency_contact_relationship',
        (v) => v as String?,
      ),
      insuranceType: $checkedConvert(
        'insurance_type',
        (v) => $enumDecodeNullable(
          _$EMHRequestInsuranceTypeEnumEnumMap,
          v,
          unknownValue: EMHRequestInsuranceTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      insuranceProvider: $checkedConvert(
        'insurance_provider',
        (v) => v as String?,
      ),
      insuranceNumber: $checkedConvert('insurance_number', (v) => v as String?),
      bloodType: $checkedConvert(
        'blood_type',
        (v) => $enumDecodeNullable(
          _$EMHRequestBloodTypeEnumEnumMap,
          v,
          unknownValue: EMHRequestBloodTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      weightKg: $checkedConvert('weight_kg', (v) => (v as num?)?.toDouble()),
      heightCm: $checkedConvert('height_cm', (v) => (v as num?)?.toDouble()),
      allergies: $checkedConvert('allergies', (v) => v as String?),
      chronicDiseases: $checkedConvert('chronic_diseases', (v) => v as String?),
      currentMedications: $checkedConvert(
        'current_medications',
        (v) => v as String?,
      ),
      previousSurgeries: $checkedConvert(
        'previous_surgeries',
        (v) => v as String?,
      ),
      familyHistory: $checkedConvert('family_history', (v) => v as String?),
      generalObservations: $checkedConvert(
        'general_observations',
        (v) => v as String?,
      ),
      customFields: $checkedConvert('custom_fields', (v) => v),
    );
    return val;
  },
  fieldKeyMap: const {
    'birthDate': 'birth_date',
    'maritalStatus': 'marital_status',
    'emergencyContactName': 'emergency_contact_name',
    'emergencyContactPhone': 'emergency_contact_phone',
    'emergencyContactRelationship': 'emergency_contact_relationship',
    'insuranceType': 'insurance_type',
    'insuranceProvider': 'insurance_provider',
    'insuranceNumber': 'insurance_number',
    'bloodType': 'blood_type',
    'weightKg': 'weight_kg',
    'heightCm': 'height_cm',
    'chronicDiseases': 'chronic_diseases',
    'currentMedications': 'current_medications',
    'previousSurgeries': 'previous_surgeries',
    'familyHistory': 'family_history',
    'generalObservations': 'general_observations',
    'customFields': 'custom_fields',
  },
);

Map<String, dynamic> _$EMHRequestToJson(EMHRequest instance) =>
    <String, dynamic>{
      'client': instance.client,
      'birth_date': ?instance.birthDate?.toIso8601String(),
      'gender': ?_$EMHRequestGenderEnumEnumMap[instance.gender],
      'marital_status':
          ?_$EMHRequestMaritalStatusEnumEnumMap[instance.maritalStatus],
      'occupation': ?instance.occupation,
      'emergency_contact_name': ?instance.emergencyContactName,
      'emergency_contact_phone': ?instance.emergencyContactPhone,
      'emergency_contact_relationship': ?instance.emergencyContactRelationship,
      'insurance_type':
          ?_$EMHRequestInsuranceTypeEnumEnumMap[instance.insuranceType],
      'insurance_provider': ?instance.insuranceProvider,
      'insurance_number': ?instance.insuranceNumber,
      'blood_type': ?_$EMHRequestBloodTypeEnumEnumMap[instance.bloodType],
      'weight_kg': ?instance.weightKg,
      'height_cm': ?instance.heightCm,
      'allergies': ?instance.allergies,
      'chronic_diseases': ?instance.chronicDiseases,
      'current_medications': ?instance.currentMedications,
      'previous_surgeries': ?instance.previousSurgeries,
      'family_history': ?instance.familyHistory,
      'general_observations': ?instance.generalObservations,
      'custom_fields': ?instance.customFields,
    };

const _$EMHRequestGenderEnumEnumMap = {
  EMHRequestGenderEnum.M: 'M',
  EMHRequestGenderEnum.F: 'F',
  EMHRequestGenderEnum.NB: 'NB',
  EMHRequestGenderEnum.NR: 'NR',
  EMHRequestGenderEnum.empty: '',
  EMHRequestGenderEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};

const _$EMHRequestMaritalStatusEnumEnumMap = {
  EMHRequestMaritalStatusEnum.SINGLE: 'SINGLE',
  EMHRequestMaritalStatusEnum.MARRIED: 'MARRIED',
  EMHRequestMaritalStatusEnum.DIVORCED: 'DIVORCED',
  EMHRequestMaritalStatusEnum.WIDOWED: 'WIDOWED',
  EMHRequestMaritalStatusEnum.PARTNER: 'PARTNER',
  EMHRequestMaritalStatusEnum.empty: '',
  EMHRequestMaritalStatusEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};

const _$EMHRequestInsuranceTypeEnumEnumMap = {
  EMHRequestInsuranceTypeEnum.FONASA: 'FONASA',
  EMHRequestInsuranceTypeEnum.ISAPRE: 'ISAPRE',
  EMHRequestInsuranceTypeEnum.PUBLIC: 'PUBLIC',
  EMHRequestInsuranceTypeEnum.PRIVATE: 'PRIVATE',
  EMHRequestInsuranceTypeEnum.NONE: 'NONE',
  EMHRequestInsuranceTypeEnum.OTHER: 'OTHER',
  EMHRequestInsuranceTypeEnum.empty: '',
  EMHRequestInsuranceTypeEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};

const _$EMHRequestBloodTypeEnumEnumMap = {
  EMHRequestBloodTypeEnum.A_POS: 'A_POS',
  EMHRequestBloodTypeEnum.A_NEG: 'A_NEG',
  EMHRequestBloodTypeEnum.B_POS: 'B_POS',
  EMHRequestBloodTypeEnum.B_NEG: 'B_NEG',
  EMHRequestBloodTypeEnum.AB_POS: 'AB_POS',
  EMHRequestBloodTypeEnum.AB_NEG: 'AB_NEG',
  EMHRequestBloodTypeEnum.O_POS: 'O_POS',
  EMHRequestBloodTypeEnum.O_NEG: 'O_NEG',
  EMHRequestBloodTypeEnum.UNKNOWN: 'UNKNOWN',
  EMHRequestBloodTypeEnum.empty: '',
  EMHRequestBloodTypeEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
