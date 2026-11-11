# Alcances MVP Kilde

Documento de alcance para el desarrollo de Kilde, la sección de ventas y clientes de Nereus. Lo escribe Felipe y lo desarrolla Felipe. La arquitectura de datos la decide Felipe; lo que aquí se describe es una **propuesta** para validar.

- Fecha: 10 de noviembre de 2026 (America/Santiago)
- Fuente del flujo y de los indicadores: hojas manuscritas de Christian (Líder de Ventas), aprobadas por Felipe el 10-11-2026
- Piezas de Nereus ya revisadas en código: `nereus_api`, commit `eb7790ab`, 27-10-2026 (revisión de la v7 del deck)
- Etiquetas: **HECHO** (verificado o ya acordado) · **PROPUESTA** (por validar o por construir)

---

## 1. Objetivo

**PROPUESTA.** Construir en Kilde el flujo comercial de SmartHydro, de la prospección a la capacitación Ikolu, sobre Nereus y sin una app aparte. El ejecutivo y el Líder de Ventas registran cada venta en Kilde, derivan a Strøm lo que ya está cerrado con OC, y reciben avisos de cómo va lo derivado, sin salir de la ficha del cliente.

En el MVP entra lo mínimo para administrar ventas reales con ese flujo, sus indicadores y sus metas. La Etapa 2 completa lo que no es bloqueante para salir a usarlo.

---

## 2. Alcance

### 2.1 Dentro del MVP (semana 1, plazo a confirmar)

**PROPUESTA.**

- Flujo por etapas y actividades por etapa.
- Seguimiento comercial en todas las etapas: fecha, canal y responsable de cada contacto.
- Levantamiento: ficha (ya existe), fecha de respuesta y reunión si hay dudas u objeciones.
- Cotización: envío, confirmación de recepción, fecha de respuesta, estados aceptada / objetada / rechazada con motivo, versiones y OC del cliente (número, fecha, monto neto, archivo).
- Reunión técnico-comercial (traspaso del levantamiento a Operaciones, fecha de ingreso; visita técnica si el ejecutivo no resuelve una duda).
- Reunión de programación de la instalación (fecha y requisitos).
- Derivación a Strøm, con la ficha y sin volver a escribir los datos.
- Avisos de avance desde Strøm hacia Kilde (instalación, puesta en marcha, entrega, capacitación Ikolu).
- Indicadores de prospectos, cotizaciones, ventas (OC) y cotizaciones rechazadas.
- Metas: venta neta mensual (10 M, por confirmar) y nº de cotizaciones enviadas.
- Consultas técnicas (RFI) como capa transversal, con bandeja y pendientes por persona. Solo una RFI bloqueante detiene el envío de la cotización.
- Vista del líder y del ejecutivo (embudo, equipo, ficha del cliente).

### 2.2 Etapa 2 (2 semanas siguientes, plazo a confirmar)

**PROPUESTA.**

- Programar y valorizar tareas.
- Clientes vinculados a sus pozos: cumplimiento por cliente.
- Indicadores completos, con tiempo de respuesta de RFI (informativo: no fija plazos ni bloquea).
- Campañas ajustadas a ventas.

### 2.3 Evolución (sin plazo comprometido)

**PROPUESTA.** Agente (consultas, borradores, alertas y pronóstico), indicadores a medida, margen cotizado vs real con Strøm.

### 2.4 Fuera de Kilde

**HECHO** (decisión de alcance, para confirmar). Instalación, configuración y puesta en marcha, entrega del proyecto y capacitación Ikolu ocurren en **Strøm**. Kilde no las ejecuta: recibe avisos de cada hito. La medición de los pozos y los envíos a la entidad de cumplimiento son de **telemetría**. La facturación queda fuera de este documento.

---

## 3. Flujo comercial

**PROPUESTA.** Las etapas no tienen una duración fija: una venta puede saltarse etapas o volver atrás. En el levantamiento se fija una fecha de respuesta para la cotización; eso no es un plazo de etapa. Las consultas técnicas (RFI) y el seguimiento comercial corren en todas las etapas.

### 3.1 En Kilde

| # | Etapa | Qué ocurre | Avanza cuando |
| --- | --- | --- | --- |
| 01 | Prospección | Búsqueda de clientes potenciales. | Hay un cliente potencial identificado. |
| 02 | Captación | Contactar y generar requerimiento. | Contacto hecho y requerimiento generado; si no hay requerimiento, con motivo. |
| 03 | Levantamiento | Solicitud o visita para recopilar información técnico-legal. Se fija fecha de respuesta. Si hay dudas u objeciones, se ofrece una reunión para resolverlas. | Información técnico-legal en la ficha y fecha de respuesta fijada; si hay dudas, reunión ofrecida. |
| 04 | Cotización | Enviar y confirmar recepción. Si no se acepta, se registra la objeción. | Enviada y recepción confirmada; si no se acepta, objeción registrada. |
| 05 | Negociación/Cierre | Recepción de la OC del cliente. | OC registrada: número, fecha y monto neto. |
| 06 | Reunión técnico-comercial | Traspaso del levantamiento a Operaciones y agendar fecha de ingreso. Si hay dudas que el ejecutivo no puede resolver, se coordina con el cliente y se agenda una visita técnica. | Traspaso hecho y fecha de ingreso agendada; visita técnica si hace falta. |
| 07 | Reunión de programación de la instalación | Fecha y requisitos para la instalación. De aquí se deriva a Strøm. | Fecha y requisitos registrados; derivación a Strøm confirmada. |

### 3.2 En Strøm, con avisos a Kilde

| # | Etapa | Qué ocurre | Qué ve Kilde |
| --- | --- | --- | --- |
| 08 | Instalación (H y E) | Instalación en terreno. H y E queda por confirmar. | Aviso de avance en la ficha. |
| 09 | Configuración y puesta en marcha | Inicio del monitoreo y recepción de datos en la plataforma. | Aviso de avance en la ficha. |
| 10 | Entrega del proyecto | Firmar, pagar la OC y agendar la capacitación. | Aviso de avance en la ficha. |
| 11 | Capacitación Ikolu | Validación de datos monitoreados e inicio de la transmisión, con autorización del cliente. | Aviso de avance. El cliente queda como cliente actual; una renovación o ampliación abre otra oportunidad. |

El ejecutivo y el Líder de Ventas ven el estado sin salir de Kilde. Cada aviso y cada contacto del seguimiento quedan con fecha, canal y responsable.

---

## 4. Modelo de datos (propuesta)

Felipe decide la arquitectura. Lo que sigue es un inventario de entidades y campos para validar, no un esquema final. Donde Nereus ya tiene una pieza, se indica; lo nuevo se marca **NUEVO**.

### 4.1 Prospecto

**EXISTE EN PARTE.** Hoy hay prospecto con origen, puntaje, estado, asignación y conversión a cliente (**HECHO**, CRM de Nereus).

Campos propuestos para el flujo de Christian:

- Identificación, origen, responsable
- Estado: en prospección · contactado · con requerimiento · sin requerimiento · no contactado · perdido o archivado
- Motivo, si queda sin requerimiento o se archiva (**NUEVO**)

### 4.2 Captación / requerimiento

**NUEVO** como dato explícito (el contacto hoy se registra como actividad).

- Prospecto o cliente, responsable
- Requerimiento (texto o ficha breve de lo que se pide)
- Resultado: con requerimiento (pasa a levantamiento) o sin requerimiento, con motivo
- Seguimiento del contacto (fecha, canal, responsable)

### 4.3 Levantamiento

**EXISTE EN PARTE.** La ficha de levantamiento ya existe en Nereus y Ventas la usa a diario (**HECHO**, confirmado por Felipe el 30-10-2026). No hay inventario cerrado de campos en las fuentes; el resumen que se usa hoy cubre cliente y contacto, sitio y pozos, lo observado en terreno y lo que exige la entidad (desde la configuración de telemetría: estándar y caudal otorgado).

Campos a sumar (**NUEVO**):

- Fecha de respuesta de la cotización
- Dudas u objeciones, y reunión ofrecida o realizada para resolverlas
- Vínculo con la oportunidad, la cotización y sus RFI
- Viaje a la reunión técnico-comercial y a la derivación a Strøm

### 4.4 Cotización

**EXISTE EN PARTE.** `sales.Order(is_quotation)`, productos, total y costo, PDF, exportación, descuentos, firma de documentos, archivos adjuntos (`ResourceOrder`) y `convert_to_order` (**HECHO**, revisado el 27-10-2026). Versiones, vigencia, estados del flujo de Christian y datos de la OC del cliente no están como tales.

Estados propuestos (**NUEVO**):

- Enviada
- Recepción confirmada (sí/no y fecha)
- Con fecha de respuesta / sin fecha de respuesta (sigue en seguimiento)
- Aceptada (pasa a OC)
- Objetada (se registra la objeción; se resuelve con una versión nueva o un acuerdo)
- Rechazada, con motivo
- Vencida

Un cambio en una cotización enviada crea una versión nueva; la anterior se guarda (**PROPUESTA**, regla ya acordada en el deck).

### 4.5 OC del cliente

**EXISTE EN PARTE.** Se puede adjuntar un archivo a la cotización y convertirla a orden de venta. No hay campos propios de la OC del cliente (número, fecha, monto neto). `suppliers.PurchaseOrder` es OC a proveedores: no aplica.

Campos propuestos (**NUEVO**): número, fecha de recepción, monto neto, archivo, cotización de origen. Al registrarla, se avisa al equipo y se habilita la derivación.

### 4.6 Reuniones

**EXISTE EN PARTE.** Nereus ya tiene reuniones con acta, acuerdos y Google Calendar (**HECHO**). Faltan los tipos y resultados de este flujo (**NUEVO**):

- Reunión para resolver dudas u objeciones del levantamiento
- Reunión técnico-comercial: traspaso del levantamiento, fecha de ingreso, visita técnica si aplica
- Reunión de programación de la instalación: fecha y requisitos

### 4.7 Derivación a Strøm

**NUEVO.** La venta con cotización aceptada y OC registrada se deriva (solo el Líder de Ventas). Se crea el proyecto en Strøm con cliente, contactos, pozos, ficha de levantamiento, cotización, OC y equipos, sin volver a escribirlos. Estados: por derivar · derivada · (luego, los hitos de Strøm por aviso).

### 4.8 Avisos de avance desde Strøm

**EXISTE EN PARTE** el mecanismo; **NUEVO** los eventos concretos.

- **HECHO** (27-10-2026): `AutomationWorkflow` con disparo `EVENT`; nodos `NOTIFICATION`; `NotificationService` (correo) y websocket; `audit.AuditLog`. Hay 6 eventos de sistema (orden de venta, DTE, cliente creado, ticket creado).
- **PROPUESTA / NUEVO:** eventos de hito de Strøm (instalación, puesta en marcha, entrega, capacitación Ikolu) que publican un aviso en la ficha del cliente y en el seguimiento, con fecha, canal y responsable.

### 4.9 Seguimiento comercial

**EXISTE EN PARTE.** Las actividades (llamada, correo, reunión, nota, tarea) ya existen (**HECHO**). Se propone que cada contacto, en cualquier etapa, deje siempre fecha, canal y responsable, y que los avisos de Strøm entren en el mismo rastro (**NUEVO** como requisito de completitud).

### 4.10 RFI

**NUEVO** el sistema de RFI como está descrito en el deck (capa transversal, bandeja, bloqueante solo al enviar la cotización). Se arma sobre tareas, documentos y avisos que Nereus ya tiene (**EXISTE** esa base).

### 4.11 Metas

**NUEVO.** Meta de venta neta mensual (10 M, por confirmar) y meta de nº de cotizaciones enviadas, por período y, si se confirma, por ejecutivo.

---

## 5. Indicadores

**PROPUESTA.** Se calculan solos con lo que el equipo registra. Período = mes calendario, salvo que se defina otro.

| Indicador | Definición | Fórmula | Etapa |
| --- | --- | --- | --- |
| Prospectos contactados | Cuántos prospectos se contactaron en el período | Prospectos con al menos un contacto registrado en el período | MVP |
| Con requerimiento que pasa a visita | De los contactados, cuántos generan requerimiento y avanzan a levantamiento | Contactados con requerimiento que pasan a la etapa Levantamiento | MVP |
| Sin requerimiento, con motivo | De los contactados, cuántos no generan requerimiento | Contactados sin requerimiento, con motivo registrado | MVP |
| Prospectos no contactados | Cuántos potenciales siguen sin contacto | Prospectos del período sin contacto registrado | MVP |
| Cotizaciones con fecha de respuesta | Cómo termina cada cotización que ya tiene fecha | Enviadas con fecha de respuesta, partidas en: aceptadas que pasan a OC; objetadas y resueltas; rechazadas con motivo | MVP |
| Cotizaciones sin fecha de respuesta | Cuáles siguen en seguimiento | Enviadas aún sin fecha de respuesta | MVP |
| Ventas (OC) | Cuánto se vendió en el período | Cantidad de OC del período, fecha de recepción de cada una, monto neto de cada una y suma de montos netos del período | MVP |
| Cotizaciones rechazadas | Por qué se pierden y por cuánto | Cantidad, fecha de rechazo, monto y motivo, en el período | MVP |
| Avance de meta de venta neta | Cómo va la meta del mes | Suma de montos netos de OC del período ÷ meta de venta neta mensual (10 M, por confirmar) | MVP |
| Cotizaciones enviadas vs meta | Cómo va el volumen de cotización | Cotizaciones enviadas en el período frente a la meta de nº de cotizaciones enviadas | MVP |
| RFI pendientes por persona | Quién debe respuestas, cuántas y desde cuándo | RFI sin cerrar, por persona, cliente y origen | MVP |
| Embudo ponderado | Cuánto vale hoy la cartera | Σ valor estimado × probabilidad de su etapa. **EXISTE** en Nereus. | MVP |
| Tiempo de respuesta de RFI | Cuánto tardan las respuestas (informativo) | De asignada a respondida; no es plazo de etapa | Etapa 2 |
| Conformidad por cliente | A quién atender o a quién ofrecer más | % de envíos aceptados, de pozos conectados y de días con datos | Etapa 2 |

---

## 6. Pantallas (MVP)

**PROPUESTA**, sobre el shell de Kilde que ya se mostró en el deck.

1. **Embudo** — etapas del flujo comercial, valor, probabilidad, responsable y próxima acción.
2. **Equipo y metas** — vista por ejecutivo; meta de venta neta mensual (10 M, por confirmar) y nº de cotizaciones enviadas.
3. **Clientes** — ficha 360°: cartera, levantamiento, cotizaciones, OC, avisos de Strøm, seguimiento (fecha, canal, responsable) y, en Etapa 2, conformidad.
4. **Consultas (RFI)** — bandeja y pendientes por persona.
5. **Cotizaciones** — versiones, recepción, fecha de respuesta, estados aceptada / objetada / rechazada con motivo, OC (n°, fecha, monto neto).
6. **Derivaciones** — traspaso a Strøm y avisos de avance de cada hito.
7. **Indicadores** — el set de la sección 5.

Además, las actividades se programan por etapa; valorizar esas tareas queda en Etapa 2.

---

## 7. Integración con nereus_api

Revisado en `/workspace/nereus_api`, commit `eb7790ab`, 27-10-2026 (**HECHO** la revisión; el uso de cada pieza para Kilde es **PROPUESTA**).

| Pieza | Estado | Uso propuesto en el MVP |
| --- | --- | --- |
| `sales.Order` con `is_quotation` | **EXISTE** | Base de la cotización |
| `convert_to_order` | **EXISTE** | Cierre interno de la cotización; no reemplaza la OC del cliente |
| `ResourceOrder` (archivo adjunto) | **EXISTE** | Adjuntar la OC u otros respaldos |
| Campos de OC del cliente (n°, fecha, monto neto) | **NUEVO** | Registrar la OC que envía el cliente |
| Actividades, reuniones, Google Calendar | **EXISTE** | Seguimiento y las tres reuniones del flujo |
| Ficha de levantamiento | **EXISTE** | Completar con fecha de respuesta y vínculo al flujo |
| Prospecto, cliente, contacto, contrato | **EXISTE** | Base de prospección y postventa |
| `AutomationWorkflow` disparo `EVENT` | **EXISTE** | Disparar avisos ante hitos |
| Nodo `NOTIFICATION` | **EXISTE** | Armar el aviso |
| `NotificationService` (correo) | **EXISTE** | Canal de aviso |
| Websocket | **EXISTE** | Actualización en vivo en Kilde |
| `audit.AuditLog` (CREATE/UPDATE/DELETE/LOGIN/LOGOUT/EXPORT) | **EXISTE** | Trazabilidad de cada cambio |
| Eventos de sistema actuales (orden de venta, DTE, cliente creado, ticket creado) | **EXISTE** | No cubren los hitos de Strøm |
| Eventos de hito de Strøm (instalación, puesta en marcha, entrega, capacitación Ikolu) | **NUEVO** | Fuente de los avisos de avance |
| RFI como entidad (bandeja, bloqueante, estados) | **NUEVO** | Capa transversal |
| Metas (venta neta mensual, nº de cotizaciones enviadas) | **NUEVO** | Indicadores de avance |
| Estados de cotización aceptada / objetada / rechazada + motivo | **NUEVO** | Flujo de Christian |
| Fecha de respuesta de la cotización | **NUEVO** | Levantamiento y seguimiento de cotizaciones |

---

## 8. Criterios de aceptación (MVP)

**PROPUESTA.**

1. Mover una oportunidad de Captación a Levantamiento deja registro con usuario y fecha.
2. Un prospecto contactado queda como «con requerimiento» (y puede pasar a visita) o «sin requerimiento», con motivo; uno sin contacto aparece como no contactado.
3. El levantamiento deja ficha y fecha de respuesta; si hay dudas, se puede registrar la reunión para resolverlas.
4. Una cotización con RFI bloqueante abierta no se envía; al cerrarla, sí.
5. Una cotización enviada registra la confirmación de recepción y, si existe, la fecha de respuesta. Sin fecha de respuesta, permanece en seguimiento.
6. Si la cotización no se acepta, queda registrada la objeción o el motivo de rechazo. Un cambio crea una versión nueva; la anterior se guarda.
7. Registrar la OC (número, fecha, monto neto y archivo) avisa al equipo y habilita la derivación.
8. Una venta sin cotización aceptada y sin OC registrada no se puede derivar.
9. Solo el Líder de Ventas deriva a Strøm. La derivación lleva cliente, contactos, pozos, ficha de levantamiento, cotización, OC y equipos, sin volver a escribirlos.
10. Un hito de Strøm (instalación, puesta en marcha, entrega o capacitación Ikolu) aparece como aviso en la ficha del cliente, con fecha, canal y responsable.
11. Los indicadores de la sección 5, en su versión MVP, coinciden con los registros del período.
12. La meta de venta neta mensual (10 M, por confirmar) y la de nº de cotizaciones enviadas se pueden cargar y se ve su avance.
13. Un ejecutivo ve lo suyo; el Líder ve a todo el equipo.
14. Cada contacto del seguimiento queda con fecha, canal y responsable.

---

## 9. Preguntas abiertas

**PROPUESTA**, para que Felipe las cierre antes o durante el MVP.

1. **Meta de venta neta mensual (10 M, por confirmar).** Christian la anotó así. Queda por confirmar el monto y si es la meta del equipo o hay desglose por ejecutivo. En el deck y en este alcance se cita tal cual, sin elaborar.
2. **H y E** en Instalación. Queda por confirmar qué cubre. Se entiende Hidráulica y Eléctrica; no se da por cerrado.
3. **Arquitectura de datos.** Este documento propone entidades y campos. Felipe decide cómo se modelan sobre Nereus (extender `sales.Order`, nuevas entidades, eventos, etc.).
4. **Momento exacto de la derivación.** En este alcance se deriva al cerrar la reunión de programación, con OC ya registrada en Negociación/Cierre. ¿Se confirma, o la derivación ocurre antes, al traspaso técnico-comercial?
5. **Meta de nº de cotizaciones enviadas.** Christian la pide; no dejó un número. Queda por definir el valor y el período.
6. **Eventos concretos de Strøm.** El mecanismo de eventos, avisos y websocket ya existe; los nombres y el contrato de cada hito son propuesta y se acuerdan con Operaciones.

---

## 10. Cómo leer las etiquetas

| Etiqueta | Significa |
| --- | --- |
| **HECHO** | Verificado en código (27-10-2026) o confirmado en conversación (ficha de levantamiento, 30-10-2026; flujo e indicadores de Christian, 10-11-2026 como fuente). |
| **PROPUESTA** | Diseño, alcance, campos, eventos, plazos o reglas aún por validar. |
| **EXISTE / EXISTE EN PARTE / NUEVO** | Estado de la pieza en Nereus hoy, respecto de lo que el MVP necesita. |

El plazo de «≈ 3 semanas» (MVP en la semana 1 y Etapa 2 en las dos siguientes) es el supuesto de ritmo de Strøm, a confirmar después de la revisión de este alcance.
