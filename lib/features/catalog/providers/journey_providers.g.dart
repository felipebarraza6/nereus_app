// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(products)
const productsProvider = ProductsFamily._();

final class ProductsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ProductItem>>,
          List<ProductItem>,
          FutureOr<List<ProductItem>>
        >
    with
        $FutureModifier<List<ProductItem>>,
        $FutureProvider<List<ProductItem>> {
  const ProductsProvider._({
    required ProductsFamily super.from,
    required String? super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'productsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$productsHash();

  @override
  String toString() {
    return r'productsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<ProductItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ProductItem>> create(Ref ref) {
    final argument = this.argument as String?;
    return products(ref, productType: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ProductsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$productsHash() => r'8eed7238bb3297e70dc1e7a35945f58c3eb40b41';

final class ProductsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<ProductItem>>, String?> {
  const ProductsFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'productsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProductsProvider call({String? productType}) =>
      ProductsProvider._(argument: productType, from: this);

  @override
  String toString() => r'productsProvider';
}

@ProviderFor(stockRows)
const stockRowsProvider = StockRowsProvider._();

final class StockRowsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<StockRow>>,
          List<StockRow>,
          FutureOr<List<StockRow>>
        >
    with $FutureModifier<List<StockRow>>, $FutureProvider<List<StockRow>> {
  const StockRowsProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'stockRowsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$stockRowsHash();

  @$internal
  @override
  $FutureProviderElement<List<StockRow>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<StockRow>> create(Ref ref) {
    return stockRows(ref);
  }
}

String _$stockRowsHash() => r'2ccc78d535cc06133e044e88898f5f35493c4d51';

@ProviderFor(warehouses)
const warehousesProvider = WarehousesProvider._();

final class WarehousesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<WarehouseItem>>,
          List<WarehouseItem>,
          FutureOr<List<WarehouseItem>>
        >
    with
        $FutureModifier<List<WarehouseItem>>,
        $FutureProvider<List<WarehouseItem>> {
  const WarehousesProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'warehousesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$warehousesHash();

  @$internal
  @override
  $FutureProviderElement<List<WarehouseItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<WarehouseItem>> create(Ref ref) {
    return warehouses(ref);
  }
}

String _$warehousesHash() => r'3b4fe2ef37ff937629622942b92c60d805c531e6';

@ProviderFor(measurementPoints)
const measurementPointsProvider = MeasurementPointsProvider._();

final class MeasurementPointsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<MeasurementPointItem>>,
          List<MeasurementPointItem>,
          FutureOr<List<MeasurementPointItem>>
        >
    with
        $FutureModifier<List<MeasurementPointItem>>,
        $FutureProvider<List<MeasurementPointItem>> {
  const MeasurementPointsProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'measurementPointsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$measurementPointsHash();

  @$internal
  @override
  $FutureProviderElement<List<MeasurementPointItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<MeasurementPointItem>> create(Ref ref) {
    return measurementPoints(ref);
  }
}

String _$measurementPointsHash() => r'639156b7fe422a60f3e909d6b9e9baffbe8836fb';

@ProviderFor(customerClients)
const customerClientsProvider = CustomerClientsProvider._();

final class CustomerClientsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ClientItem>>,
          List<ClientItem>,
          FutureOr<List<ClientItem>>
        >
    with $FutureModifier<List<ClientItem>>, $FutureProvider<List<ClientItem>> {
  const CustomerClientsProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'customerClientsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$customerClientsHash();

  @$internal
  @override
  $FutureProviderElement<List<ClientItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ClientItem>> create(Ref ref) {
    return customerClients(ref);
  }
}

String _$customerClientsHash() => r'6cc7b56a5ab04529f2574998d43646d5c39c53cf';

@ProviderFor(telemetryProjects)
const telemetryProjectsProvider = TelemetryProjectsProvider._();

final class TelemetryProjectsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<TelemetryProjectItem>>,
          List<TelemetryProjectItem>,
          FutureOr<List<TelemetryProjectItem>>
        >
    with
        $FutureModifier<List<TelemetryProjectItem>>,
        $FutureProvider<List<TelemetryProjectItem>> {
  const TelemetryProjectsProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'telemetryProjectsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$telemetryProjectsHash();

  @$internal
  @override
  $FutureProviderElement<List<TelemetryProjectItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<TelemetryProjectItem>> create(Ref ref) {
    return telemetryProjects(ref);
  }
}

String _$telemetryProjectsHash() => r'4860eb88eb48884ae2277275094575c1582b289d';

@ProviderFor(telemetryProviders)
const telemetryProvidersProvider = TelemetryProvidersProvider._();

final class TelemetryProvidersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ProviderItem>>,
          List<ProviderItem>,
          FutureOr<List<ProviderItem>>
        >
    with
        $FutureModifier<List<ProviderItem>>,
        $FutureProvider<List<ProviderItem>> {
  const TelemetryProvidersProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'telemetryProvidersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$telemetryProvidersHash();

  @$internal
  @override
  $FutureProviderElement<List<ProviderItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ProviderItem>> create(Ref ref) {
    return telemetryProviders(ref);
  }
}

String _$telemetryProvidersHash() =>
    r'bea91e6a6937beba20e93a1ba35d3cbbb4041acd';

@ProviderFor(mqttBrokers)
const mqttBrokersProvider = MqttBrokersProvider._();

final class MqttBrokersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<BrokerItem>>,
          List<BrokerItem>,
          FutureOr<List<BrokerItem>>
        >
    with $FutureModifier<List<BrokerItem>>, $FutureProvider<List<BrokerItem>> {
  const MqttBrokersProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'mqttBrokersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mqttBrokersHash();

  @$internal
  @override
  $FutureProviderElement<List<BrokerItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<BrokerItem>> create(Ref ref) {
    return mqttBrokers(ref);
  }
}

String _$mqttBrokersHash() => r'4d2e6b0c18f7a67b0165021f2a14180f5e0808c2';

@ProviderFor(equipmentProfiles)
const equipmentProfilesProvider = EquipmentProfilesProvider._();

final class EquipmentProfilesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<EquipmentProfileItem>>,
          List<EquipmentProfileItem>,
          FutureOr<List<EquipmentProfileItem>>
        >
    with
        $FutureModifier<List<EquipmentProfileItem>>,
        $FutureProvider<List<EquipmentProfileItem>> {
  const EquipmentProfilesProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'equipmentProfilesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$equipmentProfilesHash();

  @$internal
  @override
  $FutureProviderElement<List<EquipmentProfileItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<EquipmentProfileItem>> create(Ref ref) {
    return equipmentProfiles(ref);
  }
}

String _$equipmentProfilesHash() => r'580c942a061b67cbcdd88c9966bef1a9054785ae';

@ProviderFor(equipmentAssignments)
const equipmentAssignmentsProvider = EquipmentAssignmentsProvider._();

final class EquipmentAssignmentsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<EquipmentAssignmentItem>>,
          List<EquipmentAssignmentItem>,
          FutureOr<List<EquipmentAssignmentItem>>
        >
    with
        $FutureModifier<List<EquipmentAssignmentItem>>,
        $FutureProvider<List<EquipmentAssignmentItem>> {
  const EquipmentAssignmentsProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'equipmentAssignmentsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$equipmentAssignmentsHash();

  @$internal
  @override
  $FutureProviderElement<List<EquipmentAssignmentItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<EquipmentAssignmentItem>> create(Ref ref) {
    return equipmentAssignments(ref);
  }
}

String _$equipmentAssignmentsHash() =>
    r'ad1610b921f70a72088120576c8ebea78978067f';

@ProviderFor(branchMembers)
const branchMembersProvider = BranchMembersProvider._();

final class BranchMembersProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<BranchMember>>,
          List<BranchMember>,
          FutureOr<List<BranchMember>>
        >
    with
        $FutureModifier<List<BranchMember>>,
        $FutureProvider<List<BranchMember>> {
  const BranchMembersProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'branchMembersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$branchMembersHash();

  @$internal
  @override
  $FutureProviderElement<List<BranchMember>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<BranchMember>> create(Ref ref) {
    return branchMembers(ref);
  }
}

String _$branchMembersHash() => r'c65f8d335d6fcc0d8189f22815271435872d3b0e';

@ProviderFor(branchRoles)
const branchRolesProvider = BranchRolesProvider._();

final class BranchRolesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<BranchRoleItem>>,
          List<BranchRoleItem>,
          FutureOr<List<BranchRoleItem>>
        >
    with
        $FutureModifier<List<BranchRoleItem>>,
        $FutureProvider<List<BranchRoleItem>> {
  const BranchRolesProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'branchRolesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$branchRolesHash();

  @$internal
  @override
  $FutureProviderElement<List<BranchRoleItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<BranchRoleItem>> create(Ref ref) {
    return branchRoles(ref);
  }
}

String _$branchRolesHash() => r'5066a5552c8eddb6813ecb41a78b4127a7dd9054';

@ProviderFor(deviceVariables)
const deviceVariablesProvider = DeviceVariablesFamily._();

final class DeviceVariablesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<VariableItem>>,
          List<VariableItem>,
          FutureOr<List<VariableItem>>
        >
    with
        $FutureModifier<List<VariableItem>>,
        $FutureProvider<List<VariableItem>> {
  const DeviceVariablesProvider._({
    required DeviceVariablesFamily super.from,
    required int super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'deviceVariablesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deviceVariablesHash();

  @override
  String toString() {
    return r'deviceVariablesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<VariableItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<VariableItem>> create(Ref ref) {
    final argument = this.argument as int;
    return deviceVariables(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceVariablesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deviceVariablesHash() => r'e8ff0e164743b90af1db40a6781a9d1393fb7c2f';

final class DeviceVariablesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<VariableItem>>, int> {
  const DeviceVariablesFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'deviceVariablesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DeviceVariablesProvider call(int deviceId) =>
      DeviceVariablesProvider._(argument: deviceId, from: this);

  @override
  String toString() => r'deviceVariablesProvider';
}

@ProviderFor(deviceConfigs)
const deviceConfigsProvider = DeviceConfigsFamily._();

final class DeviceConfigsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<DeviceConfigItem>>,
          List<DeviceConfigItem>,
          FutureOr<List<DeviceConfigItem>>
        >
    with
        $FutureModifier<List<DeviceConfigItem>>,
        $FutureProvider<List<DeviceConfigItem>> {
  const DeviceConfigsProvider._({
    required DeviceConfigsFamily super.from,
    required int super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'deviceConfigsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deviceConfigsHash();

  @override
  String toString() {
    return r'deviceConfigsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<DeviceConfigItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<DeviceConfigItem>> create(Ref ref) {
    final argument = this.argument as int;
    return deviceConfigs(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceConfigsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deviceConfigsHash() => r'befefeffd3460f0f99e61048926345a905207ecc';

final class DeviceConfigsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<DeviceConfigItem>>, int> {
  const DeviceConfigsFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'deviceConfigsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DeviceConfigsProvider call(int deviceId) =>
      DeviceConfigsProvider._(argument: deviceId, from: this);

  @override
  String toString() => r'deviceConfigsProvider';
}

@ProviderFor(deviceCompliance)
const deviceComplianceProvider = DeviceComplianceFamily._();

final class DeviceComplianceProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ComplianceSnapshot>>,
          List<ComplianceSnapshot>,
          FutureOr<List<ComplianceSnapshot>>
        >
    with
        $FutureModifier<List<ComplianceSnapshot>>,
        $FutureProvider<List<ComplianceSnapshot>> {
  const DeviceComplianceProvider._({
    required DeviceComplianceFamily super.from,
    required int super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'deviceComplianceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deviceComplianceHash();

  @override
  String toString() {
    return r'deviceComplianceProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<ComplianceSnapshot>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ComplianceSnapshot>> create(Ref ref) {
    final argument = this.argument as int;
    return deviceCompliance(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeviceComplianceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deviceComplianceHash() => r'92e327857d961df8ecaa38ef6eaaccd1ae3be4b6';

final class DeviceComplianceFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<ComplianceSnapshot>>, int> {
  const DeviceComplianceFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'deviceComplianceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DeviceComplianceProvider call(int deviceId) =>
      DeviceComplianceProvider._(argument: deviceId, from: this);

  @override
  String toString() => r'deviceComplianceProvider';
}
