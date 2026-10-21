# AGENTS

- Work in this repo. Never modify `~/code/nereus_api_ref`.
- Verify endpoints against `api/openapi.filtered.yaml` and the Django source. OpenAPI freeze mis-types `login_complete`, device nested `variables`/`latest_readings`, and several custom actions — parse those from runtime JSON.
- Do not implement DGA/SMA sending or admin config writes.
- UI copy in Spanish (Chile). Keep files under ~400 lines, feature folders.
- API client: `bash tool/gen_api.sh` (needs the API ref checkout and Java 17).
- Analyze with `flutter analyze`. Tests: `flutter test`.
- Base URL: `--dart-define=NEREUS_API_BASE=https://gateway.smarthydro.app/api`.
