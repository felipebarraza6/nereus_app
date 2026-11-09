import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/telemetry/domain/telemetry_models.dart';

void main() {
  test('parses login_complete payload', () {
    final login = LoginComplete.fromJson({
      'token': 'tok',
      'user': {
        'id': 1,
        'email': 'a@b.cl',
        'username': 'ana',
        'full_name': 'Ana',
        'type_user': 'CL',
      },
      'branches': [
        {
          'branch_id': 12,
          'branch_name': 'APR Sur',
          'role_code': 'OWNER',
          'role_name': 'Propietario',
        },
      ],
      'permissions': {
        'enabled_apps': ['iot_telemetry'],
      },
    });
    expect(login.token, 'tok');
    expect(login.user.email, 'a@b.cl');
    expect(login.branches.single.branchId, 12);
    expect(login.enabledApps, ['iot_telemetry']);
    expect(isTeamRole(login.branches.single.roleCode), isTrue);
  });

  test('superuser is not treated as a client', () {
    const session = AuthSession(
      token: 't',
      user: SessionUser(id: 1, email: 'a@b.cl', isSuperuser: true),
      branches: [BranchAssignment(branchId: 1, roleCode: 'CL')],
      branchId: '1',
    );
    expect(session.isClient, isFalse);
  });

  test('parses devices overview KPIs', () {
    final overview = DeviceOverview.fromJson({
      'devices': {'total': 4, 'online': 3, 'offline': 1},
      'alerts': {'open_unacknowledged': 2},
      'readings_today': {'count': 40, 'errors': 1},
    });
    expect(overview.online, 3);
    expect(overview.offline, 1);
    expect(overview.openAlerts, 2);
    expect(overview.readingsToday, 40);
  });
}
