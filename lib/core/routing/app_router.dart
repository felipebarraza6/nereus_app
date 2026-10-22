import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/features/alerts/presentation/alerts_screen.dart';
import 'package:nereus_app/features/auth/presentation/branch_picker_screen.dart';
import 'package:nereus_app/features/customers/presentation/clients_screen.dart';
import 'package:nereus_app/features/auth/presentation/forgot_password_screen.dart';
import 'package:nereus_app/features/auth/presentation/login_screen.dart';
import 'package:nereus_app/features/auth/presentation/reset_password_screen.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/devices/presentation/device_detail_screen.dart';
import 'package:nereus_app/features/devices/presentation/devices_screen.dart';
import 'package:nereus_app/features/home/presentation/home_shell.dart';
import 'package:nereus_app/features/home/presentation/home_screen.dart';
import 'package:nereus_app/features/profile/presentation/profile_screen.dart';
import 'package:nereus_app/features/settings/presentation/settings_screen.dart';
import 'package:nereus_app/features/tickets/presentation/ticket_create_screen.dart';
import 'package:nereus_app/features/tickets/presentation/ticket_detail_screen.dart';
import 'package:nereus_app/features/tickets/presentation/tickets_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter appRouter(Ref ref) {
  final refresh = ValueNotifier<int>(0);
  ref.listen(sessionProvider, (_, __) => refresh.value++);
  ref.onDispose(refresh.dispose);

  return GoRouter(
    initialLocation: '/login',
    refreshListenable: refresh,
    redirect: (context, state) {
      final session = ref.read(sessionProvider).value;
      final loc = state.matchedLocation;
      final isReset = loc.startsWith('/reset-password');
      final loggingIn = loc == '/login' || loc == '/forgot-password';
      if (session == null) return null;
      if (isReset) return null;
      if (!session.isAuthenticated) {
        return loggingIn ? null : '/login';
      }
      if (session.needsBranch) {
        return loc == '/branch' ? null : '/branch';
      }
      if (loggingIn || loc == '/branch') {
        return '/home';
      }
      return null;
    },
    routes: [
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
      GoRoute(
        path: '/forgot-password',
        builder: (_, __) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/reset-password/:token',
        builder: (context, state) => ResetPasswordScreen(
          token: state.pathParameters['token'] ?? '',
        ),
      ),
      GoRoute(path: '/branch', builder: (_, __) => const BranchPickerScreen()),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeShell(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/home', builder: (_, __) => const HomeScreen()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/devices',
                builder: (_, __) => const DevicesScreen(),
                routes: [
                  GoRoute(
                    path: ':id',
                    builder: (context, state) => DeviceDetailScreen(
                      deviceId: int.parse(state.pathParameters['id']!),
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/clients', builder: (_, __) => const ClientsScreen()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/alerts', builder: (_, __) => const AlertsScreen()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/tickets',
                builder: (_, __) => const TicketsScreen(),
                routes: [
                  GoRoute(
                    path: 'new',
                    builder: (context, state) => TicketCreateScreen(
                      deviceId: state.uri.queryParameters['device'],
                    ),
                  ),
                  GoRoute(
                    path: ':id',
                    builder: (context, state) => TicketDetailScreen(
                      ticketId: state.pathParameters['id']!,
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                builder: (_, __) => const ProfileScreen(),
                routes: [
                  GoRoute(
                    path: 'settings',
                    builder: (_, __) => const SettingsScreen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
