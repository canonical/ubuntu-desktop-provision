import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_init/ubuntu_init.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_service/ubuntu_service.dart';
import 'package:ubuntu_utils/ubuntu_utils.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  tearDown(resetAllServices);

  test('register init services', () async {
    await registerInitServices([]);

    expect(tryGetService<ActiveDirectoryService>(), isNotNull);
    expect(tryGetService<ArgResults>(), isNotNull);
    expect(tryGetService<ConfigService>(), isNotNull);
    expect(tryGetService<GeoService>(), isNotNull);
    expect(tryGetService<IdentityService>(), isNotNull);
    expect(tryGetService<KeyboardService>(), isNotNull);
    expect(tryGetService<LocaleService>(), isNotNull);
    expect(tryGetService<NetworkService>(), isNotNull);
    expect(tryGetService<PrivacyService>(), isNotNull);
    expect(tryGetService<ProductService>(), isNotNull);
    expect(tryGetService<SessionService>(), isNotNull);
    expect(tryGetService<Sysmetrics>(), isNotNull);
    expect(tryGetService<TimezoneService>(), isNotNull);
    expect(tryGetService<UdevService>(), isNotNull);
    expect(tryGetService<UrlLauncher>(), isNotNull);
  });
}
