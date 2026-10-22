import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/breakpoints.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/debug_origin_banner.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';

class ShellDest {
  const ShellDest({
    required this.path,
    required this.label,
    required this.icon,
    this.selectedIcon,
    this.section,
  });

  final String path;
  final String label;
  final IconData icon;
  final IconData? selectedIcon;
  final String? section;
}

const shellDestinations = [
  ShellDest(
    path: '/home',
    label: 'Inicio',
    icon: Icons.home_outlined,
    selectedIcon: Icons.home_rounded,
    section: 'Monitoreo',
  ),
  ShellDest(
    path: '/catalog',
    label: 'Catálogo',
    icon: Icons.inventory_2_outlined,
    selectedIcon: Icons.inventory_2_rounded,
    section: 'Activos',
  ),
  ShellDest(
    path: '/inventory',
    label: 'Inventario',
    icon: Icons.warehouse_outlined,
    selectedIcon: Icons.warehouse_rounded,
    section: 'Activos',
  ),
  ShellDest(
    path: '/clients',
    label: 'Clientes',
    icon: Icons.apartment_outlined,
    selectedIcon: Icons.apartment_rounded,
    section: 'CRM',
  ),
  ShellDest(
    path: '/fichas',
    label: 'Fichas',
    icon: Icons.assignment_outlined,
    selectedIcon: Icons.assignment,
    section: 'CRM',
  ),
  ShellDest(
    path: '/levantamientos',
    label: 'Levantamientos',
    icon: Icons.fact_check_outlined,
    selectedIcon: Icons.assignment_turned_in,
    section: 'CRM',
  ),
  ShellDest(
    path: '/points',
    label: 'Puntos',
    icon: Icons.place_outlined,
    selectedIcon: Icons.place_rounded,
    section: 'Red',
  ),
  ShellDest(
    path: '/equipment',
    label: 'Equipos',
    icon: Icons.precision_manufacturing_outlined,
    selectedIcon: Icons.precision_manufacturing,
    section: 'Activos',
  ),
  ShellDest(
    path: '/devices',
    label: 'Operación',
    icon: Icons.water_drop_outlined,
    selectedIcon: Icons.water_drop,
    section: 'Monitoreo',
  ),
  ShellDest(
    path: '/tickets',
    label: 'Tickets',
    icon: Icons.support_agent_outlined,
    selectedIcon: Icons.support_agent,
    section: 'Monitoreo',
  ),
  ShellDest(
    path: '/profile',
    label: 'Ajustes',
    icon: Icons.settings_outlined,
    selectedIcon: Icons.settings,
    section: 'Sistema',
  ),
];

/// Destinations shown in the mobile bottom navigation. The order here is the
/// order on screen. We keep the most frequent actions one tap away.
const mobileDestinations = [0, 8, 3, 9, 10];

/// Destinations shown in the tablet rail when it is collapsed.
const railDestinations = [0, 8, 3, 9, 4, 5];

int destinationIndexFor(String path) {
  if (path.startsWith('/catalog')) return 1;
  if (path.startsWith('/inventory')) return 2;
  if (path.startsWith('/clients')) return 3;
  if (path.startsWith('/fichas')) return 4;
  if (path.startsWith('/levantamientos')) return 5;
  if (path.startsWith('/points')) return 6;
  if (path.startsWith('/equipment')) return 7;
  if (path.startsWith('/devices') || path.startsWith('/alerts')) return 8;
  if (path.startsWith('/tickets')) return 9;
  if (path.startsWith('/profile') || path.startsWith('/settings')) return 10;
  return 0;
}

List<String> breadcrumbsFor(String path) {
  if (path.startsWith('/devices/')) return ['Operación', 'Equipo'];
  if (path.startsWith('/tickets/')) return ['Tickets', 'Detalle'];
  if (path.startsWith('/clients/') && path != '/clients') {
    return ['Clientes', 'Ficha'];
  }
  if (path.startsWith('/fichas/admin')) return ['Fichas', 'Administrar'];
  if (path.startsWith('/levantamientos/fill')) {
    return ['Levantamientos', 'Terreno'];
  }
  if (path == '/tour') return ['Inicio', 'Recorrido'];
  if (path == '/alerts') return ['Operación', 'Alertas'];
  if (path == '/profile/settings') return ['Ajustes', 'Preferencias'];
  if (path == '/profile/org') return ['Ajustes', 'Sucursal'];
  final index = destinationIndexFor(path);
  return [shellDestinations[index].label];
}

class HomeShell extends ConsumerStatefulWidget {
  const HomeShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends ConsumerState<HomeShell> {
  bool _railExpanded = false;
  final _search = TextEditingController();
  final _searchFocus = FocusNode();

  @override
  void dispose() {
    _search.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  void _go(int index) {
    context.go(shellDestinations[index].path);
  }

  void _submitSearch(String raw) {
    final query = raw.trim();
    ref.read(deviceQueryControllerProvider.notifier).setSearch(query);
    context.go('/devices');
  }

  void _logout() => ref.read(sessionProvider.notifier).logout();

  @override
  Widget build(BuildContext context) {
    final breakpoint = context.breakpoint;
    final offline = ref.watch(isOfflineProvider).value ?? false;
    final session = ref.watch(sessionProvider).value;
    final path = GoRouterState.of(context).uri.path;
    final selected = destinationIndexFor(path);
    final crumbs = breadcrumbsFor(path);

    return CallbackShortcuts(
      bindings: {
        const SingleActivator(LogicalKeyboardKey.slash):
            _searchFocus.requestFocus,
      },
      child: Focus(
        autofocus: true,
        child: AnimatedWaterBackdrop(
          child: Scaffold(
            body: Column(
              children: [
                const DebugOriginBanner(),
                OfflineBanner(offline: offline),
                Expanded(
                  child: _ShellLayout(
                    breakpoint: breakpoint,
                    selected: selected,
                    session: session,
                    crumbs: crumbs,
                    searchController: _search,
                    searchFocus: _searchFocus,
                    onSearch: _submitSearch,
                    railExpanded: _railExpanded,
                    onRailExpandToggle: () => setState(
                      () => _railExpanded = !_railExpanded,
                    ),
                    onDestinationSelect: _go,
                    onLogout: _logout,
                    navigationShell: widget.navigationShell,
                  ),
                ),
              ],
            ),
            bottomNavigationBar: breakpoint == NereusBreakpoint.compact
                ? _MobileBottomNav(selected: selected, onSelect: _go)
                : null,
            drawer: breakpoint == NereusBreakpoint.compact
                ? _MobileDrawer(
                    selected: selected,
                    onSelect: (index) {
                      Navigator.of(context).pop();
                      _go(index);
                    },
                  )
                : null,
          ),
        ),
      ),
    );
  }
}

class _ShellLayout extends StatelessWidget {
  const _ShellLayout({
    required this.breakpoint,
    required this.selected,
    required this.session,
    required this.crumbs,
    required this.searchController,
    required this.searchFocus,
    required this.onSearch,
    required this.railExpanded,
    required this.onRailExpandToggle,
    required this.onDestinationSelect,
    required this.onLogout,
    required this.navigationShell,
  });

  final NereusBreakpoint breakpoint;
  final int selected;
  final AuthSession? session;
  final List<String> crumbs;
  final TextEditingController searchController;
  final FocusNode searchFocus;
  final ValueChanged<String> onSearch;
  final bool railExpanded;
  final VoidCallback onRailExpandToggle;
  final ValueChanged<int> onDestinationSelect;
  final VoidCallback onLogout;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    switch (breakpoint) {
      case NereusBreakpoint.compact:
        return _MobileBody(
          crumbs: crumbs,
          onSearch: searchFocus.requestFocus,
          navigationShell: navigationShell,
        );
      case NereusBreakpoint.medium:
      case NereusBreakpoint.expanded:
        return _TabletBody(
          selected: selected,
          railExpanded: railExpanded,
          onRailExpandToggle: onRailExpandToggle,
          onDestinationSelect: onDestinationSelect,
          crumbs: crumbs,
          searchController: searchController,
          searchFocus: searchFocus,
          onSearch: onSearch,
          session: session,
          onLogout: onLogout,
          navigationShell: navigationShell,
        );
      case NereusBreakpoint.large:
      case NereusBreakpoint.extraLarge:
        return _DesktopBody(
          selected: selected,
          onDestinationSelect: onDestinationSelect,
          crumbs: crumbs,
          searchController: searchController,
          searchFocus: searchFocus,
          onSearch: onSearch,
          session: session,
          onLogout: onLogout,
          navigationShell: navigationShell,
        );
    }
  }
}

class _MobileBody extends StatelessWidget {
  const _MobileBody({
    required this.crumbs,
    required this.onSearch,
    required this.navigationShell,
  });

  final List<String> crumbs;
  final VoidCallback onSearch;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          _MobileHeader(
            crumbs: crumbs,
            onSearch: onSearch,
          ),
          Expanded(child: navigationShell),
        ],
      ),
    );
  }
}

class _MobileHeader extends StatelessWidget {
  const _MobileHeader({required this.crumbs, required this.onSearch});

  final List<String> crumbs;
  final VoidCallback onSearch;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: GlassSurface(
        borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
        opacity: 0.9,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                crumbs.last,
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconButton(
              onPressed: () => context.go('/tour'),
              icon: const Icon(Icons.route_outlined),
            ),
            IconButton(onPressed: onSearch, icon: const Icon(Icons.search)),
            Builder(
              builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(Icons.menu),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MobileBottomNav extends StatelessWidget {
  const _MobileBottomNav({required this.selected, required this.onSelect});

  final int selected;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final mobileIndex = mobileDestinations.indexOf(selected);
    return GlassNavBar(
      selectedIndex: mobileIndex < 0 ? 0 : mobileIndex,
      onSelect: (index) => onSelect(mobileDestinations[index]),
      destinations: [
        for (final i in mobileDestinations)
          NavigationDestination(
            icon: Icon(shellDestinations[i].icon),
            selectedIcon: Icon(
              shellDestinations[i].selectedIcon ?? shellDestinations[i].icon,
            ),
            label: shellDestinations[i].label,
          ),
      ],
    );
  }
}

class _MobileDrawer extends StatelessWidget {
  const _MobileDrawer({required this.selected, required this.onSelect});

  final int selected;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Drawer(
      backgroundColor: scheme.surface.withValues(alpha: 0.95),
      child: SafeArea(
        child: Column(
          children: [
            _DrawerHeader(onSelect: onSelect),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: [
                  for (var i = 0; i < shellDestinations.length; i++)
                    _DrawerTile(
                      dest: shellDestinations[i],
                      selected: selected == i,
                      onTap: () => onSelect(i),
                    ),
                  const Divider(),
                  _DrawerTile(
                    dest: const ShellDest(
                      path: '/tour',
                      label: 'Recorrido',
                      icon: Icons.route_outlined,
                      selectedIcon: Icons.route,
                    ),
                    selected: false,
                    onTap: () => onSelect(-1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({required this.onSelect});

  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Row(
        children: [
          Icon(Icons.water_drop, color: scheme.primary),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              'Nereus',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}

class _DrawerTile extends StatelessWidget {
  const _DrawerTile({
    required this.dest,
    required this.selected,
    required this.onTap,
  });

  final ShellDest dest;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        selected ? (dest.selectedIcon ?? dest.icon) : dest.icon,
        color: selected ? scheme.primary : scheme.onSurface,
      ),
      title: Text(dest.label),
      selected: selected,
      selectedTileColor: scheme.primary.withValues(alpha: 0.12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
      ),
      onTap: onTap,
    );
  }
}

class _TabletBody extends StatelessWidget {
  const _TabletBody({
    required this.selected,
    required this.railExpanded,
    required this.onRailExpandToggle,
    required this.onDestinationSelect,
    required this.crumbs,
    required this.searchController,
    required this.searchFocus,
    required this.onSearch,
    required this.session,
    required this.onLogout,
    required this.navigationShell,
  });

  final int selected;
  final bool railExpanded;
  final VoidCallback onRailExpandToggle;
  final ValueChanged<int> onDestinationSelect;
  final List<String> crumbs;
  final TextEditingController searchController;
  final FocusNode searchFocus;
  final ValueChanged<String> onSearch;
  final AuthSession? session;
  final VoidCallback onLogout;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _TabletRail(
          selected: selected,
          expanded: railExpanded,
          onToggle: onRailExpandToggle,
          onSelect: onDestinationSelect,
        ),
        Expanded(
          child: Column(
            children: [
              _TopBar(
                crumbs: crumbs,
                searchController: searchController,
                searchFocus: searchFocus,
                onSearch: onSearch,
                session: session,
                onLogout: onLogout,
              ),
              Expanded(child: navigationShell),
            ],
          ),
        ),
      ],
    );
  }
}

class _TabletRail extends StatelessWidget {
  const _TabletRail({
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
    final scheme = Theme.of(context).colorScheme;
    return GlassSidebar(
      width: expanded ? 200 : 72,
      margin: const EdgeInsets.fromLTRB(8, 8, 0, 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
            child: Row(
              children: [
                Icon(Icons.water_drop, color: scheme.primary, size: 22),
                if (expanded) ...[
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Nereus',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                ] else
                  const Spacer(),
                IconButton(
                  onPressed: onToggle,
                  icon: Icon(
                    expanded ? Icons.chevron_left : Icons.chevron_right,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              children: [
                for (final i in railDestinations)
                  _RailTile(
                    dest: shellDestinations[i],
                    selected: selected == i,
                    expanded: expanded,
                    onTap: () => onSelect(i),
                  ),
                const Divider(height: 24),
                _RailTile(
                  dest: const ShellDest(
                    path: '/tour',
                    label: 'Recorrido',
                    icon: Icons.route_outlined,
                    selectedIcon: Icons.route,
                  ),
                  selected: false,
                  expanded: expanded,
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

class _RailTile extends StatelessWidget {
  const _RailTile({
    required this.dest,
    required this.selected,
    required this.expanded,
    required this.onTap,
  });

  final ShellDest dest;
  final bool selected;
  final bool expanded;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Tooltip(
      message: dest.label,
      child: Material(
        color: selected
            ? scheme.primary.withValues(alpha: 0.14)
            : Colors.transparent,
        borderRadius: BorderRadius.circular(NereusTokens.radiusSm),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(NereusTokens.radiusSm),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Icon(
                  selected ? (dest.selectedIcon ?? dest.icon) : dest.icon,
                  size: 20,
                  color: selected ? scheme.primary : scheme.onSurface,
                ),
                if (expanded) ...[
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      dest.label,
                      style: TextStyle(
                        color: selected ? scheme.primary : scheme.onSurface,
                        fontWeight:
                            selected ? FontWeight.w600 : FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({
    required this.selected,
    required this.onDestinationSelect,
    required this.crumbs,
    required this.searchController,
    required this.searchFocus,
    required this.onSearch,
    required this.session,
    required this.onLogout,
    required this.navigationShell,
  });

  final int selected;
  final ValueChanged<int> onDestinationSelect;
  final List<String> crumbs;
  final TextEditingController searchController;
  final FocusNode searchFocus;
  final ValueChanged<String> onSearch;
  final AuthSession? session;
  final VoidCallback onLogout;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _DesktopSidebar(
          selected: selected,
          onSelect: onDestinationSelect,
          session: session,
        ),
        Expanded(
          child: Column(
            children: [
              _TopBar(
                crumbs: crumbs,
                searchController: searchController,
                searchFocus: searchFocus,
                onSearch: onSearch,
                session: session,
                onLogout: onLogout,
              ),
              Expanded(child: navigationShell),
            ],
          ),
        ),
      ],
    );
  }
}

class _DesktopSidebar extends StatefulWidget {
  const _DesktopSidebar({
    required this.selected,
    required this.onSelect,
    required this.session,
  });

  final int selected;
  final ValueChanged<int> onSelect;
  final AuthSession? session;

  @override
  State<_DesktopSidebar> createState() => _DesktopSidebarState();
}

class _DesktopSidebarState extends State<_DesktopSidebar> {
  bool _collapsed = false;

  static const _groups = [
    (section: 'Monitoreo', indices: [0, 8, 9]),
    (section: 'CRM', indices: [3, 4, 5]),
    (section: 'Activos', indices: [1, 2, 7]),
    (section: 'Red', indices: [6]),
    (section: 'Sistema', indices: [10]),
  ];

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final width = _collapsed ? 76.0 : 248.0;

    return GlassSidebar(
      width: width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 14, 10, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                const SizedBox(width: 6),
                Icon(
                  Icons.water_drop,
                  color: scheme.primary,
                  size: _collapsed ? 22 : 20,
                ),
                if (!_collapsed) ...[
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Nereus',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                ] else
                  const Spacer(),
                IconButton(
                  tooltip: _collapsed ? 'Expandir' : 'Colapsar',
                  onPressed: () => setState(() => _collapsed = !_collapsed),
                  icon: Icon(
                    _collapsed ? Icons.chevron_right : Icons.chevron_left,
                    size: 18,
                  ),
                ),
              ],
            ),
            if (!_collapsed)
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 12),
                child: Text(
                  'Telemetría hídrica',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: scheme.onSurface.withValues(alpha: 0.7),
                      ),
                ),
              ),
            Expanded(
              child: ListView(
                children: [
                  for (final group in _groups) ...[
                    if (!_collapsed)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 14, 8, 6),
                        child: Text(
                          group.section,
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                color: scheme.onSurface.withValues(alpha: 0.55),
                                fontSize: 11,
                                letterSpacing: 0.6,
                              ),
                        ),
                      ),
                    for (final i in group.indices)
                      _SideTile(
                        dest: shellDestinations[i],
                        selected: widget.selected == i,
                        collapsed: _collapsed,
                        onTap: () => widget.onSelect(i),
                      ),
                  ],
                ],
              ),
            ),
            if (!_collapsed) ...[
              _SideTile(
                dest: const ShellDest(
                  path: '/tour',
                  label: 'Recorrido',
                  icon: Icons.route_outlined,
                  selectedIcon: Icons.route,
                ),
                selected: false,
                collapsed: false,
                onTap: () => context.go('/tour'),
              ),
              const SizedBox(height: 8),
              Text(
                widget.session?.user?.fullName ??
                    widget.session?.user?.email ??
                    '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                widget.session?.currentBranch?.branchName ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: scheme.onSurface.withValues(alpha: 0.65),
                    ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _SideTile extends StatelessWidget {
  const _SideTile({
    required this.dest,
    required this.selected,
    required this.collapsed,
    required this.onTap,
  });

  final ShellDest dest;
  final bool selected;
  final bool collapsed;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Tooltip(
        message: dest.label,
        child: Material(
          color: selected
              ? scheme.primary.withValues(alpha: 0.14)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(NereusTokens.radiusSm),
          child: InkWell(
            onTap: onTap,
            hoverColor: scheme.onSurface.withValues(alpha: 0.06),
            borderRadius: BorderRadius.circular(NereusTokens.radiusSm),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: collapsed ? 8 : 10,
                vertical: 9,
              ),
              child: Row(
                children: [
                  Icon(
                    selected ? (dest.selectedIcon ?? dest.icon) : dest.icon,
                    size: 20,
                    color: selected ? scheme.primary : scheme.onSurface,
                  ),
                  if (!collapsed) ...[
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        dest.label,
                        style: TextStyle(
                          color: selected ? scheme.primary : scheme.onSurface,
                          fontWeight:
                              selected ? FontWeight.w600 : FontWeight.w500,
                          fontSize: 13.5,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({
    required this.crumbs,
    required this.searchController,
    required this.searchFocus,
    required this.onSearch,
    required this.session,
    required this.onLogout,
  });

  final List<String> crumbs;
  final TextEditingController searchController;
  final FocusNode searchFocus;
  final ValueChanged<String> onSearch;
  final AuthSession? session;
  final VoidCallback onLogout;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
      child: GlassSurface(
        borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
        opacity: 0.9,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: SizedBox(
          height: 48,
          child: Row(
            children: [
              Text(
                crumbs.join('  /  '),
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: TextField(
                  controller: searchController,
                  focusNode: searchFocus,
                  onSubmitted: onSearch,
                  decoration: const InputDecoration(
                    hintText: 'Buscar equipos  (/)',
                    isDense: true,
                    filled: false,
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search, size: 18),
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ),
              IconButton(
                tooltip: 'Alertas',
                onPressed: () => context.go('/alerts'),
                icon: const Icon(Icons.notifications_outlined),
              ),
              IconButton(
                tooltip: 'Recorrido',
                onPressed: () => context.go('/tour'),
                icon: const Icon(Icons.route_outlined),
              ),
              PopupMenuButton<String>(
                tooltip: 'Cuenta',
                onSelected: (value) {
                  if (value == 'profile') context.go('/profile');
                  if (value == 'org') context.go('/profile/org');
                  if (value == 'settings') context.go('/profile/settings');
                  if (value == 'logout') onLogout();
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    enabled: false,
                    child: Text(session?.user?.email ?? 'Sesión'),
                  ),
                  const PopupMenuItem(value: 'profile', child: Text('Perfil')),
                  const PopupMenuItem(value: 'org', child: Text('Sucursal')),
                  const PopupMenuItem(
                    value: 'settings',
                    child: Text('Preferencias'),
                  ),
                  const PopupMenuItem(
                    value: 'logout',
                    child: Text('Cerrar sesión'),
                  ),
                ],
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: scheme.primary.withValues(alpha: 0.16),
                  child: Text(
                    (session?.user?.fullName ?? session?.user?.email ?? 'N')
                        .characters
                        .first
                        .toUpperCase(),
                    style: TextStyle(
                      color: scheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
