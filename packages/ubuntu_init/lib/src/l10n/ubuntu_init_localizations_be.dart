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
  String get welcomeStartTitle => 'Спрошчаны старт';

  @override
  String get welcomeStartSubtitle => 'Прасцейшы працэс наладжвання.';

  @override
  String get welcomeStoreTitle => 'Новы выгляд App Store';

  @override
  String get welcomeStoreSubtitle => 'Ніколі не было так проста знайсці ваша ўлюблёнае праграмнае забеспячэнне.';

  @override
  String get welcomeSecurityTitle => 'Павышэнне бяспекі';

  @override
  String get welcomeSecuritySubtitle => 'Новыя параметры для апаратнага забеспячэння або шыфраванне ZFS.';

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
    return 'Дапамажыце нам палепшыць $distro абагульваючы свае сістэмныя даныя з намі. Гэта ўключае наступныя звесткі: мадэль камп\'ютара, месцазнаходжанне і часавы пояс.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Так, абагуліць сістэмныя даныя з камандай $distro';
  }

  @override
  String get telemetryLabelOff => 'Не, не абагуляць сістэмныя даныя';

  @override
  String get telemetryReportLabel => 'Паказаць першую справаздачу';

  @override
  String get telemetryReportTitle => 'Падрабязнасці справаздачы';

  @override
  String get telemetryLegalLabel => 'Юрыдычныя папярэджанні';

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
    return 'Магічнае далучэнне з гэтым кодам на <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Далучыць гэтую прыладу';

  @override
  String get ubuntuProOrAddTokenManually => 'або дадайце токен уручную';

  @override
  String get ubuntuProTokenTextfieldHint => 'Токен';

  @override
  String get ubuntuProSubscriptionDescription => 'Атрымайце найбольш усёабдымную падпіску для бяспекі праграмнага забеспячэння з адкрытым зыходным кодам';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Заўсёды бясплатна для некамерцыйнага выкарыстання і бясплатны выпрабавальны перыяд на працягу 30 дзён для прадпрыемстваў. <a href=\"https://$url\">Даведацца больш</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Далучыць';

  @override
  String get ubuntuProTokenAttachError => 'Памылковы токен';

  @override
  String get ubuntuProTokenAttachSucess => 'Сапраўдны токен';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Памылковы токен, паўтарыць';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Пакуль прапусціць';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Вы заўсёды зможаце ўключыць Ubuntu Pro пазней праз праграму «Праграмнае забеспячэнне і абнаўленні».';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Уключыць Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Далучыць гэты камп\'ютар да падпіскі Ubuntu Pro, якая забяспечвае абнаўленні бяспекі і шырокі дыяпазон пакетаў. Падпіска дзейнічае да 2032 года.';

  @override
  String get ubuntuProSucessAttachHeader => 'Цяпер гэты камп\'ютар уключае падпіску Ubuntu Pro';

  @override
  String get ubuntuProSucessAttachDescription => 'Вы заўсёды можаце кіраваць сваімі службамі Ubuntu Pro у праграме «Праграмнае забеспячэнне і абнаўленні».';
}
