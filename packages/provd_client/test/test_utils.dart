import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:mockito/mockito.dart';

class MockResponseFuture<T> extends Mock implements ResponseFuture<T> {
  MockResponseFuture(this.value);

  final T value;

  @override
  Future<S> then<S>(FutureOr<S> Function(T) onValue, {Function? onError}) =>
      Future.value(value).then(
        onValue,
        onError: onError,
      );
}

class MockResponseStream<T> extends Mock implements ResponseStream<T> {
  MockResponseStream(this.stream);

  final Stream<T> stream;

  @override
  Stream<T> asBroadcastStream({
    void Function(StreamSubscription<T> subscription)? onListen,
    void Function(StreamSubscription<T> subscription)? onCancel,
  }) {
    return stream.asBroadcastStream(onListen: onListen, onCancel: onCancel);
  }

  @override
  StreamSubscription<T> listen(
    void Function(T value)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return stream.listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }

  @override
  bool get isBroadcast => stream.isBroadcast;
}
