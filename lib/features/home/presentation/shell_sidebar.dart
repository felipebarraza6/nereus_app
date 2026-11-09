import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/nereus_brand.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/home/presentation/home_shell.dart';

const _sectionOrder = [
  'Monitoreo',
  'Strøm — Operaciones',
  'Kilde',
  'Activos',
  'Red',
  'Sistema',
];

List<({String section, List<int> indices})> groupedShellDestinations() {
  final result = <({String section, List<int> indices})>[];
  for (final section in _sectionOrder) {
    final indices = [
      for (var i = 0; i < shellDestinations.length; i++)
        if (shellDestinations[i].section == section) i,
    ];
    if (indices.isNotEmpty) {
      result.add((section: section, indices: indices));
    }
  }
  return result;
}

class ShellTabletRail extends StatelessWidget {
  const ShellTabletRail({
    super.key,
    required this.selected,
    required this.expanded,
    required this.onToggle,
    required this.onSelect,
  });

  final int selected;
  final bool expanded;
  final VoidCallback onToggle;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    return GlassSidebar(
      width: expanded ? 216 : 68,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 14, 8, 10),
            child: Row(
              children: [
                NereusBrandLockup(markSize: 24, compact: !expanded),
                const Spacer(),
                IconButton(
                  tooltip: expanded ? 'Colapsar' : 'Expandir',
                  visualDensity: VisualDensity.compact,
                  onPressed: onToggle,
                  icon: Icon(
                    expanded ? Icons.chevron_left : Icons.chevron_right,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              children: [
                for (final i in railDestinations)
                  _NavTile(
                    dest: shellDestinations[i],
                    selected: selected == i,
                    collapsed: !expanded,
                    onTap: () => onSelect(i),
                  ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Divider(height: 1),
                ),
                _NavTile(
                  dest: const ShellDest(
                    path: '/tour',
                    label: 'Recorrido',
                    icon: Icons.route_outlined,
                    selectedIcon: Icons.route,
                  ),
                  selected: false,
                  collapsed: !expanded,
                  onTap: () => context.go('/tour'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShellDesktopSidebar extends StatefulWidget {
  const ShellDesktopSidebar({
    super.key,
    required this.selected,
    required this.onSelect,
    required this.session,
    required this.onLogout,
  });

  final int selected;
  final ValueChanged<int> onSelect;
  final AuthSession? session;
  final VoidCallback onLogout;

  @override
  State<ShellDesktopSidebar> createState() => _ShellDesktopSidebarState();
}

class _ShellDesktopSidebarState extends State<ShellDesktopSidebar> {
  bool _collapsed = false;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final width = _collapsed ? 72.0 : 256.0;
    final groups = groupedShellDestinations();

    return GlassSidebar(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 10, 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_collapsed)
                  const NereusLogoMark(size: 26)
                else
                  const Expanded(
                    child: NereusBrandLockup(
                      markSize: 24,
                      showBrandLogo: true,
                    ),
                  ),
                if (_collapsed) const Spacer(),
                IconButton(
                  tooltip: _collapsed ? 'Expandir' : 'Colapsar',
                  visualDensity: VisualDensity.compact,
                  onPressed: () => setState(() => _collapsed = !_collapsed),
                  icon: Icon(
                    _collapsed ? Icons.chevron_right : Icons.chevron_left,
                    size: 18,
                    color: muted,
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: line),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
              children: [
                for (final group in groups)
                  if (group.section == 'Strøm — Operaciones')
                    _StromMenu(
                      indices: group.indices,
                      selected: widget.selected,
                      collapsed: _collapsed,
                      onSelect: widget.onSelect,
                    )
                  else ...[
                    if (!_collapsed)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
                        child: Text(
                          group.section.toUpperCase(),
                          style: TextStyle(
                            color: muted,
                            fontSize: 10.5,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.4,
                          ),
                        ),
                      ),
                    for (final i in group.indices)
                      _NavTile(
                        dest: shellDestinations[i],
                        selected: widget.selected == i,
                        collapsed: _collapsed,
                        onTap: () => widget.onSelect(i),
                      ),
                  ],
              ],
            ),
          ),
          Divider(height: 1, color: line),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _NavTile(
                  dest: const ShellDest(
                    path: '/tour',
                    label: 'Recorrido',
                    icon: Icons.route_outlined,
                    selectedIcon: Icons.route,
                  ),
                  selected: false,
                  collapsed: _collapsed,
                  onTap: () => context.go('/tour'),
                ),
                if (!_collapsed) ...[
                  const SizedBox(height: 6),
                  InkWell(
                    borderRadius: BorderRadius.circular(NereusTokens.radiusSm),
                    onTap: () => context.go('/login'),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      child: Text(
                        '← Volver a la portada',
                        style: TextStyle(
                          fontSize: 12,
                          color: muted,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Nav item styled 1:1 after `nereus_smarthydro/src/components/desk.tsx`:
/// active: `bg-primary text-primary-fg rounded-xl px-3 py-2 text-sm font-medium`
/// inactive: `text-muted hover:bg-surface-2 hover:text-fg rounded-xl`
class _StromMenu extends StatefulWidget {
  const _StromMenu({
    required this.indices,
    required this.selected,
    required this.collapsed,
    required this.onSelect,
  });

  final List<int> indices;
  final int selected;
  final bool collapsed;
  final ValueChanged<int> onSelect;

  @override
  State<_StromMenu> createState() => _StromMenuState();
}

class _StromMenuState extends State<_StromMenu> {
  var _open = false;

  @override
  Widget build(BuildContext context) {
    final active = widget.indices.contains(widget.selected);
    final open = _open || active;
    if (widget.collapsed) {
      return _NavTile(
        dest: const ShellDest(
          path: '/strom',
          label: 'Strøm — Operaciones',
          icon: Icons.engineering_outlined,
          selectedIcon: Icons.engineering,
        ),
        selected: active,
        collapsed: true,
        onTap: () => widget.onSelect(widget.indices.first),
      );
    }
    final muted = Theme.of(context).brightness == Brightness.dark
        ? NereusTokens.darkMuted
        : NereusTokens.inkMuted;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
          child: Text(
            'STRØM — OPERACIONES',
            style: TextStyle(
              color: muted,
              fontSize: 10.5,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.4,
            ),
          ),
        ),
        _NavTile(
          dest: const ShellDest(
            path: '/strom',
            label: 'Strøm — Operaciones',
            icon: Icons.engineering_outlined,
            selectedIcon: Icons.engineering,
          ),
          selected: false,
          collapsed: false,
          trailing: Icon(
            open ? Icons.expand_less : Icons.expand_more,
            size: 16,
          ),
          onTap: () => setState(() => _open = !open),
        ),
        if (open)
          for (final i in widget.indices)
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: _NavTile(
                dest: shellDestinations[i],
                selected: widget.selected == i,
                collapsed: false,
                onTap: () => widget.onSelect(i),
              ),
            ),
      ],
    );
  }
}

class _NavTile extends StatelessWidget {
  const _NavTile({
    required this.dest,
    required this.selected,
    required this.collapsed,
    required this.onTap,
    this.trailing,
  });

  final ShellDest dest;
  final bool selected;
  final bool collapsed;
  final VoidCallback onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final dark = Theme.of(context).brightness == Brightness.dark;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    final hoverBg = dark ? NereusTokens.darkRaised : NereusTokens.surface2;
    final fg = selected ? scheme.onSurface : muted;

    return Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: Tooltip(
        message: dest.label,
        child: Material(
          color: selected ? scheme.primary.withValues(alpha: 0.08) : Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
            side: BorderSide(
              color: selected ? scheme.primary : Colors.transparent,
            ),
          ),
          child: InkWell(
            onTap: onTap,
            splashFactory: NoSplash.splashFactory,
            hoverColor: selected ? scheme.primary.withValues(alpha: 0.08) : hoverBg,
            borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
            child: ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 44),
              child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: collapsed ? 10 : 12,
                vertical: 9,
              ),
              child: Row(
                mainAxisAlignment: collapsed
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                children: [
                  Icon(
                    selected ? (dest.selectedIcon ?? dest.icon) : dest.icon,
                    size: 17,
                    color: fg,
                  ),
                  if (!collapsed) ...[
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        dest.label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: scheme.onSurface,
                          fontWeight:
                              selected ? FontWeight.w600 : FontWeight.w500,
                          fontSize: 13.5,
                        ),
                      ),
                    ),
                    if (trailing != null) IconTheme(
                      data: IconThemeData(color: fg),
                      child: trailing!,
                    ),
                  ],
                ],
              ),
            ),
            ),
          ),
        ),
      ),
    );
  }
}
