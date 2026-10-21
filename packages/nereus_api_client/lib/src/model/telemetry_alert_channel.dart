//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'telemetry_alert_channel.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TelemetryAlertChannel {
  /// Returns a new [TelemetryAlertChannel] instance.
  TelemetryAlertChannel({

    required  this.id,

    required  this.alertRule,

    required  this.channelType,

    required  this.destination,

     this.isActive,

     this.templateOverride,

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
    
    name: r'alert_rule',
    required: true,
    includeIfNull: false,
  )


  final int alertRule;



      /// * `EMAIL` - Email * `GOOGLE_CHAT` - Google Chat * `WEBHOOK` - Webhook * `SMS` - SMS * `IN_APP` - Notificacion en app
  @JsonKey(
    
    name: r'channel_type',
    required: true,
    includeIfNull: false,
  unknownEnumValue: TelemetryAlertChannelChannelTypeEnum.unknownDefaultOpenApi,
  )


  final TelemetryAlertChannelChannelTypeEnum channelType;



      /// Email, URL de webhook, o numero de telefono
  @JsonKey(
    
    name: r'destination',
    required: true,
    includeIfNull: false,
  )


  final String destination;



  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



      /// Si se deja vacio, se usa la plantilla por defecto
  @JsonKey(
    
    name: r'template_override',
    required: false,
    includeIfNull: false,
  )


  final String? templateOverride;



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
    bool operator ==(Object other) => identical(this, other) || other is TelemetryAlertChannel &&
      other.id == id &&
      other.alertRule == alertRule &&
      other.channelType == channelType &&
      other.destination == destination &&
      other.isActive == isActive &&
      other.templateOverride == templateOverride &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        alertRule.hashCode +
        channelType.hashCode +
        destination.hashCode +
        isActive.hashCode +
        (templateOverride == null ? 0 : templateOverride.hashCode) +
        created.hashCode +
        modified.hashCode;

  factory TelemetryAlertChannel.fromJson(Map<String, dynamic> json) => _$TelemetryAlertChannelFromJson(json);

  Map<String, dynamic> toJson() => _$TelemetryAlertChannelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `EMAIL` - Email * `GOOGLE_CHAT` - Google Chat * `WEBHOOK` - Webhook * `SMS` - SMS * `IN_APP` - Notificacion en app
enum TelemetryAlertChannelChannelTypeEnum {
@JsonValue(r'EMAIL')
EMAIL(r'EMAIL'),
@JsonValue(r'GOOGLE_CHAT')
GOOGLE_CHAT(r'GOOGLE_CHAT'),
@JsonValue(r'WEBHOOK')
WEBHOOK(r'WEBHOOK'),
@JsonValue(r'SMS')
SMS(r'SMS'),
@JsonValue(r'IN_APP')
IN_APP(r'IN_APP'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TelemetryAlertChannelChannelTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


