//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_telemetry_reading_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTelemetryReadingRequest {
  /// Returns a new [PatchedTelemetryReadingRequest] instance.
  PatchedTelemetryReadingRequest({

     this.device,

     this.variable,

     this.readingAt,

     this.rawValue,

     this.unit,

     this.isOnline,

     this.minutesOffline,

     this.isError,

     this.errorMessage,

     this.isValidated,

     this.sendDga,

     this.dgaSentAt,

     this.dgaResponse,

     this.dgaVoucher,
  });

  @JsonKey(
    
    name: r'device',
    required: false,
    includeIfNull: false,
  )


  final int? device;



  @JsonKey(
    
    name: r'variable',
    required: false,
    includeIfNull: false,
  )


  final int? variable;



      /// Timestamp cuando se tomo la medicion
  @JsonKey(
    
    name: r'reading_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? readingAt;



      /// Valor recibido del dispositivo sin procesar
          // minimum: -100000000000000
          // maximum: 100000000000000
  @JsonKey(
    
    name: r'raw_value',
    required: false,
    includeIfNull: false,
  )


  final double? rawValue;



  @JsonKey(
    
    name: r'unit',
    required: false,
    includeIfNull: false,
  )


  final String? unit;



  @JsonKey(
    
    name: r'is_online',
    required: false,
    includeIfNull: false,
  )


  final bool? isOnline;



          // minimum: -2147483648
          // maximum: 2147483647
  @JsonKey(
    
    name: r'minutes_offline',
    required: false,
    includeIfNull: false,
  )


  final int? minutesOffline;



  @JsonKey(
    
    name: r'is_error',
    required: false,
    includeIfNull: false,
  )


  final bool? isError;



  @JsonKey(
    
    name: r'error_message',
    required: false,
    includeIfNull: false,
  )


  final String? errorMessage;



  @JsonKey(
    
    name: r'is_validated',
    required: false,
    includeIfNull: false,
  )


  final bool? isValidated;



  @JsonKey(
    
    name: r'send_dga',
    required: false,
    includeIfNull: false,
  )


  final bool? sendDga;



  @JsonKey(
    
    name: r'dga_sent_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dgaSentAt;



  @JsonKey(
    
    name: r'dga_response',
    required: false,
    includeIfNull: false,
  )


  final String? dgaResponse;



  @JsonKey(
    
    name: r'dga_voucher',
    required: false,
    includeIfNull: false,
  )


  final String? dgaVoucher;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedTelemetryReadingRequest &&
      other.device == device &&
      other.variable == variable &&
      other.readingAt == readingAt &&
      other.rawValue == rawValue &&
      other.unit == unit &&
      other.isOnline == isOnline &&
      other.minutesOffline == minutesOffline &&
      other.isError == isError &&
      other.errorMessage == errorMessage &&
      other.isValidated == isValidated &&
      other.sendDga == sendDga &&
      other.dgaSentAt == dgaSentAt &&
      other.dgaResponse == dgaResponse &&
      other.dgaVoucher == dgaVoucher;

    @override
    int get hashCode =>
        device.hashCode +
        (variable == null ? 0 : variable.hashCode) +
        readingAt.hashCode +
        rawValue.hashCode +
        unit.hashCode +
        isOnline.hashCode +
        minutesOffline.hashCode +
        isError.hashCode +
        (errorMessage == null ? 0 : errorMessage.hashCode) +
        isValidated.hashCode +
        sendDga.hashCode +
        (dgaSentAt == null ? 0 : dgaSentAt.hashCode) +
        (dgaResponse == null ? 0 : dgaResponse.hashCode) +
        (dgaVoucher == null ? 0 : dgaVoucher.hashCode);

  factory PatchedTelemetryReadingRequest.fromJson(Map<String, dynamic> json) => _$PatchedTelemetryReadingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTelemetryReadingRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

