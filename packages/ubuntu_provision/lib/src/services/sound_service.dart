import 'package:audioplayers/audioplayers.dart';
import 'package:ubuntu_logger/ubuntu_logger.dart';

final _log = Logger('sounds_service');

enum SoundId {
  systemReady('system-ready.oga');

  const SoundId(this.filename);

  final String filename;
}

class SoundService {
  Future<void> load() {
    _log.info('Loading sound assets');
    // TODO(Lukas): Add support for loading sounds defined in the whitelabel config
    AudioCache.instance =
        AudioCache(prefix: 'packages/ubuntu_provision/assets/sounds/');
    return AudioCache.instance.loadAll([
      'system-ready.oga',
    ]);
  }

  Future<void> play(SoundId id) async {
    _log.info('Playing sound ${id.filename}');
    await AudioPlayer().play(AssetSource(id.filename));
  }
}
