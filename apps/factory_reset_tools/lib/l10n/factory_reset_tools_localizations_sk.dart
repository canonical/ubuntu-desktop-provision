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
  String get windowTitle => 'Nástroje na obnovu výrobných nastavení';

  @override
  String get homeTitle => 'Čo chcete urobiť?';

  @override
  String get createResetMedia => 'Vytvoriť obnovovacie médium';

  @override
  String get startFactoryReset => 'Spustiť obnovenie nastavení';

  @override
  String get createUsbTitle => 'Vytvoriť USB obnovovacie médium';

  @override
  String get createUsbBody =>
      'Vytvorte USB obnovovacie médium na obnovenie systému a prispôsobenie inštalácií Ubuntu.';

  @override
  String get createUsbListExplanation =>
      'Vyberte USB disk. Disk musí mať **aspoň 16 GB miesta.**';

  @override
  String get createUsbWarning =>
      'USB disk bude preformátovaný a všetky údaje na disku sa stratia.';

  @override
  String get resetMediaTitle => 'USB obnovovacie médium';

  @override
  String get noMediaDetected => 'Nebolo zistené žiadne vymeniteľné úložisko';

  @override
  String get noMediaDetectedSubtitle =>
      'Na vytvorenie média na obnovenie výrobných nastavení je potrebný USB kľúč.';

  @override
  String get factoryResetTitle =>
      'Vyberte možnosť na spustenie obnovenia výrobných nastavení';

  @override
  String get loadingDrives => 'Prosím, počkajte, načítavajú sa jednotky.';

  @override
  String get resetMediaReadyTitle => 'Obnovovacie médium USB je pripravené';

  @override
  String get resetMediaReadyBody =>
      'Keď ho chcete použiť, vložte USB kľúč do počítača, v ktorom chcete obnoviť výrobné nastavenia, a reštartujte ho.';

  @override
  String get errorLoadingDrives =>
      'Pri načítavaní jednotiek sa vyskytla chyba.';

  @override
  String get resetMediaInitializing => 'Inicializácia';

  @override
  String get resetMediaCopying => 'Kopírovanie';

  @override
  String get resetMediaFinalizing => 'Dokončovanie';

  @override
  String get resetMediaFinished => 'Dokončené';

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
  String get failed => 'Spustenie príkazu zlyhalo';

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
