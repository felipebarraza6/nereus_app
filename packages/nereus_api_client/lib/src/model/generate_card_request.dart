//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generate_card_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GenerateCardRequest {
  /// Returns a new [GenerateCardRequest] instance.
  GenerateCardRequest({

    required  this.clientId,

     this.templateId,

     this.saveToDms = false,
  });

  @JsonKey(
    
    name: r'client_id',
    required: true,
    includeIfNull: false,
  )


  final String clientId;



  @JsonKey(
    
    name: r'template_id',
    required: false,
    includeIfNull: false,
  )


  final String? templateId;



  @JsonKey(
    defaultValue: false,
    name: r'save_to_dms',
    required: false,
    includeIfNull: false,
  )


  final bool? saveToDms;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GenerateCardRequest &&
      other.clientId == clientId &&
      other.templateId == templateId &&
      other.saveToDms == saveToDms;

    @override
    int get hashCode =>
        clientId.hashCode +
        (templateId == null ? 0 : templateId.hashCode) +
        saveToDms.hashCode;

  factory GenerateCardRequest.fromJson(Map<String, dynamic> json) => _$GenerateCardRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateCardRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

