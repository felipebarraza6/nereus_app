//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_telemetry_alert_channel_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTelemetryAlertChannelRequest {
  /// Returns a new [PatchedTelemetryAlertChannelRequest] instance.
  PatchedTelemetryAlertChannelRequest({

     this.alertRule,

     this.channelType,

     this.destination,

     this.isActive,

     this.templateOverride,
  });

  @JsonKey(
    
    name: r'alert_rule',
    required: false,
    includeIfNull: false,
  )


  final int? alertRule;



      /// * `EMAIL` - Email * `GOOGLE_CHAT` - Google Chat * `WEBHOOK` - Webhook * `SMS` - SMS * `IN_APP` - Notificacion en app
  @JsonKey(
    
    name: r'channel_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedTelemetryAlertChannelRequestChannelTypeEnum.unknownDefaultOpenApi,
  )


  final PatchedTelemetryAlertChannelRequestChannelTypeEnum? channelType;



      /// Email, URL de webhook, o numero de telefono
  @JsonKey(
    
    name: r'destination',
    required: false,
    includeIfNull: false,
  )


  final String? destination;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedTelemetryAlertChannelRequest &&
      other.alertRule == alertRule &&
      other.channelType == channelType &&
      other.destination == destination &&
      other.isActive == isActive &&
      other.templateOverride == templateOverride;

    @override
    int get hashCode =>
        alertRule.hashCode +
        channelType.hashCode +
        destination.hashCode +
        isActive.hashCode +
        (templateOverride == null ? 0 : templateOverride.hashCode);

  factory PatchedTelemetryAlertChannelRequest.fromJson(Map<String, dynamic> json) => _$PatchedTelemetryAlertChannelRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTelemetryAlertChannelRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `EMAIL` - Email * `GOOGLE_CHAT` - Google Chat * `WEBHOOK` - Webhook * `SMS` - SMS * `IN_APP` - Notificacion en app
enum PatchedTelemetryAlertChannelRequestChannelTypeEnum {
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

const PatchedTelemetryAlertChannelRequestChannelTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


