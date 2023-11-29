import 'package:args/args.dart';
import 'package:gsettings/gsettings.dart';
import 'package:sysmetrics/sysmetrics.dart';
import 'package:timezone_map/timezone_map.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

import 'services/privacy_service.dart';
import 'services/realmd_active_directory_service.dart';
import 'services/xdg_identity_service.dart';
import 'services/xdg_keyboard_service.dart';
import 'services/xdg_locale_service.dart';
import 'services/xdg_session_service.dart';
import 'services/xdg_timezone_service.dart';

export 'package:args/args.dart' show ArgResults;
export 'package:sysmetrics/sysmetrics.dart' show Sysmetrics;
export 'package:timezone_map/timezone_map.dart' show GeoService;
export 'services/privacy_service.dart';
export 'services/realmd_active_directory_service.dart';
export 'services/xdg_identity_service.dart';
export 'services/xdg_keyboard_service.dart';
export 'services/xdg_locale_service.dart';
export 'services/xdg_session_service.dart';
export 'services/xdg_timezone_service.dart';

Future<void> registerInitServices(List<String> args) {
  var options = tryGetService<ArgResults>();
  if (options == null) {
    options = parseCommandLine(args, onPopulateOptions: (parser) {
      parser.addOption('config', valueHelp: 'path', help: 'Config file path');
      parser.addOption('pages', hide: true);
    })!;
    registerServiceInstance<ArgResults>(options);
  }

  tryRegisterService<ActiveDirectoryService>(RealmdActiveDirectoryService.new);
  tryRegisterService<ConfigService>(
      () => ConfigService(scope: 'init', path: options!['config'] as String?));
  tryRegisterServiceFactory<GSettings, String>((schema) => GSettings(schema));
  tryRegisterService<IdentityService>(XdgIdentityService.new);
  tryRegisterService<KeyboardService>(XdgKeyboardService.new);
  tryRegisterService<LocaleService>(XdgLocaleService.new);
  tryRegisterService<NetworkService>(NetworkService.new);
  tryRegisterService<PrivacyService>(GnomePrivacyService.new);
  tryRegisterService<ProductService>(ProductService.new);
  tryRegisterService<SessionService>(XdgSessionService.new);
  tryRegisterService<Sysmetrics>(Sysmetrics.new);
  tryRegisterService<ThemeService>(GtkThemeService.new);
  tryRegisterService<TimezoneService>(XdgTimezoneService.new);
  tryRegisterService<UdevService>(UdevService.new);
  tryRegisterService(UrlLauncher.new);

  var geo = tryGetService<GeoService>();
  if (geo == null) {
    final geodata = Geodata.asset();
    final geoname = Geoname.ubuntu(geodata: geodata);
    geo = GeoService(sources: [geodata, geoname]);
    registerServiceInstance(geo);
  }
  return geo.init();
}
