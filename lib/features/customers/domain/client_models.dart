import 'package:flutter/foundation.dart';
import 'package:nereus_app/core/json_util.dart';

@immutable
class ClientItem {
  const ClientItem({
    required this.id,
    required this.name,
    this.email,
    this.phone,
    this.address,
    this.branchName,
    this.dni,
    this.clientCode,
    this.isActive = true,
  });

  final String id;
  final String name;
  final String? email;
  final String? phone;
  final String? address;
  final String? branchName;
  final String? dni;
  final String? clientCode;
  final bool isActive;

  factory ClientItem.fromJson(Map<String, dynamic> json) {
    return ClientItem(
      id: asString(json['id']),
      name: asString(json['name'], fallback: 'Cliente'),
      email: asStringOrNull(json['email']),
      phone: asStringOrNull(json['phone_number']),
      address: asStringOrNull(json['address']),
      branchName: asStringOrNull(json['branch_name'] ?? json['branch']),
      dni: asStringOrNull(json['dni']),
      clientCode: asStringOrNull(json['client_code']),
      isActive: json['is_active'] != false,
    );
  }

  @override
  bool operator ==(Object other) => other is ClientItem && other.id == id;

  @override
  int get hashCode => id.hashCode;
}
