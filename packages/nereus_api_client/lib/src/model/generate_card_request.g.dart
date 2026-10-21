// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_card_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GenerateCardRequestCWProxy {
  GenerateCardRequest clientId(String clientId);

  GenerateCardRequest templateId(String? templateId);

  GenerateCardRequest saveToDms(bool? saveToDms);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GenerateCardRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GenerateCardRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  GenerateCardRequest call({
    String clientId,
    String? templateId,
    bool? saveToDms,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGenerateCardRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGenerateCardRequest.copyWith.fieldName(...)`
class _$GenerateCardRequestCWProxyImpl implements _$GenerateCardRequestCWProxy {
  const _$GenerateCardRequestCWProxyImpl(this._value);

  final GenerateCardRequest _value;

  @override
  GenerateCardRequest clientId(String clientId) => this(clientId: clientId);

  @override
  GenerateCardRequest templateId(String? templateId) =>
      this(templateId: templateId);

  @override
  GenerateCardRequest saveToDms(bool? saveToDms) => this(saveToDms: saveToDms);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GenerateCardRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GenerateCardRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  GenerateCardRequest call({
    Object? clientId = const $CopyWithPlaceholder(),
    Object? templateId = const $CopyWithPlaceholder(),
    Object? saveToDms = const $CopyWithPlaceholder(),
  }) {
    return GenerateCardRequest(
      clientId: clientId == const $CopyWithPlaceholder()
          ? _value.clientId
          // ignore: cast_nullable_to_non_nullable
          : clientId as String,
      templateId: templateId == const $CopyWithPlaceholder()
          ? _value.templateId
          // ignore: cast_nullable_to_non_nullable
          : templateId as String?,
      saveToDms: saveToDms == const $CopyWithPlaceholder()
          ? _value.saveToDms
          // ignore: cast_nullable_to_non_nullable
          : saveToDms as bool?,
    );
  }
}

extension $GenerateCardRequestCopyWith on GenerateCardRequest {
  /// Returns a callable class that can be used as follows: `instanceOfGenerateCardRequest.copyWith(...)` or like so:`instanceOfGenerateCardRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GenerateCardRequestCWProxy get copyWith =>
      _$GenerateCardRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateCardRequest _$GenerateCardRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GenerateCardRequest',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['client_id']);
        final val = GenerateCardRequest(
          clientId: $checkedConvert('client_id', (v) => v as String),
          templateId: $checkedConvert('template_id', (v) => v as String?),
          saveToDms: $checkedConvert('save_to_dms', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {
        'clientId': 'client_id',
        'templateId': 'template_id',
        'saveToDms': 'save_to_dms',
      },
    );

Map<String, dynamic> _$GenerateCardRequestToJson(
  GenerateCardRequest instance,
) => <String, dynamic>{
  'client_id': instance.clientId,
  'template_id': ?instance.templateId,
  'save_to_dms': ?instance.saveToDms,
};
