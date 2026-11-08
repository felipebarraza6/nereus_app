import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nereus_app/features/alerts/presentation/alerts_screen.dart';
import 'package:nereus_app/features/auth/presentation/branch_picker_screen.dart';
import 'package:nereus_app/features/auth/presentation/forgot_password_screen.dart';
import 'package:nereus_app/features/auth/presentation/login_screen.dart';
import 'package:nereus_app/features/auth/presentation/reset_password_screen.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/presentation/catalog_screen.dart';
import 'package:nereus_app/features/crm/presentation/opportunity_screen.dart';
import 'package:nereus_app/features/crm/presentation/pipeline_screen.dart';
import 'package:nereus_app/features/crm/presentation/prospectos_screen.dart';
import 'package:nereus_app/features/customers/presentation/clients_screen.dart';
import 'package:nereus_app/features/fichas/presentation/client_360_screen.dart';
import 'package:nereus_app/features/fichas/presentation/ficha_admin_screen.dart';
import 'package:nereus_app/features/fichas/presentation/fichas_screen.dart';
import 'package:nereus_app/features/fichas/presentation/levantamiento_fill_screen.dart';
import 'package:nereus_app/features/fichas/presentation/levantamientos_screen.dart';
import 'package:nereus_app/features/devices/presentation/device_detail_screen.dart';
import 'package:nereus_app/features/devices/presentation/devices_screen.dart';
import 'package:nereus_app/features/equipment/presentation/equipment_screen.dart';
import 'package:nereus_app/features/home/presentation/home_shell.dart';
import 'package:nereus_app/features/home/presentation/home_screen.dart';
import 'package:nereus_app/features/inventory/presentation/inventory_screen.dart';
import 'package:nereus_app/features/org/presentation/org_screen.dart';
import 'package:nereus_app/features/points/presentation/points_screen.dart';
import 'package:nereus_app/features/profile/presentation/profile_screen.dart';
import 'package:nereus_app/features/settings/presentation/settings_screen.dart';
import 'package:nereus_app/features/strom/presentation/strom_plan_screen.dart';
import 'package:nereus_app/features/strom/presentation/strom_projects_screen.dart';
import 'package:nereus_app/features/strom/presentation/strom_sections.dart';
import 'package:nereus_app/features/strom/presentation/strom_project_screen.dart';
import 'package:nereus_app/features/strom/presentation/strom_visit_screen.dart';
import 'package:nereus_app/features/tickets/presentation/ticket_create_screen.dart';
import 'package:nereus_app/features/tickets/presentation/ticket_detail_screen.dart';
import 'package:nereus_app/features/tickets/presentation/tickets_screen.dart';
import 'package:nereus_app/features/tour/presentation/tour_screen.dart';
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
              GoRoute(path: '/tour', builder: (_, __) => const TourScreen()),
              GoRoute(path: '/alerts', builder: (_, __) => const AlertsScreen()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/catalog', builder: (_, __) => const CatalogScreen()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/inventory',
                builder: (_, __) => const InventoryScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/clients',
                builder: (_, __) => const ClientsScreen(),
                routes: [
                  GoRoute(
                    path: ':id',
                    builder: (context, state) => Client360Screen(
                      clientId: state.pathParameters['id'] ?? '',
                    ),
                  ),
                ],
              ),
              GoRoute(
                path: '/prospectos',
                builder: (_, __) => const ProspectosScreen(),
              ),
              GoRoute(
                path: '/pipeline',
                builder: (context, state) => PipelineScreen(
                  clientId: state.uri.queryParameters['client'],
                ),
                routes: [
                  GoRoute(
                    path: ':id',
                    builder: (context, state) => OpportunityScreen(
                      opportunityId: state.pathParameters['id'] ?? '',
                    ),
                  ),
                ],
              ),
              GoRoute(path: '/fichas', builder: (_, __) => const FichasScreen()),
              GoRoute(
                path: '/fichas/admin',
                builder: (_, __) => const FichaAdminScreen(),
              ),
              GoRoute(
                path: '/levantamientos',
                builder: (_, __) => const LevantamientosScreen(),
                routes: [
                  GoRoute(
                    path: 'fill/:id',
                    builder: (context, state) => LevantamientoFillScreen(
                      surveyId: state.pathParameters['id'] ?? '',
                      clientId: state.uri.queryParameters['client'],
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(path: '/points', builder: (_, __) => const PointsScreen()),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/equipment',
                builder: (_, __) => const EquipmentScreen(),
              ),
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
                path: '/strom',
                builder: (_, __) => const StromProjectsScreen(),
                routes: [
                  GoRoute(
                    path: 'nuevo',
                    builder: (_, __) => const StromProjectCreateScreen(),
                  ),
                  GoRoute(
                    path: 'visitas',
                    builder: (_, __) => const StromVisitsScreen(),
                    routes: [
                      GoRoute(
                        path: 'nueva',
                        builder: (_, __) => const StromVisitCreateScreen(),
                      ),
                    ],
                  ),
                  GoRoute(
                    path: 'actividades',
                    builder: (_, __) => const StromActivitiesScreen(),
                  ),
                  GoRoute(
                    path: 'terreno',
                    builder: (_, __) => const StromFieldScreen(),
                  ),
                  GoRoute(
                    path: 'tecnico',
                    builder: (_, __) => const StromTechnicalScreen(),
                  ),
                  GoRoute(
                    path: 'aclaraciones',
                    builder: (_, __) => const StromClarificationsScreen(),
                  ),
                  GoRoute(
                    path: 'indicadores',
                    builder: (_, __) => const StromIndicatorsScreen(),
                  ),
                  GoRoute(
                    path: 'configuracion',
                    builder: (_, __) => const StromConfigScreen(),
                  ),
                  GoRoute(
                    path: ':ticketId',
                    builder: (context, state) => StromProjectScreen(
                      ticketId: state.pathParameters['ticketId']!,
                    ),
                    routes: [
                      GoRoute(
                        path: 'visita/nueva',
                        builder: (context, state) => StromPlanScreen(
                          ticketId: state.pathParameters['ticketId']!,
                        ),
                      ),
                      GoRoute(
                        path: 'visita/:visitId',
                        builder: (context, state) => StromVisitScreen(
                          ticketId: state.pathParameters['ticketId']!,
                          visitId: state.pathParameters['visitId']!,
                        ),
                      ),
                    ],
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
                  GoRoute(
                    path: 'org',
                    builder: (_, __) => const OrgScreen(),
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
