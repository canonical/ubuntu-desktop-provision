// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class UbuntuInitLocalizationsBe extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get welcomePageTitle => 'Вітаем';

  @override
  String welcomePageHeader(String distro) {
    return 'Вітаем у $distro';
  }

  @override
  String get welcomeWhatsNew => 'ШТО НОВАГА?';

  @override
  String get welcomeStartTitle => 'Спрошчаны пачатак';

  @override
  String get welcomeStartSubtitle => 'Падтрымка працэсу спрошчанага наладжвання.';

  @override
  String get welcomeStoreTitle => 'Новы выгляд App Store';

  @override
  String get welcomeStoreSubtitle => 'Ніколі не было так проста знайсці ваша ўлюблёнае праграмнае забеспячэнне.';

  @override
  String get welcomeSecurityTitle => 'Павышэнне бяспекі';

  @override
  String get welcomeSecuritySubtitle => 'Новыя параметры для апаратнага забеспячэння або шыфравання ZFS.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Паглядзець журнал змен</a>';
  }

  @override
  String get telemetryPageTitle => 'Тэлеметрыя';

  @override
  String telemetryHeader(String distro) {
    return 'Дапамажыце палепшыць $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Дапамажыце нам палепшыць $distro абагульваючы свае сістэмныя даныя з намі. Гэта ўключае наступныя звесткі: мадэль камп\'ютара, месцазнаходжанне і часавы пояс.';
  }

  @override
  String telemetryLabelOn(String distro) {
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
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => 'Службы месцазнаходжання';

  @override
  String get privacyLocationTitle => 'Уключыць службы месцазнаходжання?';

  @override
  String get privacyLocationSubtitle => 'Дазволіць праграмам атрымліваць доступ да вашага геаграфічнае месцазнаходжанне. Вы ў любы час можаце змяніць гэта праз сістэмныя налады.';

  @override
  String get privacyLocationEnable => 'Служба месцазнаходжання';

  @override
  String get privacyPolicyLink => 'Прыватнасць даных';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Магічнае далучэнне з гэтым кодам на <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Далучыць гэты камп\'ютар';

  @override
  String get ubuntuProOrAddTokenManually => 'або дадайце токен уручную';

  @override
  String get ubuntuProTokenTextfieldHint => 'Токен';

  @override
  String get ubuntuProSubscriptionDescription => 'Атрымайце найбольш усёабдымную падпіску для бяспекі праграмнага забеспячэння з адкрытым зыходным кодам';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
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
