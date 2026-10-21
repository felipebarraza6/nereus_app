// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_alert_channel.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryAlertChannelCWProxy {
  TelemetryAlertChannel id(int id);

  TelemetryAlertChannel alertRule(int alertRule);

  TelemetryAlertChannel channelType(
    TelemetryAlertChannelChannelTypeEnum channelType,
  );

  TelemetryAlertChannel destination(String destination);

  TelemetryAlertChannel isActive(bool? isActive);

  TelemetryAlertChannel templateOverride(String? templateOverride);

  TelemetryAlertChannel created(DateTime created);

  TelemetryAlertChannel modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryAlertChannel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryAlertChannel(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryAlertChannel call({
    int id,
    int alertRule,
    TelemetryAlertChannelChannelTypeEnum channelType,
    String destination,
    bool? isActive,
    String? templateOverride,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryAlertChannel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryAlertChannel.copyWith.fieldName(...)`
class _$TelemetryAlertChannelCWProxyImpl
    implements _$TelemetryAlertChannelCWProxy {
  const _$TelemetryAlertChannelCWProxyImpl(this._value);

  final TelemetryAlertChannel _value;

  @override
  TelemetryAlertChannel id(int id) => this(id: id);

  @override
  TelemetryAlertChannel alertRule(int alertRule) => this(alertRule: alertRule);

  @override
  TelemetryAlertChannel channelType(
    TelemetryAlertChannelChannelTypeEnum channelType,
  ) => this(channelType: channelType);

  @override
  TelemetryAlertChannel destination(String destination) =>
      this(destination: destination);

  @override
  TelemetryAlertChannel isActive(bool? isActive) => this(isActive: isActive);

  @override
  TelemetryAlertChannel templateOverride(String? templateOverride) =>
      this(templateOverride: templateOverride);

  @override
  TelemetryAlertChannel created(DateTime created) => this(created: created);

  @override
  TelemetryAlertChannel modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryAlertChannel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryAlertChannel(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryAlertChannel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? alertRule = const $CopyWithPlaceholder(),
    Object? channelType = const $CopyWithPlaceholder(),
    Object? destination = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? templateOverride = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TelemetryAlertChannel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      alertRule: alertRule == const $CopyWithPlaceholder()
          ? _value.alertRule
          // ignore: cast_nullable_to_non_nullable
          : alertRule as int,
      channelType: channelType == const $CopyWithPlaceholder()
          ? _value.channelType
          // ignore: cast_nullable_to_non_nullable
          : channelType as TelemetryAlertChannelChannelTypeEnum,
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
      created: created == const $CopyWithPlaceholder()
          ? _value.created
          // ignore: cast_nullable_to_non_nullable
          : created as DateTime,
      modified: modified == const $CopyWithPlaceholder()
          ? _value.modified
          // ignore: cast_nullable_to_non_nullable
          : modified as DateTime,
    );
  }
}

extension $TelemetryAlertChannelCopyWith on TelemetryAlertChannel {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryAlertChannel.copyWith(...)` or like so:`instanceOfTelemetryAlertChannel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryAlertChannelCWProxy get copyWith =>
      _$TelemetryAlertChannelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryAlertChannel _$TelemetryAlertChannelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryAlertChannel',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'alert_rule',
        'channel_type',
        'destination',
        'created',
        'modified',
      ],
    );
    final val = TelemetryAlertChannel(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      alertRule: $checkedConvert('alert_rule', (v) => (v as num).toInt()),
      channelType: $checkedConvert(
        'channel_type',
        (v) => $enumDecode(
          _$TelemetryAlertChannelChannelTypeEnumEnumMap,
          v,
          unknownValue:
              TelemetryAlertChannelChannelTypeEnum.unknownDefaultOpenApi,
        ),
      ),
      destination: $checkedConvert('destination', (v) => v as String),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      templateOverride: $checkedConvert(
        'template_override',
        (v) => v as String?,
      ),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
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

Map<String, dynamic> _$TelemetryAlertChannelToJson(
  TelemetryAlertChannel instance,
) => <String, dynamic>{
  'id': instance.id,
  'alert_rule': instance.alertRule,
  'channel_type':
      _$TelemetryAlertChannelChannelTypeEnumEnumMap[instance.channelType]!,
  'destination': instance.destination,
  'is_active': ?instance.isActive,
  'template_override': ?instance.templateOverride,
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};

const _$TelemetryAlertChannelChannelTypeEnumEnumMap = {
  TelemetryAlertChannelChannelTypeEnum.EMAIL: 'EMAIL',
  TelemetryAlertChannelChannelTypeEnum.GOOGLE_CHAT: 'GOOGLE_CHAT',
  TelemetryAlertChannelChannelTypeEnum.WEBHOOK: 'WEBHOOK',
  TelemetryAlertChannelChannelTypeEnum.SMS: 'SMS',
  TelemetryAlertChannelChannelTypeEnum.IN_APP: 'IN_APP',
  TelemetryAlertChannelChannelTypeEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
