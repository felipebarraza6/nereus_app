//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dio/dio.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_card_list_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientCardListRequest {
  /// Returns a new [ClientCardListRequest] instance.
  ClientCardListRequest({

    required  this.client,

     this.template,

     this.file,

     this.fileSize,

     this.status,

     this.version,

     this.generatedBy,

     this.generatedAt,

     this.isActive,
  });

  @JsonKey(
    
    name: r'client',
    required: true,
    includeIfNull: false,
  )


  final int client;



  @JsonKey(
    
    name: r'template',
    required: false,
    includeIfNull: false,
  )


  final String? template;



  @JsonKey(ignore: true)


  final MultipartFile? file;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'file_size',
    required: false,
    includeIfNull: false,
  )


  final int? fileSize;



      /// * `DRAFT` - Borrador * `GENERATED` - Generado * `ARCHIVED` - Archivado
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientCardListRequestStatusEnum.unknownDefaultOpenApi,
  )


  final ClientCardListRequestStatusEnum? status;



          // minimum: 0
          // maximum: 2147483647
  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false,
  )


  final int? version;



  @JsonKey(
    
    name: r'generated_by',
    required: false,
    includeIfNull: false,
  )


  final int? generatedBy;



  @JsonKey(
    
    name: r'generated_at',
    required: false,
    includeIfNull: false,
  )


  final DateTime? generatedAt;



      /// Indica si el registro está activo. Use esto en lugar de eliminar.
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ClientCardListRequest &&
      other.client == client &&
      other.template == template &&
      other.file == file &&
      other.fileSize == fileSize &&
      other.status == status &&
      other.version == version &&
      other.generatedBy == generatedBy &&
      other.generatedAt == generatedAt &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        client.hashCode +
        (template == null ? 0 : template.hashCode) +
        (file == null ? 0 : file.hashCode) +
        (fileSize == null ? 0 : fileSize.hashCode) +
        status.hashCode +
        version.hashCode +
        (generatedBy == null ? 0 : generatedBy.hashCode) +
        (generatedAt == null ? 0 : generatedAt.hashCode) +
        isActive.hashCode;

  factory ClientCardListRequest.fromJson(Map<String, dynamic> json) => _$ClientCardListRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ClientCardListRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `DRAFT` - Borrador * `GENERATED` - Generado * `ARCHIVED` - Archivado
enum ClientCardListRequestStatusEnum {
@JsonValue(r'DRAFT')
DRAFT(r'DRAFT'),
@JsonValue(r'GENERATED')
GENERATED(r'GENERATED'),
@JsonValue(r'ARCHIVED')
ARCHIVED(r'ARCHIVED'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientCardListRequestStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


