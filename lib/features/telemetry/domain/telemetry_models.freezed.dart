// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telemetry_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeviceItem {

 int get id; String get name; String get deviceType; String? get projectName; bool get isOnline; DateTime? get lastReadingAt; int? get minutesOffline; int? get variablesCount; double? get lat; double? get lon; String? get address;
/// Create a copy of DeviceItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceItemCopyWith<DeviceItem> get copyWith => _$DeviceItemCopyWithImpl<DeviceItem>(this as DeviceItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.projectName, projectName) || other.projectName == projectName)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastReadingAt, lastReadingAt) || other.lastReadingAt == lastReadingAt)&&(identical(other.minutesOffline, minutesOffline) || other.minutesOffline == minutesOffline)&&(identical(other.variablesCount, variablesCount) || other.variablesCount == variablesCount)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,deviceType,projectName,isOnline,lastReadingAt,minutesOffline,variablesCount,lat,lon,address);

@override
String toString() {
  return 'DeviceItem(id: $id, name: $name, deviceType: $deviceType, projectName: $projectName, isOnline: $isOnline, lastReadingAt: $lastReadingAt, minutesOffline: $minutesOffline, variablesCount: $variablesCount, lat: $lat, lon: $lon, address: $address)';
}


}

/// @nodoc
abstract mixin class $DeviceItemCopyWith<$Res>  {
  factory $DeviceItemCopyWith(DeviceItem value, $Res Function(DeviceItem) _then) = _$DeviceItemCopyWithImpl;
@useResult
$Res call({
 int id, String name, String deviceType, String? projectName, bool isOnline, DateTime? lastReadingAt, int? minutesOffline, int? variablesCount, double? lat, double? lon, String? address
});




}
/// @nodoc
class _$DeviceItemCopyWithImpl<$Res>
    implements $DeviceItemCopyWith<$Res> {
  _$DeviceItemCopyWithImpl(this._self, this._then);

  final DeviceItem _self;
  final $Res Function(DeviceItem) _then;

/// Create a copy of DeviceItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? deviceType = null,Object? projectName = freezed,Object? isOnline = null,Object? lastReadingAt = freezed,Object? minutesOffline = freezed,Object? variablesCount = freezed,Object? lat = freezed,Object? lon = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,projectName: freezed == projectName ? _self.projectName : projectName // ignore: cast_nullable_to_non_nullable
as String?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastReadingAt: freezed == lastReadingAt ? _self.lastReadingAt : lastReadingAt // ignore: cast_nullable_to_non_nullable
as DateTime?,minutesOffline: freezed == minutesOffline ? _self.minutesOffline : minutesOffline // ignore: cast_nullable_to_non_nullable
as int?,variablesCount: freezed == variablesCount ? _self.variablesCount : variablesCount // ignore: cast_nullable_to_non_nullable
as int?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceItem].
extension DeviceItemPatterns on DeviceItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceItem value)  $default,){
final _that = this;
switch (_that) {
case _DeviceItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceItem value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String deviceType,  String? projectName,  bool isOnline,  DateTime? lastReadingAt,  int? minutesOffline,  int? variablesCount,  double? lat,  double? lon,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceItem() when $default != null:
return $default(_that.id,_that.name,_that.deviceType,_that.projectName,_that.isOnline,_that.lastReadingAt,_that.minutesOffline,_that.variablesCount,_that.lat,_that.lon,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String deviceType,  String? projectName,  bool isOnline,  DateTime? lastReadingAt,  int? minutesOffline,  int? variablesCount,  double? lat,  double? lon,  String? address)  $default,) {final _that = this;
switch (_that) {
case _DeviceItem():
return $default(_that.id,_that.name,_that.deviceType,_that.projectName,_that.isOnline,_that.lastReadingAt,_that.minutesOffline,_that.variablesCount,_that.lat,_that.lon,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String deviceType,  String? projectName,  bool isOnline,  DateTime? lastReadingAt,  int? minutesOffline,  int? variablesCount,  double? lat,  double? lon,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _DeviceItem() when $default != null:
return $default(_that.id,_that.name,_that.deviceType,_that.projectName,_that.isOnline,_that.lastReadingAt,_that.minutesOffline,_that.variablesCount,_that.lat,_that.lon,_that.address);case _:
  return null;

}
}

}

/// @nodoc


class _DeviceItem implements DeviceItem {
  const _DeviceItem({required this.id, required this.name, this.deviceType = 'CUSTOM', this.projectName, this.isOnline = false, this.lastReadingAt, this.minutesOffline, this.variablesCount, this.lat, this.lon, this.address});
  

@override final  int id;
@override final  String name;
@override@JsonKey() final  String deviceType;
@override final  String? projectName;
@override@JsonKey() final  bool isOnline;
@override final  DateTime? lastReadingAt;
@override final  int? minutesOffline;
@override final  int? variablesCount;
@override final  double? lat;
@override final  double? lon;
@override final  String? address;

/// Create a copy of DeviceItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceItemCopyWith<_DeviceItem> get copyWith => __$DeviceItemCopyWithImpl<_DeviceItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.projectName, projectName) || other.projectName == projectName)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastReadingAt, lastReadingAt) || other.lastReadingAt == lastReadingAt)&&(identical(other.minutesOffline, minutesOffline) || other.minutesOffline == minutesOffline)&&(identical(other.variablesCount, variablesCount) || other.variablesCount == variablesCount)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.address, address) || other.address == address));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,deviceType,projectName,isOnline,lastReadingAt,minutesOffline,variablesCount,lat,lon,address);

@override
String toString() {
  return 'DeviceItem(id: $id, name: $name, deviceType: $deviceType, projectName: $projectName, isOnline: $isOnline, lastReadingAt: $lastReadingAt, minutesOffline: $minutesOffline, variablesCount: $variablesCount, lat: $lat, lon: $lon, address: $address)';
}


}

/// @nodoc
abstract mixin class _$DeviceItemCopyWith<$Res> implements $DeviceItemCopyWith<$Res> {
  factory _$DeviceItemCopyWith(_DeviceItem value, $Res Function(_DeviceItem) _then) = __$DeviceItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String deviceType, String? projectName, bool isOnline, DateTime? lastReadingAt, int? minutesOffline, int? variablesCount, double? lat, double? lon, String? address
});




}
/// @nodoc
class __$DeviceItemCopyWithImpl<$Res>
    implements _$DeviceItemCopyWith<$Res> {
  __$DeviceItemCopyWithImpl(this._self, this._then);

  final _DeviceItem _self;
  final $Res Function(_DeviceItem) _then;

/// Create a copy of DeviceItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? deviceType = null,Object? projectName = freezed,Object? isOnline = null,Object? lastReadingAt = freezed,Object? minutesOffline = freezed,Object? variablesCount = freezed,Object? lat = freezed,Object? lon = freezed,Object? address = freezed,}) {
  return _then(_DeviceItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,deviceType: null == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String,projectName: freezed == projectName ? _self.projectName : projectName // ignore: cast_nullable_to_non_nullable
as String?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastReadingAt: freezed == lastReadingAt ? _self.lastReadingAt : lastReadingAt // ignore: cast_nullable_to_non_nullable
as DateTime?,minutesOffline: freezed == minutesOffline ? _self.minutesOffline : minutesOffline // ignore: cast_nullable_to_non_nullable
as int?,variablesCount: freezed == variablesCount ? _self.variablesCount : variablesCount // ignore: cast_nullable_to_non_nullable
as int?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$DeviceVariable {

 int get id; String get name; String get variableType; String get unit; String? get chartColor;
/// Create a copy of DeviceVariable
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceVariableCopyWith<DeviceVariable> get copyWith => _$DeviceVariableCopyWithImpl<DeviceVariable>(this as DeviceVariable, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceVariable&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.variableType, variableType) || other.variableType == variableType)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.chartColor, chartColor) || other.chartColor == chartColor));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,variableType,unit,chartColor);

@override
String toString() {
  return 'DeviceVariable(id: $id, name: $name, variableType: $variableType, unit: $unit, chartColor: $chartColor)';
}


}

/// @nodoc
abstract mixin class $DeviceVariableCopyWith<$Res>  {
  factory $DeviceVariableCopyWith(DeviceVariable value, $Res Function(DeviceVariable) _then) = _$DeviceVariableCopyWithImpl;
@useResult
$Res call({
 int id, String name, String variableType, String unit, String? chartColor
});




}
/// @nodoc
class _$DeviceVariableCopyWithImpl<$Res>
    implements $DeviceVariableCopyWith<$Res> {
  _$DeviceVariableCopyWithImpl(this._self, this._then);

  final DeviceVariable _self;
  final $Res Function(DeviceVariable) _then;

/// Create a copy of DeviceVariable
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? variableType = null,Object? unit = null,Object? chartColor = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,variableType: null == variableType ? _self.variableType : variableType // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,chartColor: freezed == chartColor ? _self.chartColor : chartColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceVariable].
extension DeviceVariablePatterns on DeviceVariable {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceVariable value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceVariable() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceVariable value)  $default,){
final _that = this;
switch (_that) {
case _DeviceVariable():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceVariable value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceVariable() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String variableType,  String unit,  String? chartColor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceVariable() when $default != null:
return $default(_that.id,_that.name,_that.variableType,_that.unit,_that.chartColor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String variableType,  String unit,  String? chartColor)  $default,) {final _that = this;
switch (_that) {
case _DeviceVariable():
return $default(_that.id,_that.name,_that.variableType,_that.unit,_that.chartColor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String variableType,  String unit,  String? chartColor)?  $default,) {final _that = this;
switch (_that) {
case _DeviceVariable() when $default != null:
return $default(_that.id,_that.name,_that.variableType,_that.unit,_that.chartColor);case _:
  return null;

}
}

}

/// @nodoc


class _DeviceVariable implements DeviceVariable {
  const _DeviceVariable({required this.id, required this.name, this.variableType = 'CUSTOM', this.unit = '', this.chartColor});
  

@override final  int id;
@override final  String name;
@override@JsonKey() final  String variableType;
@override@JsonKey() final  String unit;
@override final  String? chartColor;

/// Create a copy of DeviceVariable
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceVariableCopyWith<_DeviceVariable> get copyWith => __$DeviceVariableCopyWithImpl<_DeviceVariable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceVariable&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.variableType, variableType) || other.variableType == variableType)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.chartColor, chartColor) || other.chartColor == chartColor));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,variableType,unit,chartColor);

@override
String toString() {
  return 'DeviceVariable(id: $id, name: $name, variableType: $variableType, unit: $unit, chartColor: $chartColor)';
}


}

/// @nodoc
abstract mixin class _$DeviceVariableCopyWith<$Res> implements $DeviceVariableCopyWith<$Res> {
  factory _$DeviceVariableCopyWith(_DeviceVariable value, $Res Function(_DeviceVariable) _then) = __$DeviceVariableCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String variableType, String unit, String? chartColor
});




}
/// @nodoc
class __$DeviceVariableCopyWithImpl<$Res>
    implements _$DeviceVariableCopyWith<$Res> {
  __$DeviceVariableCopyWithImpl(this._self, this._then);

  final _DeviceVariable _self;
  final $Res Function(_DeviceVariable) _then;

/// Create a copy of DeviceVariable
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? variableType = null,Object? unit = null,Object? chartColor = freezed,}) {
  return _then(_DeviceVariable(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,variableType: null == variableType ? _self.variableType : variableType // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,chartColor: freezed == chartColor ? _self.chartColor : chartColor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$DeviceDetail {

 DeviceItem get device; List<DeviceVariable> get variables; List<LatestValue> get latestReadings;
/// Create a copy of DeviceDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceDetailCopyWith<DeviceDetail> get copyWith => _$DeviceDetailCopyWithImpl<DeviceDetail>(this as DeviceDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceDetail&&(identical(other.device, device) || other.device == device)&&const DeepCollectionEquality().equals(other.variables, variables)&&const DeepCollectionEquality().equals(other.latestReadings, latestReadings));
}


@override
int get hashCode => Object.hash(runtimeType,device,const DeepCollectionEquality().hash(variables),const DeepCollectionEquality().hash(latestReadings));

@override
String toString() {
  return 'DeviceDetail(device: $device, variables: $variables, latestReadings: $latestReadings)';
}


}

/// @nodoc
abstract mixin class $DeviceDetailCopyWith<$Res>  {
  factory $DeviceDetailCopyWith(DeviceDetail value, $Res Function(DeviceDetail) _then) = _$DeviceDetailCopyWithImpl;
@useResult
$Res call({
 DeviceItem device, List<DeviceVariable> variables, List<LatestValue> latestReadings
});


$DeviceItemCopyWith<$Res> get device;

}
/// @nodoc
class _$DeviceDetailCopyWithImpl<$Res>
    implements $DeviceDetailCopyWith<$Res> {
  _$DeviceDetailCopyWithImpl(this._self, this._then);

  final DeviceDetail _self;
  final $Res Function(DeviceDetail) _then;

/// Create a copy of DeviceDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? device = null,Object? variables = null,Object? latestReadings = null,}) {
  return _then(_self.copyWith(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceItem,variables: null == variables ? _self.variables : variables // ignore: cast_nullable_to_non_nullable
as List<DeviceVariable>,latestReadings: null == latestReadings ? _self.latestReadings : latestReadings // ignore: cast_nullable_to_non_nullable
as List<LatestValue>,
  ));
}
/// Create a copy of DeviceDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceItemCopyWith<$Res> get device {
  
  return $DeviceItemCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [DeviceDetail].
extension DeviceDetailPatterns on DeviceDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceDetail value)  $default,){
final _that = this;
switch (_that) {
case _DeviceDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceDetail value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DeviceItem device,  List<DeviceVariable> variables,  List<LatestValue> latestReadings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceDetail() when $default != null:
return $default(_that.device,_that.variables,_that.latestReadings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DeviceItem device,  List<DeviceVariable> variables,  List<LatestValue> latestReadings)  $default,) {final _that = this;
switch (_that) {
case _DeviceDetail():
return $default(_that.device,_that.variables,_that.latestReadings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DeviceItem device,  List<DeviceVariable> variables,  List<LatestValue> latestReadings)?  $default,) {final _that = this;
switch (_that) {
case _DeviceDetail() when $default != null:
return $default(_that.device,_that.variables,_that.latestReadings);case _:
  return null;

}
}

}

/// @nodoc


class _DeviceDetail implements DeviceDetail {
  const _DeviceDetail({required this.device, this.variables = const [], this.latestReadings = const []});
  

@override final  DeviceItem device;
@override@JsonKey() final  List<DeviceVariable> variables;
@override@JsonKey() final  List<LatestValue> latestReadings;

/// Create a copy of DeviceDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceDetailCopyWith<_DeviceDetail> get copyWith => __$DeviceDetailCopyWithImpl<_DeviceDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceDetail&&(identical(other.device, device) || other.device == device)&&const DeepCollectionEquality().equals(other.variables, variables)&&const DeepCollectionEquality().equals(other.latestReadings, latestReadings));
}


@override
int get hashCode => Object.hash(runtimeType,device,const DeepCollectionEquality().hash(variables),const DeepCollectionEquality().hash(latestReadings));

@override
String toString() {
  return 'DeviceDetail(device: $device, variables: $variables, latestReadings: $latestReadings)';
}


}

/// @nodoc
abstract mixin class _$DeviceDetailCopyWith<$Res> implements $DeviceDetailCopyWith<$Res> {
  factory _$DeviceDetailCopyWith(_DeviceDetail value, $Res Function(_DeviceDetail) _then) = __$DeviceDetailCopyWithImpl;
@override @useResult
$Res call({
 DeviceItem device, List<DeviceVariable> variables, List<LatestValue> latestReadings
});


@override $DeviceItemCopyWith<$Res> get device;

}
/// @nodoc
class __$DeviceDetailCopyWithImpl<$Res>
    implements _$DeviceDetailCopyWith<$Res> {
  __$DeviceDetailCopyWithImpl(this._self, this._then);

  final _DeviceDetail _self;
  final $Res Function(_DeviceDetail) _then;

/// Create a copy of DeviceDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? device = null,Object? variables = null,Object? latestReadings = null,}) {
  return _then(_DeviceDetail(
device: null == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as DeviceItem,variables: null == variables ? _self.variables : variables // ignore: cast_nullable_to_non_nullable
as List<DeviceVariable>,latestReadings: null == latestReadings ? _self.latestReadings : latestReadings // ignore: cast_nullable_to_non_nullable
as List<LatestValue>,
  ));
}

/// Create a copy of DeviceDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DeviceItemCopyWith<$Res> get device {
  
  return $DeviceItemCopyWith<$Res>(_self.device, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

/// @nodoc
mixin _$DeviceOverview {

 int get total; int get online; int get offline; int get openAlerts; int get readingsToday; int get readingErrors;
/// Create a copy of DeviceOverview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceOverviewCopyWith<DeviceOverview> get copyWith => _$DeviceOverviewCopyWithImpl<DeviceOverview>(this as DeviceOverview, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceOverview&&(identical(other.total, total) || other.total == total)&&(identical(other.online, online) || other.online == online)&&(identical(other.offline, offline) || other.offline == offline)&&(identical(other.openAlerts, openAlerts) || other.openAlerts == openAlerts)&&(identical(other.readingsToday, readingsToday) || other.readingsToday == readingsToday)&&(identical(other.readingErrors, readingErrors) || other.readingErrors == readingErrors));
}


@override
int get hashCode => Object.hash(runtimeType,total,online,offline,openAlerts,readingsToday,readingErrors);

@override
String toString() {
  return 'DeviceOverview(total: $total, online: $online, offline: $offline, openAlerts: $openAlerts, readingsToday: $readingsToday, readingErrors: $readingErrors)';
}


}

/// @nodoc
abstract mixin class $DeviceOverviewCopyWith<$Res>  {
  factory $DeviceOverviewCopyWith(DeviceOverview value, $Res Function(DeviceOverview) _then) = _$DeviceOverviewCopyWithImpl;
@useResult
$Res call({
 int total, int online, int offline, int openAlerts, int readingsToday, int readingErrors
});




}
/// @nodoc
class _$DeviceOverviewCopyWithImpl<$Res>
    implements $DeviceOverviewCopyWith<$Res> {
  _$DeviceOverviewCopyWithImpl(this._self, this._then);

  final DeviceOverview _self;
  final $Res Function(DeviceOverview) _then;

/// Create a copy of DeviceOverview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? online = null,Object? offline = null,Object? openAlerts = null,Object? readingsToday = null,Object? readingErrors = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,online: null == online ? _self.online : online // ignore: cast_nullable_to_non_nullable
as int,offline: null == offline ? _self.offline : offline // ignore: cast_nullable_to_non_nullable
as int,openAlerts: null == openAlerts ? _self.openAlerts : openAlerts // ignore: cast_nullable_to_non_nullable
as int,readingsToday: null == readingsToday ? _self.readingsToday : readingsToday // ignore: cast_nullable_to_non_nullable
as int,readingErrors: null == readingErrors ? _self.readingErrors : readingErrors // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceOverview].
extension DeviceOverviewPatterns on DeviceOverview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceOverview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceOverview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceOverview value)  $default,){
final _that = this;
switch (_that) {
case _DeviceOverview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceOverview value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceOverview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int online,  int offline,  int openAlerts,  int readingsToday,  int readingErrors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceOverview() when $default != null:
return $default(_that.total,_that.online,_that.offline,_that.openAlerts,_that.readingsToday,_that.readingErrors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int online,  int offline,  int openAlerts,  int readingsToday,  int readingErrors)  $default,) {final _that = this;
switch (_that) {
case _DeviceOverview():
return $default(_that.total,_that.online,_that.offline,_that.openAlerts,_that.readingsToday,_that.readingErrors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int online,  int offline,  int openAlerts,  int readingsToday,  int readingErrors)?  $default,) {final _that = this;
switch (_that) {
case _DeviceOverview() when $default != null:
return $default(_that.total,_that.online,_that.offline,_that.openAlerts,_that.readingsToday,_that.readingErrors);case _:
  return null;

}
}

}

/// @nodoc


class _DeviceOverview implements DeviceOverview {
  const _DeviceOverview({this.total = 0, this.online = 0, this.offline = 0, this.openAlerts = 0, this.readingsToday = 0, this.readingErrors = 0});
  

@override@JsonKey() final  int total;
@override@JsonKey() final  int online;
@override@JsonKey() final  int offline;
@override@JsonKey() final  int openAlerts;
@override@JsonKey() final  int readingsToday;
@override@JsonKey() final  int readingErrors;

/// Create a copy of DeviceOverview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceOverviewCopyWith<_DeviceOverview> get copyWith => __$DeviceOverviewCopyWithImpl<_DeviceOverview>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceOverview&&(identical(other.total, total) || other.total == total)&&(identical(other.online, online) || other.online == online)&&(identical(other.offline, offline) || other.offline == offline)&&(identical(other.openAlerts, openAlerts) || other.openAlerts == openAlerts)&&(identical(other.readingsToday, readingsToday) || other.readingsToday == readingsToday)&&(identical(other.readingErrors, readingErrors) || other.readingErrors == readingErrors));
}


@override
int get hashCode => Object.hash(runtimeType,total,online,offline,openAlerts,readingsToday,readingErrors);

@override
String toString() {
  return 'DeviceOverview(total: $total, online: $online, offline: $offline, openAlerts: $openAlerts, readingsToday: $readingsToday, readingErrors: $readingErrors)';
}


}

/// @nodoc
abstract mixin class _$DeviceOverviewCopyWith<$Res> implements $DeviceOverviewCopyWith<$Res> {
  factory _$DeviceOverviewCopyWith(_DeviceOverview value, $Res Function(_DeviceOverview) _then) = __$DeviceOverviewCopyWithImpl;
@override @useResult
$Res call({
 int total, int online, int offline, int openAlerts, int readingsToday, int readingErrors
});




}
/// @nodoc
class __$DeviceOverviewCopyWithImpl<$Res>
    implements _$DeviceOverviewCopyWith<$Res> {
  __$DeviceOverviewCopyWithImpl(this._self, this._then);

  final _DeviceOverview _self;
  final $Res Function(_DeviceOverview) _then;

/// Create a copy of DeviceOverview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? online = null,Object? offline = null,Object? openAlerts = null,Object? readingsToday = null,Object? readingErrors = null,}) {
  return _then(_DeviceOverview(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,online: null == online ? _self.online : online // ignore: cast_nullable_to_non_nullable
as int,offline: null == offline ? _self.offline : offline // ignore: cast_nullable_to_non_nullable
as int,openAlerts: null == openAlerts ? _self.openAlerts : openAlerts // ignore: cast_nullable_to_non_nullable
as int,readingsToday: null == readingsToday ? _self.readingsToday : readingsToday // ignore: cast_nullable_to_non_nullable
as int,readingErrors: null == readingErrors ? _self.readingErrors : readingErrors // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DeviceStatus {

 String get id; String get name;@JsonKey(name: 'is_online') bool get isOnline;@JsonKey(name: 'is_disconnected') bool get isDisconnected;@JsonKey(name: 'last_reading_at') DateTime? get lastReadingAt;@JsonKey(name: 'minutes_since_last_reading') int? get minutesSinceLastReading;
/// Create a copy of DeviceStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceStatusCopyWith<DeviceStatus> get copyWith => _$DeviceStatusCopyWithImpl<DeviceStatus>(this as DeviceStatus, _$identity);

  /// Serializes this DeviceStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.isDisconnected, isDisconnected) || other.isDisconnected == isDisconnected)&&(identical(other.lastReadingAt, lastReadingAt) || other.lastReadingAt == lastReadingAt)&&(identical(other.minutesSinceLastReading, minutesSinceLastReading) || other.minutesSinceLastReading == minutesSinceLastReading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isOnline,isDisconnected,lastReadingAt,minutesSinceLastReading);

@override
String toString() {
  return 'DeviceStatus(id: $id, name: $name, isOnline: $isOnline, isDisconnected: $isDisconnected, lastReadingAt: $lastReadingAt, minutesSinceLastReading: $minutesSinceLastReading)';
}


}

/// @nodoc
abstract mixin class $DeviceStatusCopyWith<$Res>  {
  factory $DeviceStatusCopyWith(DeviceStatus value, $Res Function(DeviceStatus) _then) = _$DeviceStatusCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'is_online') bool isOnline,@JsonKey(name: 'is_disconnected') bool isDisconnected,@JsonKey(name: 'last_reading_at') DateTime? lastReadingAt,@JsonKey(name: 'minutes_since_last_reading') int? minutesSinceLastReading
});




}
/// @nodoc
class _$DeviceStatusCopyWithImpl<$Res>
    implements $DeviceStatusCopyWith<$Res> {
  _$DeviceStatusCopyWithImpl(this._self, this._then);

  final DeviceStatus _self;
  final $Res Function(DeviceStatus) _then;

/// Create a copy of DeviceStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isOnline = null,Object? isDisconnected = null,Object? lastReadingAt = freezed,Object? minutesSinceLastReading = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,isDisconnected: null == isDisconnected ? _self.isDisconnected : isDisconnected // ignore: cast_nullable_to_non_nullable
as bool,lastReadingAt: freezed == lastReadingAt ? _self.lastReadingAt : lastReadingAt // ignore: cast_nullable_to_non_nullable
as DateTime?,minutesSinceLastReading: freezed == minutesSinceLastReading ? _self.minutesSinceLastReading : minutesSinceLastReading // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceStatus].
extension DeviceStatusPatterns on DeviceStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceStatus value)  $default,){
final _that = this;
switch (_that) {
case _DeviceStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceStatus value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'is_online')  bool isOnline, @JsonKey(name: 'is_disconnected')  bool isDisconnected, @JsonKey(name: 'last_reading_at')  DateTime? lastReadingAt, @JsonKey(name: 'minutes_since_last_reading')  int? minutesSinceLastReading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceStatus() when $default != null:
return $default(_that.id,_that.name,_that.isOnline,_that.isDisconnected,_that.lastReadingAt,_that.minutesSinceLastReading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'is_online')  bool isOnline, @JsonKey(name: 'is_disconnected')  bool isDisconnected, @JsonKey(name: 'last_reading_at')  DateTime? lastReadingAt, @JsonKey(name: 'minutes_since_last_reading')  int? minutesSinceLastReading)  $default,) {final _that = this;
switch (_that) {
case _DeviceStatus():
return $default(_that.id,_that.name,_that.isOnline,_that.isDisconnected,_that.lastReadingAt,_that.minutesSinceLastReading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'is_online')  bool isOnline, @JsonKey(name: 'is_disconnected')  bool isDisconnected, @JsonKey(name: 'last_reading_at')  DateTime? lastReadingAt, @JsonKey(name: 'minutes_since_last_reading')  int? minutesSinceLastReading)?  $default,) {final _that = this;
switch (_that) {
case _DeviceStatus() when $default != null:
return $default(_that.id,_that.name,_that.isOnline,_that.isDisconnected,_that.lastReadingAt,_that.minutesSinceLastReading);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceStatus implements DeviceStatus {
  const _DeviceStatus({required this.id, required this.name, @JsonKey(name: 'is_online') this.isOnline = false, @JsonKey(name: 'is_disconnected') this.isDisconnected = false, @JsonKey(name: 'last_reading_at') this.lastReadingAt, @JsonKey(name: 'minutes_since_last_reading') this.minutesSinceLastReading});
  factory _DeviceStatus.fromJson(Map<String, dynamic> json) => _$DeviceStatusFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'is_online') final  bool isOnline;
@override@JsonKey(name: 'is_disconnected') final  bool isDisconnected;
@override@JsonKey(name: 'last_reading_at') final  DateTime? lastReadingAt;
@override@JsonKey(name: 'minutes_since_last_reading') final  int? minutesSinceLastReading;

/// Create a copy of DeviceStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceStatusCopyWith<_DeviceStatus> get copyWith => __$DeviceStatusCopyWithImpl<_DeviceStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.isDisconnected, isDisconnected) || other.isDisconnected == isDisconnected)&&(identical(other.lastReadingAt, lastReadingAt) || other.lastReadingAt == lastReadingAt)&&(identical(other.minutesSinceLastReading, minutesSinceLastReading) || other.minutesSinceLastReading == minutesSinceLastReading));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isOnline,isDisconnected,lastReadingAt,minutesSinceLastReading);

@override
String toString() {
  return 'DeviceStatus(id: $id, name: $name, isOnline: $isOnline, isDisconnected: $isDisconnected, lastReadingAt: $lastReadingAt, minutesSinceLastReading: $minutesSinceLastReading)';
}


}

/// @nodoc
abstract mixin class _$DeviceStatusCopyWith<$Res> implements $DeviceStatusCopyWith<$Res> {
  factory _$DeviceStatusCopyWith(_DeviceStatus value, $Res Function(_DeviceStatus) _then) = __$DeviceStatusCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'is_online') bool isOnline,@JsonKey(name: 'is_disconnected') bool isDisconnected,@JsonKey(name: 'last_reading_at') DateTime? lastReadingAt,@JsonKey(name: 'minutes_since_last_reading') int? minutesSinceLastReading
});




}
/// @nodoc
class __$DeviceStatusCopyWithImpl<$Res>
    implements _$DeviceStatusCopyWith<$Res> {
  __$DeviceStatusCopyWithImpl(this._self, this._then);

  final _DeviceStatus _self;
  final $Res Function(_DeviceStatus) _then;

/// Create a copy of DeviceStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isOnline = null,Object? isDisconnected = null,Object? lastReadingAt = freezed,Object? minutesSinceLastReading = freezed,}) {
  return _then(_DeviceStatus(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,isDisconnected: null == isDisconnected ? _self.isDisconnected : isDisconnected // ignore: cast_nullable_to_non_nullable
as bool,lastReadingAt: freezed == lastReadingAt ? _self.lastReadingAt : lastReadingAt // ignore: cast_nullable_to_non_nullable
as DateTime?,minutesSinceLastReading: freezed == minutesSinceLastReading ? _self.minutesSinceLastReading : minutesSinceLastReading // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$CalendarDay {

 String get date;@JsonKey(name: 'has_data') bool get hasData;@JsonKey(name: 'records_count') int get recordsCount;@JsonKey(name: 'error_count') int get errorCount;@JsonKey(name: 'avg_value') double? get avgValue;
/// Create a copy of CalendarDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarDayCopyWith<CalendarDay> get copyWith => _$CalendarDayCopyWithImpl<CalendarDay>(this as CalendarDay, _$identity);

  /// Serializes this CalendarDay to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarDay&&(identical(other.date, date) || other.date == date)&&(identical(other.hasData, hasData) || other.hasData == hasData)&&(identical(other.recordsCount, recordsCount) || other.recordsCount == recordsCount)&&(identical(other.errorCount, errorCount) || other.errorCount == errorCount)&&(identical(other.avgValue, avgValue) || other.avgValue == avgValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,hasData,recordsCount,errorCount,avgValue);

@override
String toString() {
  return 'CalendarDay(date: $date, hasData: $hasData, recordsCount: $recordsCount, errorCount: $errorCount, avgValue: $avgValue)';
}


}

/// @nodoc
abstract mixin class $CalendarDayCopyWith<$Res>  {
  factory $CalendarDayCopyWith(CalendarDay value, $Res Function(CalendarDay) _then) = _$CalendarDayCopyWithImpl;
@useResult
$Res call({
 String date,@JsonKey(name: 'has_data') bool hasData,@JsonKey(name: 'records_count') int recordsCount,@JsonKey(name: 'error_count') int errorCount,@JsonKey(name: 'avg_value') double? avgValue
});




}
/// @nodoc
class _$CalendarDayCopyWithImpl<$Res>
    implements $CalendarDayCopyWith<$Res> {
  _$CalendarDayCopyWithImpl(this._self, this._then);

  final CalendarDay _self;
  final $Res Function(CalendarDay) _then;

/// Create a copy of CalendarDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? hasData = null,Object? recordsCount = null,Object? errorCount = null,Object? avgValue = freezed,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,hasData: null == hasData ? _self.hasData : hasData // ignore: cast_nullable_to_non_nullable
as bool,recordsCount: null == recordsCount ? _self.recordsCount : recordsCount // ignore: cast_nullable_to_non_nullable
as int,errorCount: null == errorCount ? _self.errorCount : errorCount // ignore: cast_nullable_to_non_nullable
as int,avgValue: freezed == avgValue ? _self.avgValue : avgValue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarDay].
extension CalendarDayPatterns on CalendarDay {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarDay() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarDay value)  $default,){
final _that = this;
switch (_that) {
case _CalendarDay():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarDay value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarDay() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date, @JsonKey(name: 'has_data')  bool hasData, @JsonKey(name: 'records_count')  int recordsCount, @JsonKey(name: 'error_count')  int errorCount, @JsonKey(name: 'avg_value')  double? avgValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarDay() when $default != null:
return $default(_that.date,_that.hasData,_that.recordsCount,_that.errorCount,_that.avgValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date, @JsonKey(name: 'has_data')  bool hasData, @JsonKey(name: 'records_count')  int recordsCount, @JsonKey(name: 'error_count')  int errorCount, @JsonKey(name: 'avg_value')  double? avgValue)  $default,) {final _that = this;
switch (_that) {
case _CalendarDay():
return $default(_that.date,_that.hasData,_that.recordsCount,_that.errorCount,_that.avgValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date, @JsonKey(name: 'has_data')  bool hasData, @JsonKey(name: 'records_count')  int recordsCount, @JsonKey(name: 'error_count')  int errorCount, @JsonKey(name: 'avg_value')  double? avgValue)?  $default,) {final _that = this;
switch (_that) {
case _CalendarDay() when $default != null:
return $default(_that.date,_that.hasData,_that.recordsCount,_that.errorCount,_that.avgValue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CalendarDay implements CalendarDay {
  const _CalendarDay({required this.date, @JsonKey(name: 'has_data') this.hasData = false, @JsonKey(name: 'records_count') this.recordsCount = 0, @JsonKey(name: 'error_count') this.errorCount = 0, @JsonKey(name: 'avg_value') this.avgValue});
  factory _CalendarDay.fromJson(Map<String, dynamic> json) => _$CalendarDayFromJson(json);

@override final  String date;
@override@JsonKey(name: 'has_data') final  bool hasData;
@override@JsonKey(name: 'records_count') final  int recordsCount;
@override@JsonKey(name: 'error_count') final  int errorCount;
@override@JsonKey(name: 'avg_value') final  double? avgValue;

/// Create a copy of CalendarDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarDayCopyWith<_CalendarDay> get copyWith => __$CalendarDayCopyWithImpl<_CalendarDay>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarDayToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarDay&&(identical(other.date, date) || other.date == date)&&(identical(other.hasData, hasData) || other.hasData == hasData)&&(identical(other.recordsCount, recordsCount) || other.recordsCount == recordsCount)&&(identical(other.errorCount, errorCount) || other.errorCount == errorCount)&&(identical(other.avgValue, avgValue) || other.avgValue == avgValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,hasData,recordsCount,errorCount,avgValue);

@override
String toString() {
  return 'CalendarDay(date: $date, hasData: $hasData, recordsCount: $recordsCount, errorCount: $errorCount, avgValue: $avgValue)';
}


}

/// @nodoc
abstract mixin class _$CalendarDayCopyWith<$Res> implements $CalendarDayCopyWith<$Res> {
  factory _$CalendarDayCopyWith(_CalendarDay value, $Res Function(_CalendarDay) _then) = __$CalendarDayCopyWithImpl;
@override @useResult
$Res call({
 String date,@JsonKey(name: 'has_data') bool hasData,@JsonKey(name: 'records_count') int recordsCount,@JsonKey(name: 'error_count') int errorCount,@JsonKey(name: 'avg_value') double? avgValue
});




}
/// @nodoc
class __$CalendarDayCopyWithImpl<$Res>
    implements _$CalendarDayCopyWith<$Res> {
  __$CalendarDayCopyWithImpl(this._self, this._then);

  final _CalendarDay _self;
  final $Res Function(_CalendarDay) _then;

/// Create a copy of CalendarDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? hasData = null,Object? recordsCount = null,Object? errorCount = null,Object? avgValue = freezed,}) {
  return _then(_CalendarDay(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,hasData: null == hasData ? _self.hasData : hasData // ignore: cast_nullable_to_non_nullable
as bool,recordsCount: null == recordsCount ? _self.recordsCount : recordsCount // ignore: cast_nullable_to_non_nullable
as int,errorCount: null == errorCount ? _self.errorCount : errorCount // ignore: cast_nullable_to_non_nullable
as int,avgValue: freezed == avgValue ? _self.avgValue : avgValue // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$DeviceCalendar {

@JsonKey(name: 'device_id') String get deviceId;@JsonKey(name: 'device_name') String? get deviceName; List<CalendarDay> get calendar;
/// Create a copy of DeviceCalendar
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceCalendarCopyWith<DeviceCalendar> get copyWith => _$DeviceCalendarCopyWithImpl<DeviceCalendar>(this as DeviceCalendar, _$identity);

  /// Serializes this DeviceCalendar to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceCalendar&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&const DeepCollectionEquality().equals(other.calendar, calendar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,const DeepCollectionEquality().hash(calendar));

@override
String toString() {
  return 'DeviceCalendar(deviceId: $deviceId, deviceName: $deviceName, calendar: $calendar)';
}


}

/// @nodoc
abstract mixin class $DeviceCalendarCopyWith<$Res>  {
  factory $DeviceCalendarCopyWith(DeviceCalendar value, $Res Function(DeviceCalendar) _then) = _$DeviceCalendarCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device_id') String deviceId,@JsonKey(name: 'device_name') String? deviceName, List<CalendarDay> calendar
});




}
/// @nodoc
class _$DeviceCalendarCopyWithImpl<$Res>
    implements $DeviceCalendarCopyWith<$Res> {
  _$DeviceCalendarCopyWithImpl(this._self, this._then);

  final DeviceCalendar _self;
  final $Res Function(DeviceCalendar) _then;

/// Create a copy of DeviceCalendar
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = null,Object? deviceName = freezed,Object? calendar = null,}) {
  return _then(_self.copyWith(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,calendar: null == calendar ? _self.calendar : calendar // ignore: cast_nullable_to_non_nullable
as List<CalendarDay>,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceCalendar].
extension DeviceCalendarPatterns on DeviceCalendar {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceCalendar value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceCalendar() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceCalendar value)  $default,){
final _that = this;
switch (_that) {
case _DeviceCalendar():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceCalendar value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceCalendar() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String deviceId, @JsonKey(name: 'device_name')  String? deviceName,  List<CalendarDay> calendar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceCalendar() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.calendar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String deviceId, @JsonKey(name: 'device_name')  String? deviceName,  List<CalendarDay> calendar)  $default,) {final _that = this;
switch (_that) {
case _DeviceCalendar():
return $default(_that.deviceId,_that.deviceName,_that.calendar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device_id')  String deviceId, @JsonKey(name: 'device_name')  String? deviceName,  List<CalendarDay> calendar)?  $default,) {final _that = this;
switch (_that) {
case _DeviceCalendar() when $default != null:
return $default(_that.deviceId,_that.deviceName,_that.calendar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceCalendar implements DeviceCalendar {
  const _DeviceCalendar({@JsonKey(name: 'device_id') required this.deviceId, @JsonKey(name: 'device_name') this.deviceName, this.calendar = const []});
  factory _DeviceCalendar.fromJson(Map<String, dynamic> json) => _$DeviceCalendarFromJson(json);

@override@JsonKey(name: 'device_id') final  String deviceId;
@override@JsonKey(name: 'device_name') final  String? deviceName;
@override@JsonKey() final  List<CalendarDay> calendar;

/// Create a copy of DeviceCalendar
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceCalendarCopyWith<_DeviceCalendar> get copyWith => __$DeviceCalendarCopyWithImpl<_DeviceCalendar>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceCalendarToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceCalendar&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName)&&const DeepCollectionEquality().equals(other.calendar, calendar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceName,const DeepCollectionEquality().hash(calendar));

@override
String toString() {
  return 'DeviceCalendar(deviceId: $deviceId, deviceName: $deviceName, calendar: $calendar)';
}


}

/// @nodoc
abstract mixin class _$DeviceCalendarCopyWith<$Res> implements $DeviceCalendarCopyWith<$Res> {
  factory _$DeviceCalendarCopyWith(_DeviceCalendar value, $Res Function(_DeviceCalendar) _then) = __$DeviceCalendarCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device_id') String deviceId,@JsonKey(name: 'device_name') String? deviceName, List<CalendarDay> calendar
});




}
/// @nodoc
class __$DeviceCalendarCopyWithImpl<$Res>
    implements _$DeviceCalendarCopyWith<$Res> {
  __$DeviceCalendarCopyWithImpl(this._self, this._then);

  final _DeviceCalendar _self;
  final $Res Function(_DeviceCalendar) _then;

/// Create a copy of DeviceCalendar
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = null,Object? deviceName = freezed,Object? calendar = null,}) {
  return _then(_DeviceCalendar(
deviceId: null == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String,deviceName: freezed == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String?,calendar: null == calendar ? _self.calendar : calendar // ignore: cast_nullable_to_non_nullable
as List<CalendarDay>,
  ));
}


}


/// @nodoc
mixin _$LatestValue {

 String? get id;@JsonKey(name: 'reading_at') DateTime? get readingAt;@JsonKey(name: 'processed_value') double? get processedValue; String? get unit;@JsonKey(name: 'variable_id') String? get variableId;@JsonKey(name: 'variable_name') String? get variableName;@JsonKey(name: 'variable_type') String? get variableType;@JsonKey(name: 'is_error') bool get isError;
/// Create a copy of LatestValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LatestValueCopyWith<LatestValue> get copyWith => _$LatestValueCopyWithImpl<LatestValue>(this as LatestValue, _$identity);

  /// Serializes this LatestValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LatestValue&&(identical(other.id, id) || other.id == id)&&(identical(other.readingAt, readingAt) || other.readingAt == readingAt)&&(identical(other.processedValue, processedValue) || other.processedValue == processedValue)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.variableId, variableId) || other.variableId == variableId)&&(identical(other.variableName, variableName) || other.variableName == variableName)&&(identical(other.variableType, variableType) || other.variableType == variableType)&&(identical(other.isError, isError) || other.isError == isError));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,readingAt,processedValue,unit,variableId,variableName,variableType,isError);

@override
String toString() {
  return 'LatestValue(id: $id, readingAt: $readingAt, processedValue: $processedValue, unit: $unit, variableId: $variableId, variableName: $variableName, variableType: $variableType, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $LatestValueCopyWith<$Res>  {
  factory $LatestValueCopyWith(LatestValue value, $Res Function(LatestValue) _then) = _$LatestValueCopyWithImpl;
@useResult
$Res call({
 String? id,@JsonKey(name: 'reading_at') DateTime? readingAt,@JsonKey(name: 'processed_value') double? processedValue, String? unit,@JsonKey(name: 'variable_id') String? variableId,@JsonKey(name: 'variable_name') String? variableName,@JsonKey(name: 'variable_type') String? variableType,@JsonKey(name: 'is_error') bool isError
});




}
/// @nodoc
class _$LatestValueCopyWithImpl<$Res>
    implements $LatestValueCopyWith<$Res> {
  _$LatestValueCopyWithImpl(this._self, this._then);

  final LatestValue _self;
  final $Res Function(LatestValue) _then;

/// Create a copy of LatestValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? readingAt = freezed,Object? processedValue = freezed,Object? unit = freezed,Object? variableId = freezed,Object? variableName = freezed,Object? variableType = freezed,Object? isError = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,readingAt: freezed == readingAt ? _self.readingAt : readingAt // ignore: cast_nullable_to_non_nullable
as DateTime?,processedValue: freezed == processedValue ? _self.processedValue : processedValue // ignore: cast_nullable_to_non_nullable
as double?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,variableId: freezed == variableId ? _self.variableId : variableId // ignore: cast_nullable_to_non_nullable
as String?,variableName: freezed == variableName ? _self.variableName : variableName // ignore: cast_nullable_to_non_nullable
as String?,variableType: freezed == variableType ? _self.variableType : variableType // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LatestValue].
extension LatestValuePatterns on LatestValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LatestValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LatestValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LatestValue value)  $default,){
final _that = this;
switch (_that) {
case _LatestValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LatestValue value)?  $default,){
final _that = this;
switch (_that) {
case _LatestValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'reading_at')  DateTime? readingAt, @JsonKey(name: 'processed_value')  double? processedValue,  String? unit, @JsonKey(name: 'variable_id')  String? variableId, @JsonKey(name: 'variable_name')  String? variableName, @JsonKey(name: 'variable_type')  String? variableType, @JsonKey(name: 'is_error')  bool isError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LatestValue() when $default != null:
return $default(_that.id,_that.readingAt,_that.processedValue,_that.unit,_that.variableId,_that.variableName,_that.variableType,_that.isError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id, @JsonKey(name: 'reading_at')  DateTime? readingAt, @JsonKey(name: 'processed_value')  double? processedValue,  String? unit, @JsonKey(name: 'variable_id')  String? variableId, @JsonKey(name: 'variable_name')  String? variableName, @JsonKey(name: 'variable_type')  String? variableType, @JsonKey(name: 'is_error')  bool isError)  $default,) {final _that = this;
switch (_that) {
case _LatestValue():
return $default(_that.id,_that.readingAt,_that.processedValue,_that.unit,_that.variableId,_that.variableName,_that.variableType,_that.isError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id, @JsonKey(name: 'reading_at')  DateTime? readingAt, @JsonKey(name: 'processed_value')  double? processedValue,  String? unit, @JsonKey(name: 'variable_id')  String? variableId, @JsonKey(name: 'variable_name')  String? variableName, @JsonKey(name: 'variable_type')  String? variableType, @JsonKey(name: 'is_error')  bool isError)?  $default,) {final _that = this;
switch (_that) {
case _LatestValue() when $default != null:
return $default(_that.id,_that.readingAt,_that.processedValue,_that.unit,_that.variableId,_that.variableName,_that.variableType,_that.isError);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LatestValue implements LatestValue {
  const _LatestValue({this.id, @JsonKey(name: 'reading_at') this.readingAt, @JsonKey(name: 'processed_value') this.processedValue, this.unit, @JsonKey(name: 'variable_id') this.variableId, @JsonKey(name: 'variable_name') this.variableName, @JsonKey(name: 'variable_type') this.variableType, @JsonKey(name: 'is_error') this.isError = false});
  factory _LatestValue.fromJson(Map<String, dynamic> json) => _$LatestValueFromJson(json);

@override final  String? id;
@override@JsonKey(name: 'reading_at') final  DateTime? readingAt;
@override@JsonKey(name: 'processed_value') final  double? processedValue;
@override final  String? unit;
@override@JsonKey(name: 'variable_id') final  String? variableId;
@override@JsonKey(name: 'variable_name') final  String? variableName;
@override@JsonKey(name: 'variable_type') final  String? variableType;
@override@JsonKey(name: 'is_error') final  bool isError;

/// Create a copy of LatestValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LatestValueCopyWith<_LatestValue> get copyWith => __$LatestValueCopyWithImpl<_LatestValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LatestValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LatestValue&&(identical(other.id, id) || other.id == id)&&(identical(other.readingAt, readingAt) || other.readingAt == readingAt)&&(identical(other.processedValue, processedValue) || other.processedValue == processedValue)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.variableId, variableId) || other.variableId == variableId)&&(identical(other.variableName, variableName) || other.variableName == variableName)&&(identical(other.variableType, variableType) || other.variableType == variableType)&&(identical(other.isError, isError) || other.isError == isError));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,readingAt,processedValue,unit,variableId,variableName,variableType,isError);

@override
String toString() {
  return 'LatestValue(id: $id, readingAt: $readingAt, processedValue: $processedValue, unit: $unit, variableId: $variableId, variableName: $variableName, variableType: $variableType, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$LatestValueCopyWith<$Res> implements $LatestValueCopyWith<$Res> {
  factory _$LatestValueCopyWith(_LatestValue value, $Res Function(_LatestValue) _then) = __$LatestValueCopyWithImpl;
@override @useResult
$Res call({
 String? id,@JsonKey(name: 'reading_at') DateTime? readingAt,@JsonKey(name: 'processed_value') double? processedValue, String? unit,@JsonKey(name: 'variable_id') String? variableId,@JsonKey(name: 'variable_name') String? variableName,@JsonKey(name: 'variable_type') String? variableType,@JsonKey(name: 'is_error') bool isError
});




}
/// @nodoc
class __$LatestValueCopyWithImpl<$Res>
    implements _$LatestValueCopyWith<$Res> {
  __$LatestValueCopyWithImpl(this._self, this._then);

  final _LatestValue _self;
  final $Res Function(_LatestValue) _then;

/// Create a copy of LatestValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? readingAt = freezed,Object? processedValue = freezed,Object? unit = freezed,Object? variableId = freezed,Object? variableName = freezed,Object? variableType = freezed,Object? isError = null,}) {
  return _then(_LatestValue(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,readingAt: freezed == readingAt ? _self.readingAt : readingAt // ignore: cast_nullable_to_non_nullable
as DateTime?,processedValue: freezed == processedValue ? _self.processedValue : processedValue // ignore: cast_nullable_to_non_nullable
as double?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,variableId: freezed == variableId ? _self.variableId : variableId // ignore: cast_nullable_to_non_nullable
as String?,variableName: freezed == variableName ? _self.variableName : variableName // ignore: cast_nullable_to_non_nullable
as String?,variableType: freezed == variableType ? _self.variableType : variableType // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AlertSummary {

 int get total;@JsonKey(name: 'open_unacknowledged') int get openUnacknowledged; int get acknowledged;@JsonKey(name: 'by_severity_open') Map<String, int> get bySeverityOpen;
/// Create a copy of AlertSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlertSummaryCopyWith<AlertSummary> get copyWith => _$AlertSummaryCopyWithImpl<AlertSummary>(this as AlertSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlertSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.openUnacknowledged, openUnacknowledged) || other.openUnacknowledged == openUnacknowledged)&&(identical(other.acknowledged, acknowledged) || other.acknowledged == acknowledged)&&const DeepCollectionEquality().equals(other.bySeverityOpen, bySeverityOpen));
}


@override
int get hashCode => Object.hash(runtimeType,total,openUnacknowledged,acknowledged,const DeepCollectionEquality().hash(bySeverityOpen));

@override
String toString() {
  return 'AlertSummary(total: $total, openUnacknowledged: $openUnacknowledged, acknowledged: $acknowledged, bySeverityOpen: $bySeverityOpen)';
}


}

/// @nodoc
abstract mixin class $AlertSummaryCopyWith<$Res>  {
  factory $AlertSummaryCopyWith(AlertSummary value, $Res Function(AlertSummary) _then) = _$AlertSummaryCopyWithImpl;
@useResult
$Res call({
 int total,@JsonKey(name: 'open_unacknowledged') int openUnacknowledged, int acknowledged,@JsonKey(name: 'by_severity_open') Map<String, int> bySeverityOpen
});




}
/// @nodoc
class _$AlertSummaryCopyWithImpl<$Res>
    implements $AlertSummaryCopyWith<$Res> {
  _$AlertSummaryCopyWithImpl(this._self, this._then);

  final AlertSummary _self;
  final $Res Function(AlertSummary) _then;

/// Create a copy of AlertSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? openUnacknowledged = null,Object? acknowledged = null,Object? bySeverityOpen = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,openUnacknowledged: null == openUnacknowledged ? _self.openUnacknowledged : openUnacknowledged // ignore: cast_nullable_to_non_nullable
as int,acknowledged: null == acknowledged ? _self.acknowledged : acknowledged // ignore: cast_nullable_to_non_nullable
as int,bySeverityOpen: null == bySeverityOpen ? _self.bySeverityOpen : bySeverityOpen // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

}


/// Adds pattern-matching-related methods to [AlertSummary].
extension AlertSummaryPatterns on AlertSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlertSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlertSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlertSummary value)  $default,){
final _that = this;
switch (_that) {
case _AlertSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlertSummary value)?  $default,){
final _that = this;
switch (_that) {
case _AlertSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total, @JsonKey(name: 'open_unacknowledged')  int openUnacknowledged,  int acknowledged, @JsonKey(name: 'by_severity_open')  Map<String, int> bySeverityOpen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AlertSummary() when $default != null:
return $default(_that.total,_that.openUnacknowledged,_that.acknowledged,_that.bySeverityOpen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total, @JsonKey(name: 'open_unacknowledged')  int openUnacknowledged,  int acknowledged, @JsonKey(name: 'by_severity_open')  Map<String, int> bySeverityOpen)  $default,) {final _that = this;
switch (_that) {
case _AlertSummary():
return $default(_that.total,_that.openUnacknowledged,_that.acknowledged,_that.bySeverityOpen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total, @JsonKey(name: 'open_unacknowledged')  int openUnacknowledged,  int acknowledged, @JsonKey(name: 'by_severity_open')  Map<String, int> bySeverityOpen)?  $default,) {final _that = this;
switch (_that) {
case _AlertSummary() when $default != null:
return $default(_that.total,_that.openUnacknowledged,_that.acknowledged,_that.bySeverityOpen);case _:
  return null;

}
}

}

/// @nodoc


class _AlertSummary implements AlertSummary {
  const _AlertSummary({this.total = 0, @JsonKey(name: 'open_unacknowledged') this.openUnacknowledged = 0, this.acknowledged = 0, @JsonKey(name: 'by_severity_open') this.bySeverityOpen = const {}});
  

@override@JsonKey() final  int total;
@override@JsonKey(name: 'open_unacknowledged') final  int openUnacknowledged;
@override@JsonKey() final  int acknowledged;
@override@JsonKey(name: 'by_severity_open') final  Map<String, int> bySeverityOpen;

/// Create a copy of AlertSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlertSummaryCopyWith<_AlertSummary> get copyWith => __$AlertSummaryCopyWithImpl<_AlertSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlertSummary&&(identical(other.total, total) || other.total == total)&&(identical(other.openUnacknowledged, openUnacknowledged) || other.openUnacknowledged == openUnacknowledged)&&(identical(other.acknowledged, acknowledged) || other.acknowledged == acknowledged)&&const DeepCollectionEquality().equals(other.bySeverityOpen, bySeverityOpen));
}


@override
int get hashCode => Object.hash(runtimeType,total,openUnacknowledged,acknowledged,const DeepCollectionEquality().hash(bySeverityOpen));

@override
String toString() {
  return 'AlertSummary(total: $total, openUnacknowledged: $openUnacknowledged, acknowledged: $acknowledged, bySeverityOpen: $bySeverityOpen)';
}


}

/// @nodoc
abstract mixin class _$AlertSummaryCopyWith<$Res> implements $AlertSummaryCopyWith<$Res> {
  factory _$AlertSummaryCopyWith(_AlertSummary value, $Res Function(_AlertSummary) _then) = __$AlertSummaryCopyWithImpl;
@override @useResult
$Res call({
 int total,@JsonKey(name: 'open_unacknowledged') int openUnacknowledged, int acknowledged,@JsonKey(name: 'by_severity_open') Map<String, int> bySeverityOpen
});




}
/// @nodoc
class __$AlertSummaryCopyWithImpl<$Res>
    implements _$AlertSummaryCopyWith<$Res> {
  __$AlertSummaryCopyWithImpl(this._self, this._then);

  final _AlertSummary _self;
  final $Res Function(_AlertSummary) _then;

/// Create a copy of AlertSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? openUnacknowledged = null,Object? acknowledged = null,Object? bySeverityOpen = null,}) {
  return _then(_AlertSummary(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,openUnacknowledged: null == openUnacknowledged ? _self.openUnacknowledged : openUnacknowledged // ignore: cast_nullable_to_non_nullable
as int,acknowledged: null == acknowledged ? _self.acknowledged : acknowledged // ignore: cast_nullable_to_non_nullable
as int,bySeverityOpen: null == bySeverityOpen ? _self.bySeverityOpen : bySeverityOpen // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}


}


/// @nodoc
mixin _$DailyPoint {

 String get date;@JsonKey(name: 'avg_value') double? get avgValue;@JsonKey(name: 'sum_value') double? get sumValue;@JsonKey(name: 'records_count') int get recordsCount;
/// Create a copy of DailyPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyPointCopyWith<DailyPoint> get copyWith => _$DailyPointCopyWithImpl<DailyPoint>(this as DailyPoint, _$identity);

  /// Serializes this DailyPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.avgValue, avgValue) || other.avgValue == avgValue)&&(identical(other.sumValue, sumValue) || other.sumValue == sumValue)&&(identical(other.recordsCount, recordsCount) || other.recordsCount == recordsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,avgValue,sumValue,recordsCount);

@override
String toString() {
  return 'DailyPoint(date: $date, avgValue: $avgValue, sumValue: $sumValue, recordsCount: $recordsCount)';
}


}

/// @nodoc
abstract mixin class $DailyPointCopyWith<$Res>  {
  factory $DailyPointCopyWith(DailyPoint value, $Res Function(DailyPoint) _then) = _$DailyPointCopyWithImpl;
@useResult
$Res call({
 String date,@JsonKey(name: 'avg_value') double? avgValue,@JsonKey(name: 'sum_value') double? sumValue,@JsonKey(name: 'records_count') int recordsCount
});




}
/// @nodoc
class _$DailyPointCopyWithImpl<$Res>
    implements $DailyPointCopyWith<$Res> {
  _$DailyPointCopyWithImpl(this._self, this._then);

  final DailyPoint _self;
  final $Res Function(DailyPoint) _then;

/// Create a copy of DailyPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? avgValue = freezed,Object? sumValue = freezed,Object? recordsCount = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,avgValue: freezed == avgValue ? _self.avgValue : avgValue // ignore: cast_nullable_to_non_nullable
as double?,sumValue: freezed == sumValue ? _self.sumValue : sumValue // ignore: cast_nullable_to_non_nullable
as double?,recordsCount: null == recordsCount ? _self.recordsCount : recordsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyPoint].
extension DailyPointPatterns on DailyPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyPoint value)  $default,){
final _that = this;
switch (_that) {
case _DailyPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyPoint value)?  $default,){
final _that = this;
switch (_that) {
case _DailyPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date, @JsonKey(name: 'avg_value')  double? avgValue, @JsonKey(name: 'sum_value')  double? sumValue, @JsonKey(name: 'records_count')  int recordsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyPoint() when $default != null:
return $default(_that.date,_that.avgValue,_that.sumValue,_that.recordsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date, @JsonKey(name: 'avg_value')  double? avgValue, @JsonKey(name: 'sum_value')  double? sumValue, @JsonKey(name: 'records_count')  int recordsCount)  $default,) {final _that = this;
switch (_that) {
case _DailyPoint():
return $default(_that.date,_that.avgValue,_that.sumValue,_that.recordsCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date, @JsonKey(name: 'avg_value')  double? avgValue, @JsonKey(name: 'sum_value')  double? sumValue, @JsonKey(name: 'records_count')  int recordsCount)?  $default,) {final _that = this;
switch (_that) {
case _DailyPoint() when $default != null:
return $default(_that.date,_that.avgValue,_that.sumValue,_that.recordsCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyPoint implements DailyPoint {
  const _DailyPoint({required this.date, @JsonKey(name: 'avg_value') this.avgValue, @JsonKey(name: 'sum_value') this.sumValue, @JsonKey(name: 'records_count') this.recordsCount = 0});
  factory _DailyPoint.fromJson(Map<String, dynamic> json) => _$DailyPointFromJson(json);

@override final  String date;
@override@JsonKey(name: 'avg_value') final  double? avgValue;
@override@JsonKey(name: 'sum_value') final  double? sumValue;
@override@JsonKey(name: 'records_count') final  int recordsCount;

/// Create a copy of DailyPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyPointCopyWith<_DailyPoint> get copyWith => __$DailyPointCopyWithImpl<_DailyPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyPoint&&(identical(other.date, date) || other.date == date)&&(identical(other.avgValue, avgValue) || other.avgValue == avgValue)&&(identical(other.sumValue, sumValue) || other.sumValue == sumValue)&&(identical(other.recordsCount, recordsCount) || other.recordsCount == recordsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,avgValue,sumValue,recordsCount);

@override
String toString() {
  return 'DailyPoint(date: $date, avgValue: $avgValue, sumValue: $sumValue, recordsCount: $recordsCount)';
}


}

/// @nodoc
abstract mixin class _$DailyPointCopyWith<$Res> implements $DailyPointCopyWith<$Res> {
  factory _$DailyPointCopyWith(_DailyPoint value, $Res Function(_DailyPoint) _then) = __$DailyPointCopyWithImpl;
@override @useResult
$Res call({
 String date,@JsonKey(name: 'avg_value') double? avgValue,@JsonKey(name: 'sum_value') double? sumValue,@JsonKey(name: 'records_count') int recordsCount
});




}
/// @nodoc
class __$DailyPointCopyWithImpl<$Res>
    implements _$DailyPointCopyWith<$Res> {
  __$DailyPointCopyWithImpl(this._self, this._then);

  final _DailyPoint _self;
  final $Res Function(_DailyPoint) _then;

/// Create a copy of DailyPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? avgValue = freezed,Object? sumValue = freezed,Object? recordsCount = null,}) {
  return _then(_DailyPoint(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,avgValue: freezed == avgValue ? _self.avgValue : avgValue // ignore: cast_nullable_to_non_nullable
as double?,sumValue: freezed == sumValue ? _self.sumValue : sumValue // ignore: cast_nullable_to_non_nullable
as double?,recordsCount: null == recordsCount ? _self.recordsCount : recordsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
