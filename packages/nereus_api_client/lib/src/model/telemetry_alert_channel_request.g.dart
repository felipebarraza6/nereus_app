// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_alert_channel_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryAlertChannelRequestCWProxy {
  TelemetryAlertChannelRequest alertRule(int alertRule);

  TelemetryAlertChannelRequest channelType(
    TelemetryAlertChannelRequestChannelTypeEnum channelType,
  );

  TelemetryAlertChannelRequest destination(String destination);

  TelemetryAlertChannelRequest isActive(bool? isActive);

  TelemetryAlertChannelRequest templateOverride(String? templateOverride);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryAlertChannelRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryAlertChannelRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryAlertChannelRequest call({
    int alertRule,
    TelemetryAlertChannelRequestChannelTypeEnum channelType,
    String destination,
    bool? isActive,
    String? templateOverride,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryAlertChannelRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryAlertChannelRequest.copyWith.fieldName(...)`
class _$TelemetryAlertChannelRequestCWProxyImpl
    implements _$TelemetryAlertChannelRequestCWProxy {
  const _$TelemetryAlertChannelRequestCWProxyImpl(this._value);

  final TelemetryAlertChannelRequest _value;

  @override
  TelemetryAlertChannelRequest alertRule(int alertRule) =>
      this(alertRule: alertRule);

  @override
  TelemetryAlertChannelRequest channelType(
    TelemetryAlertChannelRequestChannelTypeEnum channelType,
  ) => this(channelType: channelType);

  @override
  TelemetryAlertChannelRequest destination(String destination) =>
      this(destination: destination);

  @override
  TelemetryAlertChannelRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  TelemetryAlertChannelRequest templateOverride(String? templateOverride) =>
      this(templateOverride: templateOverride);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryAlertChannelRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryAlertChannelRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryAlertChannelRequest call({
    Object? alertRule = const $CopyWithPlaceholder(),
    Object? channelType = const $CopyWithPlaceholder(),
    Object? destination = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? templateOverride = const $CopyWithPlaceholder(),
  }) {
    return TelemetryAlertChannelRequest(
      alertRule: alertRule == const $CopyWithPlaceholder()
          ? _value.alertRule
          // ignore: cast_nullable_to_non_nullable
          : alertRule as int,
      channelType: channelType == const $CopyWithPlaceholder()
          ? _value.channelType
          // ignore: cast_nullable_to_non_nullable
          : channelType as TelemetryAlertChannelRequestChannelTypeEnum,
      destination: destination == const $CopyWithPlaceholder()
          ? _value.destination
          // ignore: cast_nullable_to_non_nullable
          : destination as String,
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

extension $TelemetryAlertChannelRequestCopyWith
    on TelemetryAlertChannelRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryAlertChannelRequest.copyWith(...)` or like so:`instanceOfTelemetryAlertChannelRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryAlertChannelRequestCWProxy get copyWith =>
      _$TelemetryAlertChannelRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryAlertChannelRequest _$TelemetryAlertChannelRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryAlertChannelRequest',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const ['alert_rule', 'channel_type', 'destination'],
    );
    final val = TelemetryAlertChannelRequest(
      alertRule: $checkedConvert('alert_rule', (v) => (v as num).toInt()),
      channelType: $checkedConvert(
        'channel_type',
        (v) => $enumDecode(
          _$TelemetryAlertChannelRequestChannelTypeEnumEnumMap,
          v,
          unknownValue:
              TelemetryAlertChannelRequestChannelTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      destination: $checkedConvert('destination', (v) => v as String),
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

Map<String, dynamic> _$TelemetryAlertChannelRequestToJson(
  TelemetryAlertChannelRequest instance,
) => <String, dynamic>{
  'alert_rule': instance.alertRule,
  'channel_type':
      _$TelemetryAlertChannelRequestChannelTypeEnumEnumMap[instance
          .channelType]!,
  'destination': instance.destination,
  'is_active': ?instance.isActive,
  'template_override': ?instance.templateOverride,
};

const _$TelemetryAlertChannelRequestChannelTypeEnumEnumMap = {
  TelemetryAlertChannelRequestChannelTypeEnum.EMAIL: 'EMAIL',
  TelemetryAlertChannelRequestChannelTypeEnum.GOOGLE_CHAT: 'GOOGLE_CHAT',
  TelemetryAlertChannelRequestChannelTypeEnum.WEBHOOK: 'WEBHOOK',
  TelemetryAlertChannelRequestChannelTypeEnum.SMS: 'SMS',
  TelemetryAlertChannelRequestChannelTypeEnum.IN_APP: 'IN_APP',
  TelemetryAlertChannelRequestChannelTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
