import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/breakpoints.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/confirm_dialog.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/crm/presentation/client_deals_card.dart';
import 'package:nereus_app/features/customers/domain/client_models.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:nereus_app/features/fichas/presentation/ficha_ui.dart';
import 'package:nereus_app/features/fichas/providers/fichas_provider.dart';
import 'package:url_launcher/url_launcher.dart';

part 'client_360_widgets.dart';

class Client360Screen extends ConsumerWidget {
  const Client360Screen({super.key, required this.clientId});

  final String clientId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clients = ref.watch(customerClientsProvider);
    final values = ref.watch(clientFichaValuesProvider(clientId));
    final fields = ref.watch(fichaFieldsProvider);
    final sections = ref.watch(fichaSectionsProvider);
    final history = ref.watch(clientLevantamientoRespuestasProvider(clientId));
    final client = [
      for (final item in clients.value ?? const <ClientItem>[])
        if (item.id == clientId) item,
    ].firstOrNull;
    final allFields = fields.value ?? const <FichaField>[];
    final allSections = sections.value ?? const <FichaSection>[];
    final allValues = values.value ?? const <FichaValue>[];
    final wide = context.screenWidth >= 960;

    Widget identity() {
      return GlassCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              client?.name ?? 'Ficha del cliente',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            ContactoLine(
              icon: Icons.badge_outlined,
              label: 'RUT',
              value: client?.dni,
            ),
            ContactoLine(
              icon: Icons.qr_code_2_outlined,
              label: 'Código',
              value: client?.clientCode,
            ),
            ContactoLine(
              icon: Icons.place_outlined,
              label: 'Dirección',
              value: client?.address,
            ),
            ContactoLine(
              icon: Icons.mail_outline,
              label: 'Correo',
              value: client?.email,
            ),
            ContactoLine(
              icon: Icons.phone_outlined,
              label: 'Teléfono',
              value: client?.phone,
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                FilledButton.tonal(
                  onPressed: () => _pdf(context, ref),
                  child: const Text('Descargar PDF'),
                ),
                TextButton(
                  onPressed: () => context.go('/levantamientos'),
                  child: const Text('Ir a terreno'),
                ),
                TextButton(
                  onPressed: () => context.go('/pipeline?client=$clientId'),
                  child: const Text('Pipeline'),
                ),
              ],
            ),
          ],
        ),
      );
    }

    List<FichaField> of(FichaSection section) => [
      for (final field in allFields)
        if (field.groupId == section.id || field.groupKey == section.key) field,
    ];

    String? valueOf(FichaField field) {
      for (final value in allValues) {
        if (value.fieldId == field.id || value.fieldKey == field.key) {
          return value.displayValue;
        }
      }
      return null;
    }

    Future<void> onEditField(FichaField field) async {
      final current = valueOf(field);
      final newValue = await showDialog<String>(
        context: context,
        builder: (context) => _FieldValueDialog(
          field: field,
          initialValue: current,
        ),
      );
      if (newValue == null) return;
      try {
        final existing = allValues
            .where((v) => v.fieldId == field.id || v.fieldKey == field.key)
            .firstOrNull;
        await ref.read(fichaRepositoryProvider).upsertValue(
              clientId: clientId,
              fieldId: field.id,
              value: newValue,
              existingId: existing?.id,
            );
        ref.invalidate(clientFichaValuesProvider(clientId));
      } on Object catch (error) {
        if (context.mounted) showFriendlyError(context, error);
      }
    }

    final sectionCards = [
      for (final section in allSections)
        _EditableSectionCard(
          section: section,
          fields: of(section),
          values: allValues,
          actionLabel: section.isTenencias
              ? 'Completar tenencias'
              : section.isCaptacion
              ? 'Completar captación'
              : 'Completar en terreno',
          onAction: () => context.go('/levantamientos?seccion=${section.key}'),
          onEditField: onEditField,
        ),
    ];

    final respuestas = history.value ?? const <LevantamientoRespuesta>[];
    final dateFormat = DateFormat('dd-MM-yyyy HH:mm');

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          PageHeader(
            title: client?.name ?? 'Ficha del cliente',
            subtitle: [
              if (client?.clientCode != null) client!.clientCode!,
              if (client?.dni != null) client!.dni!,
              if (client?.address != null) client!.address!,
            ].join(' · '),
            actions: [
              IconButton(
                tooltip: 'Volver a clientes',
                onPressed: () => context.go('/clients'),
                icon: const Icon(Icons.arrow_back_rounded),
              ),
            ],
          ),
          Expanded(
            child: AsyncBody(
              isLoading:
                  values.isLoading || fields.isLoading || sections.isLoading,
              hasError: values.hasError || fields.hasError,
              isEmpty: false,
              onRetry: () {
                ref.invalidate(clientFichaValuesProvider(clientId));
                ref.invalidate(fichaFieldsProvider);
                ref.invalidate(fichaSectionsProvider);
              },
              child: ListView(
                padding: const EdgeInsets.fromLTRB(
                  NereusTokens.spaceMd,
                  0,
                  NereusTokens.spaceMd,
                  NereusTokens.spaceLg,
                ),
                children: [
                  if (wide)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 360, child: identity()),
                        const SizedBox(width: 16),
                        Expanded(
                          child: FichaGrid(
                            maxColumns: 2,
                            children: sectionCards,
                          ),
                        ),
                      ],
                    )
                  else ...[
                    identity(),
                    const SizedBox(height: 12),
                    FichaGrid(maxColumns: 1, children: sectionCards),
                  ],
                  ClientDealsCard(clientId: clientId),
                  if (respuestas.isNotEmpty) ...[
                    const SizedBox(height: 24),
                    Text(
                      'Historial de terreno',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 12),
                    GlassCard(
                      child: Column(
                        children: [
                          for (final item in respuestas)
                            _HistoryTile(
                              respuesta: item,
                              dateFormat: dateFormat,
                            ),
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _pdf(BuildContext context, WidgetRef ref) async {
    try {
      final template =
          await ref.read(fichaRepositoryProvider).ensurePdfTemplate();
      final fileUrl = await ref.read(fichaRepositoryProvider).generatePdf(
            clientId: clientId,
            templateId: template.id,
          );
      final uri = Uri.tryParse(fileUrl);
      if (uri == null) {
        if (context.mounted) {
          showFriendlyError(
            context,
            const ApiError(message: 'El servidor no devolvió una URL válida.'),
          );
        }
        return;
      }
      final launched = await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
      if (!launched && context.mounted) {
        showFriendlyError(
          context,
          const ApiError(message: 'No se pudo abrir el PDF.'),
        );
      }
    } on Object catch (error) {
      if (context.mounted) showFriendlyError(context, error);
    }
  }
}
