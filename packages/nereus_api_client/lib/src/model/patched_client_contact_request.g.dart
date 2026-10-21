// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_client_contact_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedClientContactRequestCWProxy {
  PatchedClientContactRequest firstName(String? firstName);

  PatchedClientContactRequest lastName(String? lastName);

  PatchedClientContactRequest dni(String? dni);

  PatchedClientContactRequest email(String? email);

  PatchedClientContactRequest phone(String? phone);

  PatchedClientContactRequest jobTitle(int? jobTitle);

  PatchedClientContactRequest contactType(
    PatchedClientContactRequestContactTypeEnum? contactType,
  );

  PatchedClientContactRequest client(int? client);

  PatchedClientContactRequest decisionMaker(bool? decisionMaker);

  PatchedClientContactRequest notes(String? notes);

  PatchedClientContactRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedClientContactRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedClientContactRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedClientContactRequest call({
    String? firstName,
    String? lastName,
    String? dni,
    String? email,
    String? phone,
    int? jobTitle,
    PatchedClientContactRequestContactTypeEnum? contactType,
    int? client,
    bool? decisionMaker,
    String? notes,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedClientContactRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedClientContactRequest.copyWith.fieldName(...)`
class _$PatchedClientContactRequestCWProxyImpl
    implements _$PatchedClientContactRequestCWProxy {
  const _$PatchedClientContactRequestCWProxyImpl(this._value);

  final PatchedClientContactRequest _value;

  @override
  PatchedClientContactRequest firstName(String? firstName) =>
      this(firstName: firstName);

  @override
  PatchedClientContactRequest lastName(String? lastName) =>
      this(lastName: lastName);

  @override
  PatchedClientContactRequest dni(String? dni) => this(dni: dni);

  @override
  PatchedClientContactRequest email(String? email) => this(email: email);

  @override
  PatchedClientContactRequest phone(String? phone) => this(phone: phone);

  @override
  PatchedClientContactRequest jobTitle(int? jobTitle) =>
      this(jobTitle: jobTitle);

  @override
  PatchedClientContactRequest contactType(
    PatchedClientContactRequestContactTypeEnum? contactType,
  ) => this(contactType: contactType);

  @override
  PatchedClientContactRequest client(int? client) => this(client: client);

  @override
  PatchedClientContactRequest decisionMaker(bool? decisionMaker) =>
      this(decisionMaker: decisionMaker);

  @override
  PatchedClientContactRequest notes(String? notes) => this(notes: notes);

  @override
  PatchedClientContactRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedClientContactRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedClientContactRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedClientContactRequest call({
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
    return PatchedClientContactRequest(
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String?,
      lastName: lastName == const $CopyWithPlaceholder()
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String?,
      dni: dni == const $CopyWithPlaceholder()
          ? _value.dni
          // ignore: cast_nullable_to_non_nullable
          : dni as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
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
          : contactType as PatchedClientContactRequestContactTypeEnum?,
      client: client == const $CopyWithPlaceholder()
          ? _value.client
          // ignore: cast_nullable_to_non_nullable
          : client as int?,
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

extension $PatchedClientContactRequestCopyWith on PatchedClientContactRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedClientContactRequest.copyWith(...)` or like so:`instanceOfPatchedClientContactRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedClientContactRequestCWProxy get copyWith =>
      _$PatchedClientContactRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedClientContactRequest _$PatchedClientContactRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedClientContactRequest',
  json,
  ($checkedConvert) {
    final val = PatchedClientContactRequest(
      firstName: $checkedConvert('first_name', (v) => v as String?),
      lastName: $checkedConvert('last_name', (v) => v as String?),
      dni: $checkedConvert('dni', (v) => v as String?),
      email: $checkedConvert('email', (v) => v as String?),
      phone: $checkedConvert('phone', (v) => v as String?),
      jobTitle: $checkedConvert('job_title', (v) => (v as num?)?.toInt()),
      contactType: $checkedConvert(
        'contact_type',
        (v) => $enumDecodeNullable(
          _$PatchedClientContactRequestContactTypeEnumEnumMap,
          v,
          unknownValue:
              PatchedClientContactRequestContactTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      client: $checkedConvert('client', (v) => (v as num?)?.toInt()),
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

Map<String, dynamic> _$PatchedClientContactRequestToJson(
  PatchedClientContactRequest instance,
) => <String, dynamic>{
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'dni': ?instance.dni,
  'email': ?instance.email,
  'phone': ?instance.phone,
  'job_title': ?instance.jobTitle,
  'contact_type':
      ?_$PatchedClientContactRequestContactTypeEnumEnumMap[instance
          .contactType],
  'client': ?instance.client,
  'decision_maker': ?instance.decisionMaker,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
};

const _$PatchedClientContactRequestContactTypeEnumEnumMap = {
  PatchedClientContactRequestContactTypeEnum.PRIMARY: 'PRIMARY',
  PatchedClientContactRequestContactTypeEnum.SECONDARY: 'SECONDARY',
  PatchedClientContactRequestContactTypeEnum.BILLING: 'BILLING',
  PatchedClientContactRequestContactTypeEnum.TECHNICAL: 'TECHNICAL',
  PatchedClientContactRequestContactTypeEnum.ADMINISTRATIVE: 'ADMINISTRATIVE',
  PatchedClientContactRequestContactTypeEnum.DECISION_MAKER: 'DECISION_MAKER',
  PatchedClientContactRequestContactTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
