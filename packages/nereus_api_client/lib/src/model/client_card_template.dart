//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'client_card_template.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ClientCardTemplate {
  /// Returns a new [ClientCardTemplate] instance.
  ClientCardTemplate({

    required  this.id,

    required  this.name,

     this.description,

     this.includeBasicInfo,

     this.includeEmh,

     this.includeExtraFields,

     this.extraFieldsFilter,

     this.includeContacts,

     this.includeHistory,

     this.headerText,

     this.footerText,

     this.showLogo,

     this.showWatermark,

     this.watermarkText,

     this.primaryColor,

     this.secondaryColor,

     this.fontFamily,

     this.pageSize,

     this.orientation,

     this.isDefault,

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
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



      /// Nombre, RUT, teléfono, email, dirección
  @JsonKey(
    
    name: r'include_basic_info',
    required: false,
    includeIfNull: false,
  )


  final bool? includeBasicInfo;



  @JsonKey(
    
    name: r'include_emh',
    required: false,
    includeIfNull: false,
  )


  final bool? includeEmh;



  @JsonKey(
    
    name: r'include_extra_fields',
    required: false,
    includeIfNull: false,
  )


  final bool? includeExtraFields;



      /// Lista de keys de campos extra a incluir. Vacío = todos.
  @JsonKey(
    
    name: r'extra_fields_filter',
    required: false,
    includeIfNull: false,
  )


  final Object? extraFieldsFilter;



  @JsonKey(
    
    name: r'include_contacts',
    required: false,
    includeIfNull: false,
  )


  final bool? includeContacts;



  @JsonKey(
    
    name: r'include_history',
    required: false,
    includeIfNull: false,
  )


  final bool? includeHistory;



      /// Texto que aparece en la parte superior de la ficha
  @JsonKey(
    
    name: r'header_text',
    required: false,
    includeIfNull: false,
  )


  final String? headerText;



  @JsonKey(
    
    name: r'footer_text',
    required: false,
    includeIfNull: false,
  )


  final String? footerText;



  @JsonKey(
    
    name: r'show_logo',
    required: false,
    includeIfNull: false,
  )


  final bool? showLogo;



  @JsonKey(
    
    name: r'show_watermark',
    required: false,
    includeIfNull: false,
  )


  final bool? showWatermark;



  @JsonKey(
    
    name: r'watermark_text',
    required: false,
    includeIfNull: false,
  )


  final String? watermarkText;



      /// Código HEX. Vacío = usar color de la sucursal
  @JsonKey(
    
    name: r'primary_color',
    required: false,
    includeIfNull: false,
  )


  final String? primaryColor;



  @JsonKey(
    
    name: r'secondary_color',
    required: false,
    includeIfNull: false,
  )


  final String? secondaryColor;



  @JsonKey(
    
    name: r'font_family',
    required: false,
    includeIfNull: false,
  )


  final String? fontFamily;



      /// * `A4` - A4 * `LETTER` - Carta * `LEGAL` - Oficio
  @JsonKey(
    
    name: r'page_size',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientCardTemplatePageSizeEnum.unknownDefaultOpenApi,
  )


  final ClientCardTemplatePageSizeEnum? pageSize;



      /// * `PORTRAIT` - Vertical * `LANDSCAPE` - Horizontal
  @JsonKey(
    
    name: r'orientation',
    required: false,
    includeIfNull: false,
  unknownEnumValue: ClientCardTemplateOrientationEnum.unknownDefaultOpenApi,
  )


  final ClientCardTemplateOrientationEnum? orientation;



      /// Si es la plantilla que se usa por defecto para esta sucursal
  @JsonKey(
    
    name: r'is_default',
    required: false,
    includeIfNull: false,
  )


  final bool? isDefault;



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
    bool operator ==(Object other) => identical(this, other) || other is ClientCardTemplate &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.includeBasicInfo == includeBasicInfo &&
      other.includeEmh == includeEmh &&
      other.includeExtraFields == includeExtraFields &&
      other.extraFieldsFilter == extraFieldsFilter &&
      other.includeContacts == includeContacts &&
      other.includeHistory == includeHistory &&
      other.headerText == headerText &&
      other.footerText == footerText &&
      other.showLogo == showLogo &&
      other.showWatermark == showWatermark &&
      other.watermarkText == watermarkText &&
      other.primaryColor == primaryColor &&
      other.secondaryColor == secondaryColor &&
      other.fontFamily == fontFamily &&
      other.pageSize == pageSize &&
      other.orientation == orientation &&
      other.isDefault == isDefault &&
      other.isActive == isActive &&
      other.created == created &&
      other.modified == modified;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        description.hashCode +
        includeBasicInfo.hashCode +
        includeEmh.hashCode +
        includeExtraFields.hashCode +
        (extraFieldsFilter == null ? 0 : extraFieldsFilter.hashCode) +
        includeContacts.hashCode +
        includeHistory.hashCode +
        headerText.hashCode +
        footerText.hashCode +
        showLogo.hashCode +
        showWatermark.hashCode +
        watermarkText.hashCode +
        primaryColor.hashCode +
        secondaryColor.hashCode +
        fontFamily.hashCode +
        pageSize.hashCode +
        orientation.hashCode +
        isDefault.hashCode +
        isActive.hashCode +
        created.hashCode +
        modified.hashCode;

  factory ClientCardTemplate.fromJson(Map<String, dynamic> json) => _$ClientCardTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$ClientCardTemplateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `A4` - A4 * `LETTER` - Carta * `LEGAL` - Oficio
enum ClientCardTemplatePageSizeEnum {
@JsonValue(r'A4')
A4(r'A4'),
@JsonValue(r'LETTER')
LETTER(r'LETTER'),
@JsonValue(r'LEGAL')
LEGAL(r'LEGAL'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientCardTemplatePageSizeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `PORTRAIT` - Vertical * `LANDSCAPE` - Horizontal
enum ClientCardTemplateOrientationEnum {
@JsonValue(r'PORTRAIT')
PORTRAIT(r'PORTRAIT'),
@JsonValue(r'LANDSCAPE')
LANDSCAPE(r'LANDSCAPE'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ClientCardTemplateOrientationEnum(this.value);

final String value;

@override
String toString() => value;
}


