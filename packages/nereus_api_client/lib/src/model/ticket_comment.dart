//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_comment.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketComment {
  /// Returns a new [TicketComment] instance.
  TicketComment({

    required  this.id,

    required  this.ticket,

     this.author,

    required  this.authorName,

    required  this.content,

     this.visibility,

     this.isResolution,

    required  this.created,

    required  this.modified,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



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
    
    name: r'author_name',
    required: true,
    includeIfNull: false,
  )


  final String authorName;



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
  unknownEnumValue: TicketCommentVisibilityEnum.unknownDefaultOpenApi,
  )


  final TicketCommentVisibilityEnum? visibility;



      /// Marca si este comentario resuelve el ticket
  @JsonKey(
    
    name: r'is_resolution',
    required: false,
    includeIfNull: false,
  )


  final bool? isResolution;



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
    bool operator ==(Object other) => identical(this, other) || other is TicketComment &&
      other.id == id &&
      other.ticket == ticket &&
      other.author == author &&
      other.authorName == authorName &&
      other.content == content &&
      other.visibility == visibility &&
      other.isResolution == isResolution &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        ticket.hashCode +
        (author == null ? 0 : author.hashCode) +
        authorName.hashCode +
        content.hashCode +
        visibility.hashCode +
        isResolution.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TicketComment.fromJson(Map<String, dynamic> json) => _$TicketCommentFromJson(json);

  Map<String, dynamic> toJson() => _$TicketCommentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `INTERNAL` - Interno * `PUBLIC` - Público (cliente)
enum TicketCommentVisibilityEnum {
@JsonValue(r'INTERNAL')
INTERNAL(r'INTERNAL'),
@JsonValue(r'PUBLIC')
PUBLIC(r'PUBLIC'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TicketCommentVisibilityEnum(this.value);

final String value;

@override
String toString() => value;
}


