class WaterFieldSpec {
  const WaterFieldSpec({
    required this.key,
    required this.name,
    this.fieldType = 'TEXT',
    this.unit,
    this.options = const [],
    this.required = false,
  });

  final String key;
  final String name;
  final String fieldType;
  final String? unit;
  final List<String> options;
  final bool required;
}

class WaterSectionSpec {
  const WaterSectionSpec({
    required this.key,
    required this.name,
    required this.fields,
    this.color,
    this.icon,
    this.description,
  });

  final String key;
  final String name;
  final String? color;
  final String? icon;
  final String? description;
  final List<WaterFieldSpec> fields;
}

const tenenciasSection = WaterSectionSpec(
  key: 'derechos_agua',
  name: 'Tenencias',
  color: '#2f6db5',
  icon: 'droplet',
  description: 'Derechos de aprovechamiento del predio.',
  fields: [
    WaterFieldSpec(
      key: 'derechos_ls',
      name: 'Caudal otorgado',
      fieldType: 'DECIMAL',
      unit: 'L/s',
    ),
    WaterFieldSpec(key: 'rol_dga', name: 'Rol DGA del titular'),
    WaterFieldSpec(key: 'resolucion_dga', name: 'Resolución DGA'),
    WaterFieldSpec(
      key: 'tipo_derecho',
      name: 'Tipo de derecho',
      fieldType: 'SELECT',
      options: ['Consuntivo', 'No consuntivo', 'Consuntivo eventual'],
    ),
    WaterFieldSpec(key: 'titular_derecho', name: 'Titular del derecho'),
    WaterFieldSpec(
      key: 'fecha_resolucion',
      name: 'Fecha de resolución',
      fieldType: 'DATE',
    ),
    WaterFieldSpec(key: 'expediente_dga', name: 'Expediente DGA'),
  ],
);

const captacionSection = WaterSectionSpec(
  key: 'captacion',
  name: 'Captación',
  color: '#0f8a6c',
  icon: 'gauge',
  description: 'Datos de terreno para el levantamiento de captación.',
  fields: [
    WaterFieldSpec(
      key: 'tipo_punto',
      name: 'Tipo de punto',
      fieldType: 'SELECT',
      options: ['Pozo', 'Superficial', 'Estanque', 'Fluvial'],
    ),
    WaterFieldSpec(
      key: 'profundidad_m',
      name: 'Profundidad',
      fieldType: 'DECIMAL',
      unit: 'm',
    ),
    WaterFieldSpec(
      key: 'diametro_bomba_in',
      name: 'Diámetro de bomba',
      fieldType: 'DECIMAL',
      unit: 'in',
    ),
    WaterFieldSpec(
      key: 'offset_nivel_m',
      name: 'Offset de nivel',
      fieldType: 'DECIMAL',
      unit: 'm',
    ),
    WaterFieldSpec(key: 'direccion_captacion', name: 'Dirección / acceso'),
    WaterFieldSpec(key: 'obs_terreno', name: 'Observaciones de terreno'),
  ],
);

const waterSections = [tenenciasSection, captacionSection];

const tenenciasTemplateName = 'Ficha de tenencias';
const captacionTemplateName = 'Levantamiento de captación';
const pdfTemplateName = 'Ficha predio SmartHydro';
