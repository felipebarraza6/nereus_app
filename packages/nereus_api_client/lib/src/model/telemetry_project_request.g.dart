// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_project_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TelemetryProjectRequestCWProxy {
  TelemetryProjectRequest name(String name);

  TelemetryProjectRequest codeInternal(String? codeInternal);

  TelemetryProjectRequest description(String? description);

  TelemetryProjectRequest branch(int branch);

  TelemetryProjectRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryProjectRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryProjectRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryProjectRequest call({
    String name,
    String? codeInternal,
    String? description,
    int branch,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTelemetryProjectRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTelemetryProjectRequest.copyWith.fieldName(...)`
class _$TelemetryProjectRequestCWProxyImpl
    implements _$TelemetryProjectRequestCWProxy {
  const _$TelemetryProjectRequestCWProxyImpl(this._value);

  final TelemetryProjectRequest _value;

  @override
  TelemetryProjectRequest name(String name) => this(name: name);

  @override
  TelemetryProjectRequest codeInternal(String? codeInternal) =>
      this(codeInternal: codeInternal);

  @override
  TelemetryProjectRequest description(String? description) =>
      this(description: description);

  @override
  TelemetryProjectRequest branch(int branch) => this(branch: branch);

  @override
  TelemetryProjectRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TelemetryProjectRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TelemetryProjectRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TelemetryProjectRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? codeInternal = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return TelemetryProjectRequest(
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
    );
  }
}

extension $TelemetryProjectRequestCopyWith on TelemetryProjectRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTelemetryProjectRequest.copyWith(...)` or like so:`instanceOfTelemetryProjectRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TelemetryProjectRequestCWProxy get copyWith =>
      _$TelemetryProjectRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TelemetryProjectRequest _$TelemetryProjectRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TelemetryProjectRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['name', 'branch']);
    final val = TelemetryProjectRequest(
      name: $checkedConvert('name', (v) => v as String),
      codeInternal: $checkedConvert('code_internal', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      branch: $checkedConvert('branch', (v) => (v as num).toInt()),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {'codeInternal': 'code_internal', 'isActive': 'is_active'},
);

Map<String, dynamic> _$TelemetryProjectRequestToJson(
  TelemetryProjectRequest instance,
) => <String, dynamic>{
  'name': instance.name,
  'code_internal': ?instance.codeInternal,
  'description': ?instance.description,
  'branch': instance.branch,
  'is_active': ?instance.isActive,
};
