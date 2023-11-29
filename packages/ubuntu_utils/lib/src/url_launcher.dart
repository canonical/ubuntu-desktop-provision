import 'package:ubuntu_logger/ubuntu_logger.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:url_launcher/url_launcher_string.dart';

final _log = Logger('url_launcher');

Future<bool> launchUrl(String url) {
  return getService<UrlLauncher>().launchUrl(url);
}

class UrlLauncher {
  Future<bool> canLaunchUrl(String url) => canLaunchUrlString(url);

  Future<bool> launchUrl(String url) async {
    if (!await canLaunchUrl(url)) {
      _log.error('Unable to launch $url');
      return false;
    }
    _log.debug('Launching $url');
    return launchUrlString(url);
  }
}
