import 'package:nereus_app/core/config/app_config.dart';
import 'package:nereus_app/core/polling/foreground_poll.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/crm/data/crm_repository.dart';
import 'package:nereus_app/features/crm/data/fixture_crm_repository.dart';
import 'package:nereus_app/features/crm/domain/crm_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'crm_providers.g.dart';

@Riverpod(keepAlive: true, retry: nereusNoRetry)
CrmRepository crmRepository(Ref ref) {
  if (ref.watch(dataModeProvider) == NereusDataMode.fixture) {
    return FixtureCrmRepository();
  }
  return CrmRepository(dio: ref.watch(dioProvider));
}

@Riverpod(retry: nereusNoRetry)
Future<CrmDashboardSummary> crmSummary(Ref ref) {
  return ref.watch(crmRepositoryProvider).summary();
}

@Riverpod(retry: nereusNoRetry)
Future<List<LeadSourceItem>> leadSources(Ref ref) {
  return ref.watch(crmRepositoryProvider).leadSources();
}

@Riverpod(retry: nereusNoRetry)
Future<List<FollowUpCategoryItem>> followUpCategories(Ref ref) {
  return ref.watch(crmRepositoryProvider).followUpCategories();
}

@Riverpod(retry: nereusNoRetry)
Future<List<LeadItem>> leads(Ref ref) {
  return ref.watch(crmRepositoryProvider).leads();
}

@Riverpod(retry: nereusNoRetry)
Future<List<OpportunityStageItem>> opportunityStages(Ref ref) {
  return ref.watch(crmRepositoryProvider).stages();
}

@Riverpod(retry: nereusNoRetry)
Future<List<OpportunityItem>> opportunities(Ref ref, {String? clientId}) {
  return ref.watch(crmRepositoryProvider).opportunities(clientId: clientId);
}

@Riverpod(retry: nereusNoRetry)
Future<OpportunityItem> opportunityDetail(Ref ref, String id) {
  return ref.watch(crmRepositoryProvider).retrieve(id);
}

@Riverpod(retry: nereusNoRetry)
Future<List<FollowUpItem>> opportunityActivities(Ref ref, String id) {
  return ref.watch(crmRepositoryProvider).activities(id);
}

@Riverpod(retry: nereusNoRetry)
Future<List<ProposalItem>> opportunityProposals(Ref ref, String id) {
  return ref.watch(crmRepositoryProvider).proposals(id);
}
