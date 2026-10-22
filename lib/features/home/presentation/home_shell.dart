import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/providers.dart';
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
    section: 'Red',
  ),
  ShellDest(
    path: '/fichas',
    label: 'Fichas',
    icon: Icons.assignment_outlined,
    selectedIcon: Icons.assignment,
    section: 'Red',
  ),
  ShellDest(
    path: '/levantamientos',
    label: 'Levantamientos',
    icon: Icons.fact_check_outlined,
    selectedIcon: Icons.assignment_turned_in,
    section: 'Red',
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

const mobileDestinations = [0, 8, 3, 9, 10];

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
  bool _collapsed = false;
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

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.sizeOf(context).width >= 960;
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
                  child: wide
                      ? Row(
                          children: [
                            _DesktopSidebar(
                              collapsed: _collapsed,
                              selected: selected,
                              onSelect: _go,
                              onToggle: () =>
                                  setState(() => _collapsed = !_collapsed),
                              userLabel: session?.user?.fullName ??
                                  session?.user?.email ??
                                  '',
                              branchLabel:
                                  session?.currentBranch?.branchName ?? '',
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  _TopBar(
                                    crumbs: crumbs,
                                    searchController: _search,
                                    searchFocus: _searchFocus,
                                    onSearch: _submitSearch,
                                    session: session,
                                    onLogout: () =>
                                        ref.read(sessionProvider.notifier).logout(),
                                  ),
                                  Expanded(child: widget.navigationShell),
                                ],
                              ),
                            ),
                          ],
                        )
                      : SafeArea(
                          bottom: false,
                          child: Column(
                            children: [
                              _MobileHeader(
                                crumbs: crumbs,
                                onSearch: _searchFocus.requestFocus,
                                onMore: () => _showMore(context),
                              ),
                              Expanded(child: widget.navigationShell),
                            ],
                          ),
                        ),
                ),
              ],
            ),
            bottomNavigationBar: wide
                ? null
                : GlassNavBar(
                    selectedIndex: () {
                      final mobileIndex = mobileDestinations.indexOf(selected);
                      return mobileIndex < 0 ? 0 : mobileIndex;
                    }(),
                    onSelect: (index) {
                      _go(mobileDestinations[index]);
                    },
                    destinations: [
                      for (final i in mobileDestinations)
                        NavigationDestination(
                          icon: Icon(shellDestinations[i].icon),
                          selectedIcon: Icon(
                            shellDestinations[i].selectedIcon ??
                                shellDestinations[i].icon,
                          ),
                          label: shellDestinations[i].label,
                        ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  Future<void> _showMore(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: [
              for (var i = 0; i < shellDestinations.length; i++)
                ListTile(
                  leading: Icon(shellDestinations[i].icon),
                  title: Text(shellDestinations[i].label),
                  onTap: () {
                    Navigator.pop(context);
                    _go(i);
                  },
                ),
              ListTile(
                leading: const Icon(Icons.route_outlined),
                title: const Text('Recorrido'),
                onTap: () {
                  Navigator.pop(context);
                  context.go('/tour');
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications_outlined),
                title: const Text('Alertas'),
                onTap: () {
                  Navigator.pop(context);
                  context.go('/alerts');
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _DesktopSidebar extends StatelessWidget {
  const _DesktopSidebar({
    required this.collapsed,
    required this.selected,
    required this.onSelect,
    required this.onToggle,
    required this.userLabel,
    required this.branchLabel,
  });

  final bool collapsed;
  final int selected;
  final ValueChanged<int> onSelect;
  final VoidCallback onToggle;
  final String userLabel;
  final String branchLabel;

  @override
  Widget build(BuildContext context) {
    final width = collapsed ? 76.0 : 248.0;
    return AnimatedContainer(
      duration: NereusTokens.motionFast,
      width: width,
      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color(0xF00F2A2C),
          borderRadius: BorderRadius.circular(20),
          boxShadow: NereusTokens.elevation2,
        ),
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
                    color: NereusTokens.mint,
                    size: collapsed ? 22 : 20,
                  ),
                  if (!collapsed) ...[
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        'Nereus',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.4,
                        ),
                      ),
                    ),
                  ] else
                    const Spacer(),
                  IconButton(
                    tooltip: collapsed ? 'Expandir' : 'Colapsar',
                    onPressed: onToggle,
                    icon: Icon(
                      collapsed ? Icons.chevron_right : Icons.chevron_left,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
              if (!collapsed)
                const Padding(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 12),
                  child: Text(
                    'Telemetría hídrica',
                    style: TextStyle(color: Color(0xFF9EC9C4), fontSize: 12),
                  ),
                ),
              Expanded(
                child: ListView(
                  children: [
                    for (final group in const [
                      (section: 'Monitoreo', indices: [0, 6, 7]),
                      (section: 'Activos', indices: [1, 2, 5]),
                      (section: 'Red', indices: [3, 4]),
                      (section: 'Sistema', indices: [8]),
                    ]) ...[
                      if (!collapsed)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 14, 8, 6),
                          child: Text(
                            group.section,
                            style: const TextStyle(
                              color: Color(0xFF7AA8A3),
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.6,
                            ),
                          ),
                        ),
                      for (final i in group.indices)
                        _SideTile(
                          dest: shellDestinations[i],
                          selected: selected == i,
                          collapsed: collapsed,
                          onTap: () => onSelect(i),
                        ),
                    ],
                  ],
                ),
              ),
              if (!collapsed) ...[
                _SideTile(
                  dest: const ShellDest(
                    path: '/tour',
                    label: 'Recorrido',
                    icon: Icons.route_outlined,
                    selectedIcon: Icons.route,
                  ),
                  selected: false,
                  collapsed: collapsed,
                  onTap: () => context.go('/tour'),
                ),
                const SizedBox(height: 8),
                Text(
                  userLabel,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                Text(
                  branchLabel,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Color(0xFF9EC9C4), fontSize: 12),
                ),
              ],
            ],
          ),
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Tooltip(
        message: dest.label,
        child: Material(
          color: selected
              ? NereusTokens.tealBright.withValues(alpha: 0.22)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            onTap: onTap,
            hoverColor: Colors.white.withValues(alpha: 0.06),
            borderRadius: BorderRadius.circular(10),
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
                    color: selected ? NereusTokens.mint : const Color(0xFFD5EEEC),
                  ),
                  if (!collapsed) ...[
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        dest.label,
                        style: TextStyle(
                          color: selected ? Colors.white : const Color(0xFFE7F4F3),
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
      child: GlassSurface(
        borderRadius: BorderRadius.circular(16),
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
                    child: Text(
                      session?.user?.email ?? 'Sesión',
                    ),
                  ),
                  const PopupMenuItem(value: 'profile', child: Text('Perfil')),
                  const PopupMenuItem(value: 'org', child: Text('Sucursal')),
                  const PopupMenuItem(value: 'settings', child: Text('Preferencias')),
                  const PopupMenuItem(value: 'logout', child: Text('Cerrar sesión')),
                ],
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: NereusTokens.teal.withValues(alpha: 0.16),
                  child: Text(
                    (session?.user?.fullName ?? session?.user?.email ?? 'N')
                        .characters
                        .first
                        .toUpperCase(),
                    style: const TextStyle(
                      color: NereusTokens.teal,
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

class _MobileHeader extends StatelessWidget {
  const _MobileHeader({
    required this.crumbs,
    required this.onSearch,
    required this.onMore,
  });

  final List<String> crumbs;
  final VoidCallback onSearch;
  final VoidCallback onMore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              crumbs.last,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          IconButton(
            onPressed: () => context.go('/tour'),
            icon: const Icon(Icons.route_outlined),
          ),
          IconButton(onPressed: onSearch, icon: const Icon(Icons.search)),
          IconButton(onPressed: onMore, icon: const Icon(Icons.menu)),
        ],
      ),
    );
  }
}
