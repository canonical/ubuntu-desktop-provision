// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class FactoryResetToolsLocalizationsBs extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String get appTitle => 'Alati za vraćanje na fabričke postavke';

  @override
  String get windowTitle => 'Alati za vraćanje na fabričke postavke';

  @override
  String get homeTitle => 'Šta biste željeli raditi?';

  @override
  String get createResetMedia => 'Kreiraj medije za resetiranje';

  @override
  String get startFactoryReset => 'Započni vraćanje na fabričke postavke';

  @override
  String get createUsbTitle => 'Kreiraj USB medij za resetovanje';

  @override
  String get createUsbBody =>
      'Napravite USB medij za resetiranje kako biste vratili sistem u prvobitno stanje, kao i prilagodili svoje Ubuntu instalacije.';

  @override
  String get createUsbListExplanation =>
      'Odaberite USB fleš disk. Disk mora imati **najmanje 16 GB prostora.**';

  @override
  String get createUsbWarning =>
      'Flash disk će biti preformatiran i svi podaci na disku će biti izgubljeni.';

  @override
  String get resetMediaTitle => 'USB medij za resetovanje';

  @override
  String get noMediaDetected => 'Nije otkriveno uklonjivo skladište';

  @override
  String get noMediaDetectedSubtitle =>
      'Potrebno vam je USB skladište za kreiranje medija za vraćanje na fabričke postavke.';

  @override
  String get factoryResetTitle =>
      'Odaberite opciju za pokretanje vraćanja na fabričke postavke';

  @override
  String get loadingDrives => 'Molim pričekajte dok povežemo diskove.';

  @override
  String get resetMediaReadyTitle => 'USB medij za resetovanje je spreman';

  @override
  String get resetMediaReadyBody =>
      'Kada ga želite koristiti, umetnite USB disk u računar koji želite resetirati i ponovo ga pokrenite.';

  @override
  String get errorLoadingDrives =>
      'Došlo je do greške prilikom povezivanja diskova.';

  @override
  String get resetMediaInitializing => 'Inicijalizacija';

  @override
  String get resetMediaCopying => 'Kopiranje';

  @override
  String get resetMediaFinalizing => 'Završavanje';

  @override
  String get resetMediaFinished => 'Završeno';

  @override
  String get resetMediaFailed => 'Neuspješno';

  @override
  String get error => 'Greška';

  @override
  String get loading => 'Učitavanje...';

  @override
  String get warning => 'Upozorenje';

  @override
  String get restore => 'Vrati';

  @override
  String get restart => 'Ponovo pokreni';

  @override
  String get reformat => 'Reformatiranje';

  @override
  String get failed => 'Nije uspjelo izvršavanje naredbe';

  @override
  String get close => 'Zatvori';

  @override
  String get ok => 'OK';

  @override
  String get closeIconSemanticLabel => 'Zatvori';

  @override
  String get maximizeIconSemanticLabel => 'Uvećaj';

  @override
  String get minimizeIconSemanticLabel => 'Umanji';
}
