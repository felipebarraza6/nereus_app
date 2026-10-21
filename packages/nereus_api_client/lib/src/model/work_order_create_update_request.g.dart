// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_create_update_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WorkOrderCreateUpdateRequestCWProxy {
  WorkOrderCreateUpdateRequest ticket(String ticket);

  WorkOrderCreateUpdateRequest scheduledDate(DateTime scheduledDate);

  WorkOrderCreateUpdateRequest technician(String? technician);

  WorkOrderCreateUpdateRequest status(
    WorkOrderCreateUpdateRequestStatusEnum? status,
  );

  WorkOrderCreateUpdateRequest locationAddress(String? locationAddress);

  WorkOrderCreateUpdateRequest locationLat(double? locationLat);

  WorkOrderCreateUpdateRequest locationLng(double? locationLng);

  WorkOrderCreateUpdateRequest estimatedDurationMinutes(
    int? estimatedDurationMinutes,
  );

  WorkOrderCreateUpdateRequest actualDurationMinutes(
    int? actualDurationMinutes,
  );

  WorkOrderCreateUpdateRequest equipmentContentType(int? equipmentContentType);

  WorkOrderCreateUpdateRequest equipmentObjectId(String? equipmentObjectId);

  WorkOrderCreateUpdateRequest notes(String? notes);

  WorkOrderCreateUpdateRequest isActive(bool? isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderCreateUpdateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderCreateUpdateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderCreateUpdateRequest call({
    String ticket,
    DateTime scheduledDate,
    String? technician,
    WorkOrderCreateUpdateRequestStatusEnum? status,
    String? locationAddress,
    double? locationLat,
    double? locationLng,
    int? estimatedDurationMinutes,
    int? actualDurationMinutes,
    int? equipmentContentType,
    String? equipmentObjectId,
    String? notes,
    bool? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWorkOrderCreateUpdateRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWorkOrderCreateUpdateRequest.copyWith.fieldName(...)`
class _$WorkOrderCreateUpdateRequestCWProxyImpl
    implements _$WorkOrderCreateUpdateRequestCWProxy {
  const _$WorkOrderCreateUpdateRequestCWProxyImpl(this._value);

  final WorkOrderCreateUpdateRequest _value;

  @override
  WorkOrderCreateUpdateRequest ticket(String ticket) => this(ticket: ticket);

  @override
  WorkOrderCreateUpdateRequest scheduledDate(DateTime scheduledDate) =>
      this(scheduledDate: scheduledDate);

  @override
  WorkOrderCreateUpdateRequest technician(String? technician) =>
      this(technician: technician);

  @override
  WorkOrderCreateUpdateRequest status(
    WorkOrderCreateUpdateRequestStatusEnum? status,
  ) => this(status: status);

  @override
  WorkOrderCreateUpdateRequest locationAddress(String? locationAddress) =>
      this(locationAddress: locationAddress);

  @override
  WorkOrderCreateUpdateRequest locationLat(double? locationLat) =>
      this(locationLat: locationLat);

  @override
  WorkOrderCreateUpdateRequest locationLng(double? locationLng) =>
      this(locationLng: locationLng);

  @override
  WorkOrderCreateUpdateRequest estimatedDurationMinutes(
    int? estimatedDurationMinutes,
  ) => this(estimatedDurationMinutes: estimatedDurationMinutes);

  @override
  WorkOrderCreateUpdateRequest actualDurationMinutes(
    int? actualDurationMinutes,
  ) => this(actualDurationMinutes: actualDurationMinutes);

  @override
  WorkOrderCreateUpdateRequest equipmentContentType(
    int? equipmentContentType,
  ) => this(equipmentContentType: equipmentContentType);

  @override
  WorkOrderCreateUpdateRequest equipmentObjectId(String? equipmentObjectId) =>
      this(equipmentObjectId: equipmentObjectId);

  @override
  WorkOrderCreateUpdateRequest notes(String? notes) => this(notes: notes);

  @override
  WorkOrderCreateUpdateRequest isActive(bool? isActive) =>
      this(isActive: isActive);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderCreateUpdateRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderCreateUpdateRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderCreateUpdateRequest call({
    Object? ticket = const $CopyWithPlaceholder(),
    Object? scheduledDate = const $CopyWithPlaceholder(),
    Object? technician = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? locationAddress = const $CopyWithPlaceholder(),
    Object? locationLat = const $CopyWithPlaceholder(),
    Object? locationLng = const $CopyWithPlaceholder(),
    Object? estimatedDurationMinutes = const $CopyWithPlaceholder(),
    Object? actualDurationMinutes = const $CopyWithPlaceholder(),
    Object? equipmentContentType = const $CopyWithPlaceholder(),
    Object? equipmentObjectId = const $CopyWithPlaceholder(),
    Object? notes = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return WorkOrderCreateUpdateRequest(
      ticket: ticket == const $CopyWithPlaceholder()
          ? _value.ticket
          // ignore: cast_nullable_to_non_nullable
          : ticket as String,
      scheduledDate: scheduledDate == const $CopyWithPlaceholder()
          ? _value.scheduledDate
          // ignore: cast_nullable_to_non_nullable
          : scheduledDate as DateTime,
      technician: technician == const $CopyWithPlaceholder()
          ? _value.technician
          // ignore: cast_nullable_to_non_nullable
          : technician as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as WorkOrderCreateUpdateRequestStatusEnum?,
      locationAddress: locationAddress == const $CopyWithPlaceholder()
          ? _value.locationAddress
          // ignore: cast_nullable_to_non_nullable
          : locationAddress as String?,
      locationLat: locationLat == const $CopyWithPlaceholder()
          ? _value.locationLat
          // ignore: cast_nullable_to_non_nullable
          : locationLat as double?,
      locationLng: locationLng == const $CopyWithPlaceholder()
          ? _value.locationLng
          // ignore: cast_nullable_to_non_nullable
          : locationLng as double?,
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
      equipmentContentType: equipmentContentType == const $CopyWithPlaceholder()
          ? _value.equipmentContentType
          // ignore: cast_nullable_to_non_nullable
          : equipmentContentType as int?,
      equipmentObjectId: equipmentObjectId == const $CopyWithPlaceholder()
          ? _value.equipmentObjectId
          // ignore: cast_nullable_to_non_nullable
          : equipmentObjectId as String?,
      notes: notes == const $CopyWithPlaceholder()
          ? _value.notes
          // ignore: cast_nullable_to_non_nullable
          : notes as String?,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
    );
  }
}

extension $WorkOrderCreateUpdateRequestCopyWith
    on WorkOrderCreateUpdateRequest {
  /// Returns a callable class that can be used as follows: `instanceOfWorkOrderCreateUpdateRequest.copyWith(...)` or like so:`instanceOfWorkOrderCreateUpdateRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WorkOrderCreateUpdateRequestCWProxy get copyWith =>
      _$WorkOrderCreateUpdateRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrderCreateUpdateRequest _$WorkOrderCreateUpdateRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WorkOrderCreateUpdateRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['ticket', 'scheduled_date']);
    final val = WorkOrderCreateUpdateRequest(
      ticket: $checkedConvert('ticket', (v) => v as String),
      scheduledDate: $checkedConvert(
        'scheduled_date',
        (v) => DateTime.parse(v as String),
      ),
      technician: $checkedConvert('technician', (v) => v as String?),
      status: $checkedConvert(
        'status',
        (v) => $enumDecodeNullable(
          _$WorkOrderCreateUpdateRequestStatusEnumEnumMap,
          v,
          unknownValue:
              WorkOrderCreateUpdateRequestStatusEnum.unknownDefaultOpenApi,
        ),
      ),
      locationAddress: $checkedConvert('location_address', (v) => v as String?),
      locationLat: $checkedConvert(
        'location_lat',
        (v) => (v as num?)?.toDouble(),
      ),
      locationLng: $checkedConvert(
        'location_lng',
        (v) => (v as num?)?.toDouble(),
      ),
      estimatedDurationMinutes: $checkedConvert(
        'estimated_duration_minutes',
        (v) => (v as num?)?.toInt(),
      ),
      actualDurationMinutes: $checkedConvert(
        'actual_duration_minutes',
        (v) => (v as num?)?.toInt(),
      ),
      equipmentContentType: $checkedConvert(
        'equipment_content_type',
        (v) => (v as num?)?.toInt(),
      ),
      equipmentObjectId: $checkedConvert(
        'equipment_object_id',
        (v) => v as String?,
      ),
      notes: $checkedConvert('notes', (v) => v as String?),
      isActive: $checkedConvert('is_active', (v) => v as bool?),
    );
    return val;
  },
  fieldKeyMap: const {
    'scheduledDate': 'scheduled_date',
    'locationAddress': 'location_address',
    'locationLat': 'location_lat',
    'locationLng': 'location_lng',
    'estimatedDurationMinutes': 'estimated_duration_minutes',
    'actualDurationMinutes': 'actual_duration_minutes',
    'equipmentContentType': 'equipment_content_type',
    'equipmentObjectId': 'equipment_object_id',
    'isActive': 'is_active',
  },
);

Map<String, dynamic> _$WorkOrderCreateUpdateRequestToJson(
  WorkOrderCreateUpdateRequest instance,
) => <String, dynamic>{
  'ticket': instance.ticket,
  'scheduled_date': instance.scheduledDate.toIso8601String(),
  'technician': ?instance.technician,
  'status': ?_$WorkOrderCreateUpdateRequestStatusEnumEnumMap[instance.status],
  'location_address': ?instance.locationAddress,
  'location_lat': ?instance.locationLat,
  'location_lng': ?instance.locationLng,
  'estimated_duration_minutes': ?instance.estimatedDurationMinutes,
  'actual_duration_minutes': ?instance.actualDurationMinutes,
  'equipment_content_type': ?instance.equipmentContentType,
  'equipment_object_id': ?instance.equipmentObjectId,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
};

const _$WorkOrderCreateUpdateRequestStatusEnumEnumMap = {
  WorkOrderCreateUpdateRequestStatusEnum.SCHEDULED: 'SCHEDULED',
  WorkOrderCreateUpdateRequestStatusEnum.IN_ROUTE: 'IN_ROUTE',
  WorkOrderCreateUpdateRequestStatusEnum.ON_SITE: 'ON_SITE',
  WorkOrderCreateUpdateRequestStatusEnum.COMPLETED: 'COMPLETED',
  WorkOrderCreateUpdateRequestStatusEnum.CANCELLED: 'CANCELLED',
  WorkOrderCreateUpdateRequestStatusEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
