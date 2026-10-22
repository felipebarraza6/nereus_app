import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/features/alerts/data/alerts_repository.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';
import 'package:nereus_app/features/tickets/domain/ticket_models.dart';

import 'devices/device_detail_fixtures.dart';

void main() {
  group('auth', () {
    test('login_complete with int ids and nested owner', () {
      final login = LoginComplete.fromJson({
        'token': 'tok',
        'user': {
          'id': 12,
          'email': 'user@example.com',
          'username': 'user',
          'full_name': 'Ana Ríos',
          'type_user': 'ADM',
          'is_superuser': false,
          'is_multi_branch': true,
        },
        'branches': [
          {
            'id': 3,
            'branch_id': 8,
            'branch_name': 'Agricola Nahuen',
            'business_name': 'Agricola Nahuen',
            'role_code': 'ADM',
            'role_name': 'Administrador',
            'owner': {'id': 1, 'username': 'owner', 'full_name': 'Owner'},
          },
        ],
        'permissions': {
          'enabled_apps': ['iot_telemetry', 'support', 'customers'],
        },
      });
      expect(login.token, 'tok');
      expect(login.user.id, 12);
      expect(login.branches.single.branchId, 8);
      expect(login.branches.single.branchName, 'Agricola Nahuen');
      expect(login.enabledApps, contains('iot_telemetry'));
    });
  });

  group('overview', () {
    test('parses projects with int ids and int device_count', () {
      final overview = DeviceOverview.fromJson({
        'devices': {
          'total': 4,
          'online': 3,
          'offline': 1,
          'with_provider': 4,
          'with_compliance': 1,
        },
        'alerts': {'open_unacknowledged': 2},
        'readings_today': {'count': 40, 'errors': 1},
        'projects': [
          {
            'id': 41,
            'name': 'Agricola Nahuen · Agricola Nahuen',
            'device_count': 1,
          },
        ],
        'generated_at': '2026-10-22T03:00:00Z',
      });
      expect(overview.online, 3);
      expect(overview.projects, hasLength(1));
      expect(overview.projects.single.id, '41');
      expect(
        overview.projects.single.name,
        'Agricola Nahuen · Agricola Nahuen',
      );
      expect(overview.projects.single.deviceCount, 1);
    });

    test('HTTP 200 overview body is not shown as a field error', () {
      final error = ApiError.fromDio(
        DioException(
          requestOptions: RequestOptions(
            path: '/api/iot-telemetry/devices/overview/',
          ),
          type: DioExceptionType.badResponse,
          response: Response<Map<String, dynamic>>(
            requestOptions: RequestOptions(
              path: '/api/iot-telemetry/devices/overview/',
            ),
            statusCode: 200,
            data: const {
              'projects': [
                {
                  'id': 41,
                  'name': 'Agricola Nahuen · Agricola Nahuen',
                  'device_count': 1,
                },
              ],
            },
          ),
        ),
      );
      expect(error.message, ApiError.genericMessage);
      expect(error.message, isNot(contains('Agricola')));
      expect(error.isNetwork, isFalse);
    });
  });

  group('devices', () {
    test('list item with nested project object', () {
      final device = DeviceItem.fromJson({
        'id': 174,
        'name': 'Pozo Norte',
        'device_type': 'WELL',
        'project': {
          'id': 41,
          'name': 'Agricola Nahuen · Agricola Nahuen',
          'device_count': 1,
        },
        'is_online': true,
        'minutes_offline': 0,
        'variables_count': 3,
      });
      expect(device.id, 174);
      expect(device.projectName, 'Agricola Nahuen · Agricola Nahuen');
    });

    test('device 174 detail with int reading id 11255', () {
      final detail = DeviceDetail.fromJson({
        'id': 174,
        'name': 'Pozo Norte',
        'device_type': 'WELL',
        'project': 41,
        'project_name': 'Agricola Nahuen · Agricola Nahuen',
        'is_online': true,
        'variables': [
          {
            'id': 7,
            'device': 174,
            'name': 'Caudal',
            'variable_type': 'FLOW',
            'unit': 'L/s',
          },
        ],
        'latest_readings': [
          {
            'id': 11255,
            'device': 174,
            'variable': 7,
            'variable_name': 'Caudal',
            'processed_value': 3.5,
            'unit': 'L/s',
            'is_error': false,
          },
        ],
      });
      expect(detail.device.id, 174);
      expect(detail.latestReadings.single.id, '11255');
      expect(detail.latestReadings.single.variableId, '7');
    });

    test('status, calendar, daily, events, latest-batch', () {
      final status = DeviceStatus.fromJson(
        Map<String, dynamic>.from(deviceStatusRuntimeJson),
      );
      expect(status.id, '42');

      final calendar = DeviceCalendar.fromJson(
        Map<String, dynamic>.from(deviceCalendarRuntimeJson),
      );
      expect(calendar.deviceId, '42');

      final event = DeviceEvent.fromJson({
        'id': 88,
        'title': 'Desconexión',
        'event_type': 'DISCONNECT',
        'event_type_display': 'Desconexión',
        'severity': 'HIGH',
        'created': '2026-10-21T15:04:00Z',
      });
      expect(event.id, '88');
      expect(event.title, 'Desconexión');

      final latest = LatestValue.fromJson(
        Map<String, dynamic>.from(latestBatchReadingJson),
      );
      expect(latest.id, '10074');
    });
  });

  group('alerts', () {
    test('trigger with int ids and nested rule object', () {
      final alert = AlertItem.fromJson({
        'id': 9,
        'alert_rule': {'id': 2, 'name': 'Caudal bajo'},
        'device': {'id': 174, 'name': 'Pozo Norte'},
        'triggered_at': '2026-10-21T15:04:00Z',
        'value_at_trigger': 0.2,
        'is_acknowledged': false,
      });
      expect(alert.id, 9);
      expect(alert.ruleName, 'Caudal bajo');
      expect(alert.deviceName, 'Pozo Norte');
    });

    test('summary ints', () {
      final summary = AlertSummary.fromJson({
        'total': 4,
        'open_unacknowledged': 2,
        'acknowledged': 1,
        'by_severity_open': {'HIGH': 1, 'LOW': '1'},
      });
      expect(summary.openUnacknowledged, 2);
      expect(summary.bySeverityOpen['HIGH'], 1);
      expect(summary.bySeverityOpen['LOW'], 1);
    });
  });

  group('tickets and clients', () {
    test('ticket uuid and nested client', () {
      final ticket = TicketItem.fromJson({
        'id': 'a1b2c3d4-e5f6-7890-abcd-ef1234567890',
        'ticket_number': 'T-100',
        'subject': 'Bomba ruidosa',
        'status': 'OPEN',
        'priority': 'HIGH',
        'description': 'Hace ruido',
        'client': {'id': 41, 'name': 'Agricola Nahuen'},
      });
      expect(ticket.id, startsWith('a1b2'));
      expect(ticket.clientName, 'Agricola Nahuen');
    });

    test('client with nested branch', () {
      final client = ClientItem.fromJson(const {
        'id': 41,
        'name': 'Agricola Nahuen',
        'email': 'contacto@nahuen.cl',
        'phone_number': '+56 9 1111 1111',
        'address': 'Camino Los Pozos 100',
        'branch': {'id': 8, 'name': 'Agricola Nahuen'},
        'contacts': [
          {'id': 1, 'name': 'Ana'},
        ],
        'measurement_points': [],
      });
      expect(client.id, '41');
      expect(client.branchName, 'Agricola Nahuen');
    });
  });
}
