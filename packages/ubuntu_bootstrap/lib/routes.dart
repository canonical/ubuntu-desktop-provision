sealed class Routes {
  static Map<String, String> routeMap = {
    'initial': '/loading',
    'loading': '/loading',
    'locale': '/locale',
    'accessibility': '/accessibility',
    'welcome': '/welcome',
    'rst': '/rst',
    'keyboard': '/keyboard',
    'network': '/network',
    'secureBoot': '/secure-boot',
    'source': '/source',
    'confirm': '/confirm',
    'theme': '/theme',
    'identity': '/identity',
    'install': '/install',
    'timezone': '/timezone',
    'notEnoughDiskSpace': '/not-enough-disk-space',
    'activeDirectory': '/active-directory',
    'storage': '/storage',
    'refresh': '/refresh',
  };

  static String get initial => loading;
  static String get loading => routeMap['loading']!;
  static String get locale => routeMap['locale']!;
  static String get welcome => routeMap['welcome']!;
  static String get rst => routeMap['rst']!;
  static String get keyboard => routeMap['keyboard']!;
  static String get network => routeMap['network']!;
  static String get secureBoot => routeMap['secureBoot']!;
  static String get source => routeMap['source']!;
  static String get confirm => routeMap['confirm']!;
  static String get theme => routeMap['theme']!;
  static String get identity => routeMap['identity']!;
  static String get install => routeMap['install']!;
  static String get timezone => routeMap['timezone']!;
  static String get notEnoughDiskSpace => routeMap['notEnoughDiskSpace']!;
  static String get activeDirectory => routeMap['activeDirectory']!;
  static String get storage => routeMap['storage']!;
  static String get refresh => routeMap['refresh']!;
}
