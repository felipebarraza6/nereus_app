//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_card_create.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientCardCreate {
  /// Returns a new [ClientCardCreate] instance.
  ClientCardCreate({

    required  this.id,

    required  this.client,

     this.template,

     this.status,

     this.isActive,
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
    
    name: r'template',
    required: false,
    includeIfNull: false,
  )


  final String? template;



      /// * `DRAFT` - Borrador * `GENERATED` - Generado * `ARCHIVED` - Archivado
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientCardCreateStatusEnum.unknownDefaultOpenApi,
  )


  final ClientCardCreateStatusEnum? status;



      /// Indica si el registro está activo. Use esto en lugar de eliminar.
  @JsonKey(
    
    name: r'is_active',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ClientCardCreate &&
      other.id == id &&
      other.client == client &&
      other.template == template &&
      other.status == status &&
      other.isActive == isActive;

    @override
    int get hashCode =>
        id.hashCode +
        client.hashCode +
        (template == null ? 0 : template.hashCode) +
        status.hashCode +
        isActive.hashCode;

  factory ClientCardCreate.fromJson(Map<String, dynamic> json) => _$ClientCardCreateFromJson(json);

  Map<String, dynamic> toJson() => _$ClientCardCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `DRAFT` - Borrador * `GENERATED` - Generado * `ARCHIVED` - Archivado
enum ClientCardCreateStatusEnum {
@JsonValue(r'DRAFT')
DRAFT(r'DRAFT'),
@JsonValue(r'GENERATED')
GENERATED(r'GENERATED'),
@JsonValue(r'ARCHIVED')
ARCHIVED(r'ARCHIVED'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientCardCreateStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


