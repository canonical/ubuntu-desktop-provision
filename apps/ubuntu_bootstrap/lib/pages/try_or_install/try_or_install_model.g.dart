// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'try_or_install_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Implements the business logic of the try_or_install page.
///
/// The state is the currently selected option.

@ProviderFor(TryOrInstallModel)
final tryOrInstallModelProvider = TryOrInstallModelProvider._();

/// Implements the business logic of the try_or_install page.
///
/// The state is the currently selected option.
final class TryOrInstallModelProvider
    extends $NotifierProvider<TryOrInstallModel, TryOrInstallOption> {
  /// Implements the business logic of the try_or_install page.
  ///
  /// The state is the currently selected option.
  TryOrInstallModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'tryOrInstallModelProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$tryOrInstallModelHash();

  @$internal
  @override
  TryOrInstallModel create() => TryOrInstallModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TryOrInstallOption value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TryOrInstallOption>(value),
    );
  }
}

String _$tryOrInstallModelHash() => r'44be9f554ba4599dc8e95e77965f0e263f2e7612';

/// Implements the business logic of the try_or_install page.
///
/// The state is the currently selected option.

abstract class _$TryOrInstallModel extends $Notifier<TryOrInstallOption> {
  TryOrInstallOption build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<TryOrInstallOption, TryOrInstallOption>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<TryOrInstallOption, TryOrInstallOption>,
        TryOrInstallOption,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
