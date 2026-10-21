//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dio/dio.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_work_order_attachment_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchedWorkOrderAttachmentRequest {
  /// Returns a new [PatchedWorkOrderAttachmentRequest] instance.
  PatchedWorkOrderAttachmentRequest({

     this.workOrder,

     this.file,

     this.description,

     this.uploadedBy,
  });

  @JsonKey(
    
    name: r'work_order',
    required: false,
    includeIfNull: false,
  )


  final String? workOrder;



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
    bool operator ==(Object other) => identical(this, other) || other is PatchedWorkOrderAttachmentRequest &&
      other.workOrder == workOrder &&
      other.file == file &&
      other.description == description &&
      other.uploadedBy == uploadedBy;

    @override
    int get hashCode =>
        workOrder.hashCode +
        file.hashCode +
        description.hashCode +
        (uploadedBy == null ? 0 : uploadedBy.hashCode);

  factory PatchedWorkOrderAttachmentRequest.fromJson(Map<String, dynamic> json) => _$PatchedWorkOrderAttachmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedWorkOrderAttachmentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

