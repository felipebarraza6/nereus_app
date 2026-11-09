import 'package:flutter/material.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';

class NereusColumn<T> {
  const NereusColumn({
    required this.id,
    required this.label,
    required this.cell,
    this.width,
    this.numeric = false,
  });

  final String id;
  final String label;
  final String Function(T row) cell;
  final double? width;
  final bool numeric;
}

/// Crisp shadcn/ui DataTable matching `nereus_smarthydro/src/components/desk.tsx`.
class NereusTable<T> extends StatefulWidget {
  const NereusTable({
    super.key,
    required this.columns,
    required this.rows,
    required this.onRowTap,
    this.selected,
    this.pageSize = 25,
  });

  final List<NereusColumn<T>> columns;
  final List<T> rows;
  final ValueChanged<T> onRowTap;
  final T? selected;
  final int pageSize;

  @override
  State<NereusTable<T>> createState() => _NereusTableState<T>();
}

class _NereusTableState<T> extends State<NereusTable<T>> {
  String? _sortId;
  bool _asc = true;
  int _page = 0;
  final Set<String> _hidden = {};

  @override
  void didUpdateWidget(covariant NereusTable<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.rows.length != widget.rows.length) {
      _page = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final visible = [
      for (final column in widget.columns)
        if (!_hidden.contains(column.id)) column,
    ];
    final rows = List<T>.from(widget.rows);
    if (_sortId != null) {
      final column = widget.columns.firstWhere((c) => c.id == _sortId);
      rows.sort((a, b) {
        final left = column.cell(a);
        final right = column.cell(b);
        final cmp = left.toLowerCase().compareTo(right.toLowerCase());
        return _asc ? cmp : -cmp;
      });
    }
    final start = _page * widget.pageSize;
    final pageRows = rows.skip(start).take(widget.pageSize).toList();
    final pages = (rows.length / widget.pageSize).ceil().clamp(1, 999);
    final scheme = Theme.of(context).colorScheme;
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final surface2 = dark ? NereusTokens.darkRaised : NereusTokens.surface2;
    final text = Theme.of(context).textTheme;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: line)),
          ),
          child: Row(
            children: [
              Text(
                '${rows.length} ${rows.length == 1 ? 'registro' : 'registros'}',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: muted,
                ),
              ),
              const Spacer(),
              PopupMenuButton<String>(
                tooltip: 'Columnas',
                icon: Icon(Icons.view_column_outlined, size: 17, color: muted),
                itemBuilder: (context) => [
                  for (final column in widget.columns)
                    CheckedPopupMenuItem(
                      value: column.id,
                      checked: !_hidden.contains(column.id),
                      child: Text(column.label),
                    ),
                ],
                onSelected: (id) {
                  setState(() {
                    if (_hidden.contains(id)) {
                      _hidden.remove(id);
                    } else if (_hidden.length < widget.columns.length - 1) {
                      _hidden.add(id);
                    }
                  });
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.sizeOf(context).width - 320,
                ),
                child: DataTable(
                  headingRowHeight: 38,
                  dataRowMinHeight: 40,
                  dataRowMaxHeight: 46,
                  horizontalMargin: 16,
                  columnSpacing: 24,
                  headingRowColor: WidgetStatePropertyAll(surface2),
                  showCheckboxColumn: false,
                  columns: [
                    for (final column in visible)
                      DataColumn(
                        numeric: column.numeric,
                        label: InkWell(
                          onTap: () {
                            setState(() {
                              if (_sortId == column.id) {
                                _asc = !_asc;
                              } else {
                                _sortId = column.id;
                                _asc = true;
                              }
                            });
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                column.label.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.8,
                                  color: muted,
                                ),
                              ),
                              if (_sortId == column.id) ...[
                                const SizedBox(width: 4),
                                Icon(
                                  _asc
                                      ? Icons.arrow_upward
                                      : Icons.arrow_downward,
                                  size: 13,
                                  color: scheme.onSurface,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                  ],
                  rows: [
                    for (var i = 0; i < pageRows.length; i++)
                      DataRow(
                        selected: widget.selected == pageRows[i],
                        onSelectChanged: (_) => widget.onRowTap(pageRows[i]),
                        color: WidgetStateProperty.resolveWith((states) {
                          if (states.contains(WidgetState.selected)) {
                            return surface2;
                          }
                          if (states.contains(WidgetState.hovered)) {
                            return surface2.withValues(alpha: 0.55);
                          }
                          return Colors.transparent;
                        }),
                        cells: [
                          for (final column in visible)
                            DataCell(
                              SizedBox(
                                width: column.width,
                                child: Text(
                                  column.cell(pageRows[i]),
                                  overflow: TextOverflow.ellipsis,
                                  style: text.bodyMedium?.copyWith(
                                    color: scheme.onSurface,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: line)),
          ),
          child: Row(
            children: [
              Text(
                'Página ${_page + 1} de $pages',
                style: TextStyle(fontSize: 12, color: muted),
              ),
              const Spacer(),
              OutlinedButton(
                onPressed: _page > 0 ? () => setState(() => _page--) : null,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(0, 30),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                ),
                child: const Text('Anterior', style: TextStyle(fontSize: 12)),
              ),
              const SizedBox(width: 6),
              OutlinedButton(
                onPressed: _page + 1 < pages
                    ? () => setState(() => _page++)
                    : null,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(0, 30),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                ),
                child: const Text('Siguiente', style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MasterDetail extends StatelessWidget {
  const MasterDetail({
    super.key,
    required this.master,
    this.detail,
    this.detailWidth = 380,
  });

  final Widget master;
  final Widget? detail;
  final double detailWidth;

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.sizeOf(context).width >= 960;
    final panel = detail;
    if (!wide || panel == null) return master;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(child: master),
        SizedBox(
          width: detailWidth,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 16, 16),
            child: GlassSurface(
              borderRadius: BorderRadius.circular(NereusTokens.radiusLg),
              child: panel,
            ),
          ),
        ),
      ],
    );
  }
}
