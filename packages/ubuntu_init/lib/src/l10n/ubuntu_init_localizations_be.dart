import 'ubuntu_init_localizations.dart';

/// The translations for Belarusian (`be`).
class UbuntuInitLocalizationsBe extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get welcomePageTitle => 'Вітаем';

  @override
  String welcomePageHeader(Object distro) {
    return 'Вітаем у $distro';
  }

  @override
  String get welcomeWhatsNew => 'ШТО НОВАГА?';

  @override
  String get welcomeStartTitle => 'A streamlined start';

  @override
  String get welcomeStartSubtitle => 'Supporting a cleaner setup experience.';

  @override
  String get welcomeStoreTitle => 'Новы выгляд App Store';

  @override
  String get welcomeStoreSubtitle => 'Ніколі не было так проста знайсці ваша ўлюблёнае праграмнае забеспячэнне.';

  @override
  String get welcomeSecurityTitle => 'Павышэнне бяспекі';

  @override
  String get welcomeSecuritySubtitle => 'New options for hardware-backed or ZFS encryption.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Гісторыя змен</a>';
  }

  @override
  String get telemetryPageTitle => 'Тэлеметрыя';

  @override
  String telemetryHeader(Object distro) {
    return 'Дапамажыце палепшыць $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Help us improve $distro by sharing your system data with us. This includes things like your machine model, installed software and the location you chose for your timezone.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Так, абагуліць сістэмныя даныя з камандай $distro';
  }

  @override
  String get telemetryLabelOff => 'Не, не абагуліць сістэмныя даныя';

  @override
  String get telemetryReportLabel => 'Show the first report';

  @override
  String get telemetryReportTitle => 'Падрабязнасці справаздачы';

  @override
  String get telemetryLegalLabel => 'Legal notice';

  @override
  String get privacyPageTitle => 'Службы месцазнаходжання';

  @override
  String get privacyLocationTitle => 'Уключыць службы месцазнаходжання?';

  @override
  String get privacyLocationSubtitle => 'Даць магчымасць праграмам ведаць ваша геаграфічнае месцазнаходжанне. Вы можаце змяніць гэта ў любы час у Наладах сістэмы.';

  @override
  String get privacyLocationEnable => 'Служба месцазнаходжання';

  @override
  String get privacyPolicyLink => 'Прыватнасць даных';

  @override
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Attach this machine';

  @override
  String get ubuntuProOrAddTokenManually => 'or add a token manually';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Always free for personal use. 30-days trial for enterprises. <a href=\"https://$url\">Learn more</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Attach';

  @override
  String get ubuntuProTokenAttachError => 'Invalid token';

  @override
  String get ubuntuProTokenAttachSucess => 'Valid token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Invalid token, retry';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Skip for now';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Enable Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro is now enabled in this machine';

  @override
  String get ubuntuProSucessAttachDescription => 'You can manage your Pro services in the Software & Updates application.';
}
