// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_create_update.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WorkOrderCreateUpdateCWProxy {
  WorkOrderCreateUpdate id(String id);

  WorkOrderCreateUpdate ticket(String ticket);

  WorkOrderCreateUpdate scheduledDate(DateTime scheduledDate);

  WorkOrderCreateUpdate technician(String? technician);

  WorkOrderCreateUpdate status(WorkOrderCreateUpdateStatusEnum? status);

  WorkOrderCreateUpdate locationAddress(String? locationAddress);

  WorkOrderCreateUpdate locationLat(double? locationLat);

  WorkOrderCreateUpdate locationLng(double? locationLng);

  WorkOrderCreateUpdate estimatedDurationMinutes(int? estimatedDurationMinutes);

  WorkOrderCreateUpdate actualDurationMinutes(int? actualDurationMinutes);

  WorkOrderCreateUpdate equipmentContentType(int? equipmentContentType);

  WorkOrderCreateUpdate equipmentObjectId(String? equipmentObjectId);

  WorkOrderCreateUpdate notes(String? notes);

  WorkOrderCreateUpdate isActive(bool? isActive);

  WorkOrderCreateUpdate created(DateTime created);

  WorkOrderCreateUpdate modified(DateTime modified);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderCreateUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderCreateUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderCreateUpdate call({
    String id,
    String ticket,
    DateTime scheduledDate,
    String? technician,
    WorkOrderCreateUpdateStatusEnum? status,
    String? locationAddress,
    double? locationLat,
    double? locationLng,
    int? estimatedDurationMinutes,
    int? actualDurationMinutes,
    int? equipmentContentType,
    String? equipmentObjectId,
    String? notes,
    bool? isActive,
    DateTime created,
    DateTime modified,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWorkOrderCreateUpdate.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWorkOrderCreateUpdate.copyWith.fieldName(...)`
class _$WorkOrderCreateUpdateCWProxyImpl
    implements _$WorkOrderCreateUpdateCWProxy {
  const _$WorkOrderCreateUpdateCWProxyImpl(this._value);

  final WorkOrderCreateUpdate _value;

  @override
  WorkOrderCreateUpdate id(String id) => this(id: id);

  @override
  WorkOrderCreateUpdate ticket(String ticket) => this(ticket: ticket);

  @override
  WorkOrderCreateUpdate scheduledDate(DateTime scheduledDate) =>
      this(scheduledDate: scheduledDate);

  @override
  WorkOrderCreateUpdate technician(String? technician) =>
      this(technician: technician);

  @override
  WorkOrderCreateUpdate status(WorkOrderCreateUpdateStatusEnum? status) =>
      this(status: status);

  @override
  WorkOrderCreateUpdate locationAddress(String? locationAddress) =>
      this(locationAddress: locationAddress);

  @override
  WorkOrderCreateUpdate locationLat(double? locationLat) =>
      this(locationLat: locationLat);

  @override
  WorkOrderCreateUpdate locationLng(double? locationLng) =>
      this(locationLng: locationLng);

  @override
  WorkOrderCreateUpdate estimatedDurationMinutes(
    int? estimatedDurationMinutes,
  ) => this(estimatedDurationMinutes: estimatedDurationMinutes);

  @override
  WorkOrderCreateUpdate actualDurationMinutes(int? actualDurationMinutes) =>
      this(actualDurationMinutes: actualDurationMinutes);

  @override
  WorkOrderCreateUpdate equipmentContentType(int? equipmentContentType) =>
      this(equipmentContentType: equipmentContentType);

  @override
  WorkOrderCreateUpdate equipmentObjectId(String? equipmentObjectId) =>
      this(equipmentObjectId: equipmentObjectId);

  @override
  WorkOrderCreateUpdate notes(String? notes) => this(notes: notes);

  @override
  WorkOrderCreateUpdate isActive(bool? isActive) => this(isActive: isActive);

  @override
  WorkOrderCreateUpdate created(DateTime created) => this(created: created);

  @override
  WorkOrderCreateUpdate modified(DateTime modified) => this(modified: modified);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WorkOrderCreateUpdate(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WorkOrderCreateUpdate(...).copyWith(id: 12, name: "My name")
  /// ````
  WorkOrderCreateUpdate call({
    Object? id = const $CopyWithPlaceholder(),
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
    Object? created = const $CopyWithPlaceholder(),
    Object? modified = const $CopyWithPlaceholder(),
  }) {
    return WorkOrderCreateUpdate(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
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
          : status as WorkOrderCreateUpdateStatusEnum?,
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

extension $WorkOrderCreateUpdateCopyWith on WorkOrderCreateUpdate {
  /// Returns a callable class that can be used as follows: `instanceOfWorkOrderCreateUpdate.copyWith(...)` or like so:`instanceOfWorkOrderCreateUpdate.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WorkOrderCreateUpdateCWProxy get copyWith =>
      _$WorkOrderCreateUpdateCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkOrderCreateUpdate _$WorkOrderCreateUpdateFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WorkOrderCreateUpdate',
  json,
  ($checkedConvert) {
    $checkKeys(
      json,
      requiredKeys: const [
        'id',
        'ticket',
        'scheduled_date',
        'created',
        'modified',
      ],
    );
    final val = WorkOrderCreateUpdate(
      id: $checkedConvert('id', (v) => v as String),
      ticket: $checkedConvert('ticket', (v) => v as String),
      scheduledDate: $checkedConvert(
        'scheduled_date',
        (v) => DateTime.parse(v as String),
      ),
      technician: $checkedConvert('technician', (v) => v as String?),
      status: $checkedConvert(
        'status',
        (v) => $enumDecodeNullable(
          _$WorkOrderCreateUpdateStatusEnumEnumMap,
          v,
          unknownValue: WorkOrderCreateUpdateStatusEnum.unknownDefaultOpenApi,
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
      created: $checkedConvert('created', (v) => DateTime.parse(v as String)),
      modified: $checkedConvert('modified', (v) => DateTime.parse(v as String)),
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

Map<String, dynamic> _$WorkOrderCreateUpdateToJson(
  WorkOrderCreateUpdate instance,
) => <String, dynamic>{
  'id': instance.id,
  'ticket': instance.ticket,
  'scheduled_date': instance.scheduledDate.toIso8601String(),
  'technician': ?instance.technician,
  'status': ?_$WorkOrderCreateUpdateStatusEnumEnumMap[instance.status],
  'location_address': ?instance.locationAddress,
  'location_lat': ?instance.locationLat,
  'location_lng': ?instance.locationLng,
  'estimated_duration_minutes': ?instance.estimatedDurationMinutes,
  'actual_duration_minutes': ?instance.actualDurationMinutes,
  'equipment_content_type': ?instance.equipmentContentType,
  'equipment_object_id': ?instance.equipmentObjectId,
  'notes': ?instance.notes,
  'is_active': ?instance.isActive,
  'created': instance.created.toIso8601String(),
  'modified': instance.modified.toIso8601String(),
};

const _$WorkOrderCreateUpdateStatusEnumEnumMap = {
  WorkOrderCreateUpdateStatusEnum.SCHEDULED: 'SCHEDULED',
  WorkOrderCreateUpdateStatusEnum.IN_ROUTE: 'IN_ROUTE',
  WorkOrderCreateUpdateStatusEnum.ON_SITE: 'ON_SITE',
  WorkOrderCreateUpdateStatusEnum.COMPLETED: 'COMPLETED',
  WorkOrderCreateUpdateStatusEnum.CANCELLED: 'CANCELLED',
  WorkOrderCreateUpdateStatusEnum.unknownDefaultOpenApi:
      'unknown_default_open_api',
};
