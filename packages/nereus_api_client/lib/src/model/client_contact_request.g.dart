// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_contact_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ClientContactRequestCWProxy {
  ClientContactRequest firstName(String firstName);

  ClientContactRequest lastName(String lastName);

  ClientContactRequest dni(String? dni);

  ClientContactRequest email(String email);

  ClientContactRequest phone(String? phone);

  ClientContactRequest jobTitle(int? jobTitle);

  ClientContactRequest contactType(
    ClientContactRequestContactTypeEnum? contactType,
  );

  ClientContactRequest client(int client);

  ClientContactRequest decisionMaker(bool? decisionMaker);

  ClientContactRequest notes(String? notes);

  ClientContactRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientContactRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientContactRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientContactRequest call({
    String firstName,
    String lastName,
    String? dni,
    String email,
    String? phone,
    int? jobTitle,
    ClientContactRequestContactTypeEnum? contactType,
    int client,
    bool? decisionMaker,
    String? notes,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfClientContactRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfClientContactRequest.copyWith.fieldName(...)`
class _$ClientContactRequestCWProxyImpl
    implements _$ClientContactRequestCWProxy {
  const _$ClientContactRequestCWProxyImpl(this._value);

  final ClientContactRequest _value;

  @override
  ClientContactRequest firstName(String firstName) =>
      this(firstName: firstName);

  @override
  ClientContactRequest lastName(String lastName) => this(lastName: lastName);

  @override
  ClientContactRequest dni(String? dni) => this(dni: dni);

  @override
  ClientContactRequest email(String email) => this(email: email);

  @override
  ClientContactRequest phone(String? phone) => this(phone: phone);

  @override
  ClientContactRequest jobTitle(int? jobTitle) => this(jobTitle: jobTitle);

  @override
  ClientContactRequest contactType(
    ClientContactRequestContactTypeEnum? contactType,
  ) => this(contactType: contactType);

  @override
  ClientContactRequest client(int client) => this(client: client);

  @override
  ClientContactRequest decisionMaker(bool? decisionMaker) =>
      this(decisionMaker: decisionMaker);

  @override
  ClientContactRequest notes(String? notes) => this(notes: notes);

  @override
  ClientContactRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ClientContactRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ClientContactRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  ClientContactRequest call({
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? dni = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? phone = const $CopyWithPlaceholder(),
    Object? jobTitle = const $CopyWithPlaceholder(),
    Object? contactType = const $CopyWithPlaceholder(),
    Object? client = const $CopyWithPlaceholder(),
    Object? decisionMaker = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return ClientContactRequest(
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String,
      lastName: lastName == const $CopyWithPlaceholder()
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String,
      dni: dni == const $CopyWithPlaceholder()
          ? _value.dni
          // ignore: cast_nullable_to_non_nullable
          : dni as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      phone: phone == const $CopyWithPlaceholder()
          ? _value.phone
          // ignore: cast_nullable_to_non_nullable
          : phone as String?,
      jobTitle: jobTitle == const $CopyWithPlaceholder()
          ? _value.jobTitle
          // ignore: cast_nullable_to_non_nullable
          : jobTitle as int?,
      contactType: contactType == const $CopyWithPlaceholder()
          ? _value.contactType
          // ignore: cast_nullable_to_non_nullable
          : contactType as ClientContactRequestContactTypeEnum?,
      client: client == const $CopyWithPlaceholder()
          ? _value.client
          // ignore: cast_nullable_to_non_nullable
          : client as int,
      decisionMaker: decisionMaker == const $CopyWithPlaceholder()
          ? _value.decisionMaker
          // ignore: cast_nullable_to_non_nullable
          : decisionMaker as bool?,
      notes: notes == const $CopyWithPlaceholder()
          ? _value.notes
          // ignore: cast_nullable_to_non_nullable
          : notes as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $ClientContactRequestCopyWith on ClientContactRequest {
  /// Returns a callable class that can be used as follows: `instanceOfClientContactRequest.copyWith(...)` or like so:`instanceOfClientContactRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ClientContactRequestCWProxy get copyWith =>
      _$ClientContactRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientContactRequest _$ClientContactRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ClientContactRequest',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['first_name', 'last_name', 'email', 'client'],
    );
    final val = ClientContactRequest(
      firstName: $checkedConvert('first_name', (v) => v as String),
      lastName: $checkedConvert('last_name', (v) => v as String),
      dni: $checkedConvert('dni', (v) => v as String?),
      email: $checkedConvert('email', (v) => v as String),
      phone: $checkedConvert('phone', (v) => v as String?),
      jobTitle: $checkedConvert('job_title', (v) => (v as num?)?.toInt()),
      contactType: $checkedConvert(
        'contact_type',
        (v) => $enumDecodeNullable(
          _$ClientContactRequestContactTypeEnumEnumMap,
          v,
          unknownValue:
              ClientContactRequestContactTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      client: $checkedConvert('client', (v) => (v as num).toInt()),
      decisionMaker: $checkedConvert('decision_maker', (v) => v as bool?),
      notes: $checkedConvert('notes', (v) => v as String?),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'firstName': 'first_name',
    'lastName': 'last_name',
    'jobTitle': 'job_title',
    'contactType': 'contact_type',
    'decisionMaker': 'decision_maker',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$ClientContactRequestToJson(
  ClientContactRequest instance,
) => <String, dynamic>{
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'dni': ?instance.dni,
  'email': instance.email,
  'phone': ?instance.phone,
  'job_title': ?instance.jobTitle,
  'contact_type':
      ?_$ClientContactRequestContactTypeEnumEnumMap[instance.contactType],
  'client': instance.client,
  'decision_maker': ?instance.decisionMaker,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
};

const _$ClientContactRequestContactTypeEnumEnumMap = {
  ClientContactRequestContactTypeEnum.PRIMARY: 'PRIMARY',
  ClientContactRequestContactTypeEnum.SECONDARY: 'SECONDARY',
  ClientContactRequestContactTypeEnum.BILLING: 'BILLING',
  ClientContactRequestContactTypeEnum.TECHNICAL: 'TECHNICAL',
  ClientContactRequestContactTypeEnum.ADMINISTRATIVE: 'ADMINISTRATIVE',
  ClientContactRequestContactTypeEnum.DECISION_MAKER: 'DECISION_MAKER',
  ClientContactRequestContactTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
