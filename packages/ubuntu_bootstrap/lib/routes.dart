const Map<String, String> routes = {
  'initial': '/loading',
  'loading': '/loading',
  'locale': '/locale',
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

abstract class Routes {
  static String get initial => loading;
  static String get loading => routes['loading']!;
  static String get locale => routes['locale']!;
  static String get welcome => routes['welcome']!;
  static String get rst => routes['rst']!;
  static String get keyboard => routes['keyboard']!;
  static String get network => routes['network']!;
  static String get secureBoot => routes['secure-boot']!;
  static String get source => routes['source']!;
  static String get confirm => routes['confirm']!;
  static String get theme => routes['theme']!;
  static String get identity => routes['identity']!;
  static String get install => routes['install']!;
  static String get timezone => routes['timezone']!;
  static String get notEnoughDiskSpace => routes['not-enough-disk-space']!;
  static String get activeDirectory => routes['active-directory']!;
  static String get storage => routes['storage']!;
  static String get refresh => routes['refresh']!;
}
