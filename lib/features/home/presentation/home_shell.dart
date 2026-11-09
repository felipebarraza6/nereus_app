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
    section: 'Kilde',
  ),
  ShellDest(
    path: '/fichas',
    label: 'Fichas',
    icon: Icons.assignment_outlined,
    selectedIcon: Icons.assignment,
    section: 'Kilde',
  ),
  ShellDest(
    path: '/levantamientos',
    label: 'Levantamientos',
    icon: Icons.fact_check_outlined,
    selectedIcon: Icons.assignment_turned_in,
    section: 'Kilde',
  ),
  ShellDest(
    path: '/prospectos',
    label: 'Prospectos',
    icon: Icons.person_add_alt_1_outlined,
    selectedIcon: Icons.person_add_alt_1,
    section: 'Kilde',
  ),
  ShellDest(
    path: '/pipeline',
    label: 'Pipeline',
    icon: Icons.view_kanban_outlined,
    selectedIcon: Icons.view_kanban,
    section: 'Kilde',
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
    path: '/strom/dev',
    label: 'Dev',
    icon: Icons.account_tree_outlined,
    selectedIcon: Icons.account_tree,
    section: 'Strøm — Operaciones',
  ),
  ShellDest(
    path: '/strom',
    label: 'Proyectos',
    icon: Icons.assignment_outlined,
    selectedIcon: Icons.assignment,
    section: 'Strøm — Operaciones',
  ),
  ShellDest(
    path: '/strom/visitas',
    label: 'Visitas',
    icon: Icons.event_outlined,
    selectedIcon: Icons.event,
    section: 'Strøm — Operaciones',
  ),
  ShellDest(
    path: '/strom/actividades',
    label: 'Actividades',
    icon: Icons.checklist_outlined,
    selectedIcon: Icons.checklist,
    section: 'Strøm — Operaciones',
  ),
  ShellDest(
    path: '/strom/terreno',
    label: 'Check de terreno',
    icon: Icons.landscape_outlined,
    selectedIcon: Icons.landscape,
    section: 'Strøm — Operaciones',
  ),
  ShellDest(
    path: '/strom/tecnico',
    label: 'Check técnico',
    icon: Icons.fact_check_outlined,
    selectedIcon: Icons.fact_check,
    section: 'Strøm — Operaciones',
  ),
  ShellDest(
    path: '/strom/aclaraciones',
    label: 'Aclaraciones',
    icon: Icons.forum_outlined,
    selectedIcon: Icons.forum,
    section: 'Strøm — Operaciones',
  ),
  ShellDest(
    path: '/strom/indicadores',
    label: 'Indicadores',
    icon: Icons.insights_outlined,
    selectedIcon: Icons.insights,
    section: 'Strøm — Operaciones',
  ),
  ShellDest(
    path: '/strom/configuracion',
    label: 'Configuración',
    icon: Icons.tune_outlined,
    selectedIcon: Icons.tune,
    section: 'Strøm — Operaciones',
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
const mobileDestinations = [0, 10, 7, 3, 21];

/// Destinations shown in the tablet rail when it is collapsed.
const railDestinations = [0, 10, 3, 6, 7, 4, 11];

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
  if (path.startsWith('/strom/dev')) return 12;
  if (path.startsWith('/strom/visitas')) return 14;
  if (path.startsWith('/strom/actividades')) return 15;
  if (path.startsWith('/strom/terreno')) return 16;
  if (path.startsWith('/strom/tecnico')) return 17;
  if (path.startsWith('/strom/aclaraciones')) return 18;
  if (path.startsWith('/strom/indicadores')) return 19;
  if (path.startsWith('/strom/configuracion')) return 20;
  if (path.startsWith('/strom')) return 13;
  if (path.startsWith('/profile') || path.startsWith('/settings')) return 21;
  return 0;
}

List<String> breadcrumbsFor(String path) {
  if (path.startsWith('/devices/')) return ['Operación', 'Equipo'];
  if (path.startsWith('/tickets/')) return ['Tickets', 'Detalle'];
  if (path.startsWith('/strom')) {
    return ['Strøm — Operaciones', shellDestinations[destinationIndexFor(path)].label];
  }
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
                    onDestinationSelect: _go,
                    onLogout: _logout,
                    navigationShell: widget.navigationShell,
                  ),
                ),
              ],
            ),
            bottomNavigationBar: _phoneShell(breakpoint)
                ? ShellMobileBottomNav(selected: selected, onSelect: _go)
                : null,
            drawer: _phoneShell(breakpoint)
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

bool _phoneShell(NereusBreakpoint breakpoint) {
  return breakpoint == NereusBreakpoint.compact ||
      breakpoint == NereusBreakpoint.medium;
}

class _BranchFade extends StatefulWidget {
  const _BranchFade({required this.index, required this.child});

  final int index;
  final Widget child;

  @override
  State<_BranchFade> createState() => _BranchFadeState();
}

class _BranchFadeState extends State<_BranchFade> {
  var _visible = true;

  @override
  void didUpdateWidget(_BranchFade oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.index == widget.index) return;
    setState(() => _visible = false);
    Future<void>.delayed(const Duration(milliseconds: 90), () {
      if (mounted) setState(() => _visible = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1 : 0.35,
      duration: const Duration(milliseconds: 140),
      curve: Curves.easeOut,
      child: widget.child,
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
  final ValueChanged<int> onDestinationSelect;
  final VoidCallback onLogout;
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final page = _BranchFade(
      index: navigationShell.currentIndex,
      child: navigationShell,
    );
    switch (breakpoint) {
      case NereusBreakpoint.compact:
      case NereusBreakpoint.medium:
        return SafeArea(
          bottom: false,
          child: Column(
            children: [
              ShellMobileHeader(
                crumbs: crumbs,
                onSearch: onSearch,
              ),
              Expanded(child: page),
            ],
          ),
        );
      case NereusBreakpoint.expanded:
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
                  Expanded(child: page),
                ],
              ),
            ),
          ],
        );
    }
  }
}
