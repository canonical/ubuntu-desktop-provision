// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'done_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DoneModel)
final doneModelProvider = DoneModelProvider._();

final class DoneModelProvider
    extends $AsyncNotifierProvider<DoneModel, DoneState> {
  DoneModelProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'doneModelProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$doneModelHash();

  @$internal
  @override
  DoneModel create() => DoneModel();
}

String _$doneModelHash() => r'65d76254a5cd43502699e1b07227cd906a8ca866';

abstract class _$DoneModel extends $AsyncNotifier<DoneState> {
  FutureOr<DoneState> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<DoneState>, DoneState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<DoneState>, DoneState>,
        AsyncValue<DoneState>,
        Object?,
        Object?>;
    return element.handleCreate(ref, build);
  }
}
