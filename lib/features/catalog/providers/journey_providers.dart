import 'package:nereus_app/core/polling/foreground_poll.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/catalog/domain/journey_models.dart';
import 'package:nereus_app/features/tickets/domain/ticket_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'journey_providers.g.dart';

@Riverpod(retry: nereusNoRetry)
Future<List<ProductItem>> products(Ref ref, {String? productType}) {
  return ref.watch(inventoryRepositoryProvider).products(
        productType: productType,
      );
}

@Riverpod(retry: nereusNoRetry)
Future<List<StockRow>> stockRows(Ref ref) {
  return ref.watch(inventoryRepositoryProvider).stock();
}

@Riverpod(retry: nereusNoRetry)
Future<List<WarehouseItem>> warehouses(Ref ref) {
  return ref.watch(inventoryRepositoryProvider).warehouses();
}

@Riverpod(retry: nereusNoRetry)
Future<List<MeasurementPointItem>> measurementPoints(Ref ref) {
  return ref.watch(inventoryRepositoryProvider).measurementPoints();
}

@Riverpod(retry: nereusNoRetry)
Future<List<ClientItem>> customerClients(Ref ref) {
  return ref.watch(customersRepositoryProvider).list();
}

@Riverpod(retry: nereusNoRetry)
Future<List<TelemetryProjectItem>> telemetryProjects(Ref ref) {
  return ref.watch(telemetryRepositoryProvider).projects();
}

@Riverpod(retry: nereusNoRetry)
Future<List<ProviderItem>> telemetryProviders(Ref ref) {
  return ref.watch(telemetryRepositoryProvider).providers();
}

@Riverpod(retry: nereusNoRetry)
Future<List<BrokerItem>> mqttBrokers(Ref ref) {
  return ref.watch(telemetryRepositoryProvider).mqttBrokers();
}

@Riverpod(retry: nereusNoRetry)
Future<List<EquipmentProfileItem>> equipmentProfiles(Ref ref) {
  return ref.watch(equipmentRepositoryProvider).profiles();
}

@Riverpod(retry: nereusNoRetry)
Future<List<EquipmentAssignmentItem>> equipmentAssignments(Ref ref) {
  return ref.watch(equipmentRepositoryProvider).assignments();
}

@Riverpod(retry: nereusNoRetry)
Future<List<BranchMember>> branchMembers(Ref ref) {
  return ref.watch(orgRepositoryProvider).members();
}

@Riverpod(retry: nereusNoRetry)
Future<List<BranchRoleItem>> branchRoles(Ref ref) {
  return ref.watch(orgRepositoryProvider).roles();
}

@Riverpod(retry: nereusNoRetry)
Future<List<VariableItem>> deviceVariables(Ref ref, int deviceId) {
  return ref.watch(telemetryRepositoryProvider).variables(deviceId: deviceId);
}

@Riverpod(retry: nereusNoRetry)
Future<List<DeviceConfigItem>> deviceConfigs(Ref ref, int deviceId) {
  return ref.watch(telemetryRepositoryProvider).deviceConfigs(deviceId: deviceId);
}

@Riverpod(retry: nereusNoRetry)
Future<List<ComplianceSnapshot>> deviceCompliance(Ref ref, int deviceId) {
  return ref
      .watch(telemetryRepositoryProvider)
      .complianceConfigs(deviceId: deviceId);
}
