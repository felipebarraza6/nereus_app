//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'iot_telemetry_readings_latest_batch_create_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class IotTelemetryReadingsLatestBatchCreateRequest {
  /// Returns a new [IotTelemetryReadingsLatestBatchCreateRequest] instance.
  IotTelemetryReadingsLatestBatchCreateRequest({

    required  this.deviceIds,

     this.hours,
  });

  @JsonKey(
    
    name: r'device_ids',
    required: true,
    includeIfNull: false,
  )


  final List<int> deviceIds;



          // minimum: 1
          // maximum: 168
  @JsonKey(
    
    name: r'hours',
    required: false,
    includeIfNull: false,
  )


  final int? hours;





    @override
    bool operator ==(Object other) => identical(this, other) || other is IotTelemetryReadingsLatestBatchCreateRequest &&
      other.deviceIds == deviceIds &&
      other.hours == hours;

    @override
    int get hashCode =>
        deviceIds.hashCode +
        hours.hashCode;

  factory IotTelemetryReadingsLatestBatchCreateRequest.fromJson(Map<String, dynamic> json) => _$IotTelemetryReadingsLatestBatchCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$IotTelemetryReadingsLatestBatchCreateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

