import 'dart:io';

import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('sound_service');

/// A service for playing sounds.
class SoundService {
  Future<void> play(String id) async {
    try {
      final result = await Process.run(
        'canberra-gtk-play',
        ['--id=$id'],
        environment: {'LD_LIBRARY_PATH': ''},
      );
      if (result.exitCode != 0) {
        _log.error(
          'Error playing sound with id: $id: process exited with ${result.exitCode}. stdout: ${result.stdout}, stderr: ${result.stderr}',
        );
      }
    } on ProcessException catch (_) {
      _log.error(
        'Error playing sound with id: $id (most likely missing canberra-gtk-play)',
      );
    }
  }
}
