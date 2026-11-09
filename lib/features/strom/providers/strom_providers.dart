import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/strom/data/strom_repository.dart';
import 'package:nereus_app/features/strom/domain/strom_models.dart';

final stromRepositoryProvider = Provider<StromRepository>((ref) {
  return StromRepository(dio: ref.watch(dioProvider));
});

final stromProjectsProvider =
    FutureProvider.autoDispose.family<List<StromProject>, String>((ref, search) {
  return ref.watch(stromRepositoryProvider).projects(
        search: search.isEmpty ? null : search,
      );
});

final stromCommentsProvider = FutureProvider.autoDispose
    .family<List<Map<String, dynamic>>, String>((ref, ticketId) {
  return ref.watch(stromRepositoryProvider).comments(ticketId);
});

final stromVisitsAllProvider = FutureProvider.autoDispose<List<StromVisit>>((ref) {
  return ref.watch(stromRepositoryProvider).visits();
});

final stromVisitsProvider =
    FutureProvider.autoDispose.family<List<StromVisit>, String>((ref, ticketId) {
  return ref.watch(stromRepositoryProvider).visitsForTicket(ticketId);
});

final stromVisitProvider =
    FutureProvider.autoDispose.family<StromVisit, String>((ref, id) {
  return ref.watch(stromRepositoryProvider).visit(id);
});
