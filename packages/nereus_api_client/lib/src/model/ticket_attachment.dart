//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_attachment.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketAttachment {
  /// Returns a new [TicketAttachment] instance.
  TicketAttachment({

    required  this.id,

    required  this.ticket,

    required  this.file,

    required  this.fileUrl,

     this.description,

     this.uploadedBy,

    required  this.uploadedByName,

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
    
    name: r'file',
    required: true,
    includeIfNull: false,
  )


  final String file;



  @JsonKey(
    
    name: r'file_url',
    required: true,
    includeIfNull: false,
  )


  final String fileUrl;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



  @JsonKey(
    
    name: r'uploaded_by',
    required: false,
    includeIfNull: false,
  )


  final int? uploadedBy;



  @JsonKey(
    
    name: r'uploaded_by_name',
    required: true,
    includeIfNull: false,
  )


  final String uploadedByName;



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
    bool operator ==(Object other) => identical(this, other) || other is TicketAttachment &&
      other.id == id &&
      other.ticket == ticket &&
      other.file == file &&
      other.fileUrl == fileUrl &&
      other.description == description &&
      other.uploadedBy == uploadedBy &&
      other.uploadedByName == uploadedByName &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        ticket.hashCode +
        file.hashCode +
        fileUrl.hashCode +
        description.hashCode +
        (uploadedBy == null ? 0 : uploadedBy.hashCode) +
        uploadedByName.hashCode +
        created.hashCode +
        modified.hashCode;

  factory TicketAttachment.fromJson(Map<String, dynamic> json) => _$TicketAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$TicketAttachmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

