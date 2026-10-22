import 'package:nereus_app/core/json_util.dart';
import 'package:nereus_app/features/customers/domain/client_models.dart';

export 'package:nereus_app/features/customers/domain/client_models.dart';

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
