# Nereus journey (API-backed)

Source of truth: `~/code/nereus_api_ref` models, viewsets, routers and
permissions. Base: `https://gateway.smarthydro.app/api`. Auth:
`Authorization: Token <key>` and `X-Branch-ID: <branch_id>`.

This document lists **only endpoints that exist**. Steps the API does
not expose are marked **missing**. The Flutter client must not invent
paths, and must never POST DGA/SMA sends or alert-channel sends.

Module gate: `ERPBaseViewSet` + `ModuleRolePermission`. Writes require
the module in `login_complete.permissions.enabled_apps` and a non-client
role (`role_code` not in `{CL, FORJA_ALUMNO}`). Superusers bypass.

Yggdra prefixes used by the SmartHydro / Nereus journey:

| Prefix | App |
|---|---|
| `/api/inventory/` | catalog, stock, measurement points, warehouses |
| `/api/customers/` | clients |
| `/api/iot-telemetry/` | projects, devices, configs, variables, readings, MQTT, alerts, events, compliance |
| `/api/equipment/` | profiles, types, assignments, maintenances |
| `/api/accounts/` | users / login |
| `/api/support/` | tickets |
| `/api/branches/` | organizations, roles, branch users |

---

## 1. Products / device models (catálogo)

**Entity:** `inventory.Product`. `product_type` includes `IOT`
(“Equipo IoT / Telemetría”), plus `TOOL`, `EQUIPMENT`,
`MEASUREMENT_MATERIAL`, `DIRECT_SALE`, etc.

The SmartHydro MQTT device is an `IOT` product. Configuration of a
physical unit does **not** live on the product: scales, offsets and
limits live on `DeviceConfig` / `TelemetryVariable` per
`TelemetryDevice`.

| Step | Method | Path | App | Status |
|---|---|---|---|---|
| List catalog | GET | `/api/inventory/products/` | yes | **supported** |
| Filter IoT models | GET | `/api/inventory/products/?product_type=IOT` | yes | **supported** |
| Create / edit / delete product | POST/PATCH/DELETE | `/api/inventory/products/` and `/api/inventory/products/{id}/` | yes | **supported** (`ProductViewSet` ModelViewSet, `module_name=inventory`) |
| Categories | GET/POST/PATCH | `/api/inventory/categories/` | yes | **supported** |
| Equipment profile nested on product | GET/PUT/PATCH/POST | `/api/inventory/products/{id}/equipment-profile/` | yes | **supported** only if `product_type` in `{TOOL, EQUIPMENT, IOT}` |
| Equipment maintenances / assignments / measurements nested | GET/POST | `/api/inventory/products/{id}/equipment-maintenances/` etc. | yes | **supported** for TOOL/EQUIPMENT/IOT |

Write fields the client uses (from `ProductSerializer`): `name`, `code`,
`description`, `product_type`, `measurement_unit`, `is_active`,
`is_for_sale`, `tracks_inventory`, `quantity`, `price`. Branch is set
from `X-Branch-ID`, not from the body.

---

## 2. Inventory (units, serials, stock, states)

Two different “units” exist in the backend:

### 2.1 Warehouse stock (`ProductInventory` / `InventoryHistory`)

| Step | Method | Path | Status |
|---|---|---|---|
| Stock summary | GET | `/api/inventory/product-inventory/` | **supported** (excludes IOT/TOOL/EQUIPMENT) |
| Movements / history | GET/POST | `/api/inventory/inventory-history/` | **supported** for types that track warehouse stock |
| Warehouses | GET/POST/PATCH | `/api/inventory/warehouses/` | **supported** |

`NO_INVENTORY_PRODUCT_TYPES` includes **`IOT`, `TOOL`, `EQUIPMENT`**.
Creating a warehouse movement for an IoT product returns HTTP 400.
IoT devices are not warehouse SKUs.

### 2.2 Serialized units (`ProductSerial`)

`ProductSerial` exists (UUID PK, `unique_together` product +
`serial_number`, statuses `IN_STOCK` / `SOLD` / `IN_USE` /
`UNDER_MAINTENANCE` / `DISPOSED`). It is registered in Django admin
only.

| Step | Path | Status |
|---|---|---|
| List / create / assign serials | — | **missing** — no REST ViewSet |
| Link serial to `TelemetryDevice` via API | — | **missing** — `TelemetryDevice.serial` is OneToOne but `TelemetryDeviceSerializer` write fields **omit `serial`** |

**Recorrido implication:** “add inventory unit” cannot create a
`ProductSerial`. The operable unit the API can create is a
`TelemetryDevice` with optional `product` FK.

---

## 3. Assigning units to clients / orgs / projects / catchment points

There is **no** `client` FK on `TelemetryDevice`. Assignment paths that
exist:

| Intent | How the API models it | Path | Status |
|---|---|---|---|
| Group devices (predio / proyecto) | `TelemetryProject` | `/api/iot-telemetry/projects/` CRUD | **supported** (`module_name=iot_telemetry`) |
| Catchment / IoT “punto” | `TelemetryDevice` (`WELL`/`SURFACE`/`WEATHER`/`TANK`/`FLOW`/`LEVEL`/`CUSTOM`) | `/api/iot-telemetry/devices/` CRUD | **supported** |
| Link device to catalog model | `TelemetryDevice.product` | PATCH device `product` | **supported** |
| APR / meter point tied to a client | `MeasurementPoint` (product **must** be `MEASUREMENT_MATERIAL`, `client` optional) | `/api/inventory/measurement-points/` CRUD | **supported** (`module_name=inventory`) |
| Assign TOOL/EQUIPMENT/IOT **to a user** | `EquipmentAssignment` | `/api/equipment/assignments/` | **supported** — assigns to a **user**, not a client |
| Assign serial to client | — | **missing** |
| Device → organization | via branch (`X-Branch-ID`), not a device field | login branch picker | **supported** (branch scope) |

`MeasurementPoint` is **not** the IoT catchment. Mixing them in the UI
is a product bug.

---

## 4. Per-device configuration

Each unit is configured independently of its product model.

### 4.1 On the device (`TelemetryDeviceSerializer` write)

`name`, `device_type`, `project`, `telemetry_provider`, `device_token`,
`reading_frequency`, `lat`, `lon`, `address`, `is_active`, `metadata`,
`product`, `branch`.

| Field | Endpoint |
|---|---|
| Token MQTT-device | PATCH `/api/iot-telemetry/devices/{id}/` `device_token` |
| Reading frequency | same, `reading_frequency` |
| Provider | same, `telemetry_provider` |

### 4.2 Physical / limits (`DeviceConfig` OneToOne)

`POST/PATCH /api/iot-telemetry/device-configs/`
Filter: `?device={id}`.

Fields: `device`, `depth`, `pump_position`, `level_position`,
`pump_diameter_inches`, `flowmeter_diameter_inches`, `level_offset`,
`flow_initial`, `replicate_on_missing`, `max_diff_m3_per_hour`,
`max_flow_ls`, `max_time_gap_hours`, `reconnection_threshold_hours`.

### 4.3 Scales / ranges (`TelemetryVariable`)

`POST/PATCH /api/iot-telemetry/variables/`

`conversion_factor`, `conversion_offset`, `min_value`, `max_value`,
`is_counter`, `pulses_factor`, `unit`, `variable_type`, `chart_color`.

### 4.4 MQTT broker credentials (branch-level, not per device)

`GET/POST/PATCH /api/iot-telemetry/mqtt-brokers/`

`host`, `port`, `use_tls`, `username`, `password` (**write_only**),
`client_id`, `topic_template`. Devices authenticate with `device_token`
against the branch broker.

### 4.5 Providers catalog

`GET/POST /api/iot-telemetry/providers/` — includes MQTT protocol
providers. Global-ish catalog; devices point at one provider.

---

## 5. Activation / operation

| Step | Method | Path | App |
|---|---|---|---|
| Fleet overview | GET | `/api/iot-telemetry/devices/overview/` | **supported** (read) |
| List / detail devices | GET | `/api/iot-telemetry/devices/` `{id}/` | **supported** |
| Live status | GET | `/api/iot-telemetry/devices/{id}/status/` | **supported** |
| Calendar | GET | `/api/iot-telemetry/devices/{id}/calendar/` | **supported** |
| Sync readings (pull) | POST | `/api/iot-telemetry/devices/{id}/sync_readings/` | **supported** — client may call; it pulls telemetry, it does not send DGA |
| Disconnected list | GET | `/api/iot-telemetry/devices/disconnected/` | **supported** |
| Readings | GET | `/api/iot-telemetry/readings/` | **supported** |
| Latest batch | POST | `/api/iot-telemetry/readings/latest-batch/` | **supported** |
| Daily series | GET | `/api/iot-telemetry/readings/daily/` | **supported** |
| Events | GET | `/api/iot-telemetry/events/` | **supported** |
| Alert triggers list | GET | `/api/iot-telemetry/alert-triggers/` | **supported** |
| Acknowledge alert | POST | `/api/iot-telemetry/alert-triggers/{id}/acknowledge/` | **supported** |
| Acknowledge bulk | POST | `/api/iot-telemetry/alert-triggers/acknowledge_bulk/` | **supported** |
| Alert rules / channels CRUD | GET/POST | `/api/iot-telemetry/alert-rules/`, `alert-channels/` | **API supported**; **app must not call send/test on channels** |
| Tickets | GET/POST | `/api/support/tickets/`, `tickets/submit/` | **supported** |
| Compliance (DGA/SMA) read | GET | `/api/iot-telemetry/compliance-configs/` and `status_overview/` | **read-only in the app** |
| Compliance write / send | POST/PATCH | same viewset is a ModelViewSet | **API exists; app must NOT write `send_dga`/`send_sma`/`dga_password`/`send_endpoint` or trigger sends** |

`ComplianceConfigViewSet.status_overview` is documented as read-only and
does not fire sends. Nested `compliance_config` on device detail is
displayed read-only.

---

## 6. Users, roles and branches

| Step | Method | Path | Status |
|---|---|---|---|
| Login | POST | `/api/accounts/users/login_complete/` | **supported** — returns `token`, `user`, `branches[]` (`role_code`, `role_name`), `permissions.enabled_apps` |
| Logout | POST | `/api/accounts/users/logout/` | **supported** |
| Users directory | GET/POST | `/api/accounts/users/` | **supported** (`UserViewSet`) |
| Branch members | GET/POST/PATCH | `/api/branches/users/` | **supported** (`BranchUserViewSet`, `module_name=branches`) |
| Roles | GET/POST/PATCH | `/api/branches/roles/` | **supported** (`BranchRoleViewSet`) |
| Organizations | GET | `/api/branches/organizations/` | **supported** |
| Current branch | header | `X-Branch-ID` | **supported** — picked after login |
| Forgot / reset password | POST | `/api/accounts/users/forgot_password/`, `reset_password_confirm/` | **supported** |

Role codes seen at login: `ADM`, `OWN`, `CL`, plus custom
`BranchRoleDefinition.code`. Client UI hides writes when
`isClientRole(role_code)` or the module is absent from `enabled_apps`.

---

## Recorrido (guided demo) — steps that are actually callable

1. **Crear producto IoT** — `POST /api/inventory/products/` `{product_type: "IOT", name, code}`.
2. **Unidad de inventario** — **skipped / explained**: `ProductSerial` has no API. Optional: create a `MEASUREMENT_MATERIAL` product + `MeasurementPoint` if the demo needs a client meter. Warehouse stock is rejected for IOT.
3. **Cliente** — `POST /api/customers/clients/` `{name, email, ...}`.
4. **Proyecto (agrupa puntos)** — `POST /api/iot-telemetry/projects/` `{name}`.
5. **Punto / dispositivo** — `POST /api/iot-telemetry/devices/` `{name, device_type, project, product, device_token, reading_frequency, telemetry_provider, lat, lon}`.
6. **Configurar** — `POST /api/iot-telemetry/device-configs/` + `POST /api/iot-telemetry/variables/` + PATCH device token/frequency. MQTT broker at `/api/iot-telemetry/mqtt-brokers/` (branch).
7. **Operar** — overview, readings, status, events, alert-triggers (ack only), tickets.

---

## 8. Fichas, tenencias y levantamientos (customers + surveys)

Nereus no llama `/api/crm/*`. Las fichas de predio usan campos extra y surveys:

| Paso | Method | Path |
|---|---|---|
| Secciones | GET/POST | `/api/customers/extra-field-groups/` |
| Campos | GET/POST | `/api/customers/extra-field-definitions/` |
| Valores | GET/POST/PATCH | `/api/customers/extra-field-values/` |
| Plantillas de formulario | GET/POST | `/api/surveys/templates/` |
| Publicar levantamiento | POST | `/api/surveys/surveys/` `survey_type=CUSTOM` |
| Respuestas | GET/POST | `/api/surveys/responses/` |
| PDF | GET/POST | `/api/customers/card-templates/`, `client-cards/generate/` |

Tenencias = grupo `derechos_agua`. Captación = grupo `captacion`. Las preguntas del levantamiento usan `definition.key` como id; al aplicar, se escribe el extra-field-value.

En debug, la app usa `http://localhost:8000` si no hay `NEREUS_API_BASE`. `NEREUS_DATA_MODE=fixture` sirve la misma UI con datos en memoria.

---

## Out of scope (do not call from this client)

- Any DGA/SMA submission, `dga_password` write, `send_endpoint` write.
- Alert channel send / test.
- Invented serial-number REST.
- Invented device↔client assignment.
- Warehouse movements for IOT/TOOL/EQUIPMENT.
- `/api/crm/*` (leads, pipeline, follow-ups).
