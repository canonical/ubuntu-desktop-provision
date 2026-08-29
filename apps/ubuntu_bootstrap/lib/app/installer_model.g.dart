// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installer_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$applicationStatusHash() => r'2661f10ea4ddabe9cb6cc4f72608dae83221c0f7';

/// See also [applicationStatus].
@ProviderFor(applicationStatus)
final applicationStatusProvider =
    AutoDisposeStreamProvider<ApplicationStatus?>.internal(
  applicationStatus,
  name: r'applicationStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$applicationStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ApplicationStatusRef = AutoDisposeStreamProviderRef<ApplicationStatus?>;
String _$hasRouteHash() => r'32bb8603a06b805aaa82d47b387e18f369223075';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [hasRoute].
@ProviderFor(hasRoute)
const hasRouteProvider = HasRouteFamily();

/// See also [hasRoute].
class HasRouteFamily extends Family<bool> {
  /// See also [hasRoute].
  const HasRouteFamily();

  /// See also [hasRoute].
  HasRouteProvider call(
    String route,
  ) {
    return HasRouteProvider(
      route,
    );
  }

  @override
  HasRouteProvider getProviderOverride(
    covariant HasRouteProvider provider,
  ) {
    return call(
      provider.route,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'hasRouteProvider';
}

/// See also [hasRoute].
class HasRouteProvider extends AutoDisposeProvider<bool> {
  /// See also [hasRoute].
  HasRouteProvider(
    String route,
  ) : this._internal(
          (ref) => hasRoute(
            ref as HasRouteRef,
            route,
          ),
          from: hasRouteProvider,
          name: r'hasRouteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$hasRouteHash,
          dependencies: HasRouteFamily._dependencies,
          allTransitiveDependencies: HasRouteFamily._allTransitiveDependencies,
          route: route,
        );

  HasRouteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.route,
  }) : super.internal();

  final String route;

  @override
  Override overrideWith(
    bool Function(HasRouteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HasRouteProvider._internal(
        (ref) => create(ref as HasRouteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        route: route,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<bool> createElement() {
    return _HasRouteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HasRouteProvider && other.route == route;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, route.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HasRouteRef on AutoDisposeProviderRef<bool> {
  /// The parameter `route` of this provider.
  String get route;
}

class _HasRouteProviderElement extends AutoDisposeProviderElement<bool>
    with HasRouteRef {
  _HasRouteProviderElement(super.provider);

  @override
  String get route => (origin as HasRouteProvider).route;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
