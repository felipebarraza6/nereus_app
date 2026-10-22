/// Runtime shapes from nereus_api_ref:
/// TelemetryDeviceDetailSerializer.latest_readings is a SerializerMethodField
/// annotated as `str` but returns TelemetryReadingSerializer(many=True).
/// Reading `id` / `variable` / `device` are integer PKs.
const deviceDetailRuntimeJson = {
  'id': 42,
  'name': 'Pozo Norte',
  'device_type': 'WELL',
  'project': 3,
  'project_name': 'APR Sur',
  'lat': -33.45,
  'lon': -70.66,
  'address': 'Camino Los Pozos 100',
  'is_active': true,
  'is_online': true,
  'last_reading_at': '2026-10-21T15:04:00Z',
  'variables': [
    {
      'id': 7,
      'device': 42,
      'name': 'Caudal',
      'variable_type': 'FLOW',
      'unit': 'L/s',
      'chart_color': '#12B5A0',
      'is_active': true,
    },
  ],
  'latest_readings': [
    {
      'id': 10074,
      'device': 42,
      'device_name': 'Pozo Norte',
      'variable': 7,
      'variable_name': 'Caudal',
      'reading_at': '2026-10-21T15:04:00Z',
      'processed_value': 3.5,
      'unit': 'L/s',
      'is_error': false,
    },
  ],
};

const deviceStatusRuntimeJson = {
  'id': 42,
  'name': 'Pozo Norte',
  'is_online': true,
  'is_disconnected': false,
  'last_reading_at': '2026-10-21T15:04:00Z',
  'minutes_since_last_reading': 4,
};

const deviceCalendarRuntimeJson = {
  'device_id': 42,
  'device_name': 'Pozo Norte',
  'days': 3,
  'calendar': [
    {
      'date': '2026-10-19',
      'has_data': true,
      'records_count': 12,
      'error_count': 0,
      'avg_value': 2.1,
    },
    {
      'date': '2026-10-20',
      'has_data': false,
      'records_count': 0,
      'error_count': 0,
      'avg_value': null,
    },
  ],
};

const latestBatchReadingJson = {
  'id': '10074',
  'reading_at': '2026-10-21T15:04:00Z',
  'processed_value': 3.5,
  'unit': 'L/s',
  'variable_id': '7',
  'variable_name': 'Caudal',
  'is_error': false,
};

const dailyDayRuntimeJson = {
  'date': '2026-10-21',
  'devices': [
    {
      'device_id': 42,
      'device_name': 'Pozo Norte',
      'records_count': 8,
      'avg_value': 3.1,
      'sum_value': 24.8,
    },
  ],
};
