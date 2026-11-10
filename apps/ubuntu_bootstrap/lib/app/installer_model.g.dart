// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installer_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(applicationStatus)
final applicationStatusProvider = ApplicationStatusProvider._();

final class ApplicationStatusProvider extends $FunctionalProvider<
        AsyncValue<ApplicationStatus?>,
        ApplicationStatus?,
        Stream<ApplicationStatus?>>
    with
        $FutureModifier<ApplicationStatus?>,
        $StreamProvider<ApplicationStatus?> {
  ApplicationStatusProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'applicationStatusProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$applicationStatusHash();

  @$internal
  @override
  $StreamProviderElement<ApplicationStatus?> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<ApplicationStatus?> create(Ref ref) {
    return applicationStatus(ref);
  }
}

String _$applicationStatusHash() => r'2661f10ea4ddabe9cb6cc4f72608dae83221c0f7';

@ProviderFor(hasRoute)
final hasRouteProvider = HasRouteFamily._();

final class HasRouteProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  HasRouteProvider._(
      {required HasRouteFamily super.from, required String super.argument})
      : super(
          retry: null,
          name: r'hasRouteProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$hasRouteHash();

  @override
  String toString() {
    return r'hasRouteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    final argument = this.argument as String;
    return hasRoute(
      ref,
      argument,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is HasRouteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$hasRouteHash() => r'32bb8603a06b805aaa82d47b387e18f369223075';

final class HasRouteFamily extends $Family
    with $FunctionalFamilyOverride<bool, String> {
  HasRouteFamily._()
      : super(
          retry: null,
          name: r'hasRouteProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  HasRouteProvider call(
    String route,
  ) =>
      HasRouteProvider._(argument: route, from: this);

  @override
  String toString() => r'hasRouteProvider';
}
