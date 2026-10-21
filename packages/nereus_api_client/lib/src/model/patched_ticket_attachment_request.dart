//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dio/dio.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_ticket_attachment_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedTicketAttachmentRequest {
  /// Returns a new [PatchedTicketAttachmentRequest] instance.
  PatchedTicketAttachmentRequest({

     this.ticket,

     this.file,

     this.description,

     this.uploadedBy,
  });

  @JsonKey(
    
    name: r'ticket',
    required: false,
    includeIfNull: false,
  )


  final String? ticket;



  @JsonKey(ignore: true)


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
    bool operator ==(Object other) => identical(this, other) || other is PatchedTicketAttachmentRequest &&
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

  factory PatchedTicketAttachmentRequest.fromJson(Map<String, dynamic> json) => _$PatchedTicketAttachmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedTicketAttachmentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

