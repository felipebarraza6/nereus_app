//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_comment_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketCommentRequest {
  /// Returns a new [TicketCommentRequest] instance.
  TicketCommentRequest({

    required  this.ticket,

     this.author,

    required  this.content,

     this.visibility,

     this.isResolution,
  });

  @JsonKey(
    
    name: r'ticket',
    required: true,
    includeIfNull: false,
  )


  final String ticket;



  @JsonKey(
    
    name: r'author',
    required: false,
    includeIfNull: false,
  )


  final int? author;



  @JsonKey(
    
    name: r'content',
    required: true,
    includeIfNull: false,
  )


  final String content;



      /// * `INTERNAL` - Interno * `PUBLIC` - Público (cliente)
  @JsonKey(
    
    name: r'visibility',
    required: false,
    includeIfNull: false,
  unknownEnumValue: TicketCommentRequestVisibilityEnum.unknownDefaultOpenApi,
  )


  final TicketCommentRequestVisibilityEnum? visibility;



      /// Marca si este comentario resuelve el ticket
  @JsonKey(
    
    name: r'is_resolution',
    required: false,
    includeIfNull: false,
  )


  final bool? isResolution;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TicketCommentRequest &&
      other.ticket == ticket &&
      other.author == author &&
      other.content == content &&
      other.visibility == visibility &&
      other.isResolution == isResolution;

    @override
    int get hashCode =>
        ticket.hashCode +
        (author == null ? 0 : author.hashCode) +
        content.hashCode +
        visibility.hashCode +
        isResolution.hashCode;

  factory TicketCommentRequest.fromJson(Map<String, dynamic> json) => _$TicketCommentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TicketCommentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `INTERNAL` - Interno * `PUBLIC` - Público (cliente)
enum TicketCommentRequestVisibilityEnum {
@JsonValue(r'INTERNAL')
INTERNAL(r'INTERNAL'),
@JsonValue(r'PUBLIC')
PUBLIC(r'PUBLIC'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TicketCommentRequestVisibilityEnum(this.value);

final String value;

@override
String toString() => value;
}


