// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_detail.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TicketDetailCWProxy {
  TicketDetail id(String id);

  TicketDetail ticketNumber(String ticketNumber);

  TicketDetail subject(String subject);

  TicketDetail description(String description);

  TicketDetail ticketType(String? ticketType);

  TicketDetail ticketTypeName(String ticketTypeName);

  TicketDetail category(String category);

  TicketDetail categoryName(String categoryName);

  TicketDetail categoryCode(String categoryCode);

  TicketDetail categoryParentName(String categoryParentName);

  TicketDetail categoryColor(String categoryColor);

  TicketDetail priority(TicketDetailPriorityEnum? priority);

  TicketDetail status(TicketDetailStatusEnum? status);

  TicketDetail slaPolicy(String slaPolicy);

  TicketDetail slaPolicyName(String slaPolicyName);

  TicketDetail slaResponseDeadline(DateTime? slaResponseDeadline);

  TicketDetail slaResolutionDeadline(DateTime? slaResolutionDeadline);

  TicketDetail slaResponseMet(bool? slaResponseMet);

  TicketDetail slaResolutionMet(bool? slaResolutionMet);

  TicketDetail createdDate(DateTime? createdDate);

  TicketDetail dueDate(DateTime? dueDate);

  TicketDetail assignedTo(String? assignedTo);

  TicketDetail assignedToName(String assignedToName);

  TicketDetail client(int? client);

  TicketDetail clientName(String clientName);

  TicketDetail requester(int? requester);

  TicketDetail requesterEmail(String? requesterEmail);

  TicketDetail requesterName(String? requesterName);

  TicketDetail source_(TicketDetailSource_Enum? source_);

  TicketDetail contentType(int? contentType);

  TicketDetail objectId(String? objectId);

  TicketDetail customData(Object? customData);

  TicketDetail firstResponseAt(DateTime? firstResponseAt);

  TicketDetail resolvedAt(DateTime? resolvedAt);

  TicketDetail closedAt(DateTime? closedAt);

  TicketDetail satisfactionScore(int? satisfactionScore);

  TicketDetail satisfactionComment(String? satisfactionComment);

  TicketDetail comments(List<TicketComment> comments);

  TicketDetail escalations(List<TicketEscalation> escalations);

  TicketDetail timers(List<TicketTimer> timers);

  TicketDetail isActive(bool? isActive);

  TicketDetail created(DateTime created);

  TicketDetail modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketDetail call({
    String id,
    String ticketNumber,
    String subject,
    String description,
    String? ticketType,
    String ticketTypeName,
    String category,
    String categoryName,
    String categoryCode,
    String categoryParentName,
    String categoryColor,
    TicketDetailPriorityEnum? priority,
    TicketDetailStatusEnum? status,
    String slaPolicy,
    String slaPolicyName,
    DateTime? slaResponseDeadline,
    DateTime? slaResolutionDeadline,
    bool? slaResponseMet,
    bool? slaResolutionMet,
    DateTime? createdDate,
    DateTime? dueDate,
    String? assignedTo,
    String assignedToName,
    int? client,
    String clientName,
    int? requester,
    String? requesterEmail,
    String? requesterName,
    TicketDetailSource_Enum? source_,
    int? contentType,
    String? objectId,
    Object? customData,
    DateTime? firstResponseAt,
    DateTime? resolvedAt,
    DateTime? closedAt,
    int? satisfactionScore,
    String? satisfactionComment,
    List<TicketComment> comments,
    List<TicketEscalation> escalations,
    List<TicketTimer> timers,
    bool? isActive,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTicketDetail.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTicketDetail.copyWith.fieldName(...)`
class _$TicketDetailCWProxyImpl implements _$TicketDetailCWProxy {
  const _$TicketDetailCWProxyImpl(this._value);

  final TicketDetail _value;

  @override
  TicketDetail id(String id) => this(id: id);

  @override
  TicketDetail ticketNumber(String ticketNumber) =>
      this(ticketNumber: ticketNumber);

  @override
  TicketDetail subject(String subject) => this(subject: subject);

  @override
  TicketDetail description(String description) =>
      this(description: description);

  @override
  TicketDetail ticketType(String? ticketType) => this(ticketType: ticketType);

  @override
  TicketDetail ticketTypeName(String ticketTypeName) =>
      this(ticketTypeName: ticketTypeName);

  @override
  TicketDetail category(String category) => this(category: category);

  @override
  TicketDetail categoryName(String categoryName) =>
      this(categoryName: categoryName);

  @override
  TicketDetail categoryCode(String categoryCode) =>
      this(categoryCode: categoryCode);

  @override
  TicketDetail categoryParentName(String categoryParentName) =>
      this(categoryParentName: categoryParentName);

  @override
  TicketDetail categoryColor(String categoryColor) =>
      this(categoryColor: categoryColor);

  @override
  TicketDetail priority(TicketDetailPriorityEnum? priority) =>
      this(priority: priority);

  @override
  TicketDetail status(TicketDetailStatusEnum? status) => this(status: status);

  @override
  TicketDetail slaPolicy(String slaPolicy) => this(slaPolicy: slaPolicy);

  @override
  TicketDetail slaPolicyName(String slaPolicyName) =>
      this(slaPolicyName: slaPolicyName);

  @override
  TicketDetail slaResponseDeadline(DateTime? slaResponseDeadline) =>
      this(slaResponseDeadline: slaResponseDeadline);

  @override
  TicketDetail slaResolutionDeadline(DateTime? slaResolutionDeadline) =>
      this(slaResolutionDeadline: slaResolutionDeadline);

  @override
  TicketDetail slaResponseMet(bool? slaResponseMet) =>
      this(slaResponseMet: slaResponseMet);

  @override
  TicketDetail slaResolutionMet(bool? slaResolutionMet) =>
      this(slaResolutionMet: slaResolutionMet);

  @override
  TicketDetail createdDate(DateTime? createdDate) =>
      this(createdDate: createdDate);

  @override
  TicketDetail dueDate(DateTime? dueDate) => this(dueDate: dueDate);

  @override
  TicketDetail assignedTo(String? assignedTo) => this(assignedTo: assignedTo);

  @override
  TicketDetail assignedToName(String assignedToName) =>
      this(assignedToName: assignedToName);

  @override
  TicketDetail client(int? client) => this(client: client);

  @override
  TicketDetail clientName(String clientName) => this(clientName: clientName);

  @override
  TicketDetail requester(int? requester) => this(requester: requester);

  @override
  TicketDetail requesterEmail(String? requesterEmail) =>
      this(requesterEmail: requesterEmail);

  @override
  TicketDetail requesterName(String? requesterName) =>
      this(requesterName: requesterName);

  @override
  TicketDetail source_(TicketDetailSource_Enum? source_) =>
      this(source_: source_);

  @override
  TicketDetail contentType(int? contentType) => this(contentType: contentType);

  @override
  TicketDetail objectId(String? objectId) => this(objectId: objectId);

  @override
  TicketDetail customData(Object? customData) => this(customData: customData);

  @override
  TicketDetail firstResponseAt(DateTime? firstResponseAt) =>
      this(firstResponseAt: firstResponseAt);

  @override
  TicketDetail resolvedAt(DateTime? resolvedAt) => this(resolvedAt: resolvedAt);

  @override
  TicketDetail closedAt(DateTime? closedAt) => this(closedAt: closedAt);

  @override
  TicketDetail satisfactionScore(int? satisfactionScore) =>
      this(satisfactionScore: satisfactionScore);

  @override
  TicketDetail satisfactionComment(String? satisfactionComment) =>
      this(satisfactionComment: satisfactionComment);

  @override
  TicketDetail comments(List<TicketComment> comments) =>
      this(comments: comments);

  @override
  TicketDetail escalations(List<TicketEscalation> escalations) =>
      this(escalations: escalations);

  @override
  TicketDetail timers(List<TicketTimer> timers) => this(timers: timers);

  @override
  TicketDetail isActive(bool? isActive) => this(isActive: isActive);

  @override
  TicketDetail created(DateTime created) => this(created: created);

  @override
  TicketDetail modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TicketDetail(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TicketDetail(...).copyWith(id: 12, name: "My name")
  /// ````
  TicketDetail call({
    Object? id = const $CopyWithPlaceholder(),
    Object? ticketNumber = const $CopyWithPlaceholder(),
    Object? subject = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? ticketType = const $CopyWithPlaceholder(),
    Object? ticketTypeName = const $CopyWithPlaceholder(),
    Object? category = const $CopyWithPlaceholder(),
    Object? categoryName = const $CopyWithPlaceholder(),
    Object? categoryCode = const $CopyWithPlaceholder(),
    Object? categoryParentName = const $CopyWithPlaceholder(),
    Object? categoryColor = const $CopyWithPlaceholder(),
    Object? priority = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? slaPolicy = const $CopyWithPlaceholder(),
    Object? slaPolicyName = const $CopyWithPlaceholder(),
    Object? slaResponseDeadline = const $CopyWithPlaceholder(),
    Object? slaResolutionDeadline = const $CopyWithPlaceholder(),
    Object? slaResponseMet = const $CopyWithPlaceholder(),
    Object? slaResolutionMet = const $CopyWithPlaceholder(),
    Object? createdDate = const $CopyWithPlaceholder(),
    Object? dueDate = const $CopyWithPlaceholder(),
    Object? assignedTo = const $CopyWithPlaceholder(),
    Object? assignedToName = const $CopyWithPlaceholder(),
    Object? client = const $CopyWithPlaceholder(),
    Object? clientName = const $CopyWithPlaceholder(),
    Object? requester = const $CopyWithPlaceholder(),
    Object? requesterEmail = const $CopyWithPlaceholder(),
    Object? requesterName = const $CopyWithPlaceholder(),
    Object? source_ = const $CopyWithPlaceholder(),
    Object? contentType = const $CopyWithPlaceholder(),
    Object? objectId = const $CopyWithPlaceholder(),
    Object? customData = const $CopyWithPlaceholder(),
    Object? firstResponseAt = const $CopyWithPlaceholder(),
    Object? resolvedAt = const $CopyWithPlaceholder(),
    Object? closedAt = const $CopyWithPlaceholder(),
    Object? satisfactionScore = const $CopyWithPlaceholder(),
    Object? satisfactionComment = const $CopyWithPlaceholder(),
    Object? comments = const $CopyWithPlaceholder(),
    Object? escalations = const $CopyWithPlaceholder(),
    Object? timers = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return TicketDetail(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      ticketNumber: ticketNumber == const $CopyWithPlaceholder()
          ? _value.ticketNumber
          // ignore: cast_nullable_to_non_nullable
          : ticketNumber as String,
      subject: subject == const $CopyWithPlaceholder()
          ? _value.subject
          // ignore: cast_nullable_to_non_nullable
          : subject as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String,
      ticketType: ticketType == const $CopyWithPlaceholder()
          ? _value.ticketType
          // ignore: cast_nullable_to_non_nullable
          : ticketType as String?,
      ticketTypeName: ticketTypeName == const $CopyWithPlaceholder()
          ? _value.ticketTypeName
          // ignore: cast_nullable_to_non_nullable
          : ticketTypeName as String,
      category: category == const $CopyWithPlaceholder()
          ? _value.category
          // ignore: cast_nullable_to_non_nullable
          : category as String,
      categoryName: categoryName == const $CopyWithPlaceholder()
          ? _value.categoryName
          // ignore: cast_nullable_to_non_nullable
          : categoryName as String,
      categoryCode: categoryCode == const $CopyWithPlaceholder()
          ? _value.categoryCode
          // ignore: cast_nullable_to_non_nullable
          : categoryCode as String,
      categoryParentName: categoryParentName == const $CopyWithPlaceholder()
          ? _value.categoryParentName
          // ignore: cast_nullable_to_non_nullable
          : categoryParentName as String,
      categoryColor: categoryColor == const $CopyWithPlaceholder()
          ? _value.categoryColor
          // ignore: cast_nullable_to_non_nullable
          : categoryColor as String,
      priority: priority == const $CopyWithPlaceholder()
          ? _value.priority
          // ignore: cast_nullable_to_non_nullable
          : priority as TicketDetailPriorityEnum?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as TicketDetailStatusEnum?,
      slaPolicy: slaPolicy == const $CopyWithPlaceholder()
          ? _value.slaPolicy
          // ignore: cast_nullable_to_non_nullable
          : slaPolicy as String,
      slaPolicyName: slaPolicyName == const $CopyWithPlaceholder()
          ? _value.slaPolicyName
          // ignore: cast_nullable_to_non_nullable
          : slaPolicyName as String,
      slaResponseDeadline: slaResponseDeadline == const $CopyWithPlaceholder()
          ? _value.slaResponseDeadline
          // ignore: cast_nullable_to_non_nullable
          : slaResponseDeadline as DateTime?,
      slaResolutionDeadline:
          slaResolutionDeadline == const $CopyWithPlaceholder()
          ? _value.slaResolutionDeadline
          // ignore: cast_nullable_to_non_nullable
          : slaResolutionDeadline as DateTime?,
      slaResponseMet: slaResponseMet == const $CopyWithPlaceholder()
          ? _value.slaResponseMet
          // ignore: cast_nullable_to_non_nullable
          : slaResponseMet as bool?,
      slaResolutionMet: slaResolutionMet == const $CopyWithPlaceholder()
          ? _value.slaResolutionMet
          // ignore: cast_nullable_to_non_nullable
          : slaResolutionMet as bool?,
      createdDate: createdDate == const $CopyWithPlaceholder()
          ? _value.createdDate
          // ignore: cast_nullable_to_non_nullable
          : createdDate as DateTime?,
      dueDate: dueDate == const $CopyWithPlaceholder()
          ? _value.dueDate
          // ignore: cast_nullable_to_non_nullable
          : dueDate as DateTime?,
      assignedTo: assignedTo == const $CopyWithPlaceholder()
          ? _value.assignedTo
          // ignore: cast_nullable_to_non_nullable
          : assignedTo as String?,
      assignedToName: assignedToName == const $CopyWithPlaceholder()
          ? _value.assignedToName
          // ignore: cast_nullable_to_non_nullable
          : assignedToName as String,
      client: client == const $CopyWithPlaceholder()
          ? _value.client
          // ignore: cast_nullable_to_non_nullable
          : client as int?,
      clientName: clientName == const $CopyWithPlaceholder()
          ? _value.clientName
          // ignore: cast_nullable_to_non_nullable
          : clientName as String,
      requester: requester == const $CopyWithPlaceholder()
          ? _value.requester
          // ignore: cast_nullable_to_non_nullable
          : requester as int?,
      requesterEmail: requesterEmail == const $CopyWithPlaceholder()
          ? _value.requesterEmail
          // ignore: cast_nullable_to_non_nullable
          : requesterEmail as String?,
      requesterName: requesterName == const $CopyWithPlaceholder()
          ? _value.requesterName
          // ignore: cast_nullable_to_non_nullable
          : requesterName as String?,
      source_: source_ == const $CopyWithPlaceholder()
          ? _value.source_
          // ignore: cast_nullable_to_non_nullable
          : source_ as TicketDetailSource_Enum?,
      contentType: contentType == const $CopyWithPlaceholder()
          ? _value.contentType
          // ignore: cast_nullable_to_non_nullable
          : contentType as int?,
      objectId: objectId == const $CopyWithPlaceholder()
          ? _value.objectId
          // ignore: cast_nullable_to_non_nullable
          : objectId as String?,
      customData: customData == const $CopyWithPlaceholder()
          ? _value.customData
          // ignore: cast_nullable_to_non_nullable
          : customData as Object?,
      firstResponseAt: firstResponseAt == const $CopyWithPlaceholder()
          ? _value.firstResponseAt
          // ignore: cast_nullable_to_non_nullable
          : firstResponseAt as DateTime?,
      resolvedAt: resolvedAt == const $CopyWithPlaceholder()
          ? _value.resolvedAt
          // ignore: cast_nullable_to_non_nullable
          : resolvedAt as DateTime?,
      closedAt: closedAt == const $CopyWithPlaceholder()
          ? _value.closedAt
          // ignore: cast_nullable_to_non_nullable
          : closedAt as DateTime?,
      satisfactionScore: satisfactionScore == const $CopyWithPlaceholder()
          ? _value.satisfactionScore
          // ignore: cast_nullable_to_non_nullable
          : satisfactionScore as int?,
      satisfactionComment: satisfactionComment == const $CopyWithPlaceholder()
          ? _value.satisfactionComment
          // ignore: cast_nullable_to_non_nullable
          : satisfactionComment as String?,
      comments: comments == const $CopyWithPlaceholder()
          ? _value.comments
          // ignore: cast_nullable_to_non_nullable
          : comments as List<TicketComment>,
      escalations: escalations == const $CopyWithPlaceholder()
          ? _value.escalations
          // ignore: cast_nullable_to_non_nullable
          : escalations as List<TicketEscalation>,
      timers: timers == const $CopyWithPlaceholder()
          ? _value.timers
          // ignore: cast_nullable_to_non_nullable
          : timers as List<TicketTimer>,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
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

extension $TicketDetailCopyWith on TicketDetail {
  /// Returns a callable class that can be used as follows: `instanceOfTicketDetail.copyWith(...)` or like so:`instanceOfTicketDetail.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TicketDetailCWProxy get copyWith => _$TicketDetailCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketDetail _$TicketDetailFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TicketDetail',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'ticket_number',
        'subject',
        'description',
        'ticket_type_name',
        'category',
        'category_name',
        'category_code',
        'category_parent_name',
        'category_color',
        'sla_policy',
        'sla_policy_name',
        'assigned_to_name',
        'client_name',
        'requester',
        'comments',
        'escalations',
        'timers',
        'created',
        'modified',
      ],
    );
    final val = TicketDetail(
      id: $checkedConvert('id', (v) => v as String),
      ticketNumber: $checkedConvert('ticket_number', (v) => v as String),
      subject: $checkedConvert('subject', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String),
      ticketType: $checkedConvert('ticket_type', (v) => v as String?),
      ticketTypeName: $checkedConvert('ticket_type_name', (v) => v as String),
      category: $checkedConvert('category', (v) => v as String),
      categoryName: $checkedConvert('category_name', (v) => v as String),
      categoryCode: $checkedConvert('category_code', (v) => v as String? ?? ''),
      categoryParentName: $checkedConvert(
        'category_parent_name',
        (v) => v as String,
      ),
      categoryColor: $checkedConvert(
        'category_color',
        (v) => v as String? ?? '#1890ff',
      ),
      priority: $checkedConvert(
        'priority',
        (v) => $enumDecodeNullable(
          _$TicketDetailPriorityEnumEnumMap,
          v,
          unknownValue: TicketDetailPriorityEnum.unknownDefaultOpenApi,
        ),
      ),
      status: $checkedConvert(
        'status',
        (v) => $enumDecodeNullable(
          _$TicketDetailStatusEnumEnumMap,
          v,
          unknownValue: TicketDetailStatusEnum.unknownDefaultOpenApi,
        ),
      ),
      slaPolicy: $checkedConvert('sla_policy', (v) => v as String),
      slaPolicyName: $checkedConvert('sla_policy_name', (v) => v as String),
      slaResponseDeadline: $checkedConvert(
        'sla_response_deadline',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      slaResolutionDeadline: $checkedConvert(
        'sla_resolution_deadline',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      slaResponseMet: $checkedConvert('sla_response_met', (v) => v as bool?),
      slaResolutionMet: $checkedConvert(
        'sla_resolution_met',
        (v) => v as bool?,
      ),
      createdDate: $checkedConvert(
        'created_date',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      dueDate: $checkedConvert(
        'due_date',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      assignedTo: $checkedConvert('assigned_to', (v) => v as String?),
      assignedToName: $checkedConvert('assigned_to_name', (v) => v as String),
      client: $checkedConvert('client', (v) => (v as num?)?.toInt()),
      clientName: $checkedConvert('client_name', (v) => v as String),
      requester: $checkedConvert('requester', (v) => (v as num?)?.toInt()),
      requesterEmail: $checkedConvert('requester_email', (v) => v as String?),
      requesterName: $checkedConvert('requester_name', (v) => v as String?),
      source_: $checkedConvert(
        'source',
        (v) => $enumDecodeNullable(
          _$TicketDetailSource_EnumEnumMap,
          v,
          unknownValue: TicketDetailSource_Enum.unknownDefaultOpenApi,
        ),
      ),
      contentType: $checkedConvert('content_type', (v) => (v as num?)?.toInt()),
      objectId: $checkedConvert('object_id', (v) => v as String?),
      customData: $checkedConvert('custom_data', (v) => v),
      firstResponseAt: $checkedConvert(
        'first_response_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      resolvedAt: $checkedConvert(
        'resolved_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      closedAt: $checkedConvert(
        'closed_at',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      satisfactionScore: $checkedConvert(
        'satisfaction_score',
        (v) => (v as num?)?.toInt(),
      ),
      satisfactionComment: $checkedConvert(
        'satisfaction_comment',
        (v) => v as String?,
      ),
      comments: $checkedConvert(
        'comments',
        (v) => (v as List<dynamic>)
            .map((e) => TicketComment.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      escalations: $checkedConvert(
        'escalations',
        (v) => (v as List<dynamic>)
            .map((e) => TicketEscalation.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      timers: $checkedConvert(
        'timers',
        (v) => (v as List<dynamic>)
            .map((e) => TicketTimer.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
    );
    return val;
  },
  fieldKeyMap: const {
    'ticketNumber': 'ticket_number',
    'ticketType': 'ticket_type',
    'ticketTypeName': 'ticket_type_name',
    'categoryName': 'category_name',
    'categoryCode': 'category_code',
    'categoryParentName': 'category_parent_name',
    'categoryColor': 'category_color',
    'slaPolicy': 'sla_policy',
    'slaPolicyName': 'sla_policy_name',
    'slaResponseDeadline': 'sla_response_deadline',
    'slaResolutionDeadline': 'sla_resolution_deadline',
    'slaResponseMet': 'sla_response_met',
    'slaResolutionMet': 'sla_resolution_met',
    'createdDate': 'created_date',
    'dueDate': 'due_date',
    'assignedTo': 'assigned_to',
    'assignedToName': 'assigned_to_name',
    'clientName': 'client_name',
    'requesterEmail': 'requester_email',
    'requesterName': 'requester_name',
    'source_': 'source',
    'contentType': 'content_type',
    'objectId': 'object_id',
    'customData': 'custom_data',
    'firstResponseAt': 'first_response_at',
    'resolvedAt': 'resolved_at',
    'closedAt': 'closed_at',
    'satisfactionScore': 'satisfaction_score',
    'satisfactionComment': 'satisfaction_comment',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$TicketDetailToJson(
  TicketDetail instance,
) => <String, dynamic>{
  'id': instance.id,
  'ticket_number': instance.ticketNumber,
  'subject': instance.subject,
  'description': instance.description,
  'ticket_type': ?instance.ticketType,
  'ticket_type_name': instance.ticketTypeName,
  'category': instance.category,
  'category_name': instance.categoryName,
  'category_code': instance.categoryCode,
  'category_parent_name': instance.categoryParentName,
  'category_color': instance.categoryColor,
  'priority': ?_$TicketDetailPriorityEnumEnumMap[instance.priority],
  'status': ?_$TicketDetailStatusEnumEnumMap[instance.status],
  'sla_policy': instance.slaPolicy,
  'sla_policy_name': instance.slaPolicyName,
  'sla_response_deadline': ?instance.slaResponseDeadline?.toIso8601String(),
  'sla_resolution_deadline': ?instance.slaResolutionDeadline?.toIso8601String(),
  'sla_response_met': ?instance.slaResponseMet,
  'sla_resolution_met': ?instance.slaResolutionMet,
  'created_date': ?instance.createdDate?.toIso8601String(),
  'due_date': ?instance.dueDate?.toIso8601String(),
  'assigned_to': ?instance.assignedTo,
  'assigned_to_name': instance.assignedToName,
  'client': ?instance.client,
  'client_name': instance.clientName,
  'requester': instance.requester,
  'requester_email': ?instance.requesterEmail,
  'requester_name': ?instance.requesterName,
  'source': ?_$TicketDetailSource_EnumEnumMap[instance.source_],
  'content_type': ?instance.contentType,
  'object_id': ?instance.objectId,
  'custom_data': ?instance.customData,
  'first_response_at': ?instance.firstResponseAt?.toIso8601String(),
  'resolved_at': ?instance.resolvedAt?.toIso8601String(),
  'closed_at': ?instance.closedAt?.toIso8601String(),
  'satisfaction_score': ?instance.satisfactionScore,
  'satisfaction_comment': ?instance.satisfactionComment,
  'comments': instance.comments.map((e) => e.toJson()).toList(),
  'escalations': instance.escalations.map((e) => e.toJson()).toList(),
  'timers': instance.timers.map((e) => e.toJson()).toList(),
  'is_active': ?instance.isActive,
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};

const _$TicketDetailPriorityEnumEnumMap = {
  TicketDetailPriorityEnum.LOW: 'LOW',
  TicketDetailPriorityEnum.MEDIUM: 'MEDIUM',
  TicketDetailPriorityEnum.HIGH: 'HIGH',
  TicketDetailPriorityEnum.CRITICAL: 'CRITICAL',
  TicketDetailPriorityEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};

const _$TicketDetailStatusEnumEnumMap = {
  TicketDetailStatusEnum.OPEN: 'OPEN',
  TicketDetailStatusEnum.IN_PROGRESS: 'IN_PROGRESS',
  TicketDetailStatusEnum.WAITING: 'WAITING',
  TicketDetailStatusEnum.REVISION: 'REVISION',
  TicketDetailStatusEnum.PENDING_VISIT: 'PENDING_VISIT',
  TicketDetailStatusEnum.RESOLVED: 'RESOLVED',
  TicketDetailStatusEnum.CLOSED: 'CLOSED',
  TicketDetailStatusEnum.CANCELLED: 'CANCELLED',
  TicketDetailStatusEnum.unknownDefaultOpenApi: 'unknown_default_open_api',
};

const _$TicketDetailSource_EnumEnumMap = {
  TicketDetailSource_Enum.INTERNAL: 'INTERNAL',
  TicketDetailSource_Enum.WEB_FORM: 'WEB_FORM',
  TicketDetailSource_Enum.unknownDefaultOpenApi: 'unknown_default_open_api',
};
