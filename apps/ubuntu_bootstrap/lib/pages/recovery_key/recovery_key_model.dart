import 'dart:io';

import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:ubuntu_bootstrap/services/storage_service.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

part 'recovery_key_model.freezed.dart';

final _log = Logger('recovery_key_model');

final recoveryKeyModelProvider = ChangeNotifierProvider(
  (_) => RecoveryKeyModel(storage: getService<StorageService>()),
);

@freezed
sealed class RecoveryKeyException
    with _$RecoveryKeyException
    implements Exception {
  factory RecoveryKeyException.disallowedPath() =
      RecoveryKeyExceptionDisallowedPath;
  factory RecoveryKeyException.fileSystem() = RecoveryKeyExceptionFileSystem;
  factory RecoveryKeyException.unknown({required String rawError}) =
      RecoveryKeyExceptionUnknown;

  factory RecoveryKeyException.from(Object? e) => switch (e) {
        final FileSystemException _ => RecoveryKeyException.fileSystem(),
        final RecoveryKeyException e => e,
        final e => RecoveryKeyException.unknown(rawError: e.toString()),
      };
}

class RecoveryKeyModel extends SafeChangeNotifier {
  RecoveryKeyModel({
    required StorageService storage,
    @visibleForTesting FileSystem? fileSystem,
    @visibleForTesting
    Future<ProcessResult> Function(String, List<String>)? runProcess,
  })  : _storage = storage,
        _fs = fileSystem ?? LocalFileSystem(),
        _runProcess = runProcess ?? Process.run;

  final StorageService _storage;
  final FileSystem _fs;
  final Future<ProcessResult> Function(String, List<String>) _runProcess;

  var _confirmed = false;
  bool get confirmed => _confirmed;

  void setConfirmed(bool? confirmed) {
    if (confirmed == null || _confirmed == confirmed) {
      return;
    }
    _confirmed = confirmed;
    notifyListeners();
  }

  late final String _recoveryKey;
  String get recoveryKey => _recoveryKey;

  RecoveryKeyException? _error;
  RecoveryKeyException? get error => _error;
  void setError(RecoveryKeyException? error) {
    if (_error != error) {
      _error = error;
      _log.info('UI set error state: $error');
      notifyListeners();
    }
  }

  Future<bool> init() async {
    if (![
      GuidedCapability.CORE_BOOT_ENCRYPTED,
      GuidedCapability.CORE_BOOT_PREFER_ENCRYPTED,
    ].contains(_storage.guidedCapability)) {
      return false;
    }
    _recoveryKey = await _storage.getCoreBootRecoveryKey();
    return true;
  }

  Future<String?> _findFileSystem(Uri uri) async {
    final result = await _runProcess(
      'findmnt',
      ['-no', 'SOURCE', '-T', p.dirname(uri.path)],
    );
    if (result.exitCode != 0) {
      _log.error('error running findmnt: ${result.stdout} ${result.stderr}');
      return null;
    }

    return (result.stdout as String?)?.trim();
  }

  Future<void> writeRecoveryKey(Uri uri) async {
    if (uri.pathSegments.first == 'target' ||
        await _findFileSystem(uri) == '/cow') {
      throw RecoveryKeyException.disallowedPath();
    }
    await _fs.file(uri.path).writeAsString(_recoveryKey);
  }
}
