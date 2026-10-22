import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/core/widgets/page_header.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider).value;
    final user = session?.user;
    final branch = session?.currentBranch;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
      children: [
        const PageHeader(
          title: 'Perfil',
          subtitle: 'Cuenta y sucursal activa',
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(NereusTokens.spaceMd),
            children: [
              GlassCard(
                child: ListTile(
                  title: Text(user?.fullName ?? user?.email ?? 'Sesión'),
                  subtitle: Text(
                    '${user?.email ?? ''}\n${branch?.branchName ?? ''} · ${branch?.roleName ?? branch?.roleCode ?? ''}',
                  ),
                  isThreeLine: true,
                ),
              ),
              const SizedBox(height: 12),
              GlassCard(
                onTap: () => context.go('/profile/org'),
                child: const ListTile(
                  leading: Icon(Icons.groups_outlined),
                  title: Text('Usuarios, roles y MQTT'),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              const SizedBox(height: 12),
              GlassCard(
                onTap: () => context.go('/tour'),
                child: const ListTile(
                  leading: Icon(Icons.route_outlined),
                  title: Text('Recorrido'),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              const SizedBox(height: 12),
              GlassCard(
                onTap: () => context.go('/profile/settings'),
                child: const ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: Text('Ajustes'),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              const SizedBox(height: 12),
              FilledButton.tonal(
                onPressed: () => ref.read(sessionProvider.notifier).logout(),
                child: const Text('Cerrar sesión'),
              ),
            ],
          ),
        ),
      ],
      ),
    );
  }
}
