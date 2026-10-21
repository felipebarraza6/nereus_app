import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/theme/glass.dart';
import 'package:nereus_app/core/theme/tokens.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';

class BranchPickerScreen extends ConsumerWidget {
  const BranchPickerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = ref.watch(sessionProvider).value;
    final branches = session?.branches ?? const [];
    return AnimatedWaterBackdrop(
      child: Scaffold(
        appBar: const GlassAppBar(title: Text('Elige una sucursal')),
        body: ListView.separated(
          padding: const EdgeInsets.all(NereusTokens.spaceMd),
          itemCount: branches.length,
          separatorBuilder: (_, __) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            final branch = branches[index];
            return GlassCard(
              semanticLabel: branch.branchName ?? branch.businessName,
              onTap: () =>
                  ref.read(sessionProvider.notifier).selectBranch(branch),
              child: ListTile(
                title: Text(branch.branchName ?? branch.businessName ?? ''),
                subtitle: Text(branch.roleName ?? branch.roleCode),
                trailing: const Icon(Icons.chevron_right),
              ),
            );
          },
        ),
      ),
    );
  }
}
