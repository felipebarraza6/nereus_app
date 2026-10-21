import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nereus_app/core/providers.dart';
import 'package:nereus_api_client/nereus_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tickets_provider.g.dart';

@riverpod
Future<List<TicketList>> tickets(Ref ref) {
  return ref.watch(ticketsRepositoryProvider).myTickets();
}

@riverpod
Future<TicketDetail> ticketDetail(Ref ref, String id) {
  return ref.watch(ticketsRepositoryProvider).detail(id);
}
