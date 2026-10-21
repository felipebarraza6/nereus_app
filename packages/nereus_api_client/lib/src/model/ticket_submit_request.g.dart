// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_submit_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketSubmitRequestCWProxy {
  TicketSubmitRequest subject(String subject);

  TicketSubmitRequest description(String description);

  TicketSubmitRequest categoryCode(String? categoryCode);

  TicketSubmitRequest category(String? category);

  TicketSubmitRequest priority(TicketSubmitRequestPriorityEnum? priority);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketSubmitRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketSubmitRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketSubmitRequest call({
    String subject,
    String description,
    String? categoryCode,
    String? category,
    TicketSubmitRequestPriorityEnum? priority,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketSubmitRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketSubmitRequest.copyWith.fieldName(...)`
class _$TicketSubmitRequestCWProxyImpl implements _$TicketSubmitRequestCWProxy {
  const _$TicketSubmitRequestCWProxyImpl(this._value);

  final TicketSubmitRequest _value;

  @override
  TicketSubmitRequest subject(String subject) => this(subject: subject);

  @override
  TicketSubmitRequest description(String description) =>
      this(description: description);

  @override
  TicketSubmitRequest categoryCode(String? categoryCode) =>
      this(categoryCode: categoryCode);

  @override
  TicketSubmitRequest category(String? category) => this(category: category);

  @override
  TicketSubmitRequest priority(TicketSubmitRequestPriorityEnum? priority) =>
      this(priority: priority);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketSubmitRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketSubmitRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketSubmitRequest call({
    Object? subject = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? categoryCode = const $CopyWithPlaceholder(),
    Object? category = const $CopyWithPlaceholder(),
    Object? priority = const $CopyWithPlaceholder(),
  }) {
    return TicketSubmitRequest(
      subject: subject == const $CopyWithPlaceholder()
          ? _value.subject
          // ignore: cast_nullable_to_non_nullable
          : subject as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String,
      categoryCode: categoryCode == const $CopyWithPlaceholder()
          ? _value.categoryCode
          // ignore: cast_nullable_to_non_nullable
          : categoryCode as String?,
      category: category == const $CopyWithPlaceholder()
          ? _value.category
          // ignore: cast_nullable_to_non_nullable
          : category as String?,
      priority: priority == const $CopyWithPlaceholder()
          ? _value.priority
          // ignore: cast_nullable_to_non_nullable
          : priority as TicketSubmitRequestPriorityEnum?,
    );
  }
}

extension $TicketSubmitRequestCopyWith on TicketSubmitRequest {
  /// Returns a callable class that can be used as follows: `instanceOfTicketSubmitRequest.copyWith(...)` or like so:`instanceOfTicketSubmitRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketSubmitRequestCWProxy get copyWith =>
      _$TicketSubmitRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketSubmitRequest _$TicketSubmitRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TicketSubmitRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['subject', 'description']);
      final val = TicketSubmitRequest(
        subject: $checkedConvert('subject', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        categoryCode: $checkedConvert('category_code', (v) => v as String?),
        category: $checkedConvert('category', (v) => v as String?),
        priority: $checkedConvert(
          'priority',
          (v) =>
              $enumDecodeNullable(
                _$TicketSubmitRequestPriorityEnumEnumMap,
                v,
                unknownValue:
                    TicketSubmitRequestPriorityEnum.unknownDefaultOpenApi,
              ) ??
              TicketSubmitRequestPriorityEnum.MEDIUM,
        ),
      );
      return val;
    }, fieldKeyMap: const {'categoryCode': 'category_code'});

Map<String, dynamic> _$TicketSubmitRequestToJson(
  TicketSubmitRequest instance,
) => <String, dynamic>{
  'subject': instance.subject,
  'description': instance.description,
  'category_code': ?instance.categoryCode,
  'category': ?instance.category,
  'priority': ?_$TicketSubmitRequestPriorityEnumEnumMap[instance.priority],
};

const _$TicketSubmitRequestPriorityEnumEnumMap = {
  TicketSubmitRequestPriorityEnum.LOW: 'LOW',
  TicketSubmitRequestPriorityEnum.MEDIUM: 'MEDIUM',
  TicketSubmitRequestPriorityEnum.HIGH: 'HIGH',
  TicketSubmitRequestPriorityEnum.CRITICAL: 'CRITICAL',
  TicketSubmitRequestPriorityEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
