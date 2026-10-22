// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fichas_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(waterTemplatesReady)
const waterTemplatesReadyProvider = WaterTemplatesReadyProvider._();

final class WaterTemplatesReadyProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  const WaterTemplatesReadyProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'waterTemplatesReadyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$waterTemplatesReadyHash();

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    return waterTemplatesReady(ref);
  }
}

String _$waterTemplatesReadyHash() =>
    r'de617bee3deff44ea1ce566f29a6c8d0a0051ea8';

@ProviderFor(fichaSections)
const fichaSectionsProvider = FichaSectionsProvider._();

final class FichaSectionsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FichaSection>>,
          List<FichaSection>,
          FutureOr<List<FichaSection>>
        >
    with
        $FutureModifier<List<FichaSection>>,
        $FutureProvider<List<FichaSection>> {
  const FichaSectionsProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'fichaSectionsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fichaSectionsHash();

  @$internal
  @override
  $FutureProviderElement<List<FichaSection>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FichaSection>> create(Ref ref) {
    return fichaSections(ref);
  }
}

String _$fichaSectionsHash() => r'2e92b2e8b1bc9cccc82bc127cc6a8c4d4e00a266';

@ProviderFor(fichaFields)
const fichaFieldsProvider = FichaFieldsProvider._();

final class FichaFieldsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FichaField>>,
          List<FichaField>,
          FutureOr<List<FichaField>>
        >
    with $FutureModifier<List<FichaField>>, $FutureProvider<List<FichaField>> {
  const FichaFieldsProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'fichaFieldsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fichaFieldsHash();

  @$internal
  @override
  $FutureProviderElement<List<FichaField>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FichaField>> create(Ref ref) {
    return fichaFields(ref);
  }
}

String _$fichaFieldsHash() => r'4b8c3e95d1a63b4036007a9fa44afc9c07caadc4';

@ProviderFor(fichaFieldsForSection)
const fichaFieldsForSectionProvider = FichaFieldsForSectionFamily._();

final class FichaFieldsForSectionProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FichaField>>,
          List<FichaField>,
          FutureOr<List<FichaField>>
        >
    with $FutureModifier<List<FichaField>>, $FutureProvider<List<FichaField>> {
  const FichaFieldsForSectionProvider._({
    required FichaFieldsForSectionFamily super.from,
    required String super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'fichaFieldsForSectionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fichaFieldsForSectionHash();

  @override
  String toString() {
    return r'fichaFieldsForSectionProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<FichaField>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FichaField>> create(Ref ref) {
    final argument = this.argument as String;
    return fichaFieldsForSection(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FichaFieldsForSectionProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fichaFieldsForSectionHash() =>
    r'602305ff25c0297cc445258cd64e6c42d0e0491e';

final class FichaFieldsForSectionFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<FichaField>>, String> {
  const FichaFieldsForSectionFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'fichaFieldsForSectionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FichaFieldsForSectionProvider call(String sectionId) =>
      FichaFieldsForSectionProvider._(argument: sectionId, from: this);

  @override
  String toString() => r'fichaFieldsForSectionProvider';
}

@ProviderFor(clientFichaValues)
const clientFichaValuesProvider = ClientFichaValuesFamily._();

final class ClientFichaValuesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<FichaValue>>,
          List<FichaValue>,
          FutureOr<List<FichaValue>>
        >
    with $FutureModifier<List<FichaValue>>, $FutureProvider<List<FichaValue>> {
  const ClientFichaValuesProvider._({
    required ClientFichaValuesFamily super.from,
    required String super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'clientFichaValuesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clientFichaValuesHash();

  @override
  String toString() {
    return r'clientFichaValuesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<FichaValue>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<FichaValue>> create(Ref ref) {
    final argument = this.argument as String;
    return clientFichaValues(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ClientFichaValuesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clientFichaValuesHash() => r'd1d1b245873d667a434b1d7cdd6db6d54543aaba';

final class ClientFichaValuesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<FichaValue>>, String> {
  const ClientFichaValuesFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'clientFichaValuesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClientFichaValuesProvider call(String clientId) =>
      ClientFichaValuesProvider._(argument: clientId, from: this);

  @override
  String toString() => r'clientFichaValuesProvider';
}

@ProviderFor(levantamientoTemplates)
const levantamientoTemplatesProvider = LevantamientoTemplatesProvider._();

final class LevantamientoTemplatesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LevantamientoTemplate>>,
          List<LevantamientoTemplate>,
          FutureOr<List<LevantamientoTemplate>>
        >
    with
        $FutureModifier<List<LevantamientoTemplate>>,
        $FutureProvider<List<LevantamientoTemplate>> {
  const LevantamientoTemplatesProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'levantamientoTemplatesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$levantamientoTemplatesHash();

  @$internal
  @override
  $FutureProviderElement<List<LevantamientoTemplate>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LevantamientoTemplate>> create(Ref ref) {
    return levantamientoTemplates(ref);
  }
}

String _$levantamientoTemplatesHash() =>
    r'0e51637caac6160c7f64d45b134fda9709c6729d';

@ProviderFor(levantamientos)
const levantamientosProvider = LevantamientosProvider._();

final class LevantamientosProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Levantamiento>>,
          List<Levantamiento>,
          FutureOr<List<Levantamiento>>
        >
    with
        $FutureModifier<List<Levantamiento>>,
        $FutureProvider<List<Levantamiento>> {
  const LevantamientosProvider._()
    : super(
        from: null,
        argument: null,
        retry: nereusNoRetry,
        name: r'levantamientosProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$levantamientosHash();

  @$internal
  @override
  $FutureProviderElement<List<Levantamiento>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Levantamiento>> create(Ref ref) {
    return levantamientos(ref);
  }
}

String _$levantamientosHash() => r'5df0959c38685ef90c44d5716730034662d9659f';

@ProviderFor(levantamientoDetail)
const levantamientoDetailProvider = LevantamientoDetailFamily._();

final class LevantamientoDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<Levantamiento>,
          Levantamiento,
          FutureOr<Levantamiento>
        >
    with $FutureModifier<Levantamiento>, $FutureProvider<Levantamiento> {
  const LevantamientoDetailProvider._({
    required LevantamientoDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'levantamientoDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$levantamientoDetailHash();

  @override
  String toString() {
    return r'levantamientoDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Levantamiento> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Levantamiento> create(Ref ref) {
    final argument = this.argument as String;
    return levantamientoDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is LevantamientoDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$levantamientoDetailHash() =>
    r'a253905be841ac0083da19b1e81f5e2d81292403';

final class LevantamientoDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Levantamiento>, String> {
  const LevantamientoDetailFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'levantamientoDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  LevantamientoDetailProvider call(String id) =>
      LevantamientoDetailProvider._(argument: id, from: this);

  @override
  String toString() => r'levantamientoDetailProvider';
}

@ProviderFor(clientLevantamientoRespuestas)
const clientLevantamientoRespuestasProvider =
    ClientLevantamientoRespuestasFamily._();

final class ClientLevantamientoRespuestasProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<LevantamientoRespuesta>>,
          List<LevantamientoRespuesta>,
          FutureOr<List<LevantamientoRespuesta>>
        >
    with
        $FutureModifier<List<LevantamientoRespuesta>>,
        $FutureProvider<List<LevantamientoRespuesta>> {
  const ClientLevantamientoRespuestasProvider._({
    required ClientLevantamientoRespuestasFamily super.from,
    required String super.argument,
  }) : super(
         retry: nereusNoRetry,
         name: r'clientLevantamientoRespuestasProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clientLevantamientoRespuestasHash();

  @override
  String toString() {
    return r'clientLevantamientoRespuestasProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<LevantamientoRespuesta>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<LevantamientoRespuesta>> create(Ref ref) {
    final argument = this.argument as String;
    return clientLevantamientoRespuestas(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is ClientLevantamientoRespuestasProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clientLevantamientoRespuestasHash() =>
    r'99e6a7c24e3eb389eb283777b75e3f42938304b1';

final class ClientLevantamientoRespuestasFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<LevantamientoRespuesta>>,
          String
        > {
  const ClientLevantamientoRespuestasFamily._()
    : super(
        retry: nereusNoRetry,
        name: r'clientLevantamientoRespuestasProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClientLevantamientoRespuestasProvider call(String clientId) =>
      ClientLevantamientoRespuestasProvider._(argument: clientId, from: this);

  @override
  String toString() => r'clientLevantamientoRespuestasProvider';
}
