// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_work_order_attachment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedWorkOrderAttachmentRequestCWProxy {
  PatchedWorkOrderAttachmentRequest workOrder(String? workOrder);

  PatchedWorkOrderAttachmentRequest file(MultipartFile? file);

  PatchedWorkOrderAttachmentRequest description(String? description);

  PatchedWorkOrderAttachmentRequest uploadedBy(int? uploadedBy);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedWorkOrderAttachmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedWorkOrderAttachmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedWorkOrderAttachmentRequest call({
    String? workOrder,
    MultipartFile? file,
    String? description,
    int? uploadedBy,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedWorkOrderAttachmentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedWorkOrderAttachmentRequest.copyWith.fieldName(...)`
class _$PatchedWorkOrderAttachmentRequestCWProxyImpl
    implements _$PatchedWorkOrderAttachmentRequestCWProxy {
  const _$PatchedWorkOrderAttachmentRequestCWProxyImpl(this._value);

  final PatchedWorkOrderAttachmentRequest _value;

  @override
  PatchedWorkOrderAttachmentRequest workOrder(String? workOrder) =>
      this(workOrder: workOrder);

  @override
  PatchedWorkOrderAttachmentRequest file(MultipartFile? file) =>
      this(file: file);

  @override
  PatchedWorkOrderAttachmentRequest description(String? description) =>
      this(description: description);

  @override
  PatchedWorkOrderAttachmentRequest uploadedBy(int? uploadedBy) =>
      this(uploadedBy: uploadedBy);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedWorkOrderAttachmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedWorkOrderAttachmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedWorkOrderAttachmentRequest call({
    Object? workOrder = const $CopyWithPlaceholder(),
    Object? file = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? uploadedBy = const $CopyWithPlaceholder(),
  }) {
    return PatchedWorkOrderAttachmentRequest(
      workOrder: workOrder == const $CopyWithPlaceholder()
          ? _value.workOrder
          // ignore: cast_nullable_to_non_nullable
          : workOrder as String?,
      file: file == const $CopyWithPlaceholder()
          ? _value.file
          // ignore: cast_nullable_to_non_nullable
          : file as MultipartFile?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      uploadedBy: uploadedBy == const $CopyWithPlaceholder()
          ? _value.uploadedBy
          // ignore: cast_nullable_to_non_nullable
          : uploadedBy as int?,
    );
  }
}

extension $PatchedWorkOrderAttachmentRequestCopyWith
    on PatchedWorkOrderAttachmentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedWorkOrderAttachmentRequest.copyWith(...)` or like so:`instanceOfPatchedWorkOrderAttachmentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedWorkOrderAttachmentRequestCWProxy get copyWith =>
      _$PatchedWorkOrderAttachmentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedWorkOrderAttachmentRequest _$PatchedWorkOrderAttachmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedWorkOrderAttachmentRequest',
  json,
  ($checkedConvert) {
    final val = PatchedWorkOrderAttachmentRequest(
      workOrder: $checkedConvert('work_order', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      uploadedBy: $checkedConvert('uploaded_by', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {'workOrder': 'work_order', 'uploadedBy': 'uploaded_by'},
);

Map<String, dynamic> _$PatchedWorkOrderAttachmentRequestToJson(
  PatchedWorkOrderAttachmentRequest instance,
) => <String, dynamic>{
  'work_order': ?instance.workOrder,
  'description': ?instance.description,
  'uploaded_by': ?instance.uploadedBy,
};
