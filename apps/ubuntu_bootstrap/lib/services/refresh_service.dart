// ignore_for_file: avoid_catches_without_on_clauses
// TODO: check if catching `Exception` in check() and refresh() is sufficient

import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

part 'refresh_service.freezed.dart';

final _log = Logger('refresh');

@freezed
sealed class RefreshState with _$RefreshState {
  const RefreshState._();
  const factory RefreshState.checking() = RefreshStateChecking;
  const factory RefreshState.status(RefreshStatus status) = RefreshStateStatus;
  const factory RefreshState.progress(Change change) = RefreshStateProgress;
  const factory RefreshState.done() = RefreshStateDone;
  const factory RefreshState.error([Object? error]) = RefreshStateError;

  bool get available => switch (this) {
        RefreshStateStatus(:final status) =>
          status.availability == RefreshCheckState.AVAILABLE,
        _ => false,
      };
  bool get busy => switch (this) {
        RefreshStateProgress(:final change) => !change.ready,
        _ => false,
      };
  bool get ready => switch (this) {
        RefreshStateProgress(:final change) => change.ready,
        RefreshStateDone() => true,
        _ => false,
      };
}

class RefreshService {
  RefreshService(this._client);

  final SubiquityClient _client;

  var _state = const RefreshState.checking();
  final _controller = StreamController<RefreshState>.broadcast();

  RefreshState get state => _state;
  Stream<RefreshState> get stateChanged => _controller.stream;

  Future<String>? _refreshId;

  void _setState(RefreshState state) {
    if (_state == state) return;
    _log.debug(state);
    _state = state;
    _controller.add(state);
  }

  void _setStatus(RefreshStatus status) {
    _setState(RefreshState.status(status));
  }

  void _setProgress(Change change) {
    _setState(RefreshState.progress(change));
  }

  Future<RefreshState> check() async {
    try {
      _setState(const RefreshState.checking());
      _setStatus(await _client.checkRefresh());
    } catch (e) {
      _setState(RefreshState.error(e));
    }
    return _state;
  }

  Future<void> refresh() async {
    if (_refreshId != null) return;
    _refreshId = _client.startRefresh();
    await Future.doWhile(() async {
      try {
        _setProgress(await _client.getRefreshProgress(await _refreshId!));
        if (_state.ready) {
          _setState(const RefreshState.done());
        }
      } catch (_) {
        // subiquity restarted, consider the refresh done
        _setState(const RefreshState.done());
        return false;
      }
      await Future.delayed(const Duration(seconds: 1));
      return !_state.ready;
    });
    _refreshId = null;
  }

  Future<void> close() => _controller.close();
}
