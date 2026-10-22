import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_app/features/tickets/domain/ticket_models.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tickets_provider.g.dart';

@riverpod
Future<List<TicketItem>> tickets(Ref ref) {
  return ref.watch(ticketsRepositoryProvider).myTickets();
}

@riverpod
Future<TicketItem> ticketDetail(Ref ref, String id) {
  return ref.watch(ticketsRepositoryProvider).detail(id);
}
