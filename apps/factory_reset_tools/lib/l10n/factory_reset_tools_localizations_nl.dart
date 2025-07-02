// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class FactoryResetToolsLocalizationsNl extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle =>
      'Hulpmiddelen terugzetten naar de fabrieksinstellingen';

  @override
  String get windowTitle =>
      'Hulpmiddelen terugzetten naar de fabrieksinstellingen';

  @override
  String get homeTitle => 'Wat zou u willen doen?';

  @override
  String get createResetMedia => 'Herstelmedia aanmaken';

  @override
  String get startFactoryReset =>
      'Terugzetten naar fabrieksinstellingen starten';

  @override
  String get createUsbTitle => 'Een herstel-USB aanmaken';

  @override
  String get createUsbBody =>
      'Een herstel-USB aanmaken om het systeem te herstellen en uw Ubuntu-installaties aan te passen.';

  @override
  String get createUsbListExplanation =>
      'Selecteer een USB-flashstation. De schijf moet **minstens 16 GB ruimte hebben.**';

  @override
  String get createUsbWarning =>
      'De flashdrive wordt opnieuw geformatteerd en alle gegevens op de schijf gaan verloren.';

  @override
  String get resetMediaTitle => 'Herstel-USB';

  @override
  String get noMediaDetected => 'Geen verwisselbare opslag gedetecteerd';

  @override
  String get noMediaDetectedSubtitle =>
      'Een USB-opslag is vereist om een medium voor systeemherstel te maken.';

  @override
  String get factoryResetTitle =>
      'Selecteer een optie om de fabrieksinstellingen te herstellen';

  @override
  String get loadingDrives =>
      'Een ogenblik geduld terwijl de schijven worden uitgelezen.';

  @override
  String get resetMediaReadyTitle => 'Herstel-USB is klaar';

  @override
  String get resetMediaReadyBody =>
      'Om deze te gebruiken, plaatst u het USB-station in de computer die u wilt herstellen en start u deze opnieuw op.';

  @override
  String get errorLoadingDrives =>
      'Er is een fout opgetreden bij het inlezen van de schijven.';

  @override
  String get resetMediaInitializing => 'Initialiseren';

  @override
  String get resetMediaCopying => 'Kopiëren';

  @override
  String get resetMediaFinalizing => 'Voltooien';

  @override
  String get resetMediaFinished => 'Voltooid';

  @override
  String get resetMediaFailed => 'Mislukt';

  @override
  String get error => 'Fout';

  @override
  String get loading => 'Laden…';

  @override
  String get warning => 'Waarschuwing';

  @override
  String get restore => 'Herstellen';

  @override
  String get restart => 'Herstarten';

  @override
  String get reformat => 'Opnieuw formatteren';

  @override
  String get failed => 'Opdracht niet kunnen uitvoeren';

  @override
  String get close => 'Sluiten';

  @override
  String get ok => 'OK';
}
