import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/access.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';

void main() {
  group('journey tolerant parsing', () {
    test('product with int id and nested category', () {
      final product = ProductItem.fromJson(const {
        'id': 9,
        'name': 'SmartHydro MQTT',
        'code': 'SH-MQTT',
        'product_type': 'IOT',
        'category': {'id': 1, 'name': 'IoT'},
        'stock_available': 0,
        'is_active': true,
      });
      expect(product.id, '9');
      expect(product.isIot, isTrue);
      expect(product.name, 'SmartHydro MQTT');
    });

    test('measurement point with nested client', () {
      final point = MeasurementPointItem.fromJson(const {
        'id': 3,
        'label': 'Medidor norte',
        'client': 41,
        'client_name': 'Agricola Nahuen',
        'product': 12,
        'product_name': 'Medidor APR',
        'coordinates_lat': '-33.45',
      });
      expect(point.id, '3');
      expect(point.clientName, 'Agricola Nahuen');
      expect(point.lat, -33.45);
    });

    test('device config numeric strings', () {
      final config = DeviceConfigItem.fromJson({
        'id': 1,
        'device': 174,
        'level_offset': '1.25',
        'max_flow_ls': 8,
        'replicate_on_missing': true,
      });
      expect(config.levelOffset, 1.25);
      expect(config.maxFlowLs, 8);
      expect(config.toBody(deviceId: 174)['device'], 174);
    });

    test('compliance snapshot is read-only shaped', () {
      final snap = ComplianceSnapshot.fromJson({
        'id': 4,
        'send_dga': true,
        'send_sma': false,
        'code_dga': 'ABC-1',
      });
      expect(snap.sendDga, isTrue);
      expect(snap.codeDga, 'ABC-1');
    });
  });

  group('access', () {
    test('client role cannot write', () {
      const session = AuthSession(
        token: 't',
        branchId: '1',
        enabledApps: ['inventory', 'iot_telemetry', 'customers'],
        branches: [
          BranchAssignment(branchId: 1, roleCode: 'CL'),
        ],
      );
      const access = Access(session);
      expect(access.canWrite(NereusModules.inventory), isFalse);
      expect(access.canRead(NereusModules.inventory), isTrue);
    });

    test('admin can write enabled modules', () {
      const session = AuthSession(
        token: 't',
        branchId: '1',
        enabledApps: ['inventory', 'iot_telemetry'],
        branches: [
          BranchAssignment(branchId: 1, roleCode: 'ADM'),
        ],
      );
      const access = Access(session);
      expect(access.canWrite(NereusModules.inventory), isTrue);
      expect(access.canWrite(NereusModules.customers), isFalse);
    });
  });
}
