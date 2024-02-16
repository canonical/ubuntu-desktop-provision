import 'dart:io';

import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('sound_service');

/// A service for playing sounds.
class SoundService {
  Future<void> play(String id) async {
    try {
      await Process.run('canberra-gtk-play', ['--id=$id']);
    } on ProcessException catch (e) {
      _log.error(
        'Error playing sound with id: $id (most likely missing canberra-gtk-play)',
      );
    }
  }
}
