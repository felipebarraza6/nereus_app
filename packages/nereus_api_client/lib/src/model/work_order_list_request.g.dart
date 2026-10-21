// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_list_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WorkOrderListRequestCWProxy {
  WorkOrderListRequest ticket(String ticket);

  WorkOrderListRequest scheduledDate(DateTime scheduledDate);

  WorkOrderListRequest completedDate(DateTime? completedDate);

  WorkOrderListRequest technician(String? technician);

  WorkOrderListRequest status(WorkOrderListRequestStatusEnum? status);

  WorkOrderListRequest locationAddress(String? locationAddress);

  WorkOrderListRequest estimatedDurationMinutes(int? estimatedDurationMinutes);

  WorkOrderListRequest actualDurationMinutes(int? actualDurationMinutes);

  WorkOrderListRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderListRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderListRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderListRequest call({
    String ticket,
    DateTime scheduledDate,
    DateTime? completedDate,
    String? technician,
    WorkOrderListRequestStatusEnum? status,
    String? locationAddress,
    int? estimatedDurationMinutes,
    int? actualDurationMinutes,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWorkOrderListRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWorkOrderListRequest.copyWith.fieldName(...)`
class _$WorkOrderListRequestCWProxyImpl
    implements _$WorkOrderListRequestCWProxy {
  const _$WorkOrderListRequestCWProxyImpl(this._value);

  final WorkOrderListRequest _value;

  @override
  WorkOrderListRequest ticket(String ticket) => this(ticket: ticket);

  @override
  WorkOrderListRequest scheduledDate(DateTime scheduledDate) =>
      this(scheduledDate: scheduledDate);

  @override
  WorkOrderListRequest completedDate(DateTime? completedDate) =>
      this(completedDate: completedDate);

  @override
  WorkOrderListRequest technician(String? technician) =>
      this(technician: technician);

  @override
  WorkOrderListRequest status(WorkOrderListRequestStatusEnum? status) =>
      this(status: status);

  @override
  WorkOrderListRequest locationAddress(String? locationAddress) =>
      this(locationAddress: locationAddress);

  @override
  WorkOrderListRequest estimatedDurationMinutes(
    int? estimatedDurationMinutes,
  ) => this(estimatedDurationMinutes: estimatedDurationMinutes);

  @override
  WorkOrderListRequest actualDurationMinutes(int? actualDurationMinutes) =>
      this(actualDurationMinutes: actualDurationMinutes);

  @override
  WorkOrderListRequest isActive(bool? isActive) => this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderListRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderListRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderListRequest call({
    Object? ticket = const $CopyWithPlaceholder(),
    Object? scheduledDate = const $CopyWithPlaceholder(),
    Object? completedDate = const $CopyWithPlaceholder(),
    Object? technician = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? locationAddress = const $CopyWithPlaceholder(),
    Object? estimatedDurationMinutes = const $CopyWithPlaceholder(),
    Object? actualDurationMinutes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return WorkOrderListRequest(
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String,
      scheduledDate: scheduledDate == const $CopyWithPlaceholder()
          ? _value.scheduledDate
          // ignore: cast_nullable_to_non_nullable
          : scheduledDate as DateTime,
      completedDate: completedDate == const $CopyWithPlaceholder()
          ? _value.completedDate
          // ignore: cast_nullable_to_non_nullable
          : completedDate as DateTime?,
      technician: technician == const $CopyWithPlaceholder()
          ? _value.technician
          // ignore: cast_nullable_to_non_nullable
          : technician as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as WorkOrderListRequestStatusEnum?,
      locationAddress: locationAddress == const $CopyWithPlaceholder()
          ? _value.locationAddress
          // ignore: cast_nullable_to_non_nullable
          : locationAddress as String?,
      estimatedDurationMinutes:
          estimatedDurationMinutes == const $CopyWithPlaceholder()
          ? _value.estimatedDurationMinutes
          // ignore: cast_nullable_to_non_nullable
          : estimatedDurationMinutes as int?,
      actualDurationMinutes:
          actualDurationMinutes == const $CopyWithPlaceholder()
          ? _value.actualDurationMinutes
          // ignore: cast_nullable_to_non_nullable
          : actualDurationMinutes as int?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $WorkOrderListRequestCopyWith on WorkOrderListRequest {
  /// Returns a callable class that can be used as follows: `instanceOfWorkOrderListRequest.copyWith(...)` or like so:`instanceOfWorkOrderListRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WorkOrderListRequestCWProxy get copyWith =>
      _$WorkOrderListRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrderListRequest _$WorkOrderListRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WorkOrderListRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['ticket', 'scheduled_date']);
    final val = WorkOrderListRequest(
      ticket: $checkedConvert('ticket', (v) => v as String),
      scheduledDate: $checkedConvert(
        'scheduled_date',
        (v) => DateTime.parse(v as String),
      ),
      completedDate: $checkedConvert(
        'completed_date',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      technician: $checkedConvert('technician', (v) => v as String?),
      status: $checkedConvert(
        'status',
        (v) => $enumDecodeNullable(
          _$WorkOrderListRequestStatusEnumEnumMap,
          v,
          unknownValue: WorkOrderListRequestStatusEnum.unknownDefaultOpenApi,
        ),
      ),
      locationAddress: $checkedConvert('location_address', (v) => v as String?),
      estimatedDurationMinutes: $checkedConvert(
        'estimated_duration_minutes',
        (v) => (v as num?)?.toInt(),
      ),
      actualDurationMinutes: $checkedConvert(
        'actual_duration_minutes',
        (v) => (v as num?)?.toInt(),
      ),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'scheduledDate': 'scheduled_date',
    'completedDate': 'completed_date',
    'locationAddress': 'location_address',
    'estimatedDurationMinutes': 'estimated_duration_minutes',
    'actualDurationMinutes': 'actual_duration_minutes',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$WorkOrderListRequestToJson(
  WorkOrderListRequest instance,
) => <String, dynamic>{
  'ticket': instance.ticket,
  'scheduled_date': instance.scheduledDate.toIso8601String(),
  'completed_date': ?instance.completedDate?.toIso8601String(),
  'technician': ?instance.technician,
  'status': ?_$WorkOrderListRequestStatusEnumEnumMap[instance.status],
  'location_address': ?instance.locationAddress,
  'estimated_duration_minutes': ?instance.estimatedDurationMinutes,
  'actual_duration_minutes': ?instance.actualDurationMinutes,
  'is_active': ?instance.isActive,
};

const _$WorkOrderListRequestStatusEnumEnumMap = {
  WorkOrderListRequestStatusEnum.SCHEDULED: 'SCHEDULED',
  WorkOrderListRequestStatusEnum.IN_ROUTE: 'IN_ROUTE',
  WorkOrderListRequestStatusEnum.ON_SITE: 'ON_SITE',
  WorkOrderListRequestStatusEnum.COMPLETED: 'COMPLETED',
  WorkOrderListRequestStatusEnum.CANCELLED: 'CANCELLED',
  WorkOrderListRequestStatusEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
