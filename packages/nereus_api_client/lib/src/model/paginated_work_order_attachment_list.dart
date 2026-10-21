//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:nereus_api_client/src/model/work_order_attachment.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_work_order_attachment_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedWorkOrderAttachmentList {
  /// Returns a new [PaginatedWorkOrderAttachmentList] instance.
  PaginatedWorkOrderAttachmentList({

    required  this.count,

     this.next,

     this.previous,

    required  this.results,
  });

  @JsonKey(
    
    name: r'count',
    required: true,
    includeIfNull: false,
  )


  final int count;



  @JsonKey(
    
    name: r'next',
    required: false,
    includeIfNull: false,
  )


  final String? next;



  @JsonKey(
    
    name: r'previous',
    required: false,
    includeIfNull: false,
  )


  final String? previous;



  @JsonKey(
    
    name: r'results',
    required: true,
    includeIfNull: false,
  )


  final List<WorkOrderAttachment> results;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaginatedWorkOrderAttachmentList &&
      other.count == count &&
      other.next == next &&
      other.previous == previous &&
      other.results == results;

    @override
    int get hashCode =>
        count.hashCode +
        (next == null ? 0 : next.hashCode) +
        (previous == null ? 0 : previous.hashCode) +
        results.hashCode;

  factory PaginatedWorkOrderAttachmentList.fromJson(Map<String, dynamic> json) => _$PaginatedWorkOrderAttachmentListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedWorkOrderAttachmentListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

