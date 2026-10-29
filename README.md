# nereus_app

## Descripción
Aplicación frontend Nereus.

## Arquitectura
Carpetas principales: `android/`, `api/`, `assets/`, `docs/`, `integration_test/`, `ios/`, `l10n/`, `lib/`, `linux/`, `macos/`, `packages/`, `test/`.


## Setup local
1. Clonar el repo y copiar `.env.example` a `.env` (no versionar `.env`).
2. Completar las variables con valores de desarrollo (pedirlos a Felipe; nunca por chat ni en commits).
3. Instalar dependencias () y levantar el servicio.

## Variables de entorno
Solo nombres; valores en el servidor o en GitHub Secrets:
- (sin variables detectadas)

## Deploy
- Deploy **manual**; nada va a `production` sin aprobación de Felipe.
- No usar `down`, `--volumes` ni `prune` en servidores de producción.

## Runbook
- Revisar logs del contenedor/servicio antes de reiniciar; avisar antes de reiniciar servicios productivos.
- Ante un secreto filtrado: rotar, actualizar el servidor y ver `SECURITY.md`.
- Ante errores de CI: un solo re-run por PR.

---

## Documentación previa

### Nereus

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
