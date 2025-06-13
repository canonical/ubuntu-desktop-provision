// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class FactoryResetToolsLocalizationsFi extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Tehdasasetusten palautustyökalut';

  @override
  String get windowTitle => 'Tehdasasetusten palautustyökalut';

  @override
  String get homeTitle => 'Mitä haluaisit tehdä?';

  @override
  String get createResetMedia => 'Luo palautusmedia';

  @override
  String get startFactoryReset => 'Käynnistä tehdasasetuksiin palauttaminen';

  @override
  String get createUsbTitle => 'Luo USB-palautusmedia';

  @override
  String get createUsbBody =>
      'Luo USB-palautusmedia palauttaaksesi järjestelmän tehdasasetuksiin, sekä mukauttaaksesi Ubuntu-asennuksiasi.';

  @override
  String get createUsbListExplanation =>
      'Valitse USB-tallennuslaite. Laitteella tulee olla **vähintään 16Gt tilaa.**';

  @override
  String get createUsbWarning =>
      'Tallennuslaite alustetaan uudelleen ja kaikki laitteella jo oleva tieto hävitetään.';

  @override
  String get resetMediaTitle => 'USB-palautusmedia';

  @override
  String get noMediaDetected => 'Irrotettavaa tallennuslaitetta ei havaita';

  @override
  String get noMediaDetectedSubtitle =>
      'Tarvitset USB-tallennusvälineen luodaksesi tehdasasetuksien palautusmedian.';

  @override
  String get factoryResetTitle =>
      'Tee valinta käynnistääksesi tehdasasetuksiin palauttamisen';

  @override
  String get loadingDrives => 'Odota kun laitteita tutkitaan.';

  @override
  String get resetMediaReadyTitle => 'USB-palautusmedia valmis';

  @override
  String get resetMediaReadyBody =>
      'Kun haluat käyttää sitä, liitä USB-tallennuslaite tietokoneeseen jonka haluat palauttaa ja käynnistä kone uudelleen.';

  @override
  String get errorLoadingDrives => 'Tutkittaessa laitteita tapahtui virhe.';

  @override
  String get resetMediaInitializing => 'Aloitetaan';

  @override
  String get resetMediaCopying => 'Kopioidaan';

  @override
  String get resetMediaFinalizing => 'Viimeistellään';

  @override
  String get resetMediaFinished => 'Valmis';

  @override
  String get resetMediaFailed => 'Epäonnistui';

  @override
  String get error => 'Virhe';

  @override
  String get loading => 'Ladataan...';

  @override
  String get warning => 'Varoitus';

  @override
  String get restore => 'Palauta';

  @override
  String get restart => 'Käynnistä uudelleen';

  @override
  String get reformat => 'Alusta uudelleen';

  @override
  String get failed => 'Komennon suorittaminen epäonnistui';

  @override
  String get close => 'Sulje';

  @override
  String get ok => 'OK';
}
