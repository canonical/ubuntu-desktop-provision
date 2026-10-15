// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autoinstall_landscape_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(watchResponse)
final watchResponseProvider = WatchResponseProvider._();

final class WatchResponseProvider extends $FunctionalProvider<
        AsyncValue<WatchAuthenticationResponse>,
        WatchAuthenticationResponse,
        Stream<WatchAuthenticationResponse>>
    with
        $FutureModifier<WatchAuthenticationResponse>,
        $StreamProvider<WatchAuthenticationResponse> {
  WatchResponseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'watchResponseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$watchResponseHash();

  @$internal
  @override
  $StreamProviderElement<WatchAuthenticationResponse> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<WatchAuthenticationResponse> create(Ref ref) {
    return watchResponse(ref);
  }
}

String _$watchResponseHash() => r'abaf92b711d72c40b1f6dede0fc0d0466fba978c';

@ProviderFor(LandscapeDataModel)
final landscapeDataModelProvider = LandscapeDataModelProvider._();

final class LandscapeDataModelProvider
    extends $NotifierProvider<LandscapeDataModel, LandscapeData> {
  LandscapeDataModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'landscapeDataModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$landscapeDataModelHash();

  @$internal
  @override
  LandscapeDataModel create() => LandscapeDataModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LandscapeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LandscapeData>(value),
    );
  }
}

String _$landscapeDataModelHash() =>
    r'05326e2df3f8ff5076f08b99b20203e3096d497c';

abstract class _$LandscapeDataModel extends $Notifier<LandscapeData> {
  LandscapeData build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<LandscapeData, LandscapeData>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<LandscapeData, LandscapeData>,
        LandscapeData,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
