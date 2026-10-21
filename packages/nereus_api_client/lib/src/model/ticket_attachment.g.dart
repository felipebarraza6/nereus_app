// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketAttachmentCWProxy {
  TicketAttachment id(String id);

  TicketAttachment ticket(String ticket);

  TicketAttachment file(String file);

  TicketAttachment fileUrl(String fileUrl);

  TicketAttachment description(String? description);

  TicketAttachment uploadedBy(int? uploadedBy);

  TicketAttachment uploadedByName(String uploadedByName);

  TicketAttachment created(DateTime created);

  TicketAttachment modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketAttachment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketAttachment(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketAttachment call({
    String id,
    String ticket,
    String file,
    String fileUrl,
    String? description,
    int? uploadedBy,
    String uploadedByName,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketAttachment.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketAttachment.copyWith.fieldName(...)`
class _$TicketAttachmentCWProxyImpl implements _$TicketAttachmentCWProxy {
  const _$TicketAttachmentCWProxyImpl(this._value);

  final TicketAttachment _value;

  @override
  TicketAttachment id(String id) => this(id: id);

  @override
  TicketAttachment ticket(String ticket) => this(ticket: ticket);

  @override
  TicketAttachment file(String file) => this(file: file);

  @override
  TicketAttachment fileUrl(String fileUrl) => this(fileUrl: fileUrl);

  @override
  TicketAttachment description(String? description) =>
      this(description: description);

  @override
  TicketAttachment uploadedBy(int? uploadedBy) => this(uploadedBy: uploadedBy);

  @override
  TicketAttachment uploadedByName(String uploadedByName) =>
      this(uploadedByName: uploadedByName);

  @override
  TicketAttachment created(DateTime created) => this(created: created);

  @override
  TicketAttachment modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketAttachment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketAttachment(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketAttachment call({
    Object? id = const $CopyWithPlaceholder(),
    Object? ticket = const $CopyWithPlaceholder(),
    Object? file = const $CopyWithPlaceholder(),
    Object? fileUrl = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? uploadedBy = const $CopyWithPlaceholder(),
    Object? uploadedByName = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TicketAttachment(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String,
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

extension $TicketAttachmentCopyWith on TicketAttachment {
  /// Returns a callable class that can be used as follows: `instanceOfTicketAttachment.copyWith(...)` or like so:`instanceOfTicketAttachment.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketAttachmentCWProxy get copyWith => _$TicketAttachmentCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketAttachment _$TicketAttachmentFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TicketAttachment',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'ticket',
        'file',
        'file_url',
        'uploaded_by_name',
        'created',
        'modified',
      ],
    );
    final val = TicketAttachment(
      id: $checkedConvert('id', (v) => v as String),
      ticket: $checkedConvert('ticket', (v) => v as String),
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
    'fileUrl': 'file_url',
    'uploadedBy': 'uploaded_by',
    'uploadedByName': 'uploaded_by_name',
  },
);

Map<String, dynamic> _$TicketAttachmentToJson(TicketAttachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket': instance.ticket,
      'file': instance.file,
      'file_url': instance.fileUrl,
      'description': ?instance.description,
      'uploaded_by': ?instance.uploadedBy,
      'uploaded_by_name': instance.uploadedByName,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };
