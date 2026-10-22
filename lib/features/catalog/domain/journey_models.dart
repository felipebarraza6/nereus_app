import 'package:flutter/foundation.dart';
import 'package:nereus_app/core/json_util.dart';

@immutable
class ProductItem {
  const ProductItem({
    required this.id,
    required this.name,
    this.code,
    this.description,
    this.productType = 'DIRECT_SALE',
    this.measurementUnit,
    this.isActive = true,
    this.tracksInventory = false,
    this.quantity,
    this.price,
  });

  final String id;
  final String name;
  final String? code;
  final String? description;
  final String productType;
  final String? measurementUnit;
  final bool isActive;
  final bool tracksInventory;
  final double? quantity;
  final double? price;

  bool get isIot => productType == 'IOT';

  factory ProductItem.fromJson(Map<String, dynamic> json) {
    return ProductItem(
      id: asString(json['id']),
      name: asString(json['name'], fallback: 'Producto'),
      code: asStringOrNull(json['code']),
      description: asStringOrNull(json['description']),
      productType: asString(json['product_type'], fallback: 'DIRECT_SALE'),
      measurementUnit: asStringOrNull(json['measurement_unit']),
      isActive: json['is_active'] != false,
      tracksInventory: json['tracks_inventory'] == true,
      quantity: asDoubleOrNull(json['stock_available'] ?? json['quantity']),
      price: asDoubleOrNull(json['price'] ?? json['sale_price']),
    );
  }

  @override
  bool operator ==(Object other) => other is ProductItem && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

@immutable
class StockRow {
  const StockRow({
    required this.id,
    required this.name,
    this.productType,
    this.quantity,
    this.warehouse,
  });

  final String id;
  final String name;
  final String? productType;
  final double? quantity;
  final String? warehouse;

  factory StockRow.fromJson(Map<String, dynamic> json) {
    return StockRow(
      id: asString(json['id'] ?? json['product']),
      name: asString(json['name'] ?? json['product_name'], fallback: 'Producto'),
      productType: asStringOrNull(json['product_type']),
      quantity: asDoubleOrNull(json['quantity'] ?? json['stock_available']),
      warehouse: asStringOrNull(json['warehouse_name'] ?? json['warehouse']),
    );
  }

  @override
  bool operator ==(Object other) => other is StockRow && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

class WarehouseItem {
  const WarehouseItem({
    required this.id,
    required this.name,
    this.isActive = true,
  });

  final String id;
  final String name;
  final bool isActive;

  factory WarehouseItem.fromJson(Map<String, dynamic> json) {
    return WarehouseItem(
      id: asString(json['id']),
      name: asString(json['name'] ?? json['label'], fallback: 'Bodega'),
      isActive: json['is_active'] != false,
    );
  }
}

@immutable
class MeasurementPointItem {
  const MeasurementPointItem({
    required this.id,
    required this.label,
    this.code,
    this.clientId,
    this.clientName,
    this.productId,
    this.productName,
    this.lat,
    this.lng,
    this.isActive = true,
  });

  final String id;
  final String label;
  final String? code;
  final String? clientId;
  final String? clientName;
  final String? productId;
  final String? productName;
  final double? lat;
  final double? lng;
  final bool isActive;

  factory MeasurementPointItem.fromJson(Map<String, dynamic> json) {
    return MeasurementPointItem(
      id: asString(json['id']),
      label: asString(json['label'] ?? json['code'], fallback: 'Punto'),
      code: asStringOrNull(json['code']),
      clientId: asStringOrNull(json['client']),
      clientName: asStringOrNull(json['client_name'] ?? json['client']),
      productId: asStringOrNull(json['product']),
      productName: asStringOrNull(json['product_name'] ?? json['product']),
      lat: asDoubleOrNull(json['coordinates_lat']),
      lng: asDoubleOrNull(json['coordinates_lng']),
      isActive: json['is_active'] != false,
    );
  }

  @override
  bool operator ==(Object other) =>
      other is MeasurementPointItem && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

@immutable
class TelemetryProjectItem {
  const TelemetryProjectItem({
    required this.id,
    required this.name,
    this.codeInternal,
    this.description,
    this.deviceCount = 0,
    this.isActive = true,
  });

  final String id;
  final String name;
  final String? codeInternal;
  final String? description;
  final int deviceCount;
  final bool isActive;

  factory TelemetryProjectItem.fromJson(Map<String, dynamic> json) {
    return TelemetryProjectItem(
      id: asString(json['id']),
      name: asString(json['name'], fallback: 'Proyecto'),
      codeInternal: asStringOrNull(json['code_internal']),
      description: asStringOrNull(json['description']),
      deviceCount: asInt(json['device_count']),
      isActive: json['is_active'] != false,
    );
  }

  @override
  bool operator ==(Object other) =>
      other is TelemetryProjectItem && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

class DeviceConfigItem {
  const DeviceConfigItem({
    this.id,
    this.deviceId,
    this.depth,
    this.pumpPosition,
    this.levelPosition,
    this.pumpDiameterInches,
    this.flowmeterDiameterInches,
    this.levelOffset,
    this.flowInitial,
    this.replicateOnMissing = false,
    this.maxDiffM3PerHour,
    this.maxFlowLs,
    this.maxTimeGapHours,
    this.reconnectionThresholdHours,
  });

  final String? id;
  final String? deviceId;
  final double? depth;
  final double? pumpPosition;
  final double? levelPosition;
  final double? pumpDiameterInches;
  final double? flowmeterDiameterInches;
  final double? levelOffset;
  final double? flowInitial;
  final bool replicateOnMissing;
  final double? maxDiffM3PerHour;
  final double? maxFlowLs;
  final double? maxTimeGapHours;
  final double? reconnectionThresholdHours;

  factory DeviceConfigItem.fromJson(Map<String, dynamic> json) {
    return DeviceConfigItem(
      id: asStringOrNull(json['id']),
      deviceId: asStringOrNull(json['device']),
      depth: asDoubleOrNull(json['depth']),
      pumpPosition: asDoubleOrNull(json['pump_position']),
      levelPosition: asDoubleOrNull(json['level_position']),
      pumpDiameterInches: asDoubleOrNull(json['pump_diameter_inches']),
      flowmeterDiameterInches: asDoubleOrNull(json['flowmeter_diameter_inches']),
      levelOffset: asDoubleOrNull(json['level_offset']),
      flowInitial: asDoubleOrNull(json['flow_initial']),
      replicateOnMissing: json['replicate_on_missing'] == true,
      maxDiffM3PerHour: asDoubleOrNull(json['max_diff_m3_per_hour']),
      maxFlowLs: asDoubleOrNull(json['max_flow_ls']),
      maxTimeGapHours: asDoubleOrNull(json['max_time_gap_hours']),
      reconnectionThresholdHours:
          asDoubleOrNull(json['reconnection_threshold_hours']),
    );
  }

  Map<String, dynamic> toBody({required int deviceId}) {
    return {
      'device': deviceId,
      if (depth != null) 'depth': depth,
      if (pumpPosition != null) 'pump_position': pumpPosition,
      if (levelPosition != null) 'level_position': levelPosition,
      if (pumpDiameterInches != null)
        'pump_diameter_inches': pumpDiameterInches,
      if (flowmeterDiameterInches != null)
        'flowmeter_diameter_inches': flowmeterDiameterInches,
      if (levelOffset != null) 'level_offset': levelOffset,
      if (flowInitial != null) 'flow_initial': flowInitial,
      'replicate_on_missing': replicateOnMissing,
      if (maxDiffM3PerHour != null) 'max_diff_m3_per_hour': maxDiffM3PerHour,
      if (maxFlowLs != null) 'max_flow_ls': maxFlowLs,
      if (maxTimeGapHours != null) 'max_time_gap_hours': maxTimeGapHours,
      if (reconnectionThresholdHours != null)
        'reconnection_threshold_hours': reconnectionThresholdHours,
    };
  }
}

class VariableItem {
  const VariableItem({
    required this.id,
    required this.name,
    this.deviceId,
    this.variableType = 'CUSTOM',
    this.unit = '',
    this.conversionFactor,
    this.conversionOffset,
    this.minValue,
    this.maxValue,
    this.isCounter = false,
    this.pulsesFactor,
    this.chartColor,
    this.isActive = true,
  });

  final String id;
  final String name;
  final String? deviceId;
  final String variableType;
  final String unit;
  final double? conversionFactor;
  final double? conversionOffset;
  final double? minValue;
  final double? maxValue;
  final bool isCounter;
  final double? pulsesFactor;
  final String? chartColor;
  final bool isActive;

  factory VariableItem.fromJson(Map<String, dynamic> json) {
    return VariableItem(
      id: asString(json['id']),
      name: asString(json['name'], fallback: 'Variable'),
      deviceId: asStringOrNull(json['device']),
      variableType: asString(json['variable_type'], fallback: 'CUSTOM'),
      unit: asString(json['unit']),
      conversionFactor: asDoubleOrNull(json['conversion_factor']),
      conversionOffset: asDoubleOrNull(json['conversion_offset']),
      minValue: asDoubleOrNull(json['min_value']),
      maxValue: asDoubleOrNull(json['max_value']),
      isCounter: json['is_counter'] == true,
      pulsesFactor: asDoubleOrNull(json['pulses_factor']),
      chartColor: asStringOrNull(json['chart_color']),
      isActive: json['is_active'] != false,
    );
  }
}

class ProviderItem {
  const ProviderItem({
    required this.id,
    required this.name,
    this.protocol,
    this.isActive = true,
  });

  final String id;
  final String name;
  final String? protocol;
  final bool isActive;

  factory ProviderItem.fromJson(Map<String, dynamic> json) {
    return ProviderItem(
      id: asString(json['id']),
      name: asString(json['name'], fallback: 'Proveedor'),
      protocol: asStringOrNull(json['protocol'] ?? json['provider_type']),
      isActive: json['is_active'] != false,
    );
  }
}

class BrokerItem {
  const BrokerItem({
    required this.id,
    required this.name,
    this.host,
    this.port,
    this.username,
    this.useTls = false,
    this.topicTemplate,
    this.isActive = true,
  });

  final String id;
  final String name;
  final String? host;
  final int? port;
  final String? username;
  final bool useTls;
  final String? topicTemplate;
  final bool isActive;

  factory BrokerItem.fromJson(Map<String, dynamic> json) {
    return BrokerItem(
      id: asString(json['id']),
      name: asString(json['name'], fallback: 'Broker MQTT'),
      host: asStringOrNull(json['host']),
      port: asIntOrNull(json['port']),
      username: asStringOrNull(json['username']),
      useTls: json['use_tls'] == true,
      topicTemplate: asStringOrNull(json['topic_template']),
      isActive: json['is_active'] != false,
    );
  }
}

@immutable
class EquipmentProfileItem {
  const EquipmentProfileItem({
    required this.id,
    this.productId,
    this.productName,
    this.serialNumber,
    this.modelNumber,
    this.status,
    this.manufacturer,
  });

  final String id;
  final String? productId;
  final String? productName;
  final String? serialNumber;
  final String? modelNumber;
  final String? status;
  final String? manufacturer;

  factory EquipmentProfileItem.fromJson(Map<String, dynamic> json) {
    return EquipmentProfileItem(
      id: asString(json['id']),
      productId: asStringOrNull(json['product']),
      productName: asStringOrNull(json['product_name'] ?? json['product']),
      serialNumber: asStringOrNull(json['serial_number']),
      modelNumber: asStringOrNull(json['model_number']),
      status: asStringOrNull(json['status_display'] ?? json['equipment_status']),
      manufacturer: asStringOrNull(json['manufacturer']),
    );
  }

  @override
  bool operator ==(Object other) =>
      other is EquipmentProfileItem && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

class EquipmentAssignmentItem {
  const EquipmentAssignmentItem({
    required this.id,
    this.productName,
    this.userName,
    this.isActive = true,
    this.assignedDate,
  });

  final String id;
  final String? productName;
  final String? userName;
  final bool isActive;
  final DateTime? assignedDate;

  factory EquipmentAssignmentItem.fromJson(Map<String, dynamic> json) {
    return EquipmentAssignmentItem(
      id: asString(json['id']),
      productName: asStringOrNull(json['product_name'] ?? json['product']),
      userName: asStringOrNull(json['user_name'] ?? json['user']),
      isActive: json['is_active'] != false,
      assignedDate: asDateTime(json['assigned_date']),
    );
  }
}

class BranchMember {
  const BranchMember({
    required this.id,
    this.userId,
    this.userName,
    this.userEmail,
    this.roleCode,
    this.roleName,
    this.isActive = true,
  });

  final String id;
  final String? userId;
  final String? userName;
  final String? userEmail;
  final String? roleCode;
  final String? roleName;
  final bool isActive;

  factory BranchMember.fromJson(Map<String, dynamic> json) {
    return BranchMember(
      id: asString(json['id']),
      userId: asStringOrNull(json['user']),
      userName: asStringOrNull(json['user_name'] ?? json['user']),
      userEmail: asStringOrNull(json['user_email']),
      roleCode: asStringOrNull(json['role_code']),
      roleName: asStringOrNull(json['role_name']),
      isActive: json['is_active'] != false,
    );
  }
}

class BranchRoleItem {
  const BranchRoleItem({
    required this.id,
    required this.name,
    this.code,
    this.isSystem = false,
    this.isActive = true,
  });

  final String id;
  final String name;
  final String? code;
  final bool isSystem;
  final bool isActive;

  factory BranchRoleItem.fromJson(Map<String, dynamic> json) {
    return BranchRoleItem(
      id: asString(json['id']),
      name: asString(json['name'], fallback: 'Rol'),
      code: asStringOrNull(json['code']),
      isSystem: json['is_system'] == true,
      isActive: json['is_active'] != false,
    );
  }
}

class ComplianceSnapshot {
  const ComplianceSnapshot({
    this.id,
    this.sendDga = false,
    this.sendSma = false,
    this.codeDga,
    this.standard,
    this.typeDga,
  });

  final String? id;
  final bool sendDga;
  final bool sendSma;
  final String? codeDga;
  final String? standard;
  final String? typeDga;

  factory ComplianceSnapshot.fromJson(Map<String, dynamic> json) {
    return ComplianceSnapshot(
      id: asStringOrNull(json['id']),
      sendDga: json['send_dga'] == true,
      sendSma: json['send_sma'] == true,
      codeDga: asStringOrNull(json['code_dga']),
      standard: asStringOrNull(json['standard']),
      typeDga: asStringOrNull(json['type_dga']),
    );
  }
}
