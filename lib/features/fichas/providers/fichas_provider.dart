import 'package:nereus_app/core/debug/nereus_log.dart';
import 'package:nereus_app/core/polling/foreground_poll.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/fichas/domain/ensure_water_templates.dart';
import 'package:nereus_app/features/fichas/domain/ficha_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fichas_provider.g.dart';

@Riverpod(retry: nereusNoRetry)
Future<void> waterTemplatesReady(Ref ref) async {
  try {
    await ensureWaterTemplates(
      fichas: ref.watch(fichaRepositoryProvider),
      levantamientos: ref.watch(levantamientoRepositoryProvider),
    );
  } on Object catch (error, stack) {
    nereusLog('waterTemplatesReady', error, stack);
  }
}

@Riverpod(retry: nereusNoRetry)
Future<List<FichaSection>> fichaSections(Ref ref) async {
  await ref.watch(waterTemplatesReadyProvider.future);
  return ref.watch(fichaRepositoryProvider).sections();
}

@Riverpod(retry: nereusNoRetry)
Future<List<FichaField>> fichaFields(Ref ref) async {
  await ref.watch(waterTemplatesReadyProvider.future);
  return ref.watch(fichaRepositoryProvider).fields();
}

@Riverpod(retry: nereusNoRetry)
Future<List<FichaValue>> clientFichaValues(Ref ref, String clientId) {
  return ref.watch(fichaRepositoryProvider).valuesForClient(clientId);
}

@Riverpod(retry: nereusNoRetry)
Future<List<LevantamientoTemplate>> levantamientoTemplates(Ref ref) async {
  await ref.watch(waterTemplatesReadyProvider.future);
  return ref.watch(levantamientoRepositoryProvider).templates();
}

@Riverpod(retry: nereusNoRetry)
Future<List<Levantamiento>> levantamientos(Ref ref) async {
  await ref.watch(waterTemplatesReadyProvider.future);
  return ref.watch(levantamientoRepositoryProvider).list();
}

@Riverpod(retry: nereusNoRetry)
Future<Levantamiento> levantamientoDetail(Ref ref, String id) {
  return ref.watch(levantamientoRepositoryProvider).retrieve(id);
}

@Riverpod(retry: nereusNoRetry)
Future<List<LevantamientoRespuesta>> clientLevantamientoRespuestas(
  Ref ref,
  String clientId,
) {
  return ref.watch(levantamientoRepositoryProvider).responses(clientId: clientId);
}
