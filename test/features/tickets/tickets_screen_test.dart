import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/tickets/presentation/tickets_screen.dart';
import 'package:nereus_app/features/tickets/providers/tickets_provider.dart';

void main() {
  testWidgets('tickets empty state', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          ticketsProvider.overrideWith((ref) async => []),
        ],
        child: MaterialApp.router(
          theme: AppTheme.light(),
          routerConfig: GoRouter(
            routes: [
              GoRoute(path: '/', builder: (_, __) => const TicketsScreen()),
              GoRoute(path: '/tickets/new', builder: (_, __) => const SizedBox()),
            ],
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Aún no tienes tickets.'), findsOneWidget);
  });
}
