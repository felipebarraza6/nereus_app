// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_ticket_attachment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedTicketAttachmentRequestCWProxy {
  PatchedTicketAttachmentRequest ticket(String? ticket);

  PatchedTicketAttachmentRequest file(MultipartFile? file);

  PatchedTicketAttachmentRequest description(String? description);

  PatchedTicketAttachmentRequest uploadedBy(int? uploadedBy);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketAttachmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketAttachmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketAttachmentRequest call({
    String? ticket,
    MultipartFile? file,
    String? description,
    int? uploadedBy,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedTicketAttachmentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedTicketAttachmentRequest.copyWith.fieldName(...)`
class _$PatchedTicketAttachmentRequestCWProxyImpl
    implements _$PatchedTicketAttachmentRequestCWProxy {
  const _$PatchedTicketAttachmentRequestCWProxyImpl(this._value);

  final PatchedTicketAttachmentRequest _value;

  @override
  PatchedTicketAttachmentRequest ticket(String? ticket) => this(ticket: ticket);

  @override
  PatchedTicketAttachmentRequest file(MultipartFile? file) => this(file: file);

  @override
  PatchedTicketAttachmentRequest description(String? description) =>
      this(description: description);

  @override
  PatchedTicketAttachmentRequest uploadedBy(int? uploadedBy) =>
      this(uploadedBy: uploadedBy);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketAttachmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketAttachmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketAttachmentRequest call({
    Object? ticket = const $CopyWithPlaceholder(),
    Object? file = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? uploadedBy = const $CopyWithPlaceholder(),
  }) {
    return PatchedTicketAttachmentRequest(
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String?,
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

extension $PatchedTicketAttachmentRequestCopyWith
    on PatchedTicketAttachmentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedTicketAttachmentRequest.copyWith(...)` or like so:`instanceOfPatchedTicketAttachmentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedTicketAttachmentRequestCWProxy get copyWith =>
      _$PatchedTicketAttachmentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedTicketAttachmentRequest _$PatchedTicketAttachmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedTicketAttachmentRequest',
  json,
  ($checkedConvert) {
    final val = PatchedTicketAttachmentRequest(
      ticket: $checkedConvert('ticket', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      uploadedBy: $checkedConvert('uploaded_by', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {'uploadedBy': 'uploaded_by'},
);

Map<String, dynamic> _$PatchedTicketAttachmentRequestToJson(
  PatchedTicketAttachmentRequest instance,
) => <String, dynamic>{
  'ticket': ?instance.ticket,
  'description': ?instance.description,
  'uploaded_by': ?instance.uploadedBy,
};
