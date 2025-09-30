// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

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
  String get createUsbBody =>
      'Vytvořte USB médium pro obnovení systému a také přizpůsobení instalací Ubuntu.';

  @override
  String get createUsbListExplanation =>
      'Vyberte USB flash disk. Je třeba, aby na něm bylo **alespoň 16 GB místa.**';

  @override
  String get createUsbWarning =>
      'Flash disk bude přeformátován a všechna data na něm budou ztracena.';

  @override
  String get resetMediaTitle => 'USB médium pro resetování';

  @override
  String get noMediaDetected => 'Nezjištěno žádné vyměnitelné úložiště';

  @override
  String get noMediaDetectedSubtitle =>
      'K vytvoření média pro obnovení do výchozího nastavení potřebujete USB úložiště.';

  @override
  String get factoryResetTitle =>
      'Vyberte možnost pro zahájení obnovy do výchozího nastavení';

  @override
  String get loadingDrives => 'Vyčkejte, než budou načteny disky.';

  @override
  String get resetMediaReadyTitle => 'USB médium pro resetování je připraveno';

  @override
  String get resetMediaReadyBody =>
      'Pokud ho chcete použít, vložte USB disk do počítače, který chcete vrátit na výchozí a ten zrestartujte.';

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

  @override
  String get closeIconSemanticLabel => 'Zavřít';

  @override
  String get maximizeIconSemanticLabel => 'Maximalizovat';

  @override
  String get minimizeIconSemanticLabel => 'Minimalizovat';
}
