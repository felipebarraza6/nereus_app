import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/widgets/async_body.dart';

class HomeShell extends ConsumerWidget {
  const HomeShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wide = MediaQuery.sizeOf(context).width >= 900;
    final offline = ref.watch(isOfflineProvider).value ?? false;
    final destinations = const [
      NavigationDestination(
        icon: Icon(Icons.home_outlined),
        selectedIcon: Icon(Icons.home_rounded),
        label: 'Inicio',
      ),
      NavigationDestination(
        icon: Icon(Icons.water_drop_outlined),
        selectedIcon: Icon(Icons.water_drop),
        label: 'Dispositivos',
      ),
      NavigationDestination(
        icon: Icon(Icons.notifications_outlined),
        selectedIcon: Icon(Icons.notifications),
        label: 'Alertas',
      ),
      NavigationDestination(
        icon: Icon(Icons.support_agent_outlined),
        selectedIcon: Icon(Icons.support_agent),
        label: 'Tickets',
      ),
      NavigationDestination(
        icon: Icon(Icons.person_outline),
        selectedIcon: Icon(Icons.person),
        label: 'Perfil',
      ),
    ];

    return AnimatedWaterBackdrop(
      child: Scaffold(
        body: Column(
          children: [
            OfflineBanner(offline: offline),
            Expanded(
              child: wide
                  ? Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: GlassSurface(
                            child: NavigationRail(
                              selectedIndex: navigationShell.currentIndex,
                              onDestinationSelected: navigationShell.goBranch,
                              labelType: NavigationRailLabelType.all,
                              destinations: [
                                for (final d in destinations)
                                  NavigationRailDestination(
                                    icon: d.icon,
                                    selectedIcon: d.selectedIcon,
                                    label: Text(d.label),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(child: navigationShell),
                      ],
                    )
                  : navigationShell,
            ),
          ],
        ),
        bottomNavigationBar: wide
            ? null
            : GlassNavBar(
                selectedIndex: navigationShell.currentIndex,
                onSelect: navigationShell.goBranch,
                destinations: destinations,
              ),
      ),
    );
  }
}
