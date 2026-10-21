//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_card_detail.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientCardDetail {
  /// Returns a new [ClientCardDetail] instance.
  ClientCardDetail({

    required  this.id,

    required  this.client,

    required  this.clientName,

     this.template,

    required  this.templateName,

     this.file,

    required  this.fileUrl,

     this.fileSize,

     this.document,

     this.status,

    required  this.snapshotData,

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



  @JsonKey(
    
    name: r'document',
    required: false,
    includeIfNull: false,
  )


  final String? document;



      /// * `DRAFT` - Borrador * `GENERATED` - Generado * `ARCHIVED` - Archivado
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientCardDetailStatusEnum.unknownDefaultOpenApi,
  )


  final ClientCardDetailStatusEnum? status;



  @JsonKey(
    
    name: r'snapshot_data',
    required: true,
    includeIfNull: true,
  )


  final Object? snapshotData;



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
    bool operator ==(Object other) => identical(this, other) || other is ClientCardDetail &&
      other.id == id &&
      other.client == client &&
      other.clientName == clientName &&
      other.template == template &&
      other.templateName == templateName &&
      other.file == file &&
      other.fileUrl == fileUrl &&
      other.fileSize == fileSize &&
      other.document == document &&
      other.status == status &&
      other.snapshotData == snapshotData &&
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
        (document == null ? 0 : document.hashCode) +
        status.hashCode +
        (snapshotData == null ? 0 : snapshotData.hashCode) +
        version.hashCode +
        (generatedBy == null ? 0 : generatedBy.hashCode) +
        generatedByName.hashCode +
        (generatedAt == null ? 0 : generatedAt.hashCode) +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory ClientCardDetail.fromJson(Map<String, dynamic> json) => _$ClientCardDetailFromJson(json);

  Map<String, dynamic> toJson() => _$ClientCardDetailToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `DRAFT` - Borrador * `GENERATED` - Generado * `ARCHIVED` - Archivado
enum ClientCardDetailStatusEnum {
@JsonValue(r'DRAFT')
DRAFT(r'DRAFT'),
@JsonValue(r'GENERATED')
GENERATED(r'GENERATED'),
@JsonValue(r'ARCHIVED')
ARCHIVED(r'ARCHIVED'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientCardDetailStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


