// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_attachment.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WorkOrderAttachmentCWProxy {
  WorkOrderAttachment id(String id);

  WorkOrderAttachment workOrder(String workOrder);

  WorkOrderAttachment file(String file);

  WorkOrderAttachment fileUrl(String fileUrl);

  WorkOrderAttachment description(String? description);

  WorkOrderAttachment uploadedBy(int? uploadedBy);

  WorkOrderAttachment uploadedByName(String uploadedByName);

  WorkOrderAttachment created(DateTime created);

  WorkOrderAttachment modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderAttachment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderAttachment(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderAttachment call({
    String id,
    String workOrder,
    String file,
    String fileUrl,
    String? description,
    int? uploadedBy,
    String uploadedByName,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWorkOrderAttachment.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWorkOrderAttachment.copyWith.fieldName(...)`
class _$WorkOrderAttachmentCWProxyImpl implements _$WorkOrderAttachmentCWProxy {
  const _$WorkOrderAttachmentCWProxyImpl(this._value);

  final WorkOrderAttachment _value;

  @override
  WorkOrderAttachment id(String id) => this(id: id);

  @override
  WorkOrderAttachment workOrder(String workOrder) => this(workOrder: workOrder);

  @override
  WorkOrderAttachment file(String file) => this(file: file);

  @override
  WorkOrderAttachment fileUrl(String fileUrl) => this(fileUrl: fileUrl);

  @override
  WorkOrderAttachment description(String? description) =>
      this(description: description);

  @override
  WorkOrderAttachment uploadedBy(int? uploadedBy) =>
      this(uploadedBy: uploadedBy);

  @override
  WorkOrderAttachment uploadedByName(String uploadedByName) =>
      this(uploadedByName: uploadedByName);

  @override
  WorkOrderAttachment created(DateTime created) => this(created: created);

  @override
  WorkOrderAttachment modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderAttachment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderAttachment(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderAttachment call({
    Object? id = const $CopyWithPlaceholder(),
    Object? workOrder = const $CopyWithPlaceholder(),
    Object? file = const $CopyWithPlaceholder(),
    Object? fileUrl = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? uploadedBy = const $CopyWithPlaceholder(),
    Object? uploadedByName = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return WorkOrderAttachment(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      workOrder: workOrder == const $CopyWithPlaceholder()
          ? _value.workOrder
          // ignore: cast_nullable_to_non_nullable
          : workOrder as String,
      file: file == const $CopyWithPlaceholder()
          ? _value.file
          // ignore: cast_nullable_to_non_nullable
          : file as String,
      fileUrl: fileUrl == const $CopyWithPlaceholder()
          ? _value.fileUrl
          // ignore: cast_nullable_to_non_nullable
          : fileUrl as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      uploadedBy: uploadedBy == const $CopyWithPlaceholder()
          ? _value.uploadedBy
          // ignore: cast_nullable_to_non_nullable
          : uploadedBy as int?,
      uploadedByName: uploadedByName == const $CopyWithPlaceholder()
          ? _value.uploadedByName
          // ignore: cast_nullable_to_non_nullable
          : uploadedByName as String,
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

extension $WorkOrderAttachmentCopyWith on WorkOrderAttachment {
  /// Returns a callable class that can be used as follows: `instanceOfWorkOrderAttachment.copyWith(...)` or like so:`instanceOfWorkOrderAttachment.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WorkOrderAttachmentCWProxy get copyWith =>
      _$WorkOrderAttachmentCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrderAttachment _$WorkOrderAttachmentFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WorkOrderAttachment',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'work_order',
        'file',
        'file_url',
        'uploaded_by_name',
        'created',
        'modified',
      ],
    );
    final val = WorkOrderAttachment(
      id: $checkedConvert('id', (v) => v as String),
      workOrder: $checkedConvert('work_order', (v) => v as String),
      file: $checkedConvert('file', (v) => v as String),
      fileUrl: $checkedConvert('file_url', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      uploadedBy: $checkedConvert('uploaded_by', (v) => (v as num?)?.toInt()),
      uploadedByName: $checkedConvert('uploaded_by_name', (v) => v as String),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'workOrder': 'work_order',
    'fileUrl': 'file_url',
    'uploadedBy': 'uploaded_by',
    'uploadedByName': 'uploaded_by_name',
  },
);

Map<String, dynamic> _$WorkOrderAttachmentToJson(
  WorkOrderAttachment instance,
) => <String, dynamic>{
  'id': instance.id,
  'work_order': instance.workOrder,
  'file': instance.file,
  'file_url': instance.fileUrl,
  'description': ?instance.description,
  'uploaded_by': ?instance.uploadedBy,
  'uploaded_by_name': instance.uploadedByName,
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};
