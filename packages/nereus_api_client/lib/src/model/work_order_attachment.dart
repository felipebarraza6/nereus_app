//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'work_order_attachment.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WorkOrderAttachment {
  /// Returns a new [WorkOrderAttachment] instance.
  WorkOrderAttachment({

    required  this.id,

    required  this.workOrder,

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
    
    name: r'work_order',
    required: true,
    includeIfNull: false,
  )


  final String workOrder;



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
    bool operator ==(Object other) => identical(this, other) || other is WorkOrderAttachment &&
      other.id == id &&
      other.workOrder == workOrder &&
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
        workOrder.hashCode +
        file.hashCode +
        fileUrl.hashCode +
        description.hashCode +
        (uploadedBy == null ? 0 : uploadedBy.hashCode) +
        uploadedByName.hashCode +
        created.hashCode +
        modified.hashCode;

  factory WorkOrderAttachment.fromJson(Map<String, dynamic> json) => _$WorkOrderAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$WorkOrderAttachmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

