// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_telemetry_project_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedTelemetryProjectRequestCWProxy {
  PatchedTelemetryProjectRequest name(String? name);

  PatchedTelemetryProjectRequest codeInternal(String? codeInternal);

  PatchedTelemetryProjectRequest description(String? description);

  PatchedTelemetryProjectRequest branch(int? branch);

  PatchedTelemetryProjectRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTelemetryProjectRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTelemetryProjectRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTelemetryProjectRequest call({
    String? name,
    String? codeInternal,
    String? description,
    int? branch,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedTelemetryProjectRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedTelemetryProjectRequest.copyWith.fieldName(...)`
class _$PatchedTelemetryProjectRequestCWProxyImpl
    implements _$PatchedTelemetryProjectRequestCWProxy {
  const _$PatchedTelemetryProjectRequestCWProxyImpl(this._value);

  final PatchedTelemetryProjectRequest _value;

  @override
  PatchedTelemetryProjectRequest name(String? name) => this(name: name);

  @override
  PatchedTelemetryProjectRequest codeInternal(String? codeInternal) =>
      this(codeInternal: codeInternal);

  @override
  PatchedTelemetryProjectRequest description(String? description) =>
      this(description: description);

  @override
  PatchedTelemetryProjectRequest branch(int? branch) => this(branch: branch);

  @override
  PatchedTelemetryProjectRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTelemetryProjectRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTelemetryProjectRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTelemetryProjectRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? codeInternal = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? branch = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return PatchedTelemetryProjectRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
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
          : branch as int?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $PatchedTelemetryProjectRequestCopyWith
    on PatchedTelemetryProjectRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedTelemetryProjectRequest.copyWith(...)` or like so:`instanceOfPatchedTelemetryProjectRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedTelemetryProjectRequestCWProxy get copyWith =>
      _$PatchedTelemetryProjectRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedTelemetryProjectRequest _$PatchedTelemetryProjectRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedTelemetryProjectRequest',
  json,
  ($checkedConvert) {
    final val = PatchedTelemetryProjectRequest(
      name: $checkedConvert('name', (v) => v as String?),
      codeInternal: $checkedConvert('code_internal', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      branch: $checkedConvert('branch', (v) => (v as num?)?.toInt()),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {'codeInternal': 'code_internal', 'isActive': 'is_active'},
);

Map<String, dynamic> _$PatchedTelemetryProjectRequestToJson(
  PatchedTelemetryProjectRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'code_internal': ?instance.codeInternal,
  'description': ?instance.description,
  'branch': ?instance.branch,
  'is_active': ?instance.isActive,
};
