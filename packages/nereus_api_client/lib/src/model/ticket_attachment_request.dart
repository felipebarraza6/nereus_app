//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dio/dio.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ticket_attachment_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketAttachmentRequest {
  /// Returns a new [TicketAttachmentRequest] instance.
  TicketAttachmentRequest({

    required  this.ticket,

     this.file,

     this.description,

     this.uploadedBy,
  });

  @JsonKey(
    
    name: r'ticket',
    required: true,
    includeIfNull: false,
  )


  final String ticket;



  @JsonKey(includeFromJson: false, includeToJson: false)


  final MultipartFile? file;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is TicketAttachmentRequest &&
      other.ticket == ticket &&
      other.file == file &&
      other.description == description &&
      other.uploadedBy == uploadedBy;

    @override
    int get hashCode =>
        ticket.hashCode +
        file.hashCode +
        description.hashCode +
        (uploadedBy == null ? 0 : uploadedBy.hashCode);

  factory TicketAttachmentRequest.fromJson(Map<String, dynamic> json) => _$TicketAttachmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TicketAttachmentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

