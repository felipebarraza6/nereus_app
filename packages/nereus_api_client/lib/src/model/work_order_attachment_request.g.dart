// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_attachment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WorkOrderAttachmentRequestCWProxy {
  WorkOrderAttachmentRequest workOrder(String workOrder);

  WorkOrderAttachmentRequest file(MultipartFile? file);

  WorkOrderAttachmentRequest description(String? description);

  WorkOrderAttachmentRequest uploadedBy(int? uploadedBy);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderAttachmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderAttachmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderAttachmentRequest call({
    String workOrder,
    MultipartFile? file,
    String? description,
    int? uploadedBy,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWorkOrderAttachmentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWorkOrderAttachmentRequest.copyWith.fieldName(...)`
class _$WorkOrderAttachmentRequestCWProxyImpl
    implements _$WorkOrderAttachmentRequestCWProxy {
  const _$WorkOrderAttachmentRequestCWProxyImpl(this._value);

  final WorkOrderAttachmentRequest _value;

  @override
  WorkOrderAttachmentRequest workOrder(String workOrder) =>
      this(workOrder: workOrder);

  @override
  WorkOrderAttachmentRequest file(MultipartFile? file) => this(file: file);

  @override
  WorkOrderAttachmentRequest description(String? description) =>
      this(description: description);

  @override
  WorkOrderAttachmentRequest uploadedBy(int? uploadedBy) =>
      this(uploadedBy: uploadedBy);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderAttachmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderAttachmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderAttachmentRequest call({
    Object? workOrder = const $CopyWithPlaceholder(),
    Object? file = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? uploadedBy = const $CopyWithPlaceholder(),
  }) {
    return WorkOrderAttachmentRequest(
      workOrder: workOrder == const $CopyWithPlaceholder()
          ? _value.workOrder
          // ignore: cast_nullable_to_non_nullable
          : workOrder as String,
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

extension $WorkOrderAttachmentRequestCopyWith on WorkOrderAttachmentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfWorkOrderAttachmentRequest.copyWith(...)` or like so:`instanceOfWorkOrderAttachmentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WorkOrderAttachmentRequestCWProxy get copyWith =>
      _$WorkOrderAttachmentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrderAttachmentRequest _$WorkOrderAttachmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WorkOrderAttachmentRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['work_order']);
    final val = WorkOrderAttachmentRequest(
      workOrder: $checkedConvert('work_order', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      uploadedBy: $checkedConvert('uploaded_by', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {'workOrder': 'work_order', 'uploadedBy': 'uploaded_by'},
);

Map<String, dynamic> _$WorkOrderAttachmentRequestToJson(
  WorkOrderAttachmentRequest instance,
) => <String, dynamic>{
  'work_order': instance.workOrder,
  'description': ?instance.description,
  'uploaded_by': ?instance.uploadedBy,
};
