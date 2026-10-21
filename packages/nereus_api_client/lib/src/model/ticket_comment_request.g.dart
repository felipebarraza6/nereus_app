// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_comment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketCommentRequestCWProxy {
  TicketCommentRequest ticket(String ticket);

  TicketCommentRequest author(int? author);

  TicketCommentRequest content(String content);

  TicketCommentRequest visibility(
    TicketCommentRequestVisibilityEnum? visibility,
  );

  TicketCommentRequest isResolution(bool? isResolution);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketCommentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketCommentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketCommentRequest call({
    String ticket,
    int? author,
    String content,
    TicketCommentRequestVisibilityEnum? visibility,
    bool? isResolution,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketCommentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketCommentRequest.copyWith.fieldName(...)`
class _$TicketCommentRequestCWProxyImpl
    implements _$TicketCommentRequestCWProxy {
  const _$TicketCommentRequestCWProxyImpl(this._value);

  final TicketCommentRequest _value;

  @override
  TicketCommentRequest ticket(String ticket) => this(ticket: ticket);

  @override
  TicketCommentRequest author(int? author) => this(author: author);

  @override
  TicketCommentRequest content(String content) => this(content: content);

  @override
  TicketCommentRequest visibility(
    TicketCommentRequestVisibilityEnum? visibility,
  ) => this(visibility: visibility);

  @override
  TicketCommentRequest isResolution(bool? isResolution) =>
      this(isResolution: isResolution);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketCommentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketCommentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketCommentRequest call({
    Object? ticket = const $CopyWithPlaceholder(),
    Object? author = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? visibility = const $CopyWithPlaceholder(),
    Object? isResolution = const $CopyWithPlaceholder(),
  }) {
    return TicketCommentRequest(
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String,
      author: author == const $CopyWithPlaceholder()
          ? _value.author
          // ignore: cast_nullable_to_non_nullable
          : author as int?,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
      visibility: visibility == const $CopyWithPlaceholder()
          ? _value.visibility
          // ignore: cast_nullable_to_non_nullable
          : visibility as TicketCommentRequestVisibilityEnum?,
      isResolution: isResolution == const $CopyWithPlaceholder()
          ? _value.isResolution
          // ignore: cast_nullable_to_non_nullable
          : isResolution as bool?,
    );
  }
}

extension $TicketCommentRequestCopyWith on TicketCommentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTicketCommentRequest.copyWith(...)` or like so:`instanceOfTicketCommentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketCommentRequestCWProxy get copyWith =>
      _$TicketCommentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketCommentRequest _$TicketCommentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TicketCommentRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['ticket', 'content']);
  final val = TicketCommentRequest(
    ticket: $checkedConvert('ticket', (v) => v as String),
    author: $checkedConvert('author', (v) => (v as num?)?.toInt()),
    content: $checkedConvert('content', (v) => v as String),
    visibility: $checkedConvert(
      'visibility',
      (v) => $enumDecodeNullable(
        _$TicketCommentRequestVisibilityEnumEnumMap,
        v,
        unknownValue: TicketCommentRequestVisibilityEnum.unknownDefaultOpenApi,
      ),
    ),
    isResolution: $checkedConvert('is_resolution', (v) => v as bool?),
  );
  return val;
}, fieldKeyMap: const {'isResolution': 'is_resolution'});

Map<String, dynamic> _$TicketCommentRequestToJson(
  TicketCommentRequest instance,
) => <String, dynamic>{
  'ticket': instance.ticket,
  'author': ?instance.author,
  'content': instance.content,
  'visibility':
      ?_$TicketCommentRequestVisibilityEnumEnumMap[instance.visibility],
  'is_resolution': ?instance.isResolution,
};

const _$TicketCommentRequestVisibilityEnumEnumMap = {
  TicketCommentRequestVisibilityEnum.INTERNAL: 'INTERNAL',
  TicketCommentRequestVisibilityEnum.PUBLIC: 'PUBLIC',
  TicketCommentRequestVisibilityEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
