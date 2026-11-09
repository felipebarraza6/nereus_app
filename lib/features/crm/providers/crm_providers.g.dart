// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crm_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(crmRepository)
const crmRepositoryProvider = CrmRepositoryProvider._();

final class CrmRepositoryProvider
    extends $FunctionalProvider<CrmRepository, CrmRepository, CrmRepository>
    with $Provider<CrmRepository> {
  const CrmRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'crmRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$crmRepositoryHash();

  @$internal
  @override
  $ProviderElement<CrmRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CrmRepository create(Ref ref) {
    return crmRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CrmRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CrmRepository>(value),
    );
  }
}

String _$crmRepositoryHash() => r'7e8444228e4612872290415ff24f52a0398e7079';

@ProviderFor(crmSummary)
const crmSummaryProvider = CrmSummaryProvider._();

final class CrmSummaryProvider
    extends
        $FunctionalProvider<
          AsyncValue<CrmDashboardSummary>,
          CrmDashboardSummary,
          FutureOr<CrmDashboardSummary>
        >
    with
        $FutureModifier<CrmDashboardSummary>,
        $FutureProvider<CrmDashboardSummary> {
  const CrmSummaryProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'crmSummaryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$crmSummaryHash();

  @$internal
  @override
  $FutureProviderElement<CrmDashboardSummary> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CrmDashboardSummary> create(Ref ref) {
    return crmSummary(ref);
  }
}

String _$crmSummaryHash() => r'a12b34c56d78e90f1234567890abcdef12345678';

@ProviderFor(leadSources)
const leadSourcesProvider = LeadSourcesProvider._();

final class LeadSourcesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LeadSourceItem>>,
          List<LeadSourceItem>,
          FutureOr<List<LeadSourceItem>>
        >
    with
        $FutureModifier<List<LeadSourceItem>>,
        $FutureProvider<List<LeadSourceItem>> {
  const LeadSourcesProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'leadSourcesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$leadSourcesHash();

  @$internal
  @override
  $FutureProviderElement<List<LeadSourceItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LeadSourceItem>> create(Ref ref) {
    return leadSources(ref);
  }
}

String _$leadSourcesHash() => r'b23c45d67e89f01a2345678901bcdefa23456789';

@ProviderFor(followUpCategories)
const followUpCategoriesProvider = FollowUpCategoriesProvider._();

final class FollowUpCategoriesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FollowUpCategoryItem>>,
          List<FollowUpCategoryItem>,
          FutureOr<List<FollowUpCategoryItem>>
        >
    with
        $FutureModifier<List<FollowUpCategoryItem>>,
        $FutureProvider<List<FollowUpCategoryItem>> {
  const FollowUpCategoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'followUpCategoriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$followUpCategoriesHash();

  @$internal
  @override
  $FutureProviderElement<List<FollowUpCategoryItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FollowUpCategoryItem>> create(Ref ref) {
    return followUpCategories(ref);
  }
}

String _$followUpCategoriesHash() => r'c34d56e78f90a12b3456789012cdefab34567890';

@ProviderFor(leads)
const leadsProvider = LeadsProvider._();

final class LeadsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LeadItem>>,
          List<LeadItem>,
          FutureOr<List<LeadItem>>
        >
    with $FutureModifier<List<LeadItem>>, $FutureProvider<List<LeadItem>> {
  const LeadsProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'leadsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$leadsHash();

  @$internal
  @override
  $FutureProviderElement<List<LeadItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LeadItem>> create(Ref ref) {
    return leads(ref);
  }
}

String _$leadsHash() => r'c53756df1b9f6fe0218f3feaf70103f73736785c';

@ProviderFor(opportunityStages)
const opportunityStagesProvider = OpportunityStagesProvider._();

final class OpportunityStagesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<OpportunityStageItem>>,
          List<OpportunityStageItem>,
          FutureOr<List<OpportunityStageItem>>
        >
    with
        $FutureModifier<List<OpportunityStageItem>>,
        $FutureProvider<List<OpportunityStageItem>> {
  const OpportunityStagesProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'opportunityStagesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$opportunityStagesHash();

  @$internal
  @override
  $FutureProviderElement<List<OpportunityStageItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<OpportunityStageItem>> create(Ref ref) {
    return opportunityStages(ref);
  }
}

String _$opportunityStagesHash() => r'8cb1d3eb9a195c4adee8ae2fb4a37fba301f8010';

@ProviderFor(opportunities)
const opportunitiesProvider = OpportunitiesFamily._();

final class OpportunitiesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<OpportunityItem>>,
          List<OpportunityItem>,
          FutureOr<List<OpportunityItem>>
        >
    with
        $FutureModifier<List<OpportunityItem>>,
        $FutureProvider<List<OpportunityItem>> {
  const OpportunitiesProvider._({
    required OpportunitiesFamily super.from,
    required String? super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'opportunitiesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$opportunitiesHash();

  @override
  String toString() {
    return r'opportunitiesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<OpportunityItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<OpportunityItem>> create(Ref ref) {
    final argument = this.argument as String?;
    return opportunities(ref, clientId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OpportunitiesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$opportunitiesHash() => r'88244defff8f04ff6c467cf0cd9736474eb3153d';

final class OpportunitiesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<OpportunityItem>>, String?> {
  const OpportunitiesFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'opportunitiesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OpportunitiesProvider call({String? clientId}) =>
      OpportunitiesProvider._(argument: clientId, from: this);

  @override
  String toString() => r'opportunitiesProvider';
}

@ProviderFor(opportunityDetail)
const opportunityDetailProvider = OpportunityDetailFamily._();

final class OpportunityDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<OpportunityItem>,
          OpportunityItem,
          FutureOr<OpportunityItem>
        >
    with $FutureModifier<OpportunityItem>, $FutureProvider<OpportunityItem> {
  const OpportunityDetailProvider._({
    required OpportunityDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'opportunityDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$opportunityDetailHash();

  @override
  String toString() {
    return r'opportunityDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<OpportunityItem> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<OpportunityItem> create(Ref ref) {
    final argument = this.argument as String;
    return opportunityDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OpportunityDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$opportunityDetailHash() => r'bf387103da7a4d9e3de67a41dd82d959088fbe15';

final class OpportunityDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<OpportunityItem>, String> {
  const OpportunityDetailFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'opportunityDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OpportunityDetailProvider call(String id) =>
      OpportunityDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'opportunityDetailProvider';
}

@ProviderFor(opportunityActivities)
const opportunityActivitiesProvider = OpportunityActivitiesFamily._();

final class OpportunityActivitiesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FollowUpItem>>,
          List<FollowUpItem>,
          FutureOr<List<FollowUpItem>>
        >
    with
        $FutureModifier<List<FollowUpItem>>,
        $FutureProvider<List<FollowUpItem>> {
  const OpportunityActivitiesProvider._({
    required OpportunityActivitiesFamily super.from,
    required String super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'opportunityActivitiesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$opportunityActivitiesHash();

  @override
  String toString() {
    return r'opportunityActivitiesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<FollowUpItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FollowUpItem>> create(Ref ref) {
    final argument = this.argument as String;
    return opportunityActivities(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OpportunityActivitiesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$opportunityActivitiesHash() =>
    r'200e5a0f63d2e1a8923cedb8fa2c1a040f66b366';

final class OpportunityActivitiesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<FollowUpItem>>, String> {
  const OpportunityActivitiesFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'opportunityActivitiesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OpportunityActivitiesProvider call(String id) =>
      OpportunityActivitiesProvider._(argument: id, from: this);

  @override
  String toString() => r'opportunityActivitiesProvider';
}

@ProviderFor(opportunityProposals)
const opportunityProposalsProvider = OpportunityProposalsFamily._();

final class OpportunityProposalsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ProposalItem>>,
          List<ProposalItem>,
          FutureOr<List<ProposalItem>>
        >
    with
        $FutureModifier<List<ProposalItem>>,
        $FutureProvider<List<ProposalItem>> {
  const OpportunityProposalsProvider._({
    required OpportunityProposalsFamily super.from,
    required String super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'opportunityProposalsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$opportunityProposalsHash();

  @override
  String toString() {
    return r'opportunityProposalsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<ProposalItem>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ProposalItem>> create(Ref ref) {
    final argument = this.argument as String;
    return opportunityProposals(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is OpportunityProposalsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$opportunityProposalsHash() =>
    r'71b5d7e0200a30f35a48e84e17cffbe25ee55579';

final class OpportunityProposalsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<ProposalItem>>, String> {
  const OpportunityProposalsFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'opportunityProposalsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OpportunityProposalsProvider call(String id) =>
      OpportunityProposalsProvider._(argument: id, from: this);

  @override
  String toString() => r'opportunityProposalsProvider';
}
