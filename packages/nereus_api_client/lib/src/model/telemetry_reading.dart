//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_reading.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryReading {
  /// Returns a new [TelemetryReading] instance.
  TelemetryReading({

    required  this.id,

    required  this.device,

    required  this.deviceName,

     this.variable,

    required  this.variableName,

    required  this.readingAt,

    required  this.receivedAt,

    required  this.rawValue,

    required  this.processedValue,

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

    required  this.created,

    required  this.modified,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



  @JsonKey(
    
    name: r'device',
    required: true,
    includeIfNull: false,
  )


  final int device;



  @JsonKey(
    
    name: r'device_name',
    required: true,
    includeIfNull: false,
  )


  final String deviceName;



  @JsonKey(
    
    name: r'variable',
    required: false,
    includeIfNull: false,
  )


  final int? variable;



  @JsonKey(
    
    name: r'variable_name',
    required: true,
    includeIfNull: false,
  )


  final String variableName;



      /// Timestamp cuando se tomo la medicion
  @JsonKey(
    
    name: r'reading_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime readingAt;



  @JsonKey(
    
    name: r'received_at',
    required: true,
    includeIfNull: false,
  )


  final DateTime receivedAt;



      /// Valor recibido del dispositivo sin procesar
          // minimum: -100000000000000
          // maximum: 100000000000000
  @JsonKey(
    
    name: r'raw_value',
    required: true,
    includeIfNull: false,
  )


  final double rawValue;



      /// Valor despues de aplicar conversiones
          // minimum: -100000000000000
          // maximum: 100000000000000
  @JsonKey(
    
    name: r'processed_value',
    required: true,
    includeIfNull: false,
  )


  final double processedValue;



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



      /// Fecha de creacion.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final DateTime created;



      /// Fecha de modificacion.
  @JsonKey(
    
    name: r'modified',
    required: true,
    includeIfNull: false,
  )


  final DateTime modified;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TelemetryReading &&
      other.id == id &&
      other.device == device &&
      other.deviceName == deviceName &&
      other.variable == variable &&
      other.variableName == variableName &&
      other.readingAt == readingAt &&
      other.receivedAt == receivedAt &&
      other.rawValue == rawValue &&
      other.processedValue == processedValue &&
      other.unit == unit &&
      other.isOnline == isOnline &&
      other.minutesOffline == minutesOffline &&
      other.isError == isError &&
      other.errorMessage == errorMessage &&
      other.isValidated == isValidated &&
      other.sendDga == sendDga &&
      other.dgaSentAt == dgaSentAt &&
      other.dgaResponse == dgaResponse &&
      other.dgaVoucher == dgaVoucher &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        device.hashCode +
        deviceName.hashCode +
        (variable == null ? 0 : variable.hashCode) +
        variableName.hashCode +
        readingAt.hashCode +
        receivedAt.hashCode +
        rawValue.hashCode +
        processedValue.hashCode +
        unit.hashCode +
        isOnline.hashCode +
        minutesOffline.hashCode +
        isError.hashCode +
        (errorMessage == null ? 0 : errorMessage.hashCode) +
        isValidated.hashCode +
        sendDga.hashCode +
        (dgaSentAt == null ? 0 : dgaSentAt.hashCode) +
        (dgaResponse == null ? 0 : dgaResponse.hashCode) +
        (dgaVoucher == null ? 0 : dgaVoucher.hashCode) +
        created.hashCode +
        modified.hashCode;

  factory TelemetryReading.fromJson(Map<String, dynamic> json) => _$TelemetryReadingFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryReadingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

