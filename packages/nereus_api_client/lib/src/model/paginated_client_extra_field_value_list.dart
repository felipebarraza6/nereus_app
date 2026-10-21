//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:nereus_api_client/src/model/client_extra_field_value.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paginated_client_extra_field_value_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaginatedClientExtraFieldValueList {
  /// Returns a new [PaginatedClientExtraFieldValueList] instance.
  PaginatedClientExtraFieldValueList({

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


  final List<ClientExtraFieldValue> results;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaginatedClientExtraFieldValueList &&
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

  factory PaginatedClientExtraFieldValueList.fromJson(Map<String, dynamic> json) => _$PaginatedClientExtraFieldValueListFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedClientExtraFieldValueListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

