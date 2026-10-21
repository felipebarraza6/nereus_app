// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_reading_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryReadingRequestCWProxy {
  TelemetryReadingRequest device(int device);

  TelemetryReadingRequest variable(int? variable);

  TelemetryReadingRequest readingAt(DateTime readingAt);

  TelemetryReadingRequest rawValue(double rawValue);

  TelemetryReadingRequest unit(String? unit);

  TelemetryReadingRequest isOnline(bool? isOnline);

  TelemetryReadingRequest minutesOffline(int? minutesOffline);

  TelemetryReadingRequest isError(bool? isError);

  TelemetryReadingRequest errorMessage(String? errorMessage);

  TelemetryReadingRequest isValidated(bool? isValidated);

  TelemetryReadingRequest sendDga(bool? sendDga);

  TelemetryReadingRequest dgaSentAt(DateTime? dgaSentAt);

  TelemetryReadingRequest dgaResponse(String? dgaResponse);

  TelemetryReadingRequest dgaVoucher(String? dgaVoucher);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryReadingRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryReadingRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryReadingRequest call({
    int device,
    int? variable,
    DateTime readingAt,
    double rawValue,
    String? unit,
    bool? isOnline,
    int? minutesOffline,
    bool? isError,
    String? errorMessage,
    bool? isValidated,
    bool? sendDga,
    DateTime? dgaSentAt,
    String? dgaResponse,
    String? dgaVoucher,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryReadingRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryReadingRequest.copyWith.fieldName(...)`
class _$TelemetryReadingRequestCWProxyImpl
    implements _$TelemetryReadingRequestCWProxy {
  const _$TelemetryReadingRequestCWProxyImpl(this._value);

  final TelemetryReadingRequest _value;

  @override
  TelemetryReadingRequest device(int device) => this(device: device);

  @override
  TelemetryReadingRequest variable(int? variable) => this(variable: variable);

  @override
  TelemetryReadingRequest readingAt(DateTime readingAt) =>
      this(readingAt: readingAt);

  @override
  TelemetryReadingRequest rawValue(double rawValue) => this(rawValue: rawValue);

  @override
  TelemetryReadingRequest unit(String? unit) => this(unit: unit);

  @override
  TelemetryReadingRequest isOnline(bool? isOnline) => this(isOnline: isOnline);

  @override
  TelemetryReadingRequest minutesOffline(int? minutesOffline) =>
      this(minutesOffline: minutesOffline);

  @override
  TelemetryReadingRequest isError(bool? isError) => this(isError: isError);

  @override
  TelemetryReadingRequest errorMessage(String? errorMessage) =>
      this(errorMessage: errorMessage);

  @override
  TelemetryReadingRequest isValidated(bool? isValidated) =>
      this(isValidated: isValidated);

  @override
  TelemetryReadingRequest sendDga(bool? sendDga) => this(sendDga: sendDga);

  @override
  TelemetryReadingRequest dgaSentAt(DateTime? dgaSentAt) =>
      this(dgaSentAt: dgaSentAt);

  @override
  TelemetryReadingRequest dgaResponse(String? dgaResponse) =>
      this(dgaResponse: dgaResponse);

  @override
  TelemetryReadingRequest dgaVoucher(String? dgaVoucher) =>
      this(dgaVoucher: dgaVoucher);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryReadingRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryReadingRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryReadingRequest call({
    Object? device = const $CopyWithPlaceholder(),
    Object? variable = const $CopyWithPlaceholder(),
    Object? readingAt = const $CopyWithPlaceholder(),
    Object? rawValue = const $CopyWithPlaceholder(),
    Object? unit = const $CopyWithPlaceholder(),
    Object? isOnline = const $CopyWithPlaceholder(),
    Object? minutesOffline = const $CopyWithPlaceholder(),
    Object? isError = const $CopyWithPlaceholder(),
    Object? errorMessage = const $CopyWithPlaceholder(),
    Object? isValidated = const $CopyWithPlaceholder(),
    Object? sendDga = const $CopyWithPlaceholder(),
    Object? dgaSentAt = const $CopyWithPlaceholder(),
    Object? dgaResponse = const $CopyWithPlaceholder(),
    Object? dgaVoucher = const $CopyWithPlaceholder(),
  }) {
    return TelemetryReadingRequest(
      device: device == const $CopyWithPlaceholder()
          ? _value.device
          // ignore: cast_nullable_to_non_nullable
          : device as int,
      variable: variable == const $CopyWithPlaceholder()
          ? _value.variable
          // ignore: cast_nullable_to_non_nullable
          : variable as int?,
      readingAt: readingAt == const $CopyWithPlaceholder()
          ? _value.readingAt
          // ignore: cast_nullable_to_non_nullable
          : readingAt as DateTime,
      rawValue: rawValue == const $CopyWithPlaceholder()
          ? _value.rawValue
          // ignore: cast_nullable_to_non_nullable
          : rawValue as double,
      unit: unit == const $CopyWithPlaceholder()
          ? _value.unit
          // ignore: cast_nullable_to_non_nullable
          : unit as String?,
      isOnline: isOnline == const $CopyWithPlaceholder()
          ? _value.isOnline
          // ignore: cast_nullable_to_non_nullable
          : isOnline as bool?,
      minutesOffline: minutesOffline == const $CopyWithPlaceholder()
          ? _value.minutesOffline
          // ignore: cast_nullable_to_non_nullable
          : minutesOffline as int?,
      isError: isError == const $CopyWithPlaceholder()
          ? _value.isError
          // ignore: cast_nullable_to_non_nullable
          : isError as bool?,
      errorMessage: errorMessage == const $CopyWithPlaceholder()
          ? _value.errorMessage
          // ignore: cast_nullable_to_non_nullable
          : errorMessage as String?,
      isValidated: isValidated == const $CopyWithPlaceholder()
          ? _value.isValidated
          // ignore: cast_nullable_to_non_nullable
          : isValidated as bool?,
      sendDga: sendDga == const $CopyWithPlaceholder()
          ? _value.sendDga
          // ignore: cast_nullable_to_non_nullable
          : sendDga as bool?,
      dgaSentAt: dgaSentAt == const $CopyWithPlaceholder()
          ? _value.dgaSentAt
          // ignore: cast_nullable_to_non_nullable
          : dgaSentAt as DateTime?,
      dgaResponse: dgaResponse == const $CopyWithPlaceholder()
          ? _value.dgaResponse
          // ignore: cast_nullable_to_non_nullable
          : dgaResponse as String?,
      dgaVoucher: dgaVoucher == const $CopyWithPlaceholder()
          ? _value.dgaVoucher
          // ignore: cast_nullable_to_non_nullable
          : dgaVoucher as String?,
    );
  }
}

extension $TelemetryReadingRequestCopyWith on TelemetryReadingRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryReadingRequest.copyWith(...)` or like so:`instanceOfTelemetryReadingRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryReadingRequestCWProxy get copyWith =>
      _$TelemetryReadingRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryReadingRequest _$TelemetryReadingRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryReadingRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['device', 'reading_at', 'raw_value']);
    final val = TelemetryReadingRequest(
      device: $checkedConvert('device', (v) => (v as num).toInt()),
      variable: $checkedConvert('variable', (v) => (v as num?)?.toInt()),
      readingAt: $checkedConvert(
        'reading_at',
        (v) => DateTime.parse(v as String),
      ),
      rawValue: $checkedConvert('raw_value', (v) => (v as num).toDouble()),
      unit: $checkedConvert('unit', (v) => v as String?),
      isOnline: $checkedConvert('is_online', (v) => v as bool?),
      minutesOffline: $checkedConvert(
        'minutes_offline',
        (v) => (v as num?)?.toInt(),
      ),
      isError: $checkedConvert('is_error', (v) => v as bool?),
      errorMessage: $checkedConvert('error_message', (v) => v as String?),
      isValidated: $checkedConvert('is_validated', (v) => v as bool?),
      sendDga: $checkedConvert('send_dga', (v) => v as bool?),
      dgaSentAt: $checkedConvert(
        'dga_sent_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      dgaResponse: $checkedConvert('dga_response', (v) => v as String?),
      dgaVoucher: $checkedConvert('dga_voucher', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'readingAt': 'reading_at',
    'rawValue': 'raw_value',
    'isOnline': 'is_online',
    'minutesOffline': 'minutes_offline',
    'isError': 'is_error',
    'errorMessage': 'error_message',
    'isValidated': 'is_validated',
    'sendDga': 'send_dga',
    'dgaSentAt': 'dga_sent_at',
    'dgaResponse': 'dga_response',
    'dgaVoucher': 'dga_voucher',
  },
);

Map<String, dynamic> _$TelemetryReadingRequestToJson(
  TelemetryReadingRequest instance,
) => <String, dynamic>{
  'device': instance.device,
  'variable': ?instance.variable,
  'reading_at': instance.readingAt.toIso8601String(),
  'raw_value': instance.rawValue,
  'unit': ?instance.unit,
  'is_online': ?instance.isOnline,
  'minutes_offline': ?instance.minutesOffline,
  'is_error': ?instance.isError,
  'error_message': ?instance.errorMessage,
  'is_validated': ?instance.isValidated,
  'send_dga': ?instance.sendDga,
  'dga_sent_at': ?instance.dgaSentAt?.toIso8601String(),
  'dga_response': ?instance.dgaResponse,
  'dga_voucher': ?instance.dgaVoucher,
};
