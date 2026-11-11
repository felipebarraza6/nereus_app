# Nereus

App Flutter de telemetría hídrica para SmartHydro / Nereus.

## Kilde

Ventas y clientes: flujo comercial de la prospección a la capacitación Ikolu, con avisos de avance desde Strøm. El flujo, de punta a punta, es: Prospección, Captación, Levantamiento, Cotización, Negociación/Cierre, reunión técnico-comercial y reunión de programación de la instalación. Lo que sigue ocurre en Strøm (instalación, puesta en marcha, entrega y capacitación Ikolu) y Kilde recibe avisos de cada hito.

El alcance del MVP está en [docs/kilde/alcance_mvp.md](docs/kilde/alcance_mvp.md) (propuesta).

## Requisitos

- Flutter 3.47 (ver `.fvmrc`)
- Dart 3.13

## Desarrollo

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
# Debug (sin define) habla con Nereus local en http://localhost:8000
flutter run
# Producción / gateway
flutter run --dart-define=NEREUS_API_BASE=https://gateway.smarthydro.app/api
# Reunión / demo sin backend
flutter run --dart-define=NEREUS_DATA_MODE=fixture
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
