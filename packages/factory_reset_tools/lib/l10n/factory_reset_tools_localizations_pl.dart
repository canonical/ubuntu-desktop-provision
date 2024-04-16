import 'factory_reset_tools_localizations.dart';

/// The translations for Polish (`pl`).
class FactoryResetToolsLocalizationsPl extends FactoryResetToolsLocalizations {
  FactoryResetToolsLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Narzędzia przywracania ustawień fabrycznych';

  @override
  String get windowTitle => 'Narzędzia przywracania ustawień fabrycznych';

  @override
  String get homeTitle => 'Co chcesz zrobić?';

  @override
  String get createResetMedia => 'Utwórz nośnik przywracania';

  @override
  String get startFactoryReset => 'Rozpocznij przywracanie ustawień fabrycznych';

  @override
  String get createUsbTitle => 'Utwórz nośnik USB przywracania';

  @override
  String get createUsbBody => 'Utwórz nośnik USB przywracania, aby przywrócić system, a także dostosować instalacje Ubuntu.';

  @override
  String get createUsbListExplanation => 'Wybierz dysk flash USB. Dysk musi mieć **co najmniej 16 GB miejsca.**';

  @override
  String get createUsbWarning => 'Dysk flash zostanie sformatowany ponownie, a wszystkie zapisane na nim dane zostaną utracone.';

  @override
  String get resetMediaTitle => 'Nośnik USB przywracania';

  @override
  String get noMediaDetected => 'Nie wykryto nośnika wymiennego';

  @override
  String get noMediaDetectedSubtitle => 'Aby utworzyć nośnik przywracania ustawień fabrycznych, potrzebujesz pamięci USB.';

  @override
  String get factoryResetTitle => 'Wybierz opcję, aby rozpocząć przywracanie ustawień fabrycznych';

  @override
  String get loadingDrives => 'Poczekaj, aż wykryjemy dyski.';

  @override
  String get resetMediaReadyTitle => 'Nośnik USB przywracania jest gotowy';

  @override
  String get resetMediaReadyBody => 'Jeśli chcesz z niego skorzystać, włóż dysk USB do komputera, który chcesz przywrócić, i uruchom go ponownie.';

  @override
  String get errorLoadingDrives => 'Wystąpił błąd podczas wykrywania dysków.';

  @override
  String get resetMediaInitializing => 'Inicjowanie';

  @override
  String get resetMediaCopying => 'Kopiowanie';

  @override
  String get resetMediaFinalizing => 'Kończenie';

  @override
  String get resetMediaFinished => 'Zakończono';

  @override
  String get resetMediaFailed => 'Niepowodzenie';

  @override
  String get error => 'Błąd';

  @override
  String get loading => 'Ładowanie...';

  @override
  String get warning => 'Ostrzeżenie';

  @override
  String get restore => 'Przywróć';

  @override
  String get restart => 'Uruchom ponownie';

  @override
  String get reformat => 'Sformatuj ponownie';

  @override
  String get failed => 'Nie udało się uruchomić polecenia';

  @override
  String get close => 'Zamknij';

  @override
  String get ok => 'OK';
}
