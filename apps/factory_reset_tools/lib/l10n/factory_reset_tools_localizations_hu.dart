// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'factory_reset_tools_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class FactoryResetToolsLocalizationsHu extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Gyári visszaállítási eszközök';

  @override
  String get windowTitle => 'Gyári visszaállítási eszközök';

  @override
  String get homeTitle => 'Mit szeretne tenni?';

  @override
  String get createResetMedia => 'Visszaállítási adathordozó létrehozása';

  @override
  String get startFactoryReset => 'Gyári visszaállítás indítása';

  @override
  String get createUsbTitle => 'Visszaállítási USB-adathordozó létrehozása';

  @override
  String get createUsbBody => 'Visszaállítási USB-adathordozó létrehozása a rendszer helyreállításához, valamint az Ubuntu-telepítések személyre szabásához.';

  @override
  String get createUsbListExplanation => 'Válasszon egy USB-meghajtót. A meghajtónak **legalább 16 GB tárhellyel** kell rendelkeznie.';

  @override
  String get createUsbWarning => 'Az USB-meghajtó újraformázásra kerül, és a meghajtón lévő összes adat el fog veszni.';

  @override
  String get resetMediaTitle => 'Visszaállítási USB-adathordozó';

  @override
  String get noMediaDetected => 'Nem észlelhető cserélhető tároló';

  @override
  String get noMediaDetectedSubtitle => 'USB-tárolóra van szükség a gyári visszaállítási adathordozó létrehozásához.';

  @override
  String get factoryResetTitle => 'Válasszon egy lehetőséget a gyári visszaállítás indításához';

  @override
  String get loadingDrives => 'Várjon, amíg lekérjük a meghajtókat.';

  @override
  String get resetMediaReadyTitle => 'A visszaállítási USB-adathordozó kész';

  @override
  String get resetMediaReadyBody => 'Ha használni szeretné, akkor helyezze be az USB-meghajtót a visszaállítani kívánt számítógépbe, és indítsa újra.';

  @override
  String get errorLoadingDrives => 'Hiba történt a meghajtók lekérése közben.';

  @override
  String get resetMediaInitializing => 'Előkészítés';

  @override
  String get resetMediaCopying => 'Másolás';

  @override
  String get resetMediaFinalizing => 'Befejezés';

  @override
  String get resetMediaFinished => 'Befejezve';

  @override
  String get resetMediaFailed => 'Sikertelen';

  @override
  String get error => 'Hiba';

  @override
  String get loading => 'Betöltés…';

  @override
  String get warning => 'Figyelmeztetés';

  @override
  String get restore => 'Helyreállítás';

  @override
  String get restart => 'Újraindítás';

  @override
  String get reformat => 'Újraformázás';

  @override
  String get failed => 'Nem sikerült parancsot futtatni';

  @override
  String get close => 'Bezárás';

  @override
  String get ok => 'OK';
}
