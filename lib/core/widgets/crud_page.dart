import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/network/api_error.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/nereus_table.dart';
import 'package:nereus_app/core/widgets/page_header.dart';

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
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: widget.canWrite && widget.onCreate != null && !wide
          ? FloatingActionButton.extended(
              onPressed: widget.onCreate,
              icon: const Icon(Icons.add),
              label: Text(widget.createLabel),
            )
          : null,
      body: Column(
        children: [
          PageHeader(
            title: widget.title,
            subtitle: widget.subtitle,
            actions: [
              ...widget.actions,
              if (widget.canWrite && widget.onCreate != null && wide)
                FilledButton.icon(
                  onPressed: widget.onCreate,
                  icon: const Icon(Icons.add, size: 18),
                  label: Text(widget.createLabel),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: GlassSurface(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              borderRadius: BorderRadius.circular(NereusTokens.radiusSm),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Filtrar',
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  filled: false,
                  prefixIcon: Icon(Icons.search, size: 18),
                ),
                onChanged: (value) => setState(() => _query = value),
              ),
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
                        return widget.rowTitle(row).toLowerCase().contains(q) ||
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
                          borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
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
                        padding: const EdgeInsets.all(NereusTokens.spaceMd),
                        itemCount: rows.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final row = rows[index];
                          return GlassCard(
                            onTap: () {
                              setState(() => _selected = row);
                              widget.onOpen?.call(row);
                            },
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(widget.rowTitle(row)),
                              subtitle: Text(widget.rowSubtitle(row)),
                              trailing: const Icon(Icons.chevron_right),
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
