import 'factory_reset_tools_localizations.dart';

/// The translations for Swedish (`sv`).
class FactoryResetToolsLocalizationsSv extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Fabriksåterställningsverktyg';

  @override
  String get windowTitle => 'Fabriksåterställningsverktyg';

  @override
  String get homeTitle => 'Vad vill du göra?';

  @override
  String get createResetMedia => 'Skapa återställningsmedia';

  @override
  String get startFactoryReset => 'Starta fabriksåterställning';

  @override
  String get createUsbTitle => 'Skapa ett USB återställningsmedia';

  @override
  String get createUsbBody => 'Skapa ett USB återställningsmedia för att återställa systemet samt anpassa dina Ubuntu installationer.';

  @override
  String get createUsbListExplanation => 'Välj en USB flashenhet. Enheten måste ha minst 16 GB utrymme';

  @override
  String get createUsbWarning => 'Flashenheten kommer att omformateras och all data på enheten går förlorad.';

  @override
  String get resetMediaTitle => 'USB återställningsmedia';

  @override
  String get noMediaDetected => 'Ingen borttagbar lagring har upptäckts';

  @override
  String get noMediaDetectedSubtitle => 'Du behöver USB lagring för att skapa ett fabriksåterställnings media.';

  @override
  String get factoryResetTitle => 'Välj ett alternativ för att starta fabriksåterställningen';

  @override
  String get loadingDrives => 'Vänta medan vi hämtar enheterna.';

  @override
  String get resetMediaReadyTitle => 'USB återställningsmedia är redo';

  @override
  String get resetMediaReadyBody => 'När du vill använda det, sätt in USB enheten i den dator du vill återställa och starta om den.';

  @override
  String get errorLoadingDrives => 'Ett fel inträffade vid hämtning av enheterna.';

  @override
  String get resetMediaInitializing => 'Initialisering';

  @override
  String get resetMediaCopying => 'Kopierar';

  @override
  String get resetMediaFinalizing => 'Slutför';

  @override
  String get resetMediaFinished => 'Slutfört';

  @override
  String get resetMediaFailed => 'Misslyckades';

  @override
  String get error => 'Fel';

  @override
  String get loading => 'Laddar...';

  @override
  String get warning => 'Varning';

  @override
  String get restore => 'Återställ';

  @override
  String get reboot => 'Starta om';

  @override
  String get failed => 'Misslyckades att köra kommando';

  @override
  String get close => 'Stäng';

  @override
  String get ok => 'OK';
}
