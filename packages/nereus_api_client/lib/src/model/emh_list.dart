//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'emh_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EMHList {
  /// Returns a new [EMHList] instance.
  EMHList({

    required  this.id,

    required  this.client,

    required  this.clientName,

     this.birthDate,

    required  this.age,

     this.gender,

     this.bloodType,

     this.insuranceProvider,

    required  this.branch,

    required  this.created,
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
    
    name: r'birth_date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? birthDate;



  @JsonKey(
    
    name: r'age',
    required: true,
    includeIfNull: false,
  )


  final int age;



      /// * `M` - Masculino * `F` - Femenino * `NB` - No binario * `NR` - Prefiero no responder
  @JsonKey(
    
    name: r'gender',
    required: false,
    includeIfNull: false,
  unknownEnumValue: EMHListGenderEnum.unknownDefaultOpenApi,
  )


  final EMHListGenderEnum? gender;



      /// * `A_POS` - A+ * `A_NEG` - A- * `B_POS` - B+ * `B_NEG` - B- * `AB_POS` - AB+ * `AB_NEG` - AB- * `O_POS` - O+ * `O_NEG` - O- * `UNKNOWN` - Desconocido / No aplica
  @JsonKey(
    
    name: r'blood_type',
    required: false,
    includeIfNull: false,
  unknownEnumValue: EMHListBloodTypeEnum.unknownDefaultOpenApi,
  )


  final EMHListBloodTypeEnum? bloodType;



  @JsonKey(
    
    name: r'insurance_provider',
    required: false,
    includeIfNull: false,
  )


  final String? insuranceProvider;



      /// Sucursal a la que pertenece este registro
  @JsonKey(
    
    name: r'branch',
    required: true,
    includeIfNull: false,
  )


  final int branch;



      /// Fecha de creacion.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final DateTime created;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EMHList &&
      other.id == id &&
      other.client == client &&
      other.clientName == clientName &&
      other.birthDate == birthDate &&
      other.age == age &&
      other.gender == gender &&
      other.bloodType == bloodType &&
      other.insuranceProvider == insuranceProvider &&
      other.branch == branch &&
      other.created == created;

    @override
    int get hashCode =>
        id.hashCode +
        client.hashCode +
        clientName.hashCode +
        (birthDate == null ? 0 : birthDate.hashCode) +
        age.hashCode +
        (gender == null ? 0 : gender.hashCode) +
        (bloodType == null ? 0 : bloodType.hashCode) +
        (insuranceProvider == null ? 0 : insuranceProvider.hashCode) +
        branch.hashCode +
        created.hashCode;

  factory EMHList.fromJson(Map<String, dynamic> json) => _$EMHListFromJson(json);

  Map<String, dynamic> toJson() => _$EMHListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// * `M` - Masculino * `F` - Femenino * `NB` - No binario * `NR` - Prefiero no responder
enum EMHListGenderEnum {
@JsonValue(r'M')
M(r'M'),
@JsonValue(r'F')
F(r'F'),
@JsonValue(r'NB')
NB(r'NB'),
@JsonValue(r'NR')
NR(r'NR'),
@JsonValue(r'')
empty(r''),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const EMHListGenderEnum(this.value);

final String value;

@override
String toString() => value;
}


/// * `A_POS` - A+ * `A_NEG` - A- * `B_POS` - B+ * `B_NEG` - B- * `AB_POS` - AB+ * `AB_NEG` - AB- * `O_POS` - O+ * `O_NEG` - O- * `UNKNOWN` - Desconocido / No aplica
enum EMHListBloodTypeEnum {
@JsonValue(r'A_POS')
A_POS(r'A_POS'),
@JsonValue(r'A_NEG')
A_NEG(r'A_NEG'),
@JsonValue(r'B_POS')
B_POS(r'B_POS'),
@JsonValue(r'B_NEG')
B_NEG(r'B_NEG'),
@JsonValue(r'AB_POS')
AB_POS(r'AB_POS'),
@JsonValue(r'AB_NEG')
AB_NEG(r'AB_NEG'),
@JsonValue(r'O_POS')
O_POS(r'O_POS'),
@JsonValue(r'O_NEG')
O_NEG(r'O_NEG'),
@JsonValue(r'UNKNOWN')
UNKNOWN(r'UNKNOWN'),
@JsonValue(r'')
empty(r''),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const EMHListBloodTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


