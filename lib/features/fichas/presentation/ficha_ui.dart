import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/domain/water_templates.dart';

bool fichaWide(BuildContext context) =>
    MediaQuery.sizeOf(context).width >= 960;

int fichaColumns(double width, {int max = 3}) {
  if (width >= 1280) return max;
  if (width >= 720) return 2;
  return 1;
}

String levantamientoEstado(String status) {
  switch (status.toUpperCase()) {
    case 'ACTIVE':
      return 'Activo';
    case 'DRAFT':
      return 'Borrador';
    case 'ARCHIVED':
      return 'Archivado';
    case 'INACTIVE':
      return 'Inactivo';
    default:
      return 'En curso';
  }
}

String tipoCampo(String fieldType) {
  switch (fieldType.toUpperCase()) {
    case 'DECIMAL':
    case 'NUMBER':
    case 'INTEGER':
      return 'Número';
    case 'SELECT':
    case 'MULTISELECT':
      return 'Lista';
    case 'BOOLEAN':
      return 'Sí / No';
    case 'DATE':
    case 'DATETIME':
      return 'Fecha';
    case 'URL':
      return 'Enlace';
    case 'FILE':
    case 'IMAGE':
      return 'Archivo';
    default:
      return 'Texto';
  }
}

IconData iconoSeccion(String key) {
  if (key == tenenciasSection.key) return Icons.water_drop_outlined;
  if (key == captacionSection.key) return Icons.speed_outlined;
  return Icons.assignment_outlined;
}

Color tonoSeccion(String key) {
  if (key == tenenciasSection.key) return NereusTokens.lagoon;
  if (key == captacionSection.key) return NereusTokens.teal;
  return NereusTokens.inkMuted;
}

int camposConDato(List<FichaField> fields, List<FichaValue> values) {
  var count = 0;
  for (final field in fields) {
    for (final value in values) {
      if (value.fieldId == field.id || value.fieldKey == field.key) {
        final text = value.displayValue?.trim();
        if (text != null && text.isNotEmpty && text != '—') count += 1;
        break;
      }
    }
  }
  return count;
}

class FichaGrid extends StatelessWidget {
  const FichaGrid({
    super.key,
    required this.children,
    this.maxColumns = 3,
    this.gap = 12,
  });

  final List<Widget> children;
  final int maxColumns;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cols = fichaColumns(constraints.maxWidth, max: maxColumns);
        final width = (constraints.maxWidth - gap * (cols - 1)) / cols;
        return Wrap(
          spacing: gap,
          runSpacing: gap,
          children: [
            for (final child in children) SizedBox(width: width, child: child),
          ],
        );
      },
    );
  }
}

class FichaKpi extends StatelessWidget {
  const FichaKpi({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
    this.tone = NereusTokens.teal,
    this.onTap,
  });

  final String label;
  final String value;
  final IconData icon;
  final Color tone;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      onTap: onTap,
      semanticLabel: '$label $value',
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: tone.withValues(alpha: 0.16),
            foregroundColor: tone,
            child: Icon(icon, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(value, style: Theme.of(context).textTheme.headlineMedium),
                Text(label, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FichaFieldChip extends StatelessWidget {
  const FichaFieldChip({super.key, required this.field});

  final FichaField field;

  @override
  Widget build(BuildContext context) {
    final unit = field.unit;
    return StatusChip(
      label: unit == null || unit.isEmpty ? field.name : '${field.name} ($unit)',
      tone: NereusTokens.teal,
    );
  }
}

class FichaFieldLine extends StatelessWidget {
  const FichaFieldLine({
    super.key,
    required this.field,
    this.value,
    this.emptyLabel = 'Sin dato',
  });

  final FichaField field;
  final String? value;
  final String emptyLabel;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final unit = field.unit;
    final filled = value != null && value!.trim().isNotEmpty;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(field.name, style: text.titleSmall),
                Text(
                  [
                    tipoCampo(field.fieldType),
                    if (unit != null && unit.isNotEmpty) unit,
                  ].join(' · '),
                  style: text.labelSmall,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              filled ? value! : emptyLabel,
              textAlign: TextAlign.end,
              style: text.titleSmall?.copyWith(
                color: filled ? NereusTokens.ink : NereusTokens.inkMuted,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FichaSectionCard extends StatelessWidget {
  const FichaSectionCard({
    super.key,
    required this.section,
    required this.fields,
    this.values,
    this.actionLabel,
    this.onAction,
    this.secondaryLabel,
    this.onSecondary,
  });

  final FichaSection section;
  final List<FichaField> fields;
  final List<FichaValue>? values;
  final String? actionLabel;
  final VoidCallback? onAction;
  final String? secondaryLabel;
  final VoidCallback? onSecondary;

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final tone = tonoSeccion(section.key);
    final filled = values == null ? null : camposConDato(fields, values!);
    return GlassCard(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [tone, tone.withValues(alpha: 0.2)],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(NereusTokens.spaceMd),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: tone.withValues(alpha: 0.16),
                      foregroundColor: tone,
                      child: Icon(iconoSeccion(section.key)),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(section.name, style: text.titleMedium),
                          if (section.description != null)
                            Text(section.description!, style: text.bodySmall),
                        ],
                      ),
                    ),
                    StatusChip(
                      label: filled == null
                          ? '${fields.length} campos'
                          : '$filled de ${fields.length}',
                      tone: tone,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                if (fields.isEmpty)
                  Text(
                    'Esta sección aún no tiene campos.',
                    style: text.bodyMedium,
                  )
                else if (values == null)
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (final field in fields) FichaFieldChip(field: field),
                    ],
                  )
                else
                  for (final field in fields)
                    FichaFieldLine(
                      field: field,
                      value: _valueOf(field),
                    ),
                if (onAction != null) ...[
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      FilledButton.icon(
                        onPressed: onAction,
                        icon: const Icon(Icons.assignment_turned_in_outlined),
                        label: Text(actionLabel ?? 'Completar en terreno'),
                      ),
                      if (onSecondary != null)
                        TextButton(
                          onPressed: onSecondary,
                          child: Text(secondaryLabel ?? 'Ver más'),
                        ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  String? _valueOf(FichaField field) {
    final list = values;
    if (list == null) return null;
    for (final value in list) {
      if (value.fieldId == field.id || value.fieldKey == field.key) {
        return value.displayValue;
      }
    }
    return null;
  }
}

class ContactoLine extends StatelessWidget {
  const ContactoLine({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    final filled = value != null && value!.trim().isNotEmpty;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(icon, size: 18, color: NereusTokens.teal),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              filled ? value! : '$label no informado',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: filled ? null : NereusTokens.inkMuted,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
