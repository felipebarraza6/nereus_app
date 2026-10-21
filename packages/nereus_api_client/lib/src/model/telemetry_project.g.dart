// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_project.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryProjectCWProxy {
  TelemetryProject id(int id);

  TelemetryProject name(String name);

  TelemetryProject codeInternal(String? codeInternal);

  TelemetryProject description(String? description);

  TelemetryProject branch(int branch);

  TelemetryProject isActive(bool? isActive);

  TelemetryProject deviceCount(String deviceCount);

  TelemetryProject created(DateTime created);

  TelemetryProject modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryProject(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryProject(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryProject call({
    int id,
    String name,
    String? codeInternal,
    String? description,
    int branch,
    bool? isActive,
    String deviceCount,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryProject.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryProject.copyWith.fieldName(...)`
class _$TelemetryProjectCWProxyImpl implements _$TelemetryProjectCWProxy {
  const _$TelemetryProjectCWProxyImpl(this._value);

  final TelemetryProject _value;

  @override
  TelemetryProject id(int id) => this(id: id);

  @override
  TelemetryProject name(String name) => this(name: name);

  @override
  TelemetryProject codeInternal(String? codeInternal) =>
      this(codeInternal: codeInternal);

  @override
  TelemetryProject description(String? description) =>
      this(description: description);

  @override
  TelemetryProject branch(int branch) => this(branch: branch);

  @override
  TelemetryProject isActive(bool? isActive) => this(isActive: isActive);

  @override
  TelemetryProject deviceCount(String deviceCount) =>
      this(deviceCount: deviceCount);

  @override
  TelemetryProject created(DateTime created) => this(created: created);

  @override
  TelemetryProject modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryProject(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryProject(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryProject call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? codeInternal = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? deviceCount = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TelemetryProject(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      codeInternal: codeInternal == const $CopyWithPlaceholder()
          ? _value.codeInternal
          // ignore: cast_nullable_to_non_nullable
          : codeInternal as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      branch: branch == const $CopyWithPlaceholder()
          ? _value.branch
          // ignore: cast_nullable_to_non_nullable
          : branch as int,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      deviceCount: deviceCount == const $CopyWithPlaceholder()
          ? _value.deviceCount
          // ignore: cast_nullable_to_non_nullable
          : deviceCount as String,
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

extension $TelemetryProjectCopyWith on TelemetryProject {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryProject.copyWith(...)` or like so:`instanceOfTelemetryProject.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryProjectCWProxy get copyWith => _$TelemetryProjectCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryProject _$TelemetryProjectFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryProject',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'name',
        'branch',
        'device_count',
        'created',
        'modified',
      ],
    );
    final val = TelemetryProject(
      id: $checkedConvert('id', (v) => (v as num).toInt()),
      name: $checkedConvert('name', (v) => v as String),
      codeInternal: $checkedConvert('code_internal', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      branch: $checkedConvert('branch', (v) => (v as num).toInt()),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      deviceCount: $checkedConvert('device_count', (v) => v as String),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'codeInternal': 'code_internal',
    'isActive': 'is_active',
    'deviceCount': 'device_count',
  },
);

Map<String, dynamic> _$TelemetryProjectToJson(TelemetryProject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code_internal': ?instance.codeInternal,
      'description': ?instance.description,
      'branch': instance.branch,
      'is_active': ?instance.isActive,
      'device_count': instance.deviceCount,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
