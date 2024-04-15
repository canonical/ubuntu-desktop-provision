import 'factory_reset_tools_localizations.dart';

/// The translations for Slovak (`sk`).
class FactoryResetToolsLocalizationsSk extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Obnova výrobných nastavení';

  @override
  String get windowTitle => 'Nástroje na obnovenie výrobných nastavení';

  @override
  String get homeTitle => 'Čo by ste chceli urobiť?';

  @override
  String get createResetMedia => 'Vytvoriť obnovovacie médium';

  @override
  String get startFactoryReset => 'Spustiť obnovenie výrobných nastavení';

  @override
  String get createUsbTitle => 'Vytvoriť USB obnovovacie médium';

  @override
  String get createUsbBody => 'Vytvorte USB médium na obnovenie systému ako aj prispôsobenie inštalácií Ubuntu.';

  @override
  String get createUsbListExplanation => 'Vyberte USB pamäťovú jednotku. Na disku musí byť aspoň 16 GB voľného miesta';

  @override
  String get createUsbWarning => 'Pamäťová jednotka bude preformátovaná a všetky údaje na jednotke sa stratia.';

  @override
  String get resetMediaTitle => 'USB obnovovacie médium';

  @override
  String get noMediaDetected => 'Nenašla sa žiadna vymeniteľná jednotka';

  @override
  String get noMediaDetectedSubtitle => 'Na vytvorenie obnovovacieho média výrobných nastavení je potrebná USB jednotka.';

  @override
  String get factoryResetTitle => 'Výber možností spustenia obnovenia výrobných nastavení';

  @override
  String get loadingDrives => 'Prosím, počkajte, načítavajú sa jednotky.';

  @override
  String get resetMediaReadyTitle => 'Obnovovacie médium USB je pripravené';

  @override
  String get resetMediaReadyBody => 'Keď ho chcete použiť, prosím vložte USB disk do počítača, ktorí chcete obnoviť a reštartujte ho.';

  @override
  String get errorLoadingDrives => 'Pri načítavaní jednotiek sa vyskytla chyba.';

  @override
  String get resetMediaInitializing => 'Inicializuje sa';

  @override
  String get resetMediaCopying => 'Kopíruje sa';

  @override
  String get resetMediaFinalizing => 'Dokončuje sa';

  @override
  String get resetMediaFinished => 'Dokončené';

  @override
  String get resetMediaFailed => 'Nepodarilo sa';

  @override
  String get error => 'Chyba';

  @override
  String get loading => 'Načítava sa...';

  @override
  String get warning => 'Upozornenie';

  @override
  String get restore => 'Obnoviť';

  @override
  String get restart => 'Restart';

  @override
  String get reformat => 'Reformat';

  @override
  String get failed => 'Spustenie príkazu zlyhalo';

  @override
  String get close => 'Zavrieť';

  @override
  String get ok => 'OK';
}
