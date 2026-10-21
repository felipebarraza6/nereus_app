# Nereus App v1 — Product spec

Nereus is the SmartHydro client for water telemetry: devices, live readings, alerts, and support tickets. It talks to the Nereus / Yggdra API at `https://gateway.smarthydro.app/api` (override with `--dart-define=NEREUS_API_BASE=`).

## Goals

- Production-quality Flutter app (Android, iOS, web, macOS, Windows, Linux).
- Full glass-light UI. Spanish (Chile) copy.
- Real API calls for login, dashboard, devices, alerts, tickets, and profile.
- Offline read cache (stale-while-revalidate) plus an offline banner.

## Non-goals

- DGA / SMA sending.
- Admin config writes (MQTT brokers, compliance passwords, alert-rule CRUD, user admin).
- Referencing the old `smarthydro_app` visual language.

## Auth and branch

- Login: `POST /api/accounts/users/login_complete/` with `email` + `password`.
- Headers: `Authorization: Token <t>` and `X-Branch-ID`.
- 401 clears the local session.
- Client vs team is **branch `role_code`**: `CL` is customer; `OWNER`, `ADMIN_LOCAL`, `EMPLOYEE`, etc. are team. `type_user` is not used for that split.

## Screens

1. Login, forgot password, branch picker.
2. Role-aware home with KPIs from `GET /api/iot-telemetry/devices/overview/`. Latest values refresh every 30s in the foreground.
3. Devices list (search, online/silent chips) and OSM map (`flutter_map`).
4. Device detail: FLOW/LEVEL/TOTAL latest values, daily chart, calendar, events. Ticket from device.
5. Alerts: filter, acknowledge one or bulk, summary badge, local notifications from polling.
6. Tickets: list (self-service), detail, submit.
7. Profile, theme (light/dark/system), language `es-CL` default, logout.

## Stack

Riverpod 3 + riverpod_generator, freezed, go_router, Dio, generated OpenAPI client in `packages/nereus_api_client`, flutter_secure_storage, drift, fl_chart, flutter_map, very_good_analysis.
