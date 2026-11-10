// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

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
  String get createUsbTitle => 'Skapa USB-återställningsmedia';

  @override
  String get createUsbBody =>
      'Skapa USB-återställningsmedia för att återställa systemet och anpassa Ubuntu-installationer.';

  @override
  String get createUsbListExplanation =>
      'Välj ett USB-minne. Det måste ha **minst 16 GB ledigt utrymme.**';

  @override
  String get createUsbWarning =>
      'USB-minnet formateras om och all data på det går förlorad.';

  @override
  String get resetMediaTitle => 'USB-återställningsmedia';

  @override
  String get noMediaDetected => 'Ingen flyttbar lagringsenhet hittades';

  @override
  String get noMediaDetectedSubtitle =>
      'Du behöver en USB-lagringsenhet för att skapa återställningsmedia.';

  @override
  String get factoryResetTitle =>
      'Välj ett alternativ för att starta fabriksåterställningen';

  @override
  String get loadingDrives => 'Vänta medan vi hämtar enheterna.';

  @override
  String get resetMediaReadyTitle => 'USB-återställningsmediet är klart';

  @override
  String get resetMediaReadyBody =>
      'Sätt in USB-enheten i datorn du vill återställa och starta sedan om den.';

  @override
  String get errorLoadingDrives =>
      'Ett fel inträffade vid hämtning av enheterna.';

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
  String get loading => 'Läser in…';

  @override
  String get warning => 'Varning';

  @override
  String get restore => 'Återställ';

  @override
  String get restart => 'Starta om';

  @override
  String get reformat => 'Formatera om';

  @override
  String get failed => 'Misslyckades att köra kommando';

  @override
  String get close => 'Stäng';

  @override
  String get ok => 'OK';

  @override
  String get closeIconSemanticLabel => 'Stäng';

  @override
  String get maximizeIconSemanticLabel => 'Maximera';

  @override
  String get minimizeIconSemanticLabel => 'Minimera';
}
