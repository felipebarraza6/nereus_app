import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/config/app_config.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/nereus_brand.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/home/presentation/home_shell.dart';
import 'package:nereus_app/features/home/presentation/shell_sidebar.dart';

class ShellMobileHeader extends StatelessWidget {
  const ShellMobileHeader({
    super.key,
    required this.crumbs,
    required this.onSearch,
  });

  final List<String> crumbs;
  final ValueChanged<String> onSearch;

  Future<void> _openMobileSearch(BuildContext context) async {
    final controller = TextEditingController();
    final query = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => Padding(
        padding: EdgeInsets.fromLTRB(
          16,
          16,
          16,
          MediaQuery.viewInsetsOf(ctx).bottom + 20,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Buscar equipos', style: Theme.of(ctx).textTheme.titleLarge),
            const SizedBox(height: 12),
            TextField(
              controller: controller,
              autofocus: true,
              textInputAction: TextInputAction.search,
              onSubmitted: (val) => Navigator.of(ctx).pop(val),
              decoration: const InputDecoration(
                hintText: 'Nombre o código de dispositivo…',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: () => Navigator.of(ctx).pop(controller.text),
              child: const Text('Buscar'),
            ),
          ],
        ),
      ),
    );
    controller.dispose();
    if (query != null) onSearch(query);
  }

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final bg = dark ? NereusTokens.darkPanel : NereusTokens.surface;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: bg,
        border: Border(bottom: BorderSide(color: line)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          children: [
            const NereusLogoMark(size: 24),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                crumbs.last,
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconButton(
              tooltip: 'Recorrido',
              visualDensity: VisualDensity.compact,
              onPressed: () => context.go('/tour'),
              icon: const Icon(Icons.route_outlined, size: 19),
            ),
            IconButton(
              tooltip: 'Buscar',
              visualDensity: VisualDensity.compact,
              onPressed: () => _openMobileSearch(context),
              icon: const Icon(Icons.search, size: 19),
            ),
            Builder(
              builder: (context) => IconButton(
                tooltip: 'Menú',
                visualDensity: VisualDensity.compact,
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(Icons.menu, size: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShellMobileBottomNav extends StatelessWidget {
  const ShellMobileBottomNav({
    super.key,
    required this.selected,
    required this.onSelect,
  });

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

class ShellMobileDrawer extends StatelessWidget {
  const ShellMobileDrawer({
    super.key,
    required this.selected,
    required this.onSelect,
  });

  final int selected;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final groups = groupedShellDestinations();
    return Drawer(
      backgroundColor: scheme.surface,
      surfaceTintColor: Colors.transparent,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 12, 10),
              child: Row(
                children: [
                  const Expanded(
                    child: NereusBrandLockup(markSize: 26, showBrandLogo: true),
                  ),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close, size: 18),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                children: [
                  for (final group in groups)
                    if (group.section == 'Strøm — Operaciones')
                      _StromDrawer(
                        indices: group.indices,
                        selected: selected,
                        onSelect: onSelect,
                      )
                    else ...[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
                        child: Text(
                          group.section.toUpperCase(),
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                      for (final i in group.indices)
                        _DrawerTile(
                          dest: shellDestinations[i],
                          selected: selected == i,
                          onTap: () => onSelect(i),
                        ),
                    ],
                  const Divider(height: 20),
                  _DrawerTile(
                    dest: const ShellDest(
                      path: '/tour',
                      label: 'Recorrido',
                      icon: Icons.route_outlined,
                      selectedIcon: Icons.route,
                    ),
                    selected: false,
                    onTap: () {
                      Navigator.of(context).pop();
                      context.go('/tour');
                    },
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

class _StromDrawer extends StatefulWidget {
  const _StromDrawer({
    required this.indices,
    required this.selected,
    required this.onSelect,
  });

  final List<int> indices;
  final int selected;
  final ValueChanged<int> onSelect;

  @override
  State<_StromDrawer> createState() => _StromDrawerState();
}

class _StromDrawerState extends State<_StromDrawer> {
  var _open = false;

  @override
  Widget build(BuildContext context) {
    final open = _open || widget.indices.contains(widget.selected);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListTile(
          dense: true,
          leading: const Icon(Icons.engineering_outlined),
          title: const Text('Strøm — Operaciones'),
          trailing: Icon(open ? Icons.expand_less : Icons.expand_more),
          onTap: () => setState(() => _open = !open),
        ),
        if (open)
          for (final i in widget.indices)
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: _DrawerTile(
                dest: shellDestinations[i],
                selected: widget.selected == i,
                onTap: () => widget.onSelect(i),
              ),
            ),
      ],
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
      dense: true,
      leading: Icon(
        selected ? (dest.selectedIcon ?? dest.icon) : dest.icon,
        size: 18,
        color: selected ? scheme.onPrimary : scheme.onSurfaceVariant,
      ),
      title: Text(
        dest.label,
        style: TextStyle(
          color: selected ? scheme.onPrimary : scheme.onSurface,
          fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
          fontSize: 13.5,
        ),
      ),
      selected: selected,
      selectedTileColor: scheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(NereusTokens.radiusMd),
      ),
      onTap: onTap,
    );
  }
}

/// Top header bar styled 1:1 after `nereus_smarthydro/src/components/desk.tsx`
/// (`sticky top-0 border-b border-line bg-surface/85 px-6 py-3`).
class ShellTopBar extends ConsumerWidget {
  const ShellTopBar({
    super.key,
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
  Widget build(BuildContext context, WidgetRef ref) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    final bg = dark ? NereusTokens.darkPanel : NereusTokens.surface;
    final surface2 = dark ? NereusTokens.darkRaised : NereusTokens.surface2;
    final line = dark ? NereusTokens.darkLine : NereusTokens.line;
    final muted = dark ? NereusTokens.darkMuted : NereusTokens.inkMuted;
    final dataMode = ref.watch(dataModeProvider);
    final isDemo =
        dataMode == NereusDataMode.fixture || session?.token == 'fixture-token';
    final branches = session?.branches ?? const <BranchAssignment>[];
    final activeBranchName = session?.currentBranch?.branchName ?? 'Smart Hydro';
    final userName =
        session?.user?.fullName ?? session?.user?.email ?? 'Operación';

    return DecoratedBox(
      decoration: BoxDecoration(
        color: bg,
        border: Border(bottom: BorderSide(color: line)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          children: [
            Text(
              '$userName · $activeBranchName',
              style: TextStyle(fontSize: 12, color: muted),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 320),
                child: SizedBox(
                  height: 32,
                  child: TextField(
                    controller: searchController,
                    focusNode: searchFocus,
                    onSubmitted: onSearch,
                    style: const TextStyle(fontSize: 12.5),
                    decoration: InputDecoration(
                      hintText: 'Buscar equipos (/)',
                      fillColor: surface2,
                      prefixIcon: Icon(Icons.search, size: 15, color: muted),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: line),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: line),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            _HeaderPill(
              label: isDemo ? 'Datos de ejemplo' : 'En vivo',
              background: isDemo
                  ? NereusTokens.hydroLime.withValues(alpha: 0.35)
                  : NereusTokens.emerald.withValues(alpha: 0.15),
              foreground: isDemo ? NereusTokens.navy : NereusTokens.emerald,
              borderColor: Colors.transparent,
            ),
            const SizedBox(width: 8),
            if (branches.length > 1)
              PopupMenuButton<BranchAssignment>(
                tooltip: 'Cambiar organización',
                onSelected: (branch) =>
                    ref.read(sessionProvider.notifier).selectBranch(branch),
                itemBuilder: (context) => [
                  for (final b in branches)
                    PopupMenuItem<BranchAssignment>(
                      value: b,
                      child: Text(b.branchName ?? 'Sucursal ${b.branchId}'),
                    ),
                ],
                child: _HeaderPill(
                  label: '$activeBranchName ▾',
                  background: bg,
                  foreground: muted,
                  borderColor: line,
                ),
              )
            else
              InkWell(
                borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
                onTap: () => context.go('/profile/org'),
                child: _HeaderPill(
                  label: 'Organización',
                  background: bg,
                  foreground: muted,
                  borderColor: line,
                ),
              ),
            const SizedBox(width: 8),
            InkWell(
              borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
              onTap: () => context.go('/profile'),
              child: _HeaderPill(
                label: 'Perfil',
                background: bg,
                foreground: muted,
                borderColor: line,
              ),
            ),
            const SizedBox(width: 8),
            InkWell(
              borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
              onTap: onLogout,
              child: _HeaderPill(
                label: 'Salir',
                background: bg,
                foreground: muted,
                borderColor: line,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderPill extends StatelessWidget {
  const _HeaderPill({
    required this.label,
    required this.background,
    required this.foreground,
    required this.borderColor,
  });

  final String label;
  final Color background;
  final Color foreground;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(NereusTokens.radiusPill),
        border: Border.all(color: borderColor),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11.5,
          fontWeight: FontWeight.w500,
          color: foreground,
        ),
      ),
    );
  }
}
