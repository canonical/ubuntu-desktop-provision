import 'package:flutter_test/flutter_test.dart';
import 'package:ubuntu_provision/ubuntu_provision.dart';
import 'package:ubuntu_provision_test/ubuntu_provision_test.dart';
import 'package:ubuntu_service/ubuntu_service.dart';

Future<void> expectLocale(String locale) async {
  return expectLater(
    await getService<LocaleService>().getLocale(),
    locale,
  );
}

Future<void> expectKeyboard(KeyboardSetting keyboard) async {
  return expectLater(
    await getService<KeyboardService>().getKeyboard(),
    isA<KeyboardSetup>().having((k) => k.setting, 'setting', keyboard),
  );
}

Future<void> expectTimezone(String timezone) async {
  return expectLater(
    await getService<TimezoneService>().getTimezone(),
    timezone,
  );
}

void expectIdentity(Identity identity) {
  return expect(
    getService<FakeSystemService>().identity,
    isA<Identity>()
        .having((id) => id.realname, 'realname', identity.realname)
        .having((id) => id.username, 'username', identity.username)
        .having((id) => id.hostname, 'hostname', identity.hostname)
        .having((id) => id.autoLogin, 'autoLogin', identity.autoLogin),
  );
}
