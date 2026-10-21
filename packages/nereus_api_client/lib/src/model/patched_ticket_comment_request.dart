//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_ticket_comment_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTicketCommentRequest {
  /// Returns a new [PatchedTicketCommentRequest] instance.
  PatchedTicketCommentRequest({

     this.ticket,

     this.author,

     this.content,

     this.visibility,

     this.isResolution,
  });

  @JsonKey(
    
    name: r'ticket',
    required: false,
    includeIfNull: false,
  )


  final String? ticket;



  @JsonKey(
    
    name: r'author',
    required: false,
    includeIfNull: false,
  )


  final int? author;



  @JsonKey(
    
    name: r'content',
    required: false,
    includeIfNull: false,
  )


  final String? content;



      /// * `INTERNAL` - Interno * `PUBLIC` - Público (cliente)
  @JsonKey(
    
    name: r'visibility',
    required: false,
    includeIfNull: false,
  unknownEnumValue: PatchedTicketCommentRequestVisibilityEnum.unknownDefaultOpenApi,
  )


  final PatchedTicketCommentRequestVisibilityEnum? visibility;



      /// Marca si este comentario resuelve el ticket
  @JsonKey(
    
    name: r'is_resolution',
    required: false,
    includeIfNull: false,
  )


  final bool? isResolution;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PatchedTicketCommentRequest &&
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

  factory PatchedTicketCommentRequest.fromJson(Map<String, dynamic> json) => _$PatchedTicketCommentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTicketCommentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `INTERNAL` - Interno * `PUBLIC` - Público (cliente)
enum PatchedTicketCommentRequestVisibilityEnum {
@JsonValue(r'INTERNAL')
INTERNAL(r'INTERNAL'),
@JsonValue(r'PUBLIC')
PUBLIC(r'PUBLIC'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const PatchedTicketCommentRequestVisibilityEnum(this.value);

final String value;

@override
String toString() => value;
}


