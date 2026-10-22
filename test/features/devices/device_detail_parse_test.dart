import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

import 'device_detail_fixtures.dart';

void main() {
  test('parses device detail when reading ids are ints', () {
    final detail = DeviceDetail.fromJson(
      Map<String, dynamic>.from(deviceDetailRuntimeJson),
    );
    expect(detail.device.id, 42);
    expect(detail.device.name, 'Pozo Norte');
    expect(detail.variables.single.id, 7);
    expect(detail.latestReadings, hasLength(1));
    final reading = detail.latestReadings.single;
    expect(reading.id, '10074');
    expect(reading.variableId, '7');
    expect(reading.processedValue, 3.5);
    expect(reading.variableName, 'Caudal');
  });

  test('parses latest-batch string ids and detail int ids', () {
    final fromBatch = LatestValue.fromJson(
      Map<String, dynamic>.from(latestBatchReadingJson),
    );
    expect(fromBatch.id, '10074');
    expect(fromBatch.variableId, '7');

    final fromDetail = LatestValue.fromJson({
      'id': 10074,
      'variable': 7,
      'processed_value': '3.5',
      'unit': 'L/s',
    });
    expect(fromDetail.id, '10074');
    expect(fromDetail.variableId, '7');
    expect(fromDetail.processedValue, 3.5);
  });

  test('parses status and calendar when ids are ints', () {
    final status = DeviceStatus.fromJson(
      Map<String, dynamic>.from(deviceStatusRuntimeJson),
    );
    expect(status.id, '42');
    expect(status.isOnline, isTrue);

    final calendar = DeviceCalendar.fromJson(
      Map<String, dynamic>.from(deviceCalendarRuntimeJson),
    );
    expect(calendar.deviceId, '42');
    expect(calendar.calendar, hasLength(2));
    expect(calendar.calendar.first.hasData, isTrue);
    expect(calendar.calendar.last.hasData, isFalse);
  });

  test('parses daily nested device rollup', () {
    final day = Map<String, dynamic>.from(dailyDayRuntimeJson);
    final devices = day['devices'] as List;
    final first = Map<String, dynamic>.from(devices.first as Map);
    final point = DailyPoint.fromJson({
      'date': day['date'],
      'avg_value': first['avg_value'],
      'sum_value': first['sum_value'],
      'records_count': first['records_count'],
    });
    expect(point.date, '2026-10-21');
    expect(point.avgValue, 3.1);
    expect(point.recordsCount, 8);
  });
}
