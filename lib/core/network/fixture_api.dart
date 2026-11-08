import 'package:dio/dio.dart';
import 'package:nereus_app/core/network/session_controller.dart';

/// Answers the app locally while the session is the demo fixture token.
class FixtureApiInterceptor extends Interceptor {
  FixtureApiInterceptor(this.session);

  final SessionController session;
  final List<Map<String, dynamic>> _tickets = [
    {
      'id': 't-norte',
      'subject': 'Instalación Norte',
      'ticket_number': 'T-1042',
      'status': 'OPEN',
      'priority': 'MEDIUM',
      'description': 'Puesta en marcha de dos pozos.',
      'client_name': 'Agrícola Santa Rosa SpA',
      'ticket_type_name': 'Proyecto',
      'category_name': 'Hidráulica',
    },
    {
      'id': 't-soporte',
      'subject': 'Falla de logger',
      'ticket_number': 'T-1108',
      'status': 'OPEN',
      'priority': 'HIGH',
      'description': 'El equipo dejó de reportar.',
      'client_name': 'Comunidad de Aguas El Huape',
      'ticket_type_name': 'Soporte',
      'category_name': 'Soporte',
    },
  ];
  final List<Map<String, dynamic>> _orders = [
    {
      'id': 'v-norte-1',
      'work_order_number': 'OT-18',
      'ticket': 't-norte',
      'scheduled_date': '2026-11-12T15:00:00Z',
      'status': 'SCHEDULED',
      'location_address': 'Camino Los Pozos 100, Ñuble',
      'notes': 'ESPECIALIDAD=HIDRAULICA\nCUADRILLA=Cuadrilla Sur\nPozo 1',
      'ticket_subject': 'Instalación Norte',
      'client_name': 'Agrícola Santa Rosa SpA',
      'estimated_duration_minutes': 90,
      'checklist_items': [
        {
          'id': 'a-1',
          'work_order': 'v-norte-1',
          'description': 'Medir caudal del pozo 1',
          'is_completed': false,
          'notes': '',
        },
        {
          'id': 'a-2',
          'work_order': 'v-norte-1',
          'description': 'Revisar el tablero del pozo 1',
          'is_completed': false,
          'notes': '',
        },
      ],
      'feedback': null,
      'attachments': <Map<String, dynamic>>[],
    },
  ];
  var _seq = 20;

  bool get _active => session.token == 'fixture-token';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!_active) {
      handler.next(options);
      return;
    }
    handler.resolve(
      Response<dynamic>(
        requestOptions: options,
        statusCode: 200,
        data: _answer(options),
      ),
    );
  }

  dynamic _answer(RequestOptions options) {
    final path = options.path;
    final method = options.method.toUpperCase();
    if (path.contains('/devices/overview')) {
      return {
        'devices': {'total': 4, 'online': 3, 'offline': 1},
        'alerts': {'open_unacknowledged': 1},
        'readings_today': {'count': 128, 'errors': 0},
        'projects': [
          {'id': 'p1', 'name': 'Instalación Norte', 'device_count': 4},
        ],
      };
    }
    if (path.contains('/support/tickets')) {
      return _page(_tickets);
    }
    if (path.contains('/support/work-orders')) {
      return _workOrders(path, method, options);
    }
    if (path.contains('/checklist-items')) {
      return _checklist(path, method, options);
    }
    if (path.contains('/work-order-feedback')) {
      return _feedback(path, method, options);
    }
    if (path.contains('/work-order-attachments')) {
      return _attachment(options);
    }
    if (method == 'GET') return _page(const []);
    return _echo(options.data);
  }

  dynamic _workOrders(String path, String method, RequestOptions options) {
    final id = _tailId(path, '/work-orders/');
    if (method == 'POST') {
      final body = _asMap(options.data);
      final created = {
        'id': 'v-${++_seq}',
        'work_order_number': 'OT-$_seq',
        'status': 'SCHEDULED',
        'checklist_items': <Map<String, dynamic>>[],
        'feedback': null,
        'attachments': <Map<String, dynamic>>[],
        ...body,
      };
      _orders.insert(0, created);
      return created;
    }
    if (id != null) {
      final order = _find(_orders, id);
      if (order == null) return _page(const []);
      if (method == 'PATCH' || method == 'PUT') {
        order.addAll(_asMap(options.data));
      }
      return order;
    }
    final ticket = options.queryParameters['ticket']?.toString();
    final rows = ticket == null || ticket.isEmpty
        ? _orders
        : _orders.where((order) => order['ticket'] == ticket).toList();
    return _page(rows);
  }

  dynamic _checklist(String path, String method, RequestOptions options) {
    final body = _asMap(options.data);
    if (method == 'POST') {
      final order = _find(_orders, body['work_order']?.toString() ?? '');
      final item = {
        'id': 'a-${++_seq}',
        'is_completed': false,
        'notes': '',
        ...body,
      };
      final items = (order?['checklist_items'] as List?) ?? <dynamic>[];
      items.add(item);
      order?['checklist_items'] = items;
      return item;
    }
    final id = _tailId(path, '/checklist-items/');
    for (final order in _orders) {
      final items = order['checklist_items'];
      if (items is! List) continue;
      for (final raw in items) {
        if (raw is Map && raw['id'] == id) {
          raw.addAll(body);
          return raw;
        }
      }
    }
    return body;
  }

  dynamic _feedback(String path, String method, RequestOptions options) {
    final body = _asMap(options.data);
    final orderId = body['work_order']?.toString();
    final order = orderId == null ? null : _find(_orders, orderId);
    final current = order?['feedback'];
    final saved = {
      'id': current is Map ? current['id'] : 'fb-${++_seq}',
      ...body,
    };
    if (order != null) order['feedback'] = saved;
    return saved;
  }

  dynamic _attachment(RequestOptions options) {
    final fields = _asMap(options.data);
    final order = _find(_orders, fields['work_order']?.toString() ?? '');
    final item = {
      'id': 'file-${++_seq}',
      'description': fields['description'] ?? 'Foto',
      'file': 'demo.jpg',
    };
    final files = (order?['attachments'] as List?) ?? <dynamic>[];
    files.add(item);
    order?['attachments'] = files;
    return item;
  }

  Map<String, dynamic> _echo(Object? data) {
    return {'id': 'fx-${++_seq}', ..._asMap(data)};
  }

  Map<String, dynamic> _page(List<Map<String, dynamic>> rows) {
    return {'count': rows.length, 'results': rows};
  }

  Map<String, dynamic>? _find(List<Map<String, dynamic>> rows, String id) {
    for (final row in rows) {
      if (row['id'] == id) return row;
    }
    return null;
  }

  String? _tailId(String path, String marker) {
    final index = path.indexOf(marker);
    if (index < 0) return null;
    final rest = path.substring(index + marker.length);
    if (rest.isEmpty || rest == '/') return null;
    final id = rest.split('/').first;
    return id.isEmpty ? null : id;
  }

  Map<String, dynamic> _asMap(Object? data) {
    if (data is Map) {
      return data.map((key, value) => MapEntry(key.toString(), value));
    }
    if (data is FormData) {
      return {
        for (final field in data.fields) field.key: field.value,
      };
    }
    return {};
  }
}
