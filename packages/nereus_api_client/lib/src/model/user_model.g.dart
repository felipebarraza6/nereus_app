// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserModelCWProxy {
  UserModel id(int id);

  UserModel username(String username);

  UserModel firstName(String? firstName);

  UserModel lastName(String? lastName);

  UserModel email(String email);

  UserModel isActive(bool isActive);

  UserModel isStaff(bool isStaff);

  UserModel isSuperuser(bool isSuperuser);

  UserModel dateJoined(DateTime dateJoined);

  UserModel lastLogin(DateTime? lastLogin);

  UserModel dni(String dni);

  UserModel typeUser(UserModelTypeUserEnum typeUser);

  UserModel assignedProduct(int? assignedProduct);

  UserModel isVerified(bool isVerified);

  UserModel isMultiBranch(bool? isMultiBranch);

  UserModel created(DateTime created);

  UserModel modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModel call({
    int id,
    String username,
    String? firstName,
    String? lastName,
    String email,
    bool isActive,
    bool isStaff,
    bool isSuperuser,
    DateTime dateJoined,
    DateTime? lastLogin,
    String dni,
    UserModelTypeUserEnum typeUser,
    int? assignedProduct,
    bool isVerified,
    bool? isMultiBranch,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserModel.copyWith.fieldName(...)`
class _$UserModelCWProxyImpl implements _$UserModelCWProxy {
  const _$UserModelCWProxyImpl(this._value);

  final UserModel _value;

  @override
  UserModel id(int id) => this(id: id);

  @override
  UserModel username(String username) => this(username: username);

  @override
  UserModel firstName(String? firstName) => this(firstName: firstName);

  @override
  UserModel lastName(String? lastName) => this(lastName: lastName);

  @override
  UserModel email(String email) => this(email: email);

  @override
  UserModel isActive(bool isActive) => this(isActive: isActive);

  @override
  UserModel isStaff(bool isStaff) => this(isStaff: isStaff);

  @override
  UserModel isSuperuser(bool isSuperuser) => this(isSuperuser: isSuperuser);

  @override
  UserModel dateJoined(DateTime dateJoined) => this(dateJoined: dateJoined);

  @override
  UserModel lastLogin(DateTime? lastLogin) => this(lastLogin: lastLogin);

  @override
  UserModel dni(String dni) => this(dni: dni);

  @override
  UserModel typeUser(UserModelTypeUserEnum typeUser) =>
      this(typeUser: typeUser);

  @override
  UserModel assignedProduct(int? assignedProduct) =>
      this(assignedProduct: assignedProduct);

  @override
  UserModel isVerified(bool isVerified) => this(isVerified: isVerified);

  @override
  UserModel isMultiBranch(bool? isMultiBranch) =>
      this(isMultiBranch: isMultiBranch);

  @override
  UserModel created(DateTime created) => this(created: created);

  @override
  UserModel modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? isStaff = const $CopyWithPlaceholder(),
    Object? isSuperuser = const $CopyWithPlaceholder(),
    Object? dateJoined = const $CopyWithPlaceholder(),
    Object? lastLogin = const $CopyWithPlaceholder(),
    Object? dni = const $CopyWithPlaceholder(),
    Object? typeUser = const $CopyWithPlaceholder(),
    Object? assignedProduct = const $CopyWithPlaceholder(),
    Object? isVerified = const $CopyWithPlaceholder(),
    Object? isMultiBranch = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return UserModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String?,
      lastName: lastName == const $CopyWithPlaceholder()
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool,
      isStaff: isStaff == const $CopyWithPlaceholder()
          ? _value.isStaff
          // ignore: cast_nullable_to_non_nullable
          : isStaff as bool,
      isSuperuser: isSuperuser == const $CopyWithPlaceholder()
          ? _value.isSuperuser
          // ignore: cast_nullable_to_non_nullable
          : isSuperuser as bool,
      dateJoined: dateJoined == const $CopyWithPlaceholder()
          ? _value.dateJoined
          // ignore: cast_nullable_to_non_nullable
          : dateJoined as DateTime,
      lastLogin: lastLogin == const $CopyWithPlaceholder()
          ? _value.lastLogin
          // ignore: cast_nullable_to_non_nullable
          : lastLogin as DateTime?,
      dni: dni == const $CopyWithPlaceholder()
          ? _value.dni
          // ignore: cast_nullable_to_non_nullable
          : dni as String,
      typeUser: typeUser == const $CopyWithPlaceholder()
          ? _value.typeUser
          // ignore: cast_nullable_to_non_nullable
          : typeUser as UserModelTypeUserEnum,
      assignedProduct: assignedProduct == const $CopyWithPlaceholder()
          ? _value.assignedProduct
          // ignore: cast_nullable_to_non_nullable
          : assignedProduct as int?,
      isVerified: isVerified == const $CopyWithPlaceholder()
          ? _value.isVerified
          // ignore: cast_nullable_to_non_nullable
          : isVerified as bool,
      isMultiBranch: isMultiBranch == const $CopyWithPlaceholder()
          ? _value.isMultiBranch
          // ignore: cast_nullable_to_non_nullable
          : isMultiBranch as bool?,
      created: created == const $CopyWithPlaceholder()
          ? _value.created
          // ignore: cast_nullable_to_non_nullable
          : created as DateTime,
      modified: modified == const $CopyWithPlaceholder()
          ? _value.modified
          // ignore: cast_nullable_to_non_nullable
          : modified as DateTime,
    );
  }
}

extension $UserModelCopyWith on UserModel {
  /// Returns a callable class that can be used as follows: `instanceOfUserModel.copyWith(...)` or like so:`instanceOfUserModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserModelCWProxy get copyWith => _$UserModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => $checkedCreate(
  'UserModel',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'username',
        'email',
        'is_active',
        'is_staff',
        'is_superuser',
        'date_joined',
        'last_login',
        'dni',
        'type_user',
        'is_verified',
        'created',
        'modified',
      ],
    );
    final val = UserModel(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      username: $checkedConvert('username', (v) => v as String),
      firstName: $checkedConvert('first_name', (v) => v as String?),
      lastName: $checkedConvert('last_name', (v) => v as String?),
      email: $checkedConvert('email', (v) => v as String),
      isActive: $checkedConvert('is_active', (v) => v as bool),
      isStaff: $checkedConvert('is_staff', (v) => v as bool),
      isSuperuser: $checkedConvert('is_superuser', (v) => v as bool),
      dateJoined: $checkedConvert(
        'date_joined',
        (v) => DateTime.parse(v as String),
      ),
      lastLogin: $checkedConvert(
        'last_login',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      dni: $checkedConvert('dni', (v) => v as String),
      typeUser: $checkedConvert(
        'type_user',
        (v) => $enumDecode(
          _$UserModelTypeUserEnumEnumMap,
          v,
          unknownValue: UserModelTypeUserEnum.unknownDefaultOpenApi,
        ),
      ),
      assignedProduct: $checkedConvert(
        'assigned_product',
        (v) => (v as num?)?.toInt(),
      ),
      isVerified: $checkedConvert('is_verified', (v) => v as bool),
      isMultiBranch: $checkedConvert('is_multi_branch', (v) => v as bool?),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'firstName': 'first_name',
    'lastName': 'last_name',
    'isActive': 'is_active',
    'isStaff': 'is_staff',
    'isSuperuser': 'is_superuser',
    'dateJoined': 'date_joined',
    'lastLogin': 'last_login',
    'typeUser': 'type_user',
    'assignedProduct': 'assigned_product',
    'isVerified': 'is_verified',
    'isMultiBranch': 'is_multi_branch',
  },
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'first_name': ?instance.firstName,
  'last_name': ?instance.lastName,
  'email': instance.email,
  'is_active': instance.isActive,
  'is_staff': instance.isStaff,
  'is_superuser': instance.isSuperuser,
  'date_joined': instance.dateJoined.toIso8601String(),
  'last_login': instance.lastLogin?.toIso8601String(),
  'dni': instance.dni,
  'type_user': _$UserModelTypeUserEnumEnumMap[instance.typeUser]!,
  'assigned_product': ?instance.assignedProduct,
  'is_verified': instance.isVerified,
  'is_multi_branch': ?instance.isMultiBranch,
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};

const _$UserModelTypeUserEnumEnumMap = {
  UserModelTypeUserEnum.ADM: 'ADM',
  UserModelTypeUserEnum.CL: 'CL',
  UserModelTypeUserEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
