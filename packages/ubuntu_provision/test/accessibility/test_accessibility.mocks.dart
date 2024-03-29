// Mocks generated by Mockito 5.4.4 from annotations
// in ubuntu_provision/test/accessibility/test_accessibility.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;
import 'dart:collection' as _i2;
import 'dart:ui' as _i5;

import 'package:mockito/mockito.dart' as _i1;
import 'package:ubuntu_provision/ubuntu_provision.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeUnmodifiableListView_0<E> extends _i1.SmartFake
    implements _i2.UnmodifiableListView<E> {
  _FakeUnmodifiableListView_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AccessibilityModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockAccessibilityModel extends _i1.Mock
    implements _i3.AccessibilityModel {
  MockAccessibilityModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.UnmodifiableListView<_i3.AccessibilityOption> get activeOptions =>
      (super.noSuchMethod(
        Invocation.getter(#activeOptions),
        returnValue: _FakeUnmodifiableListView_0<_i3.AccessibilityOption>(
          this,
          Invocation.getter(#activeOptions),
        ),
      ) as _i2.UnmodifiableListView<_i3.AccessibilityOption>);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  bool get isDisposed => (super.noSuchMethod(
        Invocation.getter(#isDisposed),
        returnValue: false,
      ) as bool);

  @override
  _i4.Future<bool> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);

  @override
  void toggleOption(_i3.AccessibilityOption? option) => super.noSuchMethod(
        Invocation.method(
          #toggleOption,
          [option],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(_i5.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i5.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setProperties(_i4.Stream<List<String>>? properties) =>
      super.noSuchMethod(
        Invocation.method(
          #setProperties,
          [properties],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addPropertyListener(
    String? property,
    _i5.VoidCallback? onChanged,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #addPropertyListener,
          [
            property,
            onChanged,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void enablePropertyListeners() => super.noSuchMethod(
        Invocation.method(
          #enablePropertyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void disablePropertyListeners() => super.noSuchMethod(
        Invocation.method(
          #disablePropertyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
