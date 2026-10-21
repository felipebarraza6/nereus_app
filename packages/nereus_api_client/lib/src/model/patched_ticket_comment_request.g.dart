// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_ticket_comment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PatchedTicketCommentRequestCWProxy {
  PatchedTicketCommentRequest ticket(String? ticket);

  PatchedTicketCommentRequest author(int? author);

  PatchedTicketCommentRequest content(String? content);

  PatchedTicketCommentRequest visibility(
    PatchedTicketCommentRequestVisibilityEnum? visibility,
  );

  PatchedTicketCommentRequest isResolution(bool? isResolution);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketCommentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketCommentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketCommentRequest call({
    String? ticket,
    int? author,
    String? content,
    PatchedTicketCommentRequestVisibilityEnum? visibility,
    bool? isResolution,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPatchedTicketCommentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPatchedTicketCommentRequest.copyWith.fieldName(...)`
class _$PatchedTicketCommentRequestCWProxyImpl
    implements _$PatchedTicketCommentRequestCWProxy {
  const _$PatchedTicketCommentRequestCWProxyImpl(this._value);

  final PatchedTicketCommentRequest _value;

  @override
  PatchedTicketCommentRequest ticket(String? ticket) => this(ticket: ticket);

  @override
  PatchedTicketCommentRequest author(int? author) => this(author: author);

  @override
  PatchedTicketCommentRequest content(String? content) =>
      this(content: content);

  @override
  PatchedTicketCommentRequest visibility(
    PatchedTicketCommentRequestVisibilityEnum? visibility,
  ) => this(visibility: visibility);

  @override
  PatchedTicketCommentRequest isResolution(bool? isResolution) =>
      this(isResolution: isResolution);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PatchedTicketCommentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PatchedTicketCommentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PatchedTicketCommentRequest call({
    Object? ticket = const $CopyWithPlaceholder(),
    Object? author = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? visibility = const $CopyWithPlaceholder(),
    Object? isResolution = const $CopyWithPlaceholder(),
  }) {
    return PatchedTicketCommentRequest(
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String?,
      author: author == const $CopyWithPlaceholder()
          ? _value.author
          // ignore: cast_nullable_to_non_nullable
          : author as int?,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String?,
      visibility: visibility == const $CopyWithPlaceholder()
          ? _value.visibility
          // ignore: cast_nullable_to_non_nullable
          : visibility as PatchedTicketCommentRequestVisibilityEnum?,
      isResolution: isResolution == const $CopyWithPlaceholder()
          ? _value.isResolution
          // ignore: cast_nullable_to_non_nullable
          : isResolution as bool?,
    );
  }
}

extension $PatchedTicketCommentRequestCopyWith on PatchedTicketCommentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPatchedTicketCommentRequest.copyWith(...)` or like so:`instanceOfPatchedTicketCommentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PatchedTicketCommentRequestCWProxy get copyWith =>
      _$PatchedTicketCommentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedTicketCommentRequest _$PatchedTicketCommentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'PatchedTicketCommentRequest',
  json,
  ($checkedConvert) {
    final val = PatchedTicketCommentRequest(
      ticket: $checkedConvert('ticket', (v) => v as String?),
      author: $checkedConvert('author', (v) => (v as num?)?.toInt()),
      content: $checkedConvert('content', (v) => v as String?),
      visibility: $checkedConvert(
        'visibility',
        (v) => $enumDecodeNullable(
          _$PatchedTicketCommentRequestVisibilityEnumEnumMap,
          v,
          unknownValue:
              PatchedTicketCommentRequestVisibilityEnum.unknownDefaultOpenApi,
        ),
      ),
      isResolution: $checkedConvert('is_resolution', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {'isResolution': 'is_resolution'},
);

Map<String, dynamic> _$PatchedTicketCommentRequestToJson(
  PatchedTicketCommentRequest instance,
) => <String, dynamic>{
  'ticket': ?instance.ticket,
  'author': ?instance.author,
  'content': ?instance.content,
  'visibility':
      ?_$PatchedTicketCommentRequestVisibilityEnumEnumMap[instance.visibility],
  'is_resolution': ?instance.isResolution,
};

const _$PatchedTicketCommentRequestVisibilityEnumEnumMap = {
  PatchedTicketCommentRequestVisibilityEnum.INTERNAL: 'INTERNAL',
  PatchedTicketCommentRequestVisibilityEnum.PUBLIC: 'PUBLIC',
  PatchedTicketCommentRequestVisibilityEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
