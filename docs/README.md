# Documentación de Nereus

Índice del repositorio `nereus_app`. La portada para un lector no técnico está en el [README raíz](../README.md).

## Para quien recorre el MVP

| Documento | Para qué sirve |
| --- | --- |
| [README](../README.md) | Qué es Nereus, estado del MVP, cómo entrar al staging en modo demostración y el plan de 4 semanas (propuesta). |
| [Esquema general](images/esquema_nereus.png) | Módulos de hoy y los que vienen después. |
| [Plan de trabajo Strøm](images/plan_strom.png) | Semanas propuestas, desde la reunión del 16-nov-2026. |
| [Tablero Strøm Operaciones](https://github.com/users/felipebarraza6/projects/12) | Kanban de issues y PRs. Es un proyecto privado del usuario `felipebarraza6`; los issues están en `nereus_api` (privado). Hace falta acceso. |
| [Alcance MVP Kilde](kilde/alcance_mvp.md) | Flujo comercial de la prospección a la capacitación Ikolu, con avisos de avance desde Strøm: entidades, indicadores, integración con Nereus y criterios de aceptación (propuesta). |

## Técnica

| Documento | Contenido |
| --- | --- |
| [SPEC.md](SPEC.md) | Especificación de producto: objetivos, lo que no entra, autenticación, pantallas y stack. |
| [DESIGN.md](DESIGN.md) | Sistema de diseño: tokens, vidrio, layout, estados y accesibilidad. |
| [JOURNEY.md](JOURNEY.md) | Recorrido funcional y endpoints que **existen** en el API. Los pasos que el API no expone se marcan como *missing*. |
| [API_CONTRACT.md](API_CONTRACT.md) | Forma real del JSON en runtime (más fiable que el OpenAPI generado en varios campos). |
| [Revisión profunda](../README.md#revisión-profunda-técnica) | Arquitectura, modos de datos, cómo correr en local, carpetas y convenciones. |

## Notas de trabajo


## Ramas y publicación

- Rama por defecto: `main`.
- El MVP se desarrolla y se publica desde `staging`. El workflow `pages.yml` despliega esa rama en [GitHub Pages](https://felipebarraza6.github.io/nereus_app/).
- `dev` se usa como rama de integración. Al escribir esta guía, `dev` y `staging` apuntan al mismo commit.

El build de staging usa el API de producción. Para probar, entra con datos de demostración y no uses cuentas reales.
