import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/page_header.dart';

class TourStep {
  const TourStep({
    required this.title,
    required this.body,
    required this.route,
    required this.cta,
    this.apiNote,
    this.supported = true,
  });

  final String title;
  final String body;
  final String route;
  final String cta;
  final String? apiNote;
  final bool supported;
}

const tourSteps = [
  TourStep(
    title: '1. Crear producto IoT',
    body:
        'El modelo SmartHydro MQTT es un producto con product_type IOT. La configuración física no vive aquí.',
    route: '/catalog',
    cta: 'Ir al catálogo',
  ),
  TourStep(
    title: '2. Unidad de inventario',
    body:
        'ProductSerial (IN_STOCK / IN_USE / …) no tiene ViewSet REST. Los equipos IOT tampoco aceptan movimientos de bodega.',
    route: '/inventory',
    cta: 'Ver inventario',
    supported: false,
    apiNote:
        'Sustituto: la unidad operable es un TelemetryDevice ligado al producto IOT.',
  ),
  TourStep(
    title: '3. Cliente y punto',
    body:
        'Crea el cliente. El pozo IoT se agrupa en un TelemetryProject. Un MeasurementPoint APR es otra entidad (medidor + cliente).',
    route: '/clients',
    cta: 'Ir a clientes',
  ),
  TourStep(
    title: '4. Crear el equipo / punto de captación',
    body:
        'POST /iot-telemetry/devices/ con proyecto, producto, token, frecuencia y proveedor MQTT.',
    route: '/devices',
    cta: 'Ir a operación',
  ),
  TourStep(
    title: '5. Configurar la unidad',
    body:
        'DeviceConfig (offset, máximos, profundidades) y variables (factor, rango). El broker MQTT es de sucursal, no del dispositivo.',
    route: '/devices',
    cta: 'Abrir un equipo',
  ),
  TourStep(
    title: '6. Operar',
    body:
        'Overview, lecturas, eventos, alertas (solo ack) y tickets. DGA/SMA queda en solo lectura.',
    route: '/home',
    cta: 'Ver inicio',
  ),
];

class TourScreen extends StatefulWidget {
  const TourScreen({super.key});

  @override
  State<TourScreen> createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final step = tourSteps[_index];
    final text = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const PageHeader(
            title: 'Recorrido',
            subtitle: 'Alta de un equipo IoT con los endpoints reales',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                for (var i = 0; i < tourSteps.length; i++) ...[
                  Expanded(
                    child: AnimatedContainer(
                      duration: NereusTokens.motionFast,
                      height: 4,
                      decoration: BoxDecoration(
                        color: i <= _index
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context)
                                .colorScheme
                                .outline
                                .withValues(alpha: 0.4),
                        borderRadius: BorderRadius.circular(99),
                      ),
                    ),
                  ),
                  if (i < tourSteps.length - 1) const SizedBox(width: 6),
                ],
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(NereusTokens.spaceMd),
              children: [
                GlassCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(step.title, style: text.headlineMedium?.copyWith(fontSize: 22)),
                      const SizedBox(height: 12),
                      Text(step.body, style: text.bodyLarge),
                      if (step.apiNote != null) ...[
                        const SizedBox(height: 12),
                        Text(step.apiNote!, style: text.bodyMedium),
                      ],
                      if (!step.supported) ...[
                        const SizedBox(height: 12),
                        const Text('Este paso no tiene endpoint REST hoy.'),
                      ],
                      const SizedBox(height: 20),
                      FilledButton(
                        onPressed: () => context.go(step.route),
                        child: Text(step.cta),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: _index == 0
                          ? null
                          : () => setState(() => _index--),
                      child: const Text('Anterior'),
                    ),
                    const Spacer(),
                    FilledButton.tonal(
                      onPressed: _index == tourSteps.length - 1
                          ? null
                          : () => setState(() => _index++),
                      child: const Text('Siguiente'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
