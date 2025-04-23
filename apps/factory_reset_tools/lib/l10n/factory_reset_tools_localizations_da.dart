// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class FactoryResetToolsLocalizationsDa extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Værktøjer til systemgendannelse';

  @override
  String get windowTitle => 'Værktøjer til systemgendannelse';

  @override
  String get homeTitle => 'Hvad vil du gøre?';

  @override
  String get createResetMedia => 'Opret gendannelsesmedie';

  @override
  String get startFactoryReset => 'Påbegynd systemgendannelse';

  @override
  String get createUsbTitle => 'Opret USB-gendannelsesmedie';

  @override
  String get createUsbBody => 'Opret et USB-medie, som gendanner systemet og tilpasser dine Ubuntu-installationer.';

  @override
  String get createUsbListExplanation => 'Vælg et USB-flashdrev. Drevet skal have **mindst 16 GB plads.**';

  @override
  String get createUsbWarning => 'Flashdrevet vil blive omformateret, og alle data på drevet går tabt.';

  @override
  String get resetMediaTitle => 'USB-gendannelsesmedie';

  @override
  String get noMediaDetected => 'Der er ikke fundet noget flytbart lager';

  @override
  String get noMediaDetectedSubtitle => 'Du skal bruge et USB-lager for at oprette et systemgendannelsesmedie.';

  @override
  String get factoryResetTitle => 'Vælg en mulighed for at påbegynde systemgendannelse';

  @override
  String get loadingDrives => 'Vent venligst, mens vi henter drevene.';

  @override
  String get resetMediaReadyTitle => 'USB-gendannelsesmedie er klart';

  @override
  String get resetMediaReadyBody => 'Når du vil bruge det, så indsæt venligst USB-drevet i den computer, du vil gendanne, og genstart den.';

  @override
  String get errorLoadingDrives => 'Der opstod en fejl ved indhentning af drev.';

  @override
  String get resetMediaInitializing => 'Klargør';

  @override
  String get resetMediaCopying => 'Kopierer';

  @override
  String get resetMediaFinalizing => 'Færdiggør';

  @override
  String get resetMediaFinished => 'Fuldført';

  @override
  String get resetMediaFailed => 'Mislykkedes';

  @override
  String get error => 'Fejl';

  @override
  String get loading => 'Indlæser …';

  @override
  String get warning => 'Advarsel';

  @override
  String get restore => 'Gendan';

  @override
  String get restart => 'Genstart';

  @override
  String get reformat => 'Omformatér';

  @override
  String get failed => 'Kunne ikke køre kommando';

  @override
  String get close => 'Luk';

  @override
  String get ok => 'OK';
}
