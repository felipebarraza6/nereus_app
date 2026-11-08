import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/breakpoints.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/widgets/async_body.dart';
import 'package:nereus_app/core/widgets/debug_origin_banner.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/devices/providers/devices_provider.dart';
import 'package:nereus_app/features/home/presentation/shell_bars.dart';
import 'package:nereus_app/features/home/presentation/shell_sidebar.dart';

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
    path: '/prospectos',
    label: 'Prospectos',
    icon: Icons.person_add_alt_1_outlined,
    selectedIcon: Icons.person_add_alt_1,
    section: 'CRM',
  ),
  ShellDest(
    path: '/pipeline',
    label: 'Pipeline',
    icon: Icons.view_kanban_outlined,
    selectedIcon: Icons.view_kanban,
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
    path: '/strom',
    label: 'Strøm',
    icon: Icons.engineering_outlined,
    selectedIcon: Icons.engineering,
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

/// Destinations shown in the mobile bottom navigation.
const mobileDestinations = [0, 10, 7, 3, 13];

/// Destinations shown in the tablet rail when it is collapsed.
const railDestinations = [0, 10, 3, 6, 7, 4, 11, 12];

int destinationIndexFor(String path) {
  if (path.startsWith('/catalog')) return 1;
  if (path.startsWith('/inventory')) return 2;
  if (path.startsWith('/clients')) return 3;
  if (path.startsWith('/fichas')) return 4;
  if (path.startsWith('/levantamientos')) return 5;
  if (path.startsWith('/prospectos')) return 6;
  if (path.startsWith('/pipeline')) return 7;
  if (path.startsWith('/points')) return 8;
  if (path.startsWith('/equipment')) return 9;
  if (path.startsWith('/devices') || path.startsWith('/alerts')) return 10;
  if (path.startsWith('/tickets')) return 11;
  if (path.startsWith('/strom')) return 12;
  if (path.startsWith('/profile') || path.startsWith('/settings')) return 13;
  return 0;
}

List<String> breadcrumbsFor(String path) {
  if (path.startsWith('/devices/')) return ['Operación', 'Equipo'];
  if (path.startsWith('/tickets/')) return ['Tickets', 'Detalle'];
  if (path.startsWith('/strom/') && path.contains('/visita/nueva')) {
    return ['Strøm', 'Planificar'];
  }
  if (path.startsWith('/strom/') && path.contains('/visita/')) {
    return ['Strøm', 'Visita'];
  }
  if (path.startsWith('/strom/')) return ['Strøm', 'Proyecto'];
  if (path.startsWith('/clients/') && path != '/clients') {
    return ['Clientes', 'Ficha 360'];
  }
  if (path.startsWith('/fichas/admin')) return ['Fichas', 'Administrar'];
  if (path.startsWith('/levantamientos/fill')) {
    return ['Levantamientos', 'Terreno'];
  }
  if (path.startsWith('/pipeline/')) return ['Pipeline', 'Oportunidad'];
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
    if (index < 0 || index >= shellDestinations.length) {
      context.go('/tour');
      return;
    }
    context.go(shellDestinations[index].path);
  }

  void _submitSearch(String raw) {
    final query = raw.trim();
    ref.read(deviceQueryControllerProvider.notifier).setSearch(query);
    context.go('/devices');
  }

  void _logout() => ref.read(sessionProvider.notifier).logout();

  void _focusSearchIfNotEditing() {
    final primary = FocusManager.instance.primaryFocus;
    final ctx = primary?.context;
    if (ctx != null && ctx.widget is EditableText) {
      return;
    }
    _searchFocus.requestFocus();
  }

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
            _focusSearchIfNotEditing,
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
                ? ShellMobileBottomNav(selected: selected, onSelect: _go)
                : null,
            drawer: breakpoint == NereusBreakpoint.compact
                ? ShellMobileDrawer(
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
        return SafeArea(
          bottom: false,
          child: Column(
            children: [
              ShellMobileHeader(
                crumbs: crumbs,
                onSearch: onSearch,
              ),
              Expanded(child: navigationShell),
            ],
          ),
        );
      case NereusBreakpoint.medium:
      case NereusBreakpoint.expanded:
        return Row(
          children: [
            ShellTabletRail(
              selected: selected,
              expanded: railExpanded,
              onToggle: onRailExpandToggle,
              onSelect: onDestinationSelect,
            ),
            Expanded(
              child: Column(
                children: [
                  ShellTopBar(
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
      case NereusBreakpoint.large:
      case NereusBreakpoint.extraLarge:
        return Row(
          children: [
            ShellDesktopSidebar(
              selected: selected,
              onSelect: onDestinationSelect,
              session: session,
              onLogout: onLogout,
            ),
            Expanded(
              child: Column(
                children: [
                  ShellTopBar(
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
}
