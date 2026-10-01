// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class FactoryResetToolsLocalizationsSk extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Obnova výrobných nastavení';

  @override
  String get windowTitle => 'Obnovenie výrobných nastavení';

  @override
  String get homeTitle => 'Čo chcete urobiť?';

  @override
  String get createResetMedia => 'Vytvoriť obnovovacie médium';

  @override
  String get startFactoryReset => 'Spustiť obnovenie výrobných nastavení';

  @override
  String get createUsbTitle => 'Vytvoriť USB obnovovacie médium';

  @override
  String get createUsbBody =>
      'Vytvorte USB médium na obnovenie systému a prispôsobenie inštalácií Ubuntu.';

  @override
  String get createUsbListExplanation =>
      'Vyberte USB disk. Musí mať **aspoň 16 GB miesta.**';

  @override
  String get createUsbWarning =>
      'Disk bude preformátovaný a všetky údaje sa stratia.';

  @override
  String get resetMediaTitle => 'USB obnovovacie médium';

  @override
  String get noMediaDetected => 'Nenašla sa žiadna vymeniteľná jednotka';

  @override
  String get noMediaDetectedSubtitle =>
      'Na vytvorenie média na obnovenie výrobných nastavení je potrebný USB kľúč.';

  @override
  String get factoryResetTitle =>
      'Vyberte možnosť na spustenie obnovenia továrenských nastavení';

  @override
  String get loadingDrives => 'Prosím, počkajte, načítavajú sa jednotky.';

  @override
  String get resetMediaReadyTitle => 'Obnovovacie médium USB je pripravené';

  @override
  String get resetMediaReadyBody =>
      'Keď ho chcete použiť, vložte USB kľúč do počítača, ktorý chcete resetovať, a reštartujte ho.';

  @override
  String get errorLoadingDrives => 'Chyba pri načítavaní jednotiek.';

  @override
  String get resetMediaInitializing => 'Inicializácia';

  @override
  String get resetMediaCopying => 'Kopírovanie';

  @override
  String get resetMediaFinalizing => 'Dokončovanie';

  @override
  String get resetMediaFinished => 'Hotovo';

  @override
  String get resetMediaFailed => 'Zlyhalo';

  @override
  String get error => 'Chyba';

  @override
  String get loading => 'Načítava sa...';

  @override
  String get warning => 'Upozornenie';

  @override
  String get restore => 'Obnoviť';

  @override
  String get restart => 'Reštartovať';

  @override
  String get reformat => 'Preformátovať';

  @override
  String get failed => 'Príkaz zlyhal';

  @override
  String get close => 'Zavrieť';

  @override
  String get ok => 'OK';

  @override
  String get closeIconSemanticLabel => 'Zavrieť';

  @override
  String get maximizeIconSemanticLabel => 'Maximalizovať';

  @override
  String get minimizeIconSemanticLabel => 'Minimalizovať';
}
