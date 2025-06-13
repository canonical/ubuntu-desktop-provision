// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class FactoryResetToolsLocalizationsEt extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Tehaseseadistuste taastamise tarvikud';

  @override
  String get windowTitle => 'Tehaseseadistuste taastamise tarvikud';

  @override
  String get homeTitle => 'Mida sa sooviksid teha?';

  @override
  String get createResetMedia =>
      'Loo tehaseseadistuste taastamiseks vajalik andmekandja';

  @override
  String get startFactoryReset => 'Alusta tehaseseadistuste taastamist';

  @override
  String get createUsbTitle => 'Loo taastamiseks vajalik andmekandja';

  @override
  String get createUsbBody =>
      'Loo taastamiseks vajalik USB-põhine mälupulk või ketas, kusjuures saad oma Ubuntu paigaldust ka kohendada.';

  @override
  String get createUsbListExplanation =>
      'Vali USB-põhine andmekandja. Seal peab olema **vähemalt 16 GB vaba ruumi.**';

  @override
  String get createUsbWarning =>
      'Andmekandja saab olema uuesti vormindatud ja kõik seal leiduvad andmed lähevad jäädavalt kaotsi.';

  @override
  String get resetMediaTitle => 'Taastamiseks mõeldud USB-põhine andmekandja';

  @override
  String get noMediaDetected =>
      'Ühtegi eemaldatavat andmekandjat ei õnnestunud tuvastada';

  @override
  String get noMediaDetectedSubtitle =>
      'Tehaseseadistuste taastamise tarviku jaoks vajad sa USB-põhist andmekandjat.';

  @override
  String get factoryResetTitle =>
      'Palun tee oma valik alustamiseks tehaseseadistuste taastamisega';

  @override
  String get loadingDrives => 'Palun oota, kuni tuvastan andmekandjaid.';

  @override
  String get resetMediaReadyTitle =>
      'Taastamiseks mõeldud USB-põhine andmekandja on valmis';

  @override
  String get resetMediaReadyBody =>
      'Kui soovid teda kasutada, siis palun ühenda taastamiseks mõeldud USB-põhine andmekandja arvutiga, kus soovid seda kasutaja ning taaskäivita arvuti.';

  @override
  String get errorLoadingDrives => 'Andmekandjate tuvastamisel tekkis viga.';

  @override
  String get resetMediaInitializing => 'Valmendan protsessi';

  @override
  String get resetMediaCopying => 'Kopeerime';

  @override
  String get resetMediaFinalizing => 'Lõpetan protsessi tööd';

  @override
  String get resetMediaFinished => 'Lõpetatud';

  @override
  String get resetMediaFailed => 'Tegevus ebaõnnestus';

  @override
  String get error => 'Viga';

  @override
  String get loading => 'Laadime...';

  @override
  String get warning => 'Hoiatus';

  @override
  String get restore => 'Taasta';

  @override
  String get restart => 'Käivita arvuti uuesti';

  @override
  String get reformat => 'Vorminda uuesti';

  @override
  String get failed => 'Käsu käivitamine ei õnnestunud';

  @override
  String get close => 'Sulge';

  @override
  String get ok => 'Sobib';
}
