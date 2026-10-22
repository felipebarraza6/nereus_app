// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(tickets)
const ticketsProvider = TicketsProvider._();

final class TicketsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<TicketItem>>,
          List<TicketItem>,
          FutureOr<List<TicketItem>>
        >
    with $FutureModifier<List<TicketItem>>, $FutureProvider<List<TicketItem>> {
  const TicketsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ticketsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ticketsHash();

  @$internal
  @override
  $FutureProviderElement<List<TicketItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<TicketItem>> create(Ref ref) {
    return tickets(ref);
  }
}

String _$ticketsHash() => r'bdb6ee71f4480721372c6c3f5d40776e4ad0f587';

@ProviderFor(ticketDetail)
const ticketDetailProvider = TicketDetailFamily._();

final class TicketDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<TicketItem>,
          TicketItem,
          FutureOr<TicketItem>
        >
    with $FutureModifier<TicketItem>, $FutureProvider<TicketItem> {
  const TicketDetailProvider._({
    required TicketDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'ticketDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ticketDetailHash();

  @override
  String toString() {
    return r'ticketDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<TicketItem> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<TicketItem> create(Ref ref) {
    final argument = this.argument as String;
    return ticketDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is TicketDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ticketDetailHash() => r'f3f09c4ffcadd9881f8c00c18178ae1590fe9b09';

final class TicketDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<TicketItem>, String> {
  const TicketDetailFamily._()
    : super(
        retry: null,
        name: r'ticketDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  TicketDetailProvider call(String id) =>
      TicketDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'ticketDetailProvider';
}
