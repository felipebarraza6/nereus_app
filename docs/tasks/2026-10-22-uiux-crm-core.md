# Tarea: UI/UX premium multi-plataforma + CRM core (fichas/levantamientos) al 100%

**Fecha:** 2026-10-22
**Área:** Nereus App Flutter
**Responsable:** Builder (OpenCode)

---

## 1. Objetivo de negocio

Elevar la percepción de calidad de Nereus alineándola con la identidad SmartHydro (limpio, glass/light, profesional) y con el estilo funcional/minimalista de referencias como `nxord`, para que el CRM —especialmente fichas de predio y levantamientos de terreno— se pueda demostrar completamente en móvil, tablet y web.

## 2. Alcance incluido

### Fase A — UI/UX base
- Renovar tokens y tema para una paleta glass/light coherente (con dark opcional tipo `nxord`).
- Hacer responsive el `HomeShell`: bottom nav + drawer en móvil, rail/drawer en tablet, sidebar colapsable en desktop.
- Normalizar componentes base: tarjetas, chips, badges, inputs, headers, skeletons.
- Agregar helper de breakpoints y usarlo en pantallas clave.
- Actualizar/acoplar goldens y tests de UI.

### Fase B — CRM core: fichas y levantamientos al 100%
- Validar campos requeridos y tipos en `LevantamientoFillScreen`.
- Soportar tipos de pregunta faltantes: `MULTISELECT`, `PHONE`, `EMAIL`, `DATETIME`, `INTEGER`, `DECIMAL`.
- Agregar pantalla de administración de secciones y campos de ficha (CRUD).
- Permitir edición directa de valores de ficha en `Client360Screen`.
- Mostrar progreso de completitud en levantamientos.
- Abrir/visualizar PDF generado.
- Expandir historial de respuestas con contenido.
- Tests de formularios, mapeo y repositories.

## 3. Alcance excluido

- Módulos CRM adicionales: contactos, departamentos, EMH, work orders, SLA, comentarios, adjuntos, usuarios/roles avanzados (quedan para fase siguiente).
- Cambios de backend o invención de endpoints.
- Envío DGA/SMA o escritura de config admin (de acuerdo a `AGENTS.md`).
- Push/merge automático.

## 4. Restricciones

- Mantener stack Flutter existente; no agregar dependencias pesadas sin justificación.
- Copy en español (Chile), tú, sin voseo.
- Archivos preferentemente bajo 400 líneas; si uno crece, partirlo.
- Respetar contratos de API de `docs/JOURNEY.md` y `api/openapi.filtered.yaml`.
- Todos los cambios deben pasar `flutter analyze` y `flutter test`.

## 5. Criterios de aceptación

- [x] `flutter analyze` sin issues.
- [x] `flutter test` con todos los tests pasando (83 tests, incluidos goldens).
- [x] `HomeShell` se adapta visualmente a 390, 834 y 1440px de ancho.
- [x] Fichas y levantamientos se ven y funcionan en móvil y desktop.
- [x] Se puede crear/editar/eliminar secciones y campos de ficha.
- [x] Se puede completar un levantamiento con validaciones y ver el resultado aplicado en la ficha del predio.
- [x] El PDF generado se puede abrir/visualizar.
- [x] Goldens actualizados o nuevos reflejan el nuevo diseño.

## 6. Riesgos conocidos

- Cambiar el shell puede romper navegación existente; requiere tests de routing.
- El mapeo respuesta→valor de ficha es frágil; cualquier cambio debe validarse con tests.
- La generación de PDF depende del backend devolviendo `file_url`; si no, se debe mostrar mensaje claro.

## 7. Plan de rollback

- La rama de trabajo se mantiene aislada; cada commit es reversible.
- Si algo falla, se revierte al commit previo al cambio de shell/tema.
- Los tests actuales deben seguir pasando en cada commit para detectar regresiones temprano.

## 8. Archivos afectados previstos

- `lib/core/theme/tokens.dart`
- `lib/core/theme/app_theme.dart`
- `lib/core/theme/glass.dart`
- `lib/core/theme/breakpoints.dart` (nuevo)
- `lib/features/home/presentation/home_shell.dart`
- `lib/features/home/presentation/home_screen.dart`
- `lib/core/widgets/page_header.dart`
- `lib/core/widgets/form_fields.dart`
- `lib/core/widgets/async_body.dart`
- `lib/core/widgets/crud_page.dart`
- `lib/features/fichas/presentation/fichas_screen.dart`
- `lib/features/fichas/presentation/levantamientos_screen.dart`
- `lib/features/fichas/presentation/levantamiento_fill_screen.dart`
- `lib/features/fichas/presentation/client_360_screen.dart`
- `lib/features/fichas/presentation/ficha_admin_screen.dart` (nuevo)
- `lib/features/fichas/presentation/ficha_ui.dart`
- `lib/features/fichas/domain/ficha_models.dart`
- `lib/features/fichas/domain/ficha_mapping.dart`
- `lib/features/fichas/providers/fichas_provider.dart`
- `lib/core/routing/app_router.dart`
- Tests relacionados.

## 9. Comandos de validación

```bash
flutter analyze
flutter test
```

## 10. Decisiones pendientes

- ¿Usar `url_launcher` para abrir PDF o una vista embebida? Se propone `url_launcher` por simplicidad multi-plataforma.
- ¿Agregar `flutter_form_builder` o mantener formularios manuales? Se propone mantener manuales para no agregar dependencia; abstraer con widget propio.
- ¿Qué tipografía usar? Se propone seguir con `Roboto` por ahora o usar la del sistema; no agregar Google Fonts salvo que se indique.
