import 'package:args/args.dart';
import 'package:gsettings/gsettings.dart';
import 'package:sysmetrics/sysmetrics.dart';
import 'package:timezone_map/timezone_map.dart';
import 'package:ubuntu_init/src/services/gdm_service.dart';
import 'package:ubuntu_init/src/services/provd_identity_service.dart';
import 'package:ubuntu_init/src/services/provd_keyboard_service.dart';
import 'package:ubuntu_init/src/services/provd_locale_service.dart';
import 'package:ubuntu_init/src/services/provd_privacy_service.dart';
import 'package:ubuntu_init/src/services/provd_timezone_service.dart';
import 'package:ubuntu_init/src/services/realmd_active_directory_service.dart';
import 'package:ubuntu_init/src/services/xdg_session_service.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

export 'package:args/args.dart' show ArgResults;
export 'package:sysmetrics/sysmetrics.dart' show Sysmetrics;
export 'package:timezone_map/timezone_map.dart' show GeoService;

export 'services/gdm_service.dart';
export 'services/provd_identity_service.dart';
export 'services/provd_keyboard_service.dart';
export 'services/provd_locale_service.dart';
export 'services/provd_privacy_service.dart';
export 'services/provd_timezone_service.dart';
export 'services/realmd_active_directory_service.dart';
export 'services/xdg_session_service.dart';

Future<void> registerInitServices(List<String> args) {
  var options = tryGetService<ArgResults>();
  if (options == null) {
    options = parseCommandLine(args, onPopulateOptions: (parser) {
      parser.addFlag(
        'welcome',
        help: 'Show welcome wizard',
      );
    });
    registerServiceInstance<ArgResults>(options!);
  }

  tryRegisterService<ActiveDirectoryService>(RealmdActiveDirectoryService.new);
  tryRegisterService<ConfigService>(ConfigService.new);
  tryRegisterService<GdmService>(GdmService.new);
  tryRegisterServiceFactory<GSettings, String>(GSettings.new);
  tryRegisterService<IdentityService>(ProvdIdentityService.new);
  tryRegisterService<KeyboardService>(ProvdKeyboardService.new);
  tryRegisterService<LocaleService>(ProvdLocaleService.new);
  tryRegisterService<NetworkService>(NetworkService.new);
  tryRegisterService<PageConfigService>(() => PageConfigService(
        config: tryGetService<ConfigService>(),
        includeTryOrInstall: true,
      ));
  tryRegisterService<PrivacyService>(ProvdPrivacyService.new);
  tryRegisterService<ProductService>(ProductService.new);
  tryRegisterService<SessionService>(XdgSessionService.new);
  tryRegisterService<Sysmetrics>(Sysmetrics.new);
  tryRegisterService<ThemeVariantService>(
      () => ThemeVariantService(config: tryGetService<ConfigService>()));
  tryRegisterService<TimezoneService>(ProvdTimezoneService.new);
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
