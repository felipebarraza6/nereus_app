import 'package:flutter/foundation.dart';
import 'package:nereus_app/core/json_util.dart';

class TicketItem {
  const TicketItem({
    required this.id,
    required this.subject,
    this.ticketNumber = '',
    this.status = '',
    this.priority = '',
    this.description = '',
    this.clientName,
  });

  final String id;
  final String subject;
  final String ticketNumber;
  final String status;
  final String priority;
  final String description;
  final String? clientName;

  factory TicketItem.fromJson(Map<String, dynamic> json) {
    return TicketItem(
      id: asString(json['id']),
      subject: asString(json['subject']),
      ticketNumber: asString(json['ticket_number']),
      status: asString(json['status']),
      priority: asString(json['priority']),
      description: asString(json['description']),
      clientName: asStringOrNull(json['client_name'] ?? json['client']),
    );
  }
}

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
