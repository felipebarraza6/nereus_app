// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserResponseCWProxy {
  UserResponse id(int id);

  UserResponse username(String username);

  UserResponse email(String email);

  UserResponse firstName(String? firstName);

  UserResponse lastName(String? lastName);

  UserResponse dni(String dni);

  UserResponse typeUser(UserResponseTypeUserEnum? typeUser);

  UserResponse isSuperuser(bool? isSuperuser);

  UserResponse isStaff(bool? isStaff);

  UserResponse isActive(bool? isActive);

  UserResponse isMultiBranch(bool? isMultiBranch);

  UserResponse lastLogin(DateTime? lastLogin);

  UserResponse created(DateTime created);

  UserResponse assignedProduct(int? assignedProduct);

  UserResponse assignedProductDetails(
    Map<String, Object>? assignedProductDetails,
  );

  UserResponse branchAccess(Map<String, Object>? branchAccess);

  UserResponse branchAssignments(List<Object> branchAssignments);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UserResponse call({
    int id,
    String username,
    String email,
    String? firstName,
    String? lastName,
    String dni,
    UserResponseTypeUserEnum? typeUser,
    bool? isSuperuser,
    bool? isStaff,
    bool? isActive,
    bool? isMultiBranch,
    DateTime? lastLogin,
    DateTime created,
    int? assignedProduct,
    Map<String, Object>? assignedProductDetails,
    Map<String, Object>? branchAccess,
    List<Object> branchAssignments,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserResponse.copyWith.fieldName(...)`
class _$UserResponseCWProxyImpl implements _$UserResponseCWProxy {
  const _$UserResponseCWProxyImpl(this._value);

  final UserResponse _value;

  @override
  UserResponse id(int id) => this(id: id);

  @override
  UserResponse username(String username) => this(username: username);

  @override
  UserResponse email(String email) => this(email: email);

  @override
  UserResponse firstName(String? firstName) => this(firstName: firstName);

  @override
  UserResponse lastName(String? lastName) => this(lastName: lastName);

  @override
  UserResponse dni(String dni) => this(dni: dni);

  @override
  UserResponse typeUser(UserResponseTypeUserEnum? typeUser) =>
      this(typeUser: typeUser);

  @override
  UserResponse isSuperuser(bool? isSuperuser) => this(isSuperuser: isSuperuser);

  @override
  UserResponse isStaff(bool? isStaff) => this(isStaff: isStaff);

  @override
  UserResponse isActive(bool? isActive) => this(isActive: isActive);

  @override
  UserResponse isMultiBranch(bool? isMultiBranch) =>
      this(isMultiBranch: isMultiBranch);

  @override
  UserResponse lastLogin(DateTime? lastLogin) => this(lastLogin: lastLogin);

  @override
  UserResponse created(DateTime created) => this(created: created);

  @override
  UserResponse assignedProduct(int? assignedProduct) =>
      this(assignedProduct: assignedProduct);

  @override
  UserResponse assignedProductDetails(
    Map<String, Object>? assignedProductDetails,
  ) => this(assignedProductDetails: assignedProductDetails);

  @override
  UserResponse branchAccess(Map<String, Object>? branchAccess) =>
      this(branchAccess: branchAccess);

  @override
  UserResponse branchAssignments(List<Object> branchAssignments) =>
      this(branchAssignments: branchAssignments);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  UserResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? firstName = const $CopyWithPlaceholder(),
    Object? lastName = const $CopyWithPlaceholder(),
    Object? dni = const $CopyWithPlaceholder(),
    Object? typeUser = const $CopyWithPlaceholder(),
    Object? isSuperuser = const $CopyWithPlaceholder(),
    Object? isStaff = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? isMultiBranch = const $CopyWithPlaceholder(),
    Object? lastLogin = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? assignedProduct = const $CopyWithPlaceholder(),
    Object? assignedProductDetails = const $CopyWithPlaceholder(),
    Object? branchAccess = const $CopyWithPlaceholder(),
    Object? branchAssignments = const $CopyWithPlaceholder(),
  }) {
    return UserResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      username: username == const $CopyWithPlaceholder()
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      firstName: firstName == const $CopyWithPlaceholder()
          ? _value.firstName
          // ignore: cast_nullable_to_non_nullable
          : firstName as String?,
      lastName: lastName == const $CopyWithPlaceholder()
          ? _value.lastName
          // ignore: cast_nullable_to_non_nullable
          : lastName as String?,
      dni: dni == const $CopyWithPlaceholder()
          ? _value.dni
          // ignore: cast_nullable_to_non_nullable
          : dni as String,
      typeUser: typeUser == const $CopyWithPlaceholder()
          ? _value.typeUser
          // ignore: cast_nullable_to_non_nullable
          : typeUser as UserResponseTypeUserEnum?,
      isSuperuser: isSuperuser == const $CopyWithPlaceholder()
          ? _value.isSuperuser
          // ignore: cast_nullable_to_non_nullable
          : isSuperuser as bool?,
      isStaff: isStaff == const $CopyWithPlaceholder()
          ? _value.isStaff
          // ignore: cast_nullable_to_non_nullable
          : isStaff as bool?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      isMultiBranch: isMultiBranch == const $CopyWithPlaceholder()
          ? _value.isMultiBranch
          // ignore: cast_nullable_to_non_nullable
          : isMultiBranch as bool?,
      lastLogin: lastLogin == const $CopyWithPlaceholder()
          ? _value.lastLogin
          // ignore: cast_nullable_to_non_nullable
          : lastLogin as DateTime?,
      created: created == const $CopyWithPlaceholder()
          ? _value.created
          // ignore: cast_nullable_to_non_nullable
          : created as DateTime,
      assignedProduct: assignedProduct == const $CopyWithPlaceholder()
          ? _value.assignedProduct
          // ignore: cast_nullable_to_non_nullable
          : assignedProduct as int?,
      assignedProductDetails:
          assignedProductDetails == const $CopyWithPlaceholder()
          ? _value.assignedProductDetails
          // ignore: cast_nullable_to_non_nullable
          : assignedProductDetails as Map<String, Object>?,
      branchAccess: branchAccess == const $CopyWithPlaceholder()
          ? _value.branchAccess
          // ignore: cast_nullable_to_non_nullable
          : branchAccess as Map<String, Object>?,
      branchAssignments: branchAssignments == const $CopyWithPlaceholder()
          ? _value.branchAssignments
          // ignore: cast_nullable_to_non_nullable
          : branchAssignments as List<Object>,
    );
  }
}

extension $UserResponseCopyWith on UserResponse {
  /// Returns a callable class that can be used as follows: `instanceOfUserResponse.copyWith(...)` or like so:`instanceOfUserResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserResponseCWProxy get copyWith => _$UserResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserResponse',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'username',
            'email',
            'dni',
            'created',
            'assigned_product_details',
            'branch_access',
            'branch_assignments',
          ],
        );
        final val = UserResponse(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          username: $checkedConvert('username', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          firstName: $checkedConvert('first_name', (v) => v as String?),
          lastName: $checkedConvert('last_name', (v) => v as String?),
          dni: $checkedConvert('dni', (v) => v as String),
          typeUser: $checkedConvert(
            'type_user',
            (v) => $enumDecodeNullable(
              _$UserResponseTypeUserEnumEnumMap,
              v,
              unknownValue: UserResponseTypeUserEnum.unknownDefaultOpenApi,
            ),
          ),
          isSuperuser: $checkedConvert('is_superuser', (v) => v as bool?),
          isStaff: $checkedConvert('is_staff', (v) => v as bool?),
          isActive: $checkedConvert('is_active', (v) => v as bool?),
          isMultiBranch: $checkedConvert('is_multi_branch', (v) => v as bool?),
          lastLogin: $checkedConvert(
            'last_login',
            (v) => v == null ? null : DateTime.parse(v as String),
          ),
          created: $checkedConvert(
            'created',
            (v) => DateTime.parse(v as String),
          ),
          assignedProduct: $checkedConvert(
            'assigned_product',
            (v) => (v as num?)?.toInt(),
          ),
          assignedProductDetails: $checkedConvert(
            'assigned_product_details',
            (v) => (v as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(k, e as Object),
            ),
          ),
          branchAccess: $checkedConvert(
            'branch_access',
            (v) => (v as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(k, e as Object),
            ),
          ),
          branchAssignments: $checkedConvert(
            'branch_assignments',
            (v) => (v as List<dynamic>).map((e) => e as Object).toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'firstName': 'first_name',
        'lastName': 'last_name',
        'typeUser': 'type_user',
        'isSuperuser': 'is_superuser',
        'isStaff': 'is_staff',
        'isActive': 'is_active',
        'isMultiBranch': 'is_multi_branch',
        'lastLogin': 'last_login',
        'assignedProduct': 'assigned_product',
        'assignedProductDetails': 'assigned_product_details',
        'branchAccess': 'branch_access',
        'branchAssignments': 'branch_assignments',
      },
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'first_name': ?instance.firstName,
      'last_name': ?instance.lastName,
      'dni': instance.dni,
      'type_user': ?_$UserResponseTypeUserEnumEnumMap[instance.typeUser],
      'is_superuser': ?instance.isSuperuser,
      'is_staff': ?instance.isStaff,
      'is_active': ?instance.isActive,
      'is_multi_branch': ?instance.isMultiBranch,
      'last_login': ?instance.lastLogin?.toIso8601String(),
      'created': instance.created.toIso8601String(),
      'assigned_product': ?instance.assignedProduct,
      'assigned_product_details': instance.assignedProductDetails,
      'branch_access': instance.branchAccess,
      'branch_assignments': instance.branchAssignments,
    };

const _$UserResponseTypeUserEnumEnumMap = {
  UserResponseTypeUserEnum.ADM: 'ADM',
  UserResponseTypeUserEnum.CL: 'CL',
  UserResponseTypeUserEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
