// ignore_for_file: close_sinks

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_utils/src/property_stream_notifier.dart';

void main() {
  test('listeners', () {
    final notifier = TestPropertyStreamNotifier();

    var wasCanceled = false;
    var wasListened = false;

    final controller = StreamController<List<String>>(
      sync: true,
      onListen: () => wasListened = true,
      onCancel: () => wasCanceled = true,
    );

    notifier.setProperties(controller.stream);
    expect(wasListened, isTrue);

    var foo = 0;
    var bar = 0;
    var baz = 0;
    notifier.addPropertyListener('foo', () => ++foo);
    notifier.addPropertyListener('bar', () => ++bar);
    notifier.addPropertyListener('baz', () => ++baz);

    controller.add(['qux']);
    expect(foo, isZero);
    expect(bar, isZero);
    expect(baz, isZero);

    controller.add(['bar']);
    expect(foo, isZero);
    expect(bar, equals(1));
    expect(baz, isZero);

    controller.add(['bar', 'foo']);
    expect(foo, equals(1));
    expect(bar, equals(2));
    expect(baz, isZero);

    notifier.dispose();
    expect(wasCanceled, isTrue);

    controller.close();
  });

  test('enable and disable listeners', () {
    final notifier = TestPropertyStreamNotifier();
    final controller = StreamController<List<String>>(sync: true);
    notifier.setProperties(controller.stream);

    var foo = 0;
    var bar = 0;
    notifier.addPropertyListener('foo', () => ++foo);
    notifier.addPropertyListener('bar', () => ++bar);

    notifier.disablePropertyListeners();
    controller.add(['foo']);
    expect(foo, isZero);
    controller.add(['bar']);
    expect(bar, isZero);

    notifier.enablePropertyListeners();
    controller.add(['foo']);
    expect(foo, equals(1));
    controller.add(['bar']);
    expect(bar, equals(1));
  });

  test('streams from different sources do not replace each other', () {
    final notifier = TestPropertyStreamNotifier();
    final first = StreamController<List<String>>(sync: true);
    final second = StreamController<List<String>>(sync: true);
    notifier.setPropertiesFor('first', first.stream);
    notifier.setPropertiesFor('second', second.stream);

    var foo = 0;
    var bar = 0;
    notifier.addPropertyListener('foo', () => ++foo);
    notifier.addPropertyListener('bar', () => ++bar);

    first.add(['foo']);
    second.add(['bar']);
    expect(foo, equals(1));
    expect(bar, equals(1));

    notifier.dispose();
  });

  test('a source replaces only its own previous stream', () {
    final notifier = TestPropertyStreamNotifier();

    var firstCanceled = false;
    final first = StreamController<List<String>>(
      sync: true,
      onCancel: () => firstCanceled = true,
    );
    final second = StreamController<List<String>>(sync: true);
    final replacement = StreamController<List<String>>(sync: true);
    notifier.setPropertiesFor('first', first.stream);
    notifier.setPropertiesFor('second', second.stream);

    var foo = 0;
    notifier.addPropertyListener('foo', () => ++foo);

    notifier.setPropertiesFor('first', replacement.stream);
    expect(firstCanceled, isTrue);

    replacement.add(['foo']);
    second.add(['foo']);
    expect(foo, equals(2));

    notifier.dispose();
  });

  test('dispose cancels all sources', () {
    final notifier = TestPropertyStreamNotifier();

    var canceled = 0;
    final first = StreamController<List<String>>(
      sync: true,
      onCancel: () => ++canceled,
    );
    final second = StreamController<List<String>>(
      sync: true,
      onCancel: () => ++canceled,
    );
    notifier.setPropertiesFor('first', first.stream);
    notifier.setPropertiesFor('second', second.stream);

    notifier.dispose();
    expect(canceled, equals(2));
  });
}

class TestPropertyStreamNotifier extends ChangeNotifier
    with PropertyStreamNotifier {}
