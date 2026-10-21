# Nereus

App Flutter de telemetría hídrica para SmartHydro / Nereus.

## Requisitos

- Flutter 3.47 (ver `.fvmrc`)
- Dart 3.13

## Desarrollo

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter run --dart-define=NEREUS_API_BASE=https://gateway.smarthydro.app/api
```

Regenerar el cliente OpenAPI (requiere `~/code/nereus_api_ref` y Java 17):

```bash
bash tool/gen_api.sh
```

## Tests

```bash
flutter analyze
flutter test
```

## Web (GitHub Pages)

El workflow `.github/workflows/pages.yml` publica el build de `staging` en:

`https://felipebarraza6.github.io/nereus_app/`
