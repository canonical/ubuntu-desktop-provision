import 'factory_reset_tools_localizations.dart';

/// The translations for Czech (`cs`).
class FactoryResetToolsLocalizationsCs extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Nástroje pro vrácení do výchozího nastavení';

  @override
  String get windowTitle => 'Nástroje pro vrácení do výchozího nastavení';

  @override
  String get homeTitle => 'Co si přejete dělat?';

  @override
  String get createResetMedia => 'Vytvořit médium pro resetování';

  @override
  String get startFactoryReset => 'Spustit vrácení do výchozího nastavení';

  @override
  String get createUsbTitle => 'Vytvořit USB médium pro resetování';

  @override
  String get createUsbBody => 'Vytvořte USB médium pro obnovení systému a také přizpůsobení instalací Ubuntu.';

  @override
  String get createUsbListExplanation => 'Vyberte USB flash disk. Na disku musí být **alespoň 16 GB místa.**';

  @override
  String get createUsbWarning => 'Flash disk bude přeformátován a všechna data na disku budou ztracena.';

  @override
  String get resetMediaTitle => 'USB médium pro resetování';

  @override
  String get noMediaDetected => 'Nezjištěno žádné vyměnitelné úložiště';

  @override
  String get noMediaDetectedSubtitle => 'K vytvoření média pro obnovení do výchozího nastavení potřebujete úložiště USB.';

  @override
  String get factoryResetTitle => 'Vyberte možnost pro zahájení obnovy do výchozího nastavení';

  @override
  String get loadingDrives => 'Počkejte prosím, než načteme disky.';

  @override
  String get resetMediaReadyTitle => 'USB médium pro resetování je připraveno';

  @override
  String get resetMediaReadyBody => 'Pokud jej chcete použít, vložte USB disk do počítače, který chcete obnovit, a restartujte jej.';

  @override
  String get errorLoadingDrives => 'Při načítání disků došlo k chybě.';

  @override
  String get resetMediaInitializing => 'Inicializace';

  @override
  String get resetMediaCopying => 'Kopírování';

  @override
  String get resetMediaFinalizing => 'Dokončování';

  @override
  String get resetMediaFinished => 'Hotovo';

  @override
  String get resetMediaFailed => 'Nezdařilo se';

  @override
  String get error => 'Chyba';

  @override
  String get loading => 'Načítání…';

  @override
  String get warning => 'Varování';

  @override
  String get restore => 'Obnovit';

  @override
  String get restart => 'Restartovat';

  @override
  String get reformat => 'Přeformátovat';

  @override
  String get failed => 'Nepodařilo se spustit příkaz';

  @override
  String get close => 'Zavřít';

  @override
  String get ok => 'OK';
}
