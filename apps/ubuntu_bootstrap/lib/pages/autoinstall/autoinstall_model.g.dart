// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autoinstall_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AutoinstallModel)
final autoinstallModelProvider = AutoinstallModelProvider._();

final class AutoinstallModelProvider
    extends $NotifierProvider<AutoinstallModel, AutoinstallState> {
  AutoinstallModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'autoinstallModelProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$autoinstallModelHash();

  @$internal
  @override
  AutoinstallModel create() => AutoinstallModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AutoinstallState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AutoinstallState>(value),
    );
  }
}

String _$autoinstallModelHash() => r'18be7ca8bf7fc9a58837489afb350111546e3a5d';

abstract class _$AutoinstallModel extends $Notifier<AutoinstallState> {
  AutoinstallState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AutoinstallState, AutoinstallState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AutoinstallState, AutoinstallState>,
        AutoinstallState,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
