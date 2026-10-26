import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nereus_app/core/theme/app_theme.dart';
import 'package:nereus_app/features/auth/domain/session_models.dart';
import 'package:nereus_app/features/auth/providers/session_controller.dart';
import 'package:nereus_app/features/catalog/providers/journey_providers.dart';
import 'package:nereus_app/features/crm/domain/crm_models.dart';
import 'package:nereus_app/features/crm/presentation/pipeline_screen.dart';
import 'package:nereus_app/features/crm/providers/crm_providers.dart';

void main() {
  testWidgets('pipeline groups a deal under its stage', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          sessionProvider.overrideWith(_AdminSession.new),
          customerClientsProvider.overrideWith((ref) async => const []),
          opportunityStagesProvider.overrideWith(
            (ref) async => const [
              OpportunityStageItem(id: 's1', name: 'Propuesta', order: 2),
            ],
          ),
          opportunitiesProvider().overrideWith(
            (ref) async => const [
              OpportunityItem(
                id: 'op-1',
                title: 'Pozo Nahuen',
                stageId: 's1',
                clientName: 'Agrícola Nahuen',
                estimatedValue: 1500000,
              ),
            ],
          ),
        ],
        child: MaterialApp(
          theme: AppTheme.light(),
          home: const PipelineScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Pozo Nahuen'), findsOneWidget);
    expect(find.text('Propuesta'), findsWidgets);
    expect(find.text(r'$1.500.000'), findsOneWidget);
    expect(find.textContaining('{id:'), findsNothing);
  });
}

class _AdminSession extends Session {
  @override
  FutureOr<AuthSession> build() => const AuthSession(
        token: 't',
        branchId: '1',
        enabledApps: ['customers'],
        branches: [BranchAssignment(branchId: 1, roleCode: 'ADM')],
      );
}
