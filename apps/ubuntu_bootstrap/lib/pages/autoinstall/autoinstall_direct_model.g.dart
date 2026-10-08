// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autoinstall_direct_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AutoinstallDirectModel)
final autoinstallDirectModelProvider = AutoinstallDirectModelProvider._();

final class AutoinstallDirectModelProvider
    extends $NotifierProvider<AutoinstallDirectModel, AutoinstallDirectState> {
  AutoinstallDirectModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'autoinstallDirectModelProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$autoinstallDirectModelHash();

  @$internal
  @override
  AutoinstallDirectModel create() => AutoinstallDirectModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AutoinstallDirectState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AutoinstallDirectState>(value),
    );
  }
}

String _$autoinstallDirectModelHash() =>
    r'b81f54e71519032502468c1eacee7bb29b9edd8f';

abstract class _$AutoinstallDirectModel
    extends $Notifier<AutoinstallDirectState> {
  AutoinstallDirectState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AutoinstallDirectState, AutoinstallDirectState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AutoinstallDirectState, AutoinstallDirectState>,
        AutoinstallDirectState,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
