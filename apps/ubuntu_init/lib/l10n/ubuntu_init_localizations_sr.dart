// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class UbuntuInitLocalizationsSr extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get welcomePageTitle => 'Добродошли';

  @override
  String welcomePageHeader(String distro) {
    return 'Добродошли у $distro';
  }

  @override
  String get welcomeWhatsNew => 'ШТА ЈЕ НОВО?';

  @override
  String get welcomeStartTitle => 'Поједностављен почетак';

  @override
  String get welcomeStartSubtitle => 'Подршка за чистије искуство подешавања.';

  @override
  String get welcomeStoreTitle => 'Нова изглед Продавнице Апликација';

  @override
  String get welcomeStoreSubtitle =>
      'Никада није било лакше пронаћи ваш омиљени софтвер.';

  @override
  String get welcomeSecurityTitle => 'Побољшана безбедност';

  @override
  String get welcomeSecuritySubtitle =>
      'Нове опције за хардверски подржану или ZFS енкрипцију.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Погледајте дневник промена</a>';
  }

  @override
  String get telemetryPageTitle => 'Телеметрија';

  @override
  String telemetryHeader(String distro) {
    return 'Помозите унапређењу $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Помозите нам да унапредимо $distro тако што ћете поделити податке о вашем систему са нама. Ово укључује ствари као што су модел вашег рачунара, инсталирани софтвер и локација коју сте изабрали за вашу временску зону.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Да, поделите податке о систему са $distro тимом';
  }

  @override
  String get telemetryLabelOff => 'Не, не делите податке о систему';

  @override
  String get telemetryReportLabel => 'Прикажи први извештај';

  @override
  String get telemetryReportTitle => 'Детаљи извештавања';

  @override
  String get telemetryLegalLabel => 'Правно обавештење';

  @override
  String get telemetryCollectError =>
      'Неуспешно прикупљање телеметријских података';

  @override
  String get privacyPageTitle => 'Услуге локације';

  @override
  String get privacyLocationTitle => 'Омогућити услуге локације?';

  @override
  String get privacyLocationSubtitle =>
      'Дозволите апликацијама да знају вашу географску локацију.\nМожете ово променити у било ком тренутку у Системским подешавањима.';

  @override
  String get privacyLocationEnable => 'Услуге локације';

  @override
  String get privacyPolicyLink => 'Приватност података';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Магично повезивање са овим кодом на <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Повежите овај рачунар';

  @override
  String get ubuntuProOrAddTokenManually => 'или додајте токен ручно';

  @override
  String get ubuntuProTokenTextfieldHint => 'Токен';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Добијте најкомплетнију претплату за безбедност софтвера отвореног кода';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Увек бесплатно за личну употребу. 30-дневно пробно коришћење за предузећа. <a href=\"https://$url\">Сазнајте више</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Повежи';

  @override
  String get ubuntuProTokenAttachError => 'Неважећи токен';

  @override
  String get ubuntuProTokenAttachSucess => 'Важећи токен';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Неважећи токен, покушајте поново';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Прескочи за сада';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Увек можете омогућити Ubuntu Pro касније преко апликације Софтвер и ажурирања.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Омогући Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Повежите овај рачунар са Ubuntu Pro претплатом за безбедносна ажурирања на ширем спектру пакета, до 2032. године.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro је сада омогућен на овом рачунару';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Можете управљати својим Pro услугама у апликацији Софтвер и ажурирања.';

  @override
  String get successIconSemanticLabel => 'Success';

  @override
  String get closeIconSemanticLabel => 'Close';

  @override
  String get maximizeIconSemanticLabel => 'Maximize';

  @override
  String get minimizeIconSemanticLabel => 'Minimize';
}
