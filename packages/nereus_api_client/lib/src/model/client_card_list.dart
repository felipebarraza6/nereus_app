//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_card_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientCardList {
  /// Returns a new [ClientCardList] instance.
  ClientCardList({

    required  this.id,

    required  this.client,

    required  this.clientName,

     this.template,

    required  this.templateName,

     this.file,

    required  this.fileUrl,

     this.fileSize,

     this.status,

     this.version,

     this.generatedBy,

    required  this.generatedByName,

     this.generatedAt,

     this.isActive,

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
    
    name: r'client',
    required: true,
    includeIfNull: false,
  )


  final int client;



  @JsonKey(
    
    name: r'client_name',
    required: true,
    includeIfNull: false,
  )


  final String clientName;



  @JsonKey(
    
    name: r'template',
    required: false,
    includeIfNull: false,
  )


  final String? template;



  @JsonKey(
    
    name: r'template_name',
    required: true,
    includeIfNull: false,
  )


  final String templateName;



  @JsonKey(
    
    name: r'file',
    required: false,
    includeIfNull: false,
  )


  final String? file;



  @JsonKey(
    
    name: r'file_url',
    required: true,
    includeIfNull: false,
  )


  final String fileUrl;



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
  unknownEnumValue: ClientCardListStatusEnum.unknownDefaultOpenApi,
  )


  final ClientCardListStatusEnum? status;



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
    
    name: r'generated_by_name',
    required: true,
    includeIfNull: false,
  )


  final String generatedByName;



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
    bool operator ==(Object other) => identical(this, other) || other is ClientCardList &&
      other.id == id &&
      other.client == client &&
      other.clientName == clientName &&
      other.template == template &&
      other.templateName == templateName &&
      other.file == file &&
      other.fileUrl == fileUrl &&
      other.fileSize == fileSize &&
      other.status == status &&
      other.version == version &&
      other.generatedBy == generatedBy &&
      other.generatedByName == generatedByName &&
      other.generatedAt == generatedAt &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        client.hashCode +
        clientName.hashCode +
        (template == null ? 0 : template.hashCode) +
        templateName.hashCode +
        (file == null ? 0 : file.hashCode) +
        fileUrl.hashCode +
        (fileSize == null ? 0 : fileSize.hashCode) +
        status.hashCode +
        version.hashCode +
        (generatedBy == null ? 0 : generatedBy.hashCode) +
        generatedByName.hashCode +
        (generatedAt == null ? 0 : generatedAt.hashCode) +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory ClientCardList.fromJson(Map<String, dynamic> json) => _$ClientCardListFromJson(json);

  Map<String, dynamic> toJson() => _$ClientCardListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `DRAFT` - Borrador * `GENERATED` - Generado * `ARCHIVED` - Archivado
enum ClientCardListStatusEnum {
@JsonValue(r'DRAFT')
DRAFT(r'DRAFT'),
@JsonValue(r'GENERATED')
GENERATED(r'GENERATED'),
@JsonValue(r'ARCHIVED')
ARCHIVED(r'ARCHIVED'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientCardListStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


