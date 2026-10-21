//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_submit_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketSubmitRequest {
  /// Returns a new [TicketSubmitRequest] instance.
  TicketSubmitRequest({

    required  this.subject,

    required  this.description,

     this.categoryCode,

     this.category,

     this.priority = TicketSubmitRequestPriorityEnum.MEDIUM,
  });

  @JsonKey(
    
    name: r'subject',
    required: true,
    includeIfNull: false,
  )


  final String subject;



  @JsonKey(
    
    name: r'description',
    required: true,
    includeIfNull: false,
  )


  final String description;



      /// duda | incidencia | reclamo | feedback | manual
  @JsonKey(
    
    name: r'category_code',
    required: false,
    includeIfNull: false,
  )


  final String? categoryCode;



  @JsonKey(
    
    name: r'category',
    required: false,
    includeIfNull: false,
  )


  final String? category;



      /// * `LOW` - LOW * `MEDIUM` - MEDIUM * `HIGH` - HIGH * `CRITICAL` - CRITICAL
  @JsonKey(
    defaultValue: 'MEDIUM',
    name: r'priority',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TicketSubmitRequestPriorityEnum.unknownDefaultOpenApi,
  )


  final TicketSubmitRequestPriorityEnum? priority;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TicketSubmitRequest &&
      other.subject == subject &&
      other.description == description &&
      other.categoryCode == categoryCode &&
      other.category == category &&
      other.priority == priority;

    @override
    int get hashCode =>
        subject.hashCode +
        description.hashCode +
        categoryCode.hashCode +
        (category == null ? 0 : category.hashCode) +
        priority.hashCode;

  factory TicketSubmitRequest.fromJson(Map<String, dynamic> json) => _$TicketSubmitRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TicketSubmitRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `LOW` - LOW * `MEDIUM` - MEDIUM * `HIGH` - HIGH * `CRITICAL` - CRITICAL
enum TicketSubmitRequestPriorityEnum {
@JsonValue(r'LOW')
LOW(r'LOW'),
@JsonValue(r'MEDIUM')
MEDIUM(r'MEDIUM'),
@JsonValue(r'HIGH')
HIGH(r'HIGH'),
@JsonValue(r'CRITICAL')
CRITICAL(r'CRITICAL'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TicketSubmitRequestPriorityEnum(this.value);

final String value;

@override
String toString() => value;
}


