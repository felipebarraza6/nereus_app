// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchAssignment {

 int? get id;@JsonKey(name: 'branch_id') int get branchId;@JsonKey(name: 'branch_name') String? get branchName;@JsonKey(name: 'business_name') String? get businessName;@JsonKey(name: 'role_code') String get roleCode;@JsonKey(name: 'role_name') String? get roleName;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of BranchAssignment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchAssignmentCopyWith<BranchAssignment> get copyWith => _$BranchAssignmentCopyWithImpl<BranchAssignment>(this as BranchAssignment, _$identity);

  /// Serializes this BranchAssignment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchAssignment&&(identical(other.id, id) || other.id == id)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.roleCode, roleCode) || other.roleCode == roleCode)&&(identical(other.roleName, roleName) || other.roleName == roleName)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,branchId,branchName,businessName,roleCode,roleName,isActive);

@override
String toString() {
  return 'BranchAssignment(id: $id, branchId: $branchId, branchName: $branchName, businessName: $businessName, roleCode: $roleCode, roleName: $roleName, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $BranchAssignmentCopyWith<$Res>  {
  factory $BranchAssignmentCopyWith(BranchAssignment value, $Res Function(BranchAssignment) _then) = _$BranchAssignmentCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'branch_id') int branchId,@JsonKey(name: 'branch_name') String? branchName,@JsonKey(name: 'business_name') String? businessName,@JsonKey(name: 'role_code') String roleCode,@JsonKey(name: 'role_name') String? roleName,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$BranchAssignmentCopyWithImpl<$Res>
    implements $BranchAssignmentCopyWith<$Res> {
  _$BranchAssignmentCopyWithImpl(this._self, this._then);

  final BranchAssignment _self;
  final $Res Function(BranchAssignment) _then;

/// Create a copy of BranchAssignment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? branchId = null,Object? branchName = freezed,Object? businessName = freezed,Object? roleCode = null,Object? roleName = freezed,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,businessName: freezed == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String?,roleCode: null == roleCode ? _self.roleCode : roleCode // ignore: cast_nullable_to_non_nullable
as String,roleName: freezed == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchAssignment].
extension BranchAssignmentPatterns on BranchAssignment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchAssignment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchAssignment() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchAssignment value)  $default,){
final _that = this;
switch (_that) {
case _BranchAssignment():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchAssignment value)?  $default,){
final _that = this;
switch (_that) {
case _BranchAssignment() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'branch_id')  int branchId, @JsonKey(name: 'branch_name')  String? branchName, @JsonKey(name: 'business_name')  String? businessName, @JsonKey(name: 'role_code')  String roleCode, @JsonKey(name: 'role_name')  String? roleName, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchAssignment() when $default != null:
return $default(_that.id,_that.branchId,_that.branchName,_that.businessName,_that.roleCode,_that.roleName,_that.isActive);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'branch_id')  int branchId, @JsonKey(name: 'branch_name')  String? branchName, @JsonKey(name: 'business_name')  String? businessName, @JsonKey(name: 'role_code')  String roleCode, @JsonKey(name: 'role_name')  String? roleName, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _BranchAssignment():
return $default(_that.id,_that.branchId,_that.branchName,_that.businessName,_that.roleCode,_that.roleName,_that.isActive);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'branch_id')  int branchId, @JsonKey(name: 'branch_name')  String? branchName, @JsonKey(name: 'business_name')  String? businessName, @JsonKey(name: 'role_code')  String roleCode, @JsonKey(name: 'role_name')  String? roleName, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _BranchAssignment() when $default != null:
return $default(_that.id,_that.branchId,_that.branchName,_that.businessName,_that.roleCode,_that.roleName,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchAssignment implements BranchAssignment {
  const _BranchAssignment({this.id, @JsonKey(name: 'branch_id') required this.branchId, @JsonKey(name: 'branch_name') this.branchName, @JsonKey(name: 'business_name') this.businessName, @JsonKey(name: 'role_code') this.roleCode = 'CL', @JsonKey(name: 'role_name') this.roleName, @JsonKey(name: 'is_active') this.isActive = true});
  factory _BranchAssignment.fromJson(Map<String, dynamic> json) => _$BranchAssignmentFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'branch_id') final  int branchId;
@override@JsonKey(name: 'branch_name') final  String? branchName;
@override@JsonKey(name: 'business_name') final  String? businessName;
@override@JsonKey(name: 'role_code') final  String roleCode;
@override@JsonKey(name: 'role_name') final  String? roleName;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of BranchAssignment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchAssignmentCopyWith<_BranchAssignment> get copyWith => __$BranchAssignmentCopyWithImpl<_BranchAssignment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchAssignmentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchAssignment&&(identical(other.id, id) || other.id == id)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.roleCode, roleCode) || other.roleCode == roleCode)&&(identical(other.roleName, roleName) || other.roleName == roleName)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,branchId,branchName,businessName,roleCode,roleName,isActive);

@override
String toString() {
  return 'BranchAssignment(id: $id, branchId: $branchId, branchName: $branchName, businessName: $businessName, roleCode: $roleCode, roleName: $roleName, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$BranchAssignmentCopyWith<$Res> implements $BranchAssignmentCopyWith<$Res> {
  factory _$BranchAssignmentCopyWith(_BranchAssignment value, $Res Function(_BranchAssignment) _then) = __$BranchAssignmentCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'branch_id') int branchId,@JsonKey(name: 'branch_name') String? branchName,@JsonKey(name: 'business_name') String? businessName,@JsonKey(name: 'role_code') String roleCode,@JsonKey(name: 'role_name') String? roleName,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$BranchAssignmentCopyWithImpl<$Res>
    implements _$BranchAssignmentCopyWith<$Res> {
  __$BranchAssignmentCopyWithImpl(this._self, this._then);

  final _BranchAssignment _self;
  final $Res Function(_BranchAssignment) _then;

/// Create a copy of BranchAssignment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? branchId = null,Object? branchName = freezed,Object? businessName = freezed,Object? roleCode = null,Object? roleName = freezed,Object? isActive = null,}) {
  return _then(_BranchAssignment(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as int,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,businessName: freezed == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String?,roleCode: null == roleCode ? _self.roleCode : roleCode // ignore: cast_nullable_to_non_nullable
as String,roleName: freezed == roleName ? _self.roleName : roleName // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SessionUser {

 int get id; String get email; String? get username;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'type_user') String? get typeUser;@JsonKey(name: 'is_superuser') bool get isSuperuser;@JsonKey(name: 'is_multi_branch') bool get isMultiBranch;
/// Create a copy of SessionUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionUserCopyWith<SessionUser> get copyWith => _$SessionUserCopyWithImpl<SessionUser>(this as SessionUser, _$identity);

  /// Serializes this SessionUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionUser&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.typeUser, typeUser) || other.typeUser == typeUser)&&(identical(other.isSuperuser, isSuperuser) || other.isSuperuser == isSuperuser)&&(identical(other.isMultiBranch, isMultiBranch) || other.isMultiBranch == isMultiBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,username,firstName,lastName,fullName,typeUser,isSuperuser,isMultiBranch);

@override
String toString() {
  return 'SessionUser(id: $id, email: $email, username: $username, firstName: $firstName, lastName: $lastName, fullName: $fullName, typeUser: $typeUser, isSuperuser: $isSuperuser, isMultiBranch: $isMultiBranch)';
}


}

/// @nodoc
abstract mixin class $SessionUserCopyWith<$Res>  {
  factory $SessionUserCopyWith(SessionUser value, $Res Function(SessionUser) _then) = _$SessionUserCopyWithImpl;
@useResult
$Res call({
 int id, String email, String? username,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'type_user') String? typeUser,@JsonKey(name: 'is_superuser') bool isSuperuser,@JsonKey(name: 'is_multi_branch') bool isMultiBranch
});




}
/// @nodoc
class _$SessionUserCopyWithImpl<$Res>
    implements $SessionUserCopyWith<$Res> {
  _$SessionUserCopyWithImpl(this._self, this._then);

  final SessionUser _self;
  final $Res Function(SessionUser) _then;

/// Create a copy of SessionUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? username = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? fullName = freezed,Object? typeUser = freezed,Object? isSuperuser = null,Object? isMultiBranch = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,typeUser: freezed == typeUser ? _self.typeUser : typeUser // ignore: cast_nullable_to_non_nullable
as String?,isSuperuser: null == isSuperuser ? _self.isSuperuser : isSuperuser // ignore: cast_nullable_to_non_nullable
as bool,isMultiBranch: null == isMultiBranch ? _self.isMultiBranch : isMultiBranch // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionUser].
extension SessionUserPatterns on SessionUser {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionUser() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionUser value)  $default,){
final _that = this;
switch (_that) {
case _SessionUser():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionUser value)?  $default,){
final _that = this;
switch (_that) {
case _SessionUser() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String email,  String? username, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'type_user')  String? typeUser, @JsonKey(name: 'is_superuser')  bool isSuperuser, @JsonKey(name: 'is_multi_branch')  bool isMultiBranch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionUser() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.firstName,_that.lastName,_that.fullName,_that.typeUser,_that.isSuperuser,_that.isMultiBranch);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String email,  String? username, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'type_user')  String? typeUser, @JsonKey(name: 'is_superuser')  bool isSuperuser, @JsonKey(name: 'is_multi_branch')  bool isMultiBranch)  $default,) {final _that = this;
switch (_that) {
case _SessionUser():
return $default(_that.id,_that.email,_that.username,_that.firstName,_that.lastName,_that.fullName,_that.typeUser,_that.isSuperuser,_that.isMultiBranch);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String email,  String? username, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'type_user')  String? typeUser, @JsonKey(name: 'is_superuser')  bool isSuperuser, @JsonKey(name: 'is_multi_branch')  bool isMultiBranch)?  $default,) {final _that = this;
switch (_that) {
case _SessionUser() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.firstName,_that.lastName,_that.fullName,_that.typeUser,_that.isSuperuser,_that.isMultiBranch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionUser implements SessionUser {
  const _SessionUser({required this.id, required this.email, this.username, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'type_user') this.typeUser, @JsonKey(name: 'is_superuser') this.isSuperuser = false, @JsonKey(name: 'is_multi_branch') this.isMultiBranch = false});
  factory _SessionUser.fromJson(Map<String, dynamic> json) => _$SessionUserFromJson(json);

@override final  int id;
@override final  String email;
@override final  String? username;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'type_user') final  String? typeUser;
@override@JsonKey(name: 'is_superuser') final  bool isSuperuser;
@override@JsonKey(name: 'is_multi_branch') final  bool isMultiBranch;

/// Create a copy of SessionUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionUserCopyWith<_SessionUser> get copyWith => __$SessionUserCopyWithImpl<_SessionUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionUser&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.typeUser, typeUser) || other.typeUser == typeUser)&&(identical(other.isSuperuser, isSuperuser) || other.isSuperuser == isSuperuser)&&(identical(other.isMultiBranch, isMultiBranch) || other.isMultiBranch == isMultiBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,username,firstName,lastName,fullName,typeUser,isSuperuser,isMultiBranch);

@override
String toString() {
  return 'SessionUser(id: $id, email: $email, username: $username, firstName: $firstName, lastName: $lastName, fullName: $fullName, typeUser: $typeUser, isSuperuser: $isSuperuser, isMultiBranch: $isMultiBranch)';
}


}

/// @nodoc
abstract mixin class _$SessionUserCopyWith<$Res> implements $SessionUserCopyWith<$Res> {
  factory _$SessionUserCopyWith(_SessionUser value, $Res Function(_SessionUser) _then) = __$SessionUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String email, String? username,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'type_user') String? typeUser,@JsonKey(name: 'is_superuser') bool isSuperuser,@JsonKey(name: 'is_multi_branch') bool isMultiBranch
});




}
/// @nodoc
class __$SessionUserCopyWithImpl<$Res>
    implements _$SessionUserCopyWith<$Res> {
  __$SessionUserCopyWithImpl(this._self, this._then);

  final _SessionUser _self;
  final $Res Function(_SessionUser) _then;

/// Create a copy of SessionUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? username = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? fullName = freezed,Object? typeUser = freezed,Object? isSuperuser = null,Object? isMultiBranch = null,}) {
  return _then(_SessionUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,typeUser: freezed == typeUser ? _self.typeUser : typeUser // ignore: cast_nullable_to_non_nullable
as String?,isSuperuser: null == isSuperuser ? _self.isSuperuser : isSuperuser // ignore: cast_nullable_to_non_nullable
as bool,isMultiBranch: null == isMultiBranch ? _self.isMultiBranch : isMultiBranch // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$LoginComplete {

 String get token; SessionUser get user; List<BranchAssignment> get branches; List<String> get enabledApps;
/// Create a copy of LoginComplete
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginCompleteCopyWith<LoginComplete> get copyWith => _$LoginCompleteCopyWithImpl<LoginComplete>(this as LoginComplete, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginComplete&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.branches, branches)&&const DeepCollectionEquality().equals(other.enabledApps, enabledApps));
}


@override
int get hashCode => Object.hash(runtimeType,token,user,const DeepCollectionEquality().hash(branches),const DeepCollectionEquality().hash(enabledApps));

@override
String toString() {
  return 'LoginComplete(token: $token, user: $user, branches: $branches, enabledApps: $enabledApps)';
}


}

/// @nodoc
abstract mixin class $LoginCompleteCopyWith<$Res>  {
  factory $LoginCompleteCopyWith(LoginComplete value, $Res Function(LoginComplete) _then) = _$LoginCompleteCopyWithImpl;
@useResult
$Res call({
 String token, SessionUser user, List<BranchAssignment> branches, List<String> enabledApps
});


$SessionUserCopyWith<$Res> get user;

}
/// @nodoc
class _$LoginCompleteCopyWithImpl<$Res>
    implements $LoginCompleteCopyWith<$Res> {
  _$LoginCompleteCopyWithImpl(this._self, this._then);

  final LoginComplete _self;
  final $Res Function(LoginComplete) _then;

/// Create a copy of LoginComplete
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = null,Object? user = null,Object? branches = null,Object? enabledApps = null,}) {
  return _then(_self.copyWith(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as SessionUser,branches: null == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as List<BranchAssignment>,enabledApps: null == enabledApps ? _self.enabledApps : enabledApps // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of LoginComplete
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionUserCopyWith<$Res> get user {
  
  return $SessionUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginComplete].
extension LoginCompletePatterns on LoginComplete {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginComplete value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginComplete() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginComplete value)  $default,){
final _that = this;
switch (_that) {
case _LoginComplete():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginComplete value)?  $default,){
final _that = this;
switch (_that) {
case _LoginComplete() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String token,  SessionUser user,  List<BranchAssignment> branches,  List<String> enabledApps)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginComplete() when $default != null:
return $default(_that.token,_that.user,_that.branches,_that.enabledApps);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String token,  SessionUser user,  List<BranchAssignment> branches,  List<String> enabledApps)  $default,) {final _that = this;
switch (_that) {
case _LoginComplete():
return $default(_that.token,_that.user,_that.branches,_that.enabledApps);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String token,  SessionUser user,  List<BranchAssignment> branches,  List<String> enabledApps)?  $default,) {final _that = this;
switch (_that) {
case _LoginComplete() when $default != null:
return $default(_that.token,_that.user,_that.branches,_that.enabledApps);case _:
  return null;

}
}

}

/// @nodoc


class _LoginComplete implements LoginComplete {
  const _LoginComplete({required this.token, required this.user, this.branches = const [], this.enabledApps = const []});
  

@override final  String token;
@override final  SessionUser user;
@override@JsonKey() final  List<BranchAssignment> branches;
@override@JsonKey() final  List<String> enabledApps;

/// Create a copy of LoginComplete
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginCompleteCopyWith<_LoginComplete> get copyWith => __$LoginCompleteCopyWithImpl<_LoginComplete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginComplete&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.branches, branches)&&const DeepCollectionEquality().equals(other.enabledApps, enabledApps));
}


@override
int get hashCode => Object.hash(runtimeType,token,user,const DeepCollectionEquality().hash(branches),const DeepCollectionEquality().hash(enabledApps));

@override
String toString() {
  return 'LoginComplete(token: $token, user: $user, branches: $branches, enabledApps: $enabledApps)';
}


}

/// @nodoc
abstract mixin class _$LoginCompleteCopyWith<$Res> implements $LoginCompleteCopyWith<$Res> {
  factory _$LoginCompleteCopyWith(_LoginComplete value, $Res Function(_LoginComplete) _then) = __$LoginCompleteCopyWithImpl;
@override @useResult
$Res call({
 String token, SessionUser user, List<BranchAssignment> branches, List<String> enabledApps
});


@override $SessionUserCopyWith<$Res> get user;

}
/// @nodoc
class __$LoginCompleteCopyWithImpl<$Res>
    implements _$LoginCompleteCopyWith<$Res> {
  __$LoginCompleteCopyWithImpl(this._self, this._then);

  final _LoginComplete _self;
  final $Res Function(_LoginComplete) _then;

/// Create a copy of LoginComplete
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = null,Object? user = null,Object? branches = null,Object? enabledApps = null,}) {
  return _then(_LoginComplete(
token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as SessionUser,branches: null == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as List<BranchAssignment>,enabledApps: null == enabledApps ? _self.enabledApps : enabledApps // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of LoginComplete
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionUserCopyWith<$Res> get user {
  
  return $SessionUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
