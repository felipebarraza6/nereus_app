// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_attachment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketAttachmentRequestCWProxy {
  TicketAttachmentRequest ticket(String ticket);

  TicketAttachmentRequest file(MultipartFile? file);

  TicketAttachmentRequest description(String? description);

  TicketAttachmentRequest uploadedBy(int? uploadedBy);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketAttachmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketAttachmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketAttachmentRequest call({
    String ticket,
    MultipartFile? file,
    String? description,
    int? uploadedBy,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketAttachmentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketAttachmentRequest.copyWith.fieldName(...)`
class _$TicketAttachmentRequestCWProxyImpl
    implements _$TicketAttachmentRequestCWProxy {
  const _$TicketAttachmentRequestCWProxyImpl(this._value);

  final TicketAttachmentRequest _value;

  @override
  TicketAttachmentRequest ticket(String ticket) => this(ticket: ticket);

  @override
  TicketAttachmentRequest file(MultipartFile? file) => this(file: file);

  @override
  TicketAttachmentRequest description(String? description) =>
      this(description: description);

  @override
  TicketAttachmentRequest uploadedBy(int? uploadedBy) =>
      this(uploadedBy: uploadedBy);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketAttachmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketAttachmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketAttachmentRequest call({
    Object? ticket = const $CopyWithPlaceholder(),
    Object? file = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? uploadedBy = const $CopyWithPlaceholder(),
  }) {
    return TicketAttachmentRequest(
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String,
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

extension $TicketAttachmentRequestCopyWith on TicketAttachmentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTicketAttachmentRequest.copyWith(...)` or like so:`instanceOfTicketAttachmentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketAttachmentRequestCWProxy get copyWith =>
      _$TicketAttachmentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketAttachmentRequest _$TicketAttachmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TicketAttachmentRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['ticket']);
  final val = TicketAttachmentRequest(
    ticket: $checkedConvert('ticket', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String?),
    uploadedBy: $checkedConvert('uploaded_by', (v) => (v as num?)?.toInt()),
  );
  return val;
}, fieldKeyMap: const {'uploadedBy': 'uploaded_by'});

Map<String, dynamic> _$TicketAttachmentRequestToJson(
  TicketAttachmentRequest instance,
) => <String, dynamic>{
  'ticket': instance.ticket,
  'description': ?instance.description,
  'uploaded_by': ?instance.uploadedBy,
};
