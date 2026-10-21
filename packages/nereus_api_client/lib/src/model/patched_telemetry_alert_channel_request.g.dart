// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_telemetry_alert_channel_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedTelemetryAlertChannelRequestCWProxy {
  PatchedTelemetryAlertChannelRequest alertRule(int? alertRule);

  PatchedTelemetryAlertChannelRequest channelType(
    PatchedTelemetryAlertChannelRequestChannelTypeEnum? channelType,
  );

  PatchedTelemetryAlertChannelRequest destination(String? destination);

  PatchedTelemetryAlertChannelRequest isActive(bool? isActive);

  PatchedTelemetryAlertChannelRequest templateOverride(
    String? templateOverride,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTelemetryAlertChannelRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTelemetryAlertChannelRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTelemetryAlertChannelRequest call({
    int? alertRule,
    PatchedTelemetryAlertChannelRequestChannelTypeEnum? channelType,
    String? destination,
    bool? isActive,
    String? templateOverride,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedTelemetryAlertChannelRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedTelemetryAlertChannelRequest.copyWith.fieldName(...)`
class _$PatchedTelemetryAlertChannelRequestCWProxyImpl
    implements _$PatchedTelemetryAlertChannelRequestCWProxy {
  const _$PatchedTelemetryAlertChannelRequestCWProxyImpl(this._value);

  final PatchedTelemetryAlertChannelRequest _value;

  @override
  PatchedTelemetryAlertChannelRequest alertRule(int? alertRule) =>
      this(alertRule: alertRule);

  @override
  PatchedTelemetryAlertChannelRequest channelType(
    PatchedTelemetryAlertChannelRequestChannelTypeEnum? channelType,
  ) => this(channelType: channelType);

  @override
  PatchedTelemetryAlertChannelRequest destination(String? destination) =>
      this(destination: destination);

  @override
  PatchedTelemetryAlertChannelRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  PatchedTelemetryAlertChannelRequest templateOverride(
    String? templateOverride,
  ) => this(templateOverride: templateOverride);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTelemetryAlertChannelRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTelemetryAlertChannelRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTelemetryAlertChannelRequest call({
    Object? alertRule = const $CopyWithPlaceholder(),
    Object? channelType = const $CopyWithPlaceholder(),
    Object? destination = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? templateOverride = const $CopyWithPlaceholder(),
  }) {
    return PatchedTelemetryAlertChannelRequest(
      alertRule: alertRule == const $CopyWithPlaceholder()
          ? _value.alertRule
          // ignore: cast_nullable_to_non_nullable
          : alertRule as int?,
      channelType: channelType == const $CopyWithPlaceholder()
          ? _value.channelType
          // ignore: cast_nullable_to_non_nullable
          : channelType as PatchedTelemetryAlertChannelRequestChannelTypeEnum?,
      destination: destination == const $CopyWithPlaceholder()
          ? _value.destination
          // ignore: cast_nullable_to_non_nullable
          : destination as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      templateOverride: templateOverride == const $CopyWithPlaceholder()
          ? _value.templateOverride
          // ignore: cast_nullable_to_non_nullable
          : templateOverride as String?,
    );
  }
}

extension $PatchedTelemetryAlertChannelRequestCopyWith
    on PatchedTelemetryAlertChannelRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedTelemetryAlertChannelRequest.copyWith(...)` or like so:`instanceOfPatchedTelemetryAlertChannelRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedTelemetryAlertChannelRequestCWProxy get copyWith =>
      _$PatchedTelemetryAlertChannelRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedTelemetryAlertChannelRequest
_$PatchedTelemetryAlertChannelRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedTelemetryAlertChannelRequest',
      json,
      ($checkedConvert) {
        final val = PatchedTelemetryAlertChannelRequest(
          alertRule: $checkedConvert('alert_rule', (v) => (v as num?)?.toInt()),
          channelType: $checkedConvert(
            'channel_type',
            (v) => $enumDecodeNullable(
              _$PatchedTelemetryAlertChannelRequestChannelTypeEnumEnumMap,
              v,
              unknownValue: PatchedTelemetryAlertChannelRequestChannelTypeEnum
                  .unknownDefaultOpenApi,
            ),
          ),
          destination: $checkedConvert('destination', (v) => v as String?),
          isActive: $checkedConvert('is_active', (v) => v as bool?),
          templateOverride: $checkedConvert(
            'template_override',
            (v) => v as String?,
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'alertRule': 'alert_rule',
        'channelType': 'channel_type',
        'isActive': 'is_active',
        'templateOverride': 'template_override',
      },
    );

Map<String, dynamic> _$PatchedTelemetryAlertChannelRequestToJson(
  PatchedTelemetryAlertChannelRequest instance,
) => <String, dynamic>{
  'alert_rule': ?instance.alertRule,
  'channel_type':
      ?_$PatchedTelemetryAlertChannelRequestChannelTypeEnumEnumMap[instance
          .channelType],
  'destination': ?instance.destination,
  'is_active': ?instance.isActive,
  'template_override': ?instance.templateOverride,
};

const _$PatchedTelemetryAlertChannelRequestChannelTypeEnumEnumMap = {
  PatchedTelemetryAlertChannelRequestChannelTypeEnum.EMAIL: 'EMAIL',
  PatchedTelemetryAlertChannelRequestChannelTypeEnum.GOOGLE_CHAT: 'GOOGLE_CHAT',
  PatchedTelemetryAlertChannelRequestChannelTypeEnum.WEBHOOK: 'WEBHOOK',
  PatchedTelemetryAlertChannelRequestChannelTypeEnum.SMS: 'SMS',
  PatchedTelemetryAlertChannelRequestChannelTypeEnum.IN_APP: 'IN_APP',
  PatchedTelemetryAlertChannelRequestChannelTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
