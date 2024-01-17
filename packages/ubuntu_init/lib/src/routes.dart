sealed class Routes {
  static Map<String, String> routeMap = {
    'initial': '/',
    'welcome': '/welcome',
    'locale': '/locale',
    'keyboard': '/keyboard',
    'network': '/network',
    'identity': '/identity',
    'ubuntuPro': '/ubuntuPro',
    'privacy': '/privacy',
    'timezone': '/timezone',
    'telemetry': '/telemetry',
  };

  static String get initial => routeMap['initial']!;
  static String get welcome => routeMap['welcome']!;
  static String get locale => routeMap['locale']!;
  static String get keyboard => routeMap['keyboard']!;
  static String get network => routeMap['network']!;
  static String get identity => routeMap['identity']!;
  static String get ubuntuPro => routeMap['ubuntuPro']!;
  static String get privacy => routeMap['privacy']!;
  static String get timezone => routeMap['timezone']!;
  static String get telemetry => routeMap['telemetry']!;
}
