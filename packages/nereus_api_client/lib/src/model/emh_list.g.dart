// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emh_list.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EMHListCWProxy {
  EMHList id(String id);

  EMHList client(int client);

  EMHList clientName(String clientName);

  EMHList birthDate(DateTime? birthDate);

  EMHList age(int age);

  EMHList gender(EMHListGenderEnum? gender);

  EMHList bloodType(EMHListBloodTypeEnum? bloodType);

  EMHList insuranceProvider(String? insuranceProvider);

  EMHList branch(int branch);

  EMHList created(DateTime created);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EMHList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EMHList(...).copyWith(id: 12, name: "My name")
  /// ````
  EMHList call({
    String id,
    int client,
    String clientName,
    DateTime? birthDate,
    int age,
    EMHListGenderEnum? gender,
    EMHListBloodTypeEnum? bloodType,
    String? insuranceProvider,
    int branch,
    DateTime created,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEMHList.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEMHList.copyWith.fieldName(...)`
class _$EMHListCWProxyImpl implements _$EMHListCWProxy {
  const _$EMHListCWProxyImpl(this._value);

  final EMHList _value;

  @override
  EMHList id(String id) => this(id: id);

  @override
  EMHList client(int client) => this(client: client);

  @override
  EMHList clientName(String clientName) => this(clientName: clientName);

  @override
  EMHList birthDate(DateTime? birthDate) => this(birthDate: birthDate);

  @override
  EMHList age(int age) => this(age: age);

  @override
  EMHList gender(EMHListGenderEnum? gender) => this(gender: gender);

  @override
  EMHList bloodType(EMHListBloodTypeEnum? bloodType) =>
      this(bloodType: bloodType);

  @override
  EMHList insuranceProvider(String? insuranceProvider) =>
      this(insuranceProvider: insuranceProvider);

  @override
  EMHList branch(int branch) => this(branch: branch);

  @override
  EMHList created(DateTime created) => this(created: created);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EMHList(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EMHList(...).copyWith(id: 12, name: "My name")
  /// ````
  EMHList call({
    Object? id = const $CopyWithPlaceholder(),
    Object? client = const $CopyWithPlaceholder(),
    Object? clientName = const $CopyWithPlaceholder(),
    Object? birthDate = const $CopyWithPlaceholder(),
    Object? age = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? bloodType = const $CopyWithPlaceholder(),
    Object? insuranceProvider = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
  }) {
    return EMHList(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      client: client == const $CopyWithPlaceholder()
          ? _value.client
          // ignore: cast_nullable_to_non_nullable
          : client as int,
      clientName: clientName == const $CopyWithPlaceholder()
          ? _value.clientName
          // ignore: cast_nullable_to_non_nullable
          : clientName as String,
      birthDate: birthDate == const $CopyWithPlaceholder()
          ? _value.birthDate
          // ignore: cast_nullable_to_non_nullable
          : birthDate as DateTime?,
      age: age == const $CopyWithPlaceholder()
          ? _value.age
          // ignore: cast_nullable_to_non_nullable
          : age as int,
      gender: gender == const $CopyWithPlaceholder()
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as EMHListGenderEnum?,
      bloodType: bloodType == const $CopyWithPlaceholder()
          ? _value.bloodType
          // ignore: cast_nullable_to_non_nullable
          : bloodType as EMHListBloodTypeEnum?,
      insuranceProvider: insuranceProvider == const $CopyWithPlaceholder()
          ? _value.insuranceProvider
          // ignore: cast_nullable_to_non_nullable
          : insuranceProvider as String?,
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as int,
      created: created == const $CopyWithPlaceholder()
          ? _value.created
          // ignore: cast_nullable_to_non_nullable
          : created as DateTime,
    );
  }
}

extension $EMHListCopyWith on EMHList {
  /// Returns a callable class that can be used as follows: `instanceOfEMHList.copyWith(...)` or like so:`instanceOfEMHList.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EMHListCWProxy get copyWith => _$EMHListCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EMHList _$EMHListFromJson(Map<String, dynamic> json) => $checkedCreate(
  'EMHList',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'client',
        'client_name',
        'age',
        'branch',
        'created',
      ],
    );
    final val = EMHList(
      id: $checkedConvert('id', (v) => v as String),
      client: $checkedConvert('client', (v) => (v as num).toInt()),
      clientName: $checkedConvert('client_name', (v) => v as String),
      birthDate: $checkedConvert(
        'birth_date',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      age: $checkedConvert('age', (v) => (v as num).toInt()),
      gender: $checkedConvert(
        'gender',
        (v) => $enumDecodeNullable(
          _$EMHListGenderEnumEnumMap,
          v,
          unknownValue: EMHListGenderEnum.unknownDefaultOpenApi,
        ),
      ),
      bloodType: $checkedConvert(
        'blood_type',
        (v) => $enumDecodeNullable(
          _$EMHListBloodTypeEnumEnumMap,
          v,
          unknownValue: EMHListBloodTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      insuranceProvider: $checkedConvert(
        'insurance_provider',
        (v) => v as String?,
      ),
      branch: $checkedConvert('branch', (v) => (v as num).toInt()),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'clientName': 'client_name',
    'birthDate': 'birth_date',
    'bloodType': 'blood_type',
    'insuranceProvider': 'insurance_provider',
  },
);

Map<String, dynamic> _$EMHListToJson(EMHList instance) => <String, dynamic>{
  'id': instance.id,
  'client': instance.client,
  'client_name': instance.clientName,
  'birth_date': ?instance.birthDate?.toIso8601String(),
  'age': instance.age,
  'gender': ?_$EMHListGenderEnumEnumMap[instance.gender],
  'blood_type': ?_$EMHListBloodTypeEnumEnumMap[instance.bloodType],
  'insurance_provider': ?instance.insuranceProvider,
  'branch': instance.branch,
  'created': instance.created.toIso8601String(),
};

const _$EMHListGenderEnumEnumMap = {
  EMHListGenderEnum.M: 'M',
  EMHListGenderEnum.F: 'F',
  EMHListGenderEnum.NB: 'NB',
  EMHListGenderEnum.NR: 'NR',
  EMHListGenderEnum.empty: '',
  EMHListGenderEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};

const _$EMHListBloodTypeEnumEnumMap = {
  EMHListBloodTypeEnum.A_POS: 'A_POS',
  EMHListBloodTypeEnum.A_NEG: 'A_NEG',
  EMHListBloodTypeEnum.B_POS: 'B_POS',
  EMHListBloodTypeEnum.B_NEG: 'B_NEG',
  EMHListBloodTypeEnum.AB_POS: 'AB_POS',
  EMHListBloodTypeEnum.AB_NEG: 'AB_NEG',
  EMHListBloodTypeEnum.O_POS: 'O_POS',
  EMHListBloodTypeEnum.O_NEG: 'O_NEG',
  EMHListBloodTypeEnum.UNKNOWN: 'UNKNOWN',
  EMHListBloodTypeEnum.empty: '',
  EMHListBloodTypeEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
