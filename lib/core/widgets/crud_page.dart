import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/nereus_table.dart';
import 'package:nereus_app/core/widgets/page_header.dart';

/// Shared master-detail CRUD page styled after `nereus_smarthydro/src/components/desk.tsx`
/// (`Panel` + shadcn/ui DataTable, zero Material FAB bloat).
class CrudPage<T> extends StatefulWidget {
  const CrudPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onRetry,
    required this.columns,
    required this.rowTitle,
    required this.rowSubtitle,
    this.kicker,
    this.onCreate,
    this.onOpen,
    this.detailBuilder,
    this.actions = const [],
    this.emptyMessage = 'No hay registros.',
    this.canWrite = false,
    this.createLabel = 'Nuevo',
  });

  final String title;
  final String subtitle;
  final String? kicker;
  final AsyncValue<List<T>> value;
  final VoidCallback onRetry;
  final List<NereusColumn<T>> columns;
  final String Function(T row) rowTitle;
  final String Function(T row) rowSubtitle;
  final VoidCallback? onCreate;
  final ValueChanged<T>? onOpen;
  final Widget Function(T row)? detailBuilder;
  final List<Widget> actions;
  final String emptyMessage;
  final bool canWrite;
  final String createLabel;

  @override
  State<CrudPage<T>> createState() => _CrudPageState<T>();
}

class _CrudPageState<T> extends State<CrudPage<T>> {
  T? _selected;
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.sizeOf(context).width >= 960;
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          PageHeader(
            kicker: widget.kicker,
            title: widget.title,
            subtitle: widget.subtitle,
            actions: [
              ...widget.actions,
              if (widget.canWrite && widget.onCreate != null)
                FilledButton.icon(
                  onPressed: widget.onCreate,
                  icon: const Icon(Icons.add, size: 16),
                  label: Text(widget.createLabel),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Row(
              children: [
                Expanded(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 420),
                    child: SizedBox(
                      height: 36,
                      child: TextField(
                        style: const TextStyle(fontSize: 13),
                        decoration: InputDecoration(
                          hintText: 'Filtrar registros…',
                          prefixIcon: Icon(
                            Icons.search,
                            size: 16,
                            color: muted,
                          ),
                        ),
                        onChanged: (value) => setState(() => _query = value),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: widget.value.when(
              skipLoadingOnReload: true,
              skipLoadingOnRefresh: true,
              loading: () => const ShimmerList(),
              error: (error, _) => AsyncBody(
                isLoading: false,
                hasError: true,
                isEmpty: true,
                onRetry: widget.onRetry,
                errorMessage: userFacingErrorMessage(error),
                isNetworkError: isNetworkFailure(error),
                child: const SizedBox.shrink(),
              ),
              data: (items) {
                final q = _query.trim().toLowerCase();
                final rows = q.isEmpty
                    ? items
                    : items.where((row) {
                        return widget
                                .rowTitle(row)
                                .toLowerCase()
                                .contains(q) ||
                            widget.rowSubtitle(row).toLowerCase().contains(q);
                      }).toList();
                if (rows.isEmpty) {
                  return AsyncBody(
                    isLoading: false,
                    hasError: false,
                    isEmpty: true,
                    onRetry: widget.onRetry,
                    emptyMessage: widget.emptyMessage,
                    child: const SizedBox.shrink(),
                  );
                }
                final master = wide
                    ? Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                        child: GlassSurface(
                          borderRadius:
                              BorderRadius.circular(NereusTokens.radiusLg),
                          child: NereusTable<T>(
                            columns: widget.columns,
                            rows: rows,
                            selected: _selected,
                            onRowTap: (row) {
                              setState(() => _selected = row);
                              widget.onOpen?.call(row);
                            },
                          ),
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                        itemCount: rows.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final row = rows[index];
                          final subtitle = widget.rowSubtitle(row);
                          return GlassCard(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 12,
                            ),
                            onTap: () {
                              setState(() => _selected = row);
                              widget.onOpen?.call(row);
                            },
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.rowTitle(row),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium,
                                      ),
                                      if (subtitle.isNotEmpty) ...[
                                        const SizedBox(height: 2),
                                        Text(
                                          subtitle,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: muted,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Abrir →',
                                  style: TextStyle(fontSize: 11.5, color: muted),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                final detail = _selected != null && widget.detailBuilder != null
                    ? widget.detailBuilder!(_selected as T)
                    : null;
                return MasterDetail(master: master, detail: detail);
              },
            ),
          ),
        ],
      ),
    );
  }
}
