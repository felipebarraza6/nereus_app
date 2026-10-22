# Nereus app API contract

Source of truth for **runtime** JSON is the Python serializers and view
actions in `~/code/nereus_api_ref`, not OpenAPI. drf-spectacular types
`SerializerMethodField` as `string` while many methods return `int` or
`list`. The generated `nereus_api_client` follows OpenAPI and throws
`TypeError` on those values.

Base: `https://gateway.smarthydro.app/api`
Auth: `Authorization: Token <key>` and `X-Branch-ID: <branch_id>`

Live production bodies were reconstructed from the serializers that
gateway actually runs (`iot_telemetry`, `accounts`, `support`,
`customers`). A browser session is required to re-capture; the app login
flow is `POST /api/accounts/users/login_complete/`. Nested objects below
match `build_devices_overview` / `TelemetryReadingSerializer` as
deployed.

The app **does not** call `me/`, organizations CRUD, readings `stats/`,
alert-rule CRUD, MQTT brokers, or compliance writes. Those screens stay
out of the client.

---

## Auth

### `POST /api/accounts/users/login_complete/`

Serializer: `UserLoginSerializer` + hand-built payload in
`UserViewSet.login_complete`.

App reads: `token`, `user.{id,email,username,first_name,last_name,full_name,type_user,is_superuser,is_multi_branch}`, `branches[]`, `permissions.enabled_apps`.

Runtime shape:

```json
{
  "token": "abc123",
  "user": {
    "id": 12,
    "email": "user@example.com",
    "username": "user",
    "first_name": "Ana",
    "last_name": "Ríos",
    "full_name": "Ana Ríos",
    "type_user": "ADM",
    "is_superuser": false,
    "is_multi_branch": true
  },
  "branches": [
    {
      "id": 3,
      "branch_id": 8,
      "branch_name": "Agricola Nahuen",
      "business_name": "Agricola Nahuen",
      "commercial_business": "",
      "role_code": "ADM",
      "role_name": "Administrador",
      "station_id": null,
      "station_name": null,
      "is_active": true,
      "assigned_at": "2026-01-10T12:00:00Z",
      "owner": { "id": 1, "username": "owner", "full_name": "Owner" }
    }
  ],
  "permissions": { "enabled_apps": ["iot_telemetry", "support", "customers"] }
}
```

Tolerant: `id` int|string; `owner` nested object (ignored); missing
`branches` fall back to `user.branch_assignments`.

### `POST /api/accounts/users/forgot_password/`

Body `{ "email": "..." }`. Runtime `{ "message": "..." }` (OpenAPI models an email echo). App ignores body.

### `POST /api/accounts/users/reset_password_confirm/`

Body `{ "token", "new_password", "confirm_password" }`.

### `POST /api/accounts/users/logout/`

No body required.

---

## Devices / telemetry

### `GET /api/iot-telemetry/devices/overview/`

View: `TelemetryDeviceViewSet.overview` → `build_devices_overview`.
OpenAPI: `Map<String, Object>` (generated client recursively
deserializes values as `Object` and blows up on nested maps/lists).

App reads: `devices.{total,online,offline}`, `alerts.open_unacknowledged`,
`readings_today.{count,errors}`, `projects[]`.

```json
{
  "devices": { "total": 4, "online": 3, "offline": 1, "with_provider": 4, "with_compliance": 1 },
  "alerts": { "open_unacknowledged": 2 },
  "readings_today": { "count": 40, "errors": 1 },
  "projects": [
    { "id": 41, "name": "Agricola Nahuen · Agricola Nahuen", "device_count": 1 }
  ],
  "generated_at": "2026-10-22T03:00:00Z"
}
```

`projects[].id` may be int or string. `device_count` is **int**
(`Count("id")`), never a string. This object is what used to appear raw
on the home error card when parse failed on HTTP 200.

### `GET /api/iot-telemetry/devices/`

Serializer: `TelemetryDeviceListSerializer`.
App reads: `results[]` of `id, name, device_type, project_name, is_online, last_reading_at, minutes_offline, variables_count, lat, lon, address`.

Runtime: `project` is int PK; `project_name` string; `minutes_offline` and
`variables_count` are **ints** (method fields annotated `-> str`).

### `GET /api/iot-telemetry/devices/{id}/`

Serializer: `TelemetryDeviceDetailSerializer`.
App reads: device fields + `variables[]` + `latest_readings[]`.

`variables` / `latest_readings` are arrays (method fields annotated `-> str`).
Each reading is `TelemetryReadingSerializer`: `id` **int**, `variable` **int**
FK (not `variable_id`), `processed_value` number, `unit` string.

```json
{
  "id": 174,
  "name": "Pozo Norte",
  "device_type": "WELL",
  "project": 41,
  "project_name": "Agricola Nahuen · Agricola Nahuen",
  "lat": -33.45,
  "lon": -70.66,
  "address": "Camino Los Pozos 100",
  "is_active": true,
  "is_online": true,
  "last_reading_at": "2026-10-21T15:04:00Z",
  "variables": [
    { "id": 7, "device": 174, "name": "Caudal", "variable_type": "FLOW", "unit": "L/s", "chart_color": "#12B5A0", "is_active": true }
  ],
  "latest_readings": [
    {
      "id": 11255,
      "device": 174,
      "device_name": "Pozo Norte",
      "variable": 7,
      "variable_name": "Caudal",
      "reading_at": "2026-10-21T15:04:00Z",
      "processed_value": 3.5,
      "unit": "L/s",
      "is_error": false
    }
  ]
}
```

### `GET /api/iot-telemetry/devices/{id}/status/`

Hand-built in the view. `id` is **stringified** int.

```json
{ "id": "174", "name": "Pozo Norte", "is_online": true, "is_disconnected": false, "last_reading_at": "2026-10-21T15:04:00Z", "minutes_since_last_reading": 4 }
```

### `GET /api/iot-telemetry/devices/{id}/calendar/?days=`

`build_device_calendar`. `device_id` stringified. `records_count` /
`error_count` ints. `avg_value` float|null.

### `POST /api/iot-telemetry/readings/latest-batch/`

Body `{ "device_ids": [174], "hours": 24 }`.
`build_latest_batch`: nested `data[id].latest` with **string** ids.

### `GET /api/iot-telemetry/readings/daily/?device=`

`build_readings_daily`: `{ days: [ { date, devices: [ { device_id, avg_value, sum_value, records_count } ] } ] }`.

### `GET /api/iot-telemetry/events/?device=`

`TelemetryEventListSerializer`. `id` int. Paginated `{ count, results }`.

App does **not** call `readings/stats/`.

---

## Alerts

### `GET /api/iot-telemetry/alert-triggers/`

`TelemetryAlertTriggerSerializer`. `id` int; FKs int; `*_name` strings
(null-safe). Paginated.

### `GET /api/iot-telemetry/alert-triggers/summary/`

Hand-built aggregate: `{ total, open_unacknowledged, acknowledged, by_severity_open: { HIGH: 1 } }`.

### `POST /api/iot-telemetry/alert-triggers/{id}/acknowledge/`

Body `{ "notes": "" }`.

### `POST /api/iot-telemetry/alert-triggers/acknowledge_bulk/`

Body `{ "ids": [1,2] }`.

---

## Tickets

### `GET /api/support/tickets/`

`TicketListSerializer`. `id` UUID **string**; `client` int PK;
`ticket_type`/`category`/`sla_policy`/`assigned_to` may be UUID strings
or null; `*_name` strings. Do not use generated `TicketList.fromJson`
(`id` string vs int, nested objects).

### `GET /api/support/tickets/{id}/`

`TicketDetailSerializer` plus `description`, `comments[]`.

### `POST /api/support/tickets/submit/`

`TicketSubmitSerializer`: `{ subject, description, category_code, priority }`.
201: ticket list shape.

---

## Clients

### `GET /api/customers/clients/`

List: `ClientSerializer` / retrieve: `ClientDepthSerializer`.
App reads: `id, name, email, phone_number, address, branch_name, is_active`.
`contacts` and `measurement_points` on depth are **arrays** (annotated `-> str`).

Organizations are not a separate Nereus screen; branch `business_name`
already identifies the store.

---

## Error mapping

| Cause | User message | Icon |
| --- | --- | --- |
| Timeout / connection | No hay conexión. Revisa tu red e intenta de nuevo. | wifi-off |
| HTTP 4xx with `detail` / `non_field_errors` | that string | error |
| HTTP 200 parse failure, TypeError, unexpected Map | No pudimos cargar los datos. | error |
| Never | raw `TypeError`, Map `toString()`, stack | — |
