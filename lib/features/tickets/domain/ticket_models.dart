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

class ClientItem {
  const ClientItem({
    required this.id,
    required this.name,
    this.email,
    this.phone,
    this.address,
    this.branchName,
  });

  final String id;
  final String name;
  final String? email;
  final String? phone;
  final String? address;
  final String? branchName;

  factory ClientItem.fromJson(Map<String, dynamic> json) {
    return ClientItem(
      id: asString(json['id']),
      name: asString(json['name'], fallback: 'Cliente'),
      email: asStringOrNull(json['email']),
      phone: asStringOrNull(json['phone_number']),
      address: asStringOrNull(json['address']),
      branchName: asStringOrNull(json['branch_name'] ?? json['branch']),
    );
  }
}
