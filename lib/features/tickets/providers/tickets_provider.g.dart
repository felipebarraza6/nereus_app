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
          AsyncValue<List<TicketList>>,
          List<TicketList>,
          FutureOr<List<TicketList>>
        >
    with $FutureModifier<List<TicketList>>, $FutureProvider<List<TicketList>> {
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
  $FutureProviderElement<List<TicketList>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<TicketList>> create(Ref ref) {
    return tickets(ref);
  }
}

String _$ticketsHash() => r'07e0ea8cb94c8d977383a6567145d31508de8c23';

@ProviderFor(ticketDetail)
const ticketDetailProvider = TicketDetailFamily._();

final class TicketDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<TicketDetail>,
          TicketDetail,
          FutureOr<TicketDetail>
        >
    with $FutureModifier<TicketDetail>, $FutureProvider<TicketDetail> {
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
  $FutureProviderElement<TicketDetail> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<TicketDetail> create(Ref ref) {
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

String _$ticketDetailHash() => r'6d8b82a72eab9b0b0ef772f65eae95f978912efa';

final class TicketDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<TicketDetail>, String> {
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
