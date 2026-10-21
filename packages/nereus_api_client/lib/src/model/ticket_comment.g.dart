// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_comment.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketCommentCWProxy {
  TicketComment id(String id);

  TicketComment ticket(String ticket);

  TicketComment author(int? author);

  TicketComment authorName(String authorName);

  TicketComment content(String content);

  TicketComment visibility(TicketCommentVisibilityEnum? visibility);

  TicketComment isResolution(bool? isResolution);

  TicketComment created(DateTime created);

  TicketComment modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketComment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketComment(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketComment call({
    String id,
    String ticket,
    int? author,
    String authorName,
    String content,
    TicketCommentVisibilityEnum? visibility,
    bool? isResolution,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketComment.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketComment.copyWith.fieldName(...)`
class _$TicketCommentCWProxyImpl implements _$TicketCommentCWProxy {
  const _$TicketCommentCWProxyImpl(this._value);

  final TicketComment _value;

  @override
  TicketComment id(String id) => this(id: id);

  @override
  TicketComment ticket(String ticket) => this(ticket: ticket);

  @override
  TicketComment author(int? author) => this(author: author);

  @override
  TicketComment authorName(String authorName) => this(authorName: authorName);

  @override
  TicketComment content(String content) => this(content: content);

  @override
  TicketComment visibility(TicketCommentVisibilityEnum? visibility) =>
      this(visibility: visibility);

  @override
  TicketComment isResolution(bool? isResolution) =>
      this(isResolution: isResolution);

  @override
  TicketComment created(DateTime created) => this(created: created);

  @override
  TicketComment modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketComment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketComment(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketComment call({
    Object? id = const $CopyWithPlaceholder(),
    Object? ticket = const $CopyWithPlaceholder(),
    Object? author = const $CopyWithPlaceholder(),
    Object? authorName = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? visibility = const $CopyWithPlaceholder(),
    Object? isResolution = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TicketComment(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String,
      author: author == const $CopyWithPlaceholder()
          ? _value.author
          // ignore: cast_nullable_to_non_nullable
          : author as int?,
      authorName: authorName == const $CopyWithPlaceholder()
          ? _value.authorName
          // ignore: cast_nullable_to_non_nullable
          : authorName as String,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String,
      visibility: visibility == const $CopyWithPlaceholder()
          ? _value.visibility
          // ignore: cast_nullable_to_non_nullable
          : visibility as TicketCommentVisibilityEnum?,
      isResolution: isResolution == const $CopyWithPlaceholder()
          ? _value.isResolution
          // ignore: cast_nullable_to_non_nullable
          : isResolution as bool?,
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

extension $TicketCommentCopyWith on TicketComment {
  /// Returns a callable class that can be used as follows: `instanceOfTicketComment.copyWith(...)` or like so:`instanceOfTicketComment.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketCommentCWProxy get copyWith => _$TicketCommentCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketComment _$TicketCommentFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TicketComment',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'ticket',
        'author_name',
        'content',
        'created',
        'modified',
      ],
    );
    final val = TicketComment(
      id: $checkedConvert('id', (v) => v as String),
      ticket: $checkedConvert('ticket', (v) => v as String),
      author: $checkedConvert('author', (v) => (v as num?)?.toInt()),
      authorName: $checkedConvert('author_name', (v) => v as String),
      content: $checkedConvert('content', (v) => v as String),
      visibility: $checkedConvert(
        'visibility',
        (v) => $enumDecodeNullable(
          _$TicketCommentVisibilityEnumEnumMap,
          v,
          unknownValue: TicketCommentVisibilityEnum.unknownDefaultOpenApi,
        ),
      ),
      isResolution: $checkedConvert('is_resolution', (v) => v as bool?),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'authorName': 'author_name',
    'isResolution': 'is_resolution',
  },
);

Map<String, dynamic> _$TicketCommentToJson(TicketComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticket': instance.ticket,
      'author': ?instance.author,
      'author_name': instance.authorName,
      'content': instance.content,
      'visibility': ?_$TicketCommentVisibilityEnumEnumMap[instance.visibility],
      'is_resolution': ?instance.isResolution,
      'created': instance.created.toIso8601String(),
      'modified': instance.modified.toIso8601String(),
    };

const _$TicketCommentVisibilityEnumEnumMap = {
  TicketCommentVisibilityEnum.INTERNAL: 'INTERNAL',
  TicketCommentVisibilityEnum.PUBLIC: 'PUBLIC',
  TicketCommentVisibilityEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
