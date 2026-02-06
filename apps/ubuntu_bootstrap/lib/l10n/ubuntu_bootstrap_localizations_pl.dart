// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class UbuntuBootstrapLocalizationsPl extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Instalator Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'Zainstaluj $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Instalacja zautomatyzowana';

  @override
  String get autoinstallDirectHeader => 'Importuj plik autoinstalacji';

  @override
  String get autoinstallDirectUrlLabel =>
      'Możesz wpisać adres URL pliku autoinstalacji:';

  @override
  String get autoinstallDirectFileLabel => 'Lub wybierz plik lokalny:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Wybierz plik...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Wyczyść plik';

  @override
  String get autoinstallDirectFilePickerTitle => 'Wybierz plik';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Pliki YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importuj';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Plik autoinstalacji jest niedostępny';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Sprawdź poprawność adresu URL, przetestuj połączenie internetowe lub spróbuj później.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Nieprawidłowy adres URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Sprawdź, czy adres URL jest poprawny lub wybierz plik lokalny.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Nieprawidłowy plik autoinstalacji';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Sprawdź plik lub podaj inny.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Plik autoinstalacji jest nieczytelny';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Sprawdź swoje uprawnienia lub prześlij inny plik.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Nieznany błąd';

  @override
  String get autoinstallTitle => 'Rodzaj instalacji';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Jak chcesz zainstalować $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'Wpisz adres URL pliku autoinstall.yaml lub ścieżkę pliku lokalnego:';

  @override
  String get autoinstallInteractiveOption => 'Instalacja interaktywna';

  @override
  String get autoinstallInteractiveDescription =>
      'Dla użytkowników, którzy chcą być prowadzeni krok po kroku przez instalację.';

  @override
  String get autoinstallDirectOption =>
      'Zautomatyzowana za pomocą pliku autoinstalacji';

  @override
  String get autoinstallDirectDescription =>
      'Dla zaawansowanych użytkowników, którzy mają plik autoinstall.yaml w celu zapewnienia spójnej i powtarzalnej konfiguracji systemu.';

  @override
  String get autoinstallLandscapeOption =>
      'Zautomatyzowana za pomocą Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Dla użytkowników w organizacjach udostępniających plik autoinstalacji za pośrednictwem Landscape.';

  @override
  String get changeButtonText => 'Zmień';

  @override
  String get quitButtonText => 'Zakończ instalację';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Witaj w $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Przygotowywanie $DISTRO…';
  }

  @override
  String get warningLabel => 'Ostrzeżenie:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Wypróbuj lub zainstaluj $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Co chcesz zrobić z $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Napraw instalację';

  @override
  String get tryOrInstallRepairDescription =>
      'Naprawa spowoduje ponowną instalację całego zainstalowanego oprogramowania bez naruszania dokumentów lub ustawień.';

  @override
  String tryOption(String RELEASE) {
    return 'Wypróbuj $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Możesz wypróbować $RELEASE bez wprowadzania jakichkolwiek zmian na swoim komputerze.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Zainstaluj $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Zainstaluj $RELEASE obok (lub zamiast) obecnego systemu operacyjnego. Nie powinno to potrwać zbyt długo.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Możesz chcieć przeczytać <a href=\"$url\">informacje o wydaniu</a>.';
  }

  @override
  String get rstTitle => 'Wykryto RST';

  @override
  String get rstHeader => 'Musisz wyłącz funkcję RST, aby kontynuować';

  @override
  String get rstDisable =>
      'Ten komputer używa funkcji Intel RST (Rapid Storage Technology). Możesz wyłączyć RST w:';

  @override
  String get rstDisableWindows =>
      'Windows, jeśli korzystasz z konfiguracji podwójnego rozruchu z tym systemem';

  @override
  String get rstDisableBios => 'Ustawieniach BIOS-u';

  @override
  String rstInstructions(String url) {
    return 'Aby uzyskać instrukcje, zeskanuj kod QR na innym urządzeniu lub odwiedź: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle =>
      'Skonfiguruj bezpieczny rozruch (Secure Boot)';

  @override
  String get configureSecureBootDescription =>
      'Wybrano instalację oprogramowania sterownika innego dostawcy. Wymaga to wyłączenia bezpiecznego rozruchu (Secure Boot).\nAby to zrobić, musisz teraz wybrać klucz bezpieczeństwa i podać go po ponownym uruchomieniu systemu.';

  @override
  String get configureSecureBootOption =>
      'Skonfiguruj bezpieczny rozruch (Secure Boot)';

  @override
  String get chooseSecurityKey => 'Wybierz klucz bezpieczeństwa';

  @override
  String get confirmSecurityKey => 'Potwierdź klucz bezpieczeństwa';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Na razie nie instaluj oprogramowania sterownika';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Możesz zainstalować je później za pomocą aplikacji Oprogramowanie i aktualizacje.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Wymagany jest klucz bezpieczeństwa';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Klucze bezpieczeństwa nie są zgodne';

  @override
  String get showSecurityKey => 'Pokaż';

  @override
  String get hideSecurityKey => 'Ukryj';

  @override
  String get updatesOtherSoftwarePageTitle => 'Programy';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Jakie programy chcesz zainstalować na początek?';

  @override
  String get codecsAndDriversPageTitle => 'Zoptymalizuj swój komputer';

  @override
  String get codecsAndDriversPageDescription =>
      'Zainstalować zalecane oprogramowanie własnościowe?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'Domyślnie $DISTRO nie dostarcza żadnego oprogramowania własnościowego. Zainstalowanie dodatkowego oprogramowania może poprawić wydajność komputera.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Wykryto kartę graficzną NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Aby uzyskać najlepszą wydajność kart graficznych NVIDIA, zdecydowanie zaleca się zainstalowanie dodatkowych sterowników.';

  @override
  String get fullInstallationTitle => 'Rozszerzony wybór';

  @override
  String get fullInstallationSubtitle =>
      'Ukierunkowany na tryb offline wybór narzędzi biurowych, programów użytkowych oraz przeglądarka internetowa.';

  @override
  String get minimalInstallationTitle => 'Domyślny wybór';

  @override
  String get minimalInstallationSubtitle =>
      'Tylko niezbędne elementy, przeglądarka internetowa i podstawowe narzędzia.';

  @override
  String get otherOptions => 'Pozostałe opcje';

  @override
  String get installThirdPartyTitle =>
      'Zainstaluj oprogramowanie innych dostawców do obsługi sprzętu graficznego i Wi-Fi, a także dodatkowe formaty multimedialne';

  @override
  String get installThirdPartySubtitle =>
      'Oprogramowanie to podlega warunkom licencyjnym dołączonym do jego dokumentacji. Niektóre z nich są własnościowe.';

  @override
  String get installDriversTitle =>
      'Zainstaluj oprogramowanie innego dostawcy do sprzętu graficznego i Wi-Fi';

  @override
  String get installDriversSubtitle =>
      'W tym między innymi sterowniki NVIDIA i podobne';

  @override
  String get installCodecsTitle =>
      'Pobierz i zainstaluj obsługę dodatkowych formatów multimediów';

  @override
  String get installCodecsSubtitle =>
      'W tym między innymi MP3, MP4, MOV i podobne';

  @override
  String get batteryWarning =>
      'Komputer nie jest podłączony do źródła zasilania.';

  @override
  String get offlineWarning => 'Jesteś obecnie offline';

  @override
  String get choosePassphraseHeader => 'Utwórz hasło';

  @override
  String get choosePassphraseBody =>
      'Wymagane będzie podanie hasła za każdym razem, gdy włączysz komputer. To hasło różni się od hasła użytkownika.';

  @override
  String get choosePassphraseInfoHeader => 'Pamiętaj o zapisaniu hasła';

  @override
  String get choosePassphraseInfoBody =>
      'Jeśli je zgubisz, utracisz wszystkie swoje dane.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Przechowuj hasło i klucz odzyskiwania w bezpiecznym miejscu';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Jeśli zgubisz hasło, stracisz wszystkie dane. Hasło nie zastępuje klucza odzyskiwania ani hasła użytkownika.';

  @override
  String get passphrasePageTitle => 'Szyfrowanie';

  @override
  String get passphrasePageHeaderPassphrase => 'Ustaw hasło szyfrowania';

  @override
  String get passphrasePageHeaderPin => 'Ustaw kod PIN szyfrowania';

  @override
  String get passphrasePageBodyPassphrase =>
      'Wymagane będzie podanie hasła za każdym razem, gdy włączysz komputer. To hasło różni się od hasła użytkownika. Będzie można je później zmienić, ale nie wyłączyć. Jeśli zapomnisz hasła, możesz odzyskać dostęp do dysku, używając klucza odzyskiwania.';

  @override
  String get passphrasePageBodyPin =>
      'Wymagane będzie podanie kodu PIN każdym razem, gdy włączysz komputer. Ten kod PIN różni się od hasła użytkownika. Będzie można go później zmienić, ale nie wyłączyć. Jeśli zapomnisz kodu PIN, możesz odzyskać dostęp do dysku, używając klucza odzyskiwania.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Hasło';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Potwierdź hasło';

  @override
  String get passphrasePageRequiredPassphrase => 'Wymagane jest hasło';

  @override
  String get passphrasePageMismatchPassphrase => 'Hasła nie pasują do siebie';

  @override
  String get passphrasePageChoosePinHint => 'Kod PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Potwierdź kod PIN';

  @override
  String get passphrasePageRequiredPin => 'Wymagany jest kod PIN';

  @override
  String get passphrasePageMismatchPin => 'Kody PIN nie pasują do siebie';

  @override
  String get passphraseTypePassphraseTileTitle => 'Wymagaj hasła';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Najbezpieczniejsze. Wymagane będzie wpisanie dłuższego hasło za każdym razem, gdy włączysz komputer.';

  @override
  String get passphraseTypePinTileTitle => 'Wymagaj kodu PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Bezpieczniejsze. Wymagane będzie wpisanie numerycznego kodu PIN za każdym razem, gdy włączysz komputer.';

  @override
  String get passphraseTypeNoneTileTitle => 'Odblokuj dysk automatycznie';

  @override
  String get passphraseTypePageHeader => 'Dodatkowe zabezpieczenia';

  @override
  String get passphraseTypePageBody =>
      'Domyślnie moduł TPM (Trusted Platform Module) komputera odblokuje dysk podczas uruchamiania. Masz również możliwości dodatkowej ochrony swoich danych.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Słabe hasło, wydłuż je lub zwiększ złożoność';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Wystarczające hasło, wydłuż je lub zwiększ złożoność, aby zwiększyć bezpieczeństwo';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Silne hasło';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Słaby kod PIN, wydłuż go lub uczyń mniej przewidywalnym';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Wystarczający kod PIN, uczyń go dłuższym lub mniej przewidywalnym, aby zapewnić większe bezpieczeństwo';

  @override
  String get passphrasePagePinEntropyOptimal =>
      'Kod PIN jest wystarczająco długi';

  @override
  String get installationTypeTitle => 'Konfiguracja dysku';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'W jaki sposób chcesz zainstalować $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Na tym komputerze jest obecnie zainstalowany system $os. Co chcesz zrobić?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Na tym komputerze są obecnie zainstalowane systemy $os1 i $os2. Co chcesz zrobić?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Na tym komputerze jest obecnie zainstalowanych wiele systemów operacyjnych. Co chcesz zrobić?';

  @override
  String get installationTypeNoOSDetected =>
      'Na tym komputerze nie ma obecnie wykrytych systemów operacyjnych. Co chcesz zrobić?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Wymaż dysk i zainstaluj $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Wszystkie dane i partycje na dysku zostaną wymazane, łącznie z systemami operacyjnymi.';

  @override
  String get installationTypeAdvancedLabel => 'Pokaż opcje zaawansowane...';

  @override
  String get installationTypeAdvancedTitle => 'Szyfrowanie i system plików';

  @override
  String get installationTypeExperimental => 'Eksperymentalne';

  @override
  String get installationTypeNone => 'Bez szyfrowania';

  @override
  String get installationTypeNoneInfo =>
      'Standardowy system plików bez szyfrowania.';

  @override
  String get installationTypeNoneSelected => 'Nie wybrano';

  @override
  String get installationTypeLVM => 'Użyj LVM bez szyfrowania';

  @override
  String get installationTypeLVMSelected => 'Wybrano LVM';

  @override
  String get installationTypeLVMEncryption => 'Zaszyfruj przy użyciu hasła';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'Konieczne będzie wprowadzenie hasła przy każdym włączeniu komputera. Używa szyfrowania LUKS z LVM.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'Wybrano LVM i szyfrowanie';

  @override
  String get installationTypeEncryptInfo =>
      'Klucz bezpieczeństwa zostanie wybrany w następnym kroku.';

  @override
  String get installationTypeZFS => 'Użyj ZFS bez szyfrowania';

  @override
  String get installationTypeZFSEncryption =>
      'Szyfruj za pomocą hasła przy użyciu ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Natywne szyfrowanie z ZFS. Konieczne będzie wprowadzenie hasła przy każdym włączeniu komputera.';

  @override
  String get installationTypeZFSSelected => 'Wybrano ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'Wybrano ZFS i szyfrowanie';

  @override
  String get installationTypeTPM => 'Użyj szyfrowania sprzętowego';

  @override
  String get installationTypeTPMInfoResolute =>
      'The disk will unlock automatically during startup.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Not available on this computer.';

  @override
  String get installationTypeTPMSelected => 'Wybrano moduł TPM';

  @override
  String installationTypeReinstall(String os) {
    return 'Wymaż $os i zainstaluj ponownie';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Ostrzeżenie:</font> spowoduje to usunięcie wszystkich programów $os, dokumentów, zdjęć, muzyki i wszelkich innych plików.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Zainstaluj $product obok $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Zainstaluj $product obok $os1 i $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Zainstaluj $product obok istniejących systemów operacyjnych';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Zainstaluj $product obok innych partycji';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Wybierz partycję do zmiany rozmiaru i utworzenia przestrzeni dla $product. Możesz wybrać swój system operacyjny podczas rozruchu.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Wymaż $os i zainstaluj $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Wszystkie pliki i dane z istniejącej instalacji $os zostaną trwale usunięte.';
  }

  @override
  String get installationTypeManual => 'Ręczne partycjonowanie';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Dla zaawansowanych użytkowników preferujących niestandardowe konfiguracje dysków.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Wymaż dysk i zainstaluj $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Zacznij od zera na wybranym dysku.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Wybierz dysk:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Wybierz partycję:';

  @override
  String get selectGuidedStorageInfoLabel =>
      'Zostanie użyta cała powierzchnia dysku:';

  @override
  String get selectGuidedStorageInstallNow => 'Zainstaluj teraz';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Wybierz miejsce instalacji $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Przydziel przestrzeń dyskową, przesuwając poniższą podziałkę:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num mniejsze partycje są ukryte, użyj <a href=\"$url\">zaawansowanego narzędzia do partycjonowania</a>, aby uzyskać większą kontrolę';
  }

  @override
  String get installAlongsideResizePartition => 'Zmień rozmiar partycji';

  @override
  String get installAlongsideAllocateSpace => 'Przydziel przestrzeń';

  @override
  String get installAlongsideFiles => 'Pliki';

  @override
  String get installAlongsidePartition => 'Partycja:';

  @override
  String get installAlongsideSize => 'Rozmiar:';

  @override
  String get installAlongsideAvailable => 'Dostępne:';

  @override
  String get allocateDiskSpace => 'Ręczne partycjonowanie';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Punkty montowania muszą zaczynać się od „/”';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Punkty montowania nie mogą zawierać spacji';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format nie jest obsługiwanym systemem plików dla $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Urządzenie';

  @override
  String get diskHeadersType => 'Typ';

  @override
  String get diskHeadersMountPoint => 'Punkt montowania';

  @override
  String get diskHeadersSize => 'Rozmiar';

  @override
  String get diskHeadersUsed => 'Zajęte';

  @override
  String get diskHeadersSystem => 'System';

  @override
  String get diskHeadersFormat => 'Formatowanie';

  @override
  String get freeDiskSpace => 'Wolna przestrzeń';

  @override
  String get newPartitionTable => 'Nowa tablica partycji';

  @override
  String get newPartitionTableConfirmationTitle => 'Nowa pusta partycja';

  @override
  String get newPartitionTableConfirmationMessage =>
      'Utworzenie nowej tabeli partycji na całym urządzeniu spowoduje usunięcie wszystkich jego bieżących partycji. Operację tę można cofnąć w razie potrzeby.';

  @override
  String get tooManyPrimaryPartitions => 'Zbyt wiele partycji podstawowych';

  @override
  String get partitionLimitReached => 'Osiągnięto limit';

  @override
  String get bootLoaderDevice =>
      'Urządzenie do instalacji programu rozruchowego';

  @override
  String get partitionCreateTitle => 'Utwórz partycję';

  @override
  String get partitionEditTitle => 'Modyfikowanie partycji';

  @override
  String get partitionSizeLabel => 'Rozmiar:';

  @override
  String get partitionTypeLabel => 'Typ nowej partycji:';

  @override
  String get partitionTypePrimary => 'Podstawowa';

  @override
  String get partitionTypeLogical => 'Logiczna';

  @override
  String get partitionLocationLabel => 'Położenie nowej partycji:';

  @override
  String get partitionLocationBeginning => 'Początek przestrzeni';

  @override
  String get partitionLocationEnd => 'Koniec przestrzeni';

  @override
  String get partitionFormatLabel => 'Używana jako:';

  @override
  String get partitionFormatNone => 'Pozostaw niesformatowaną';

  @override
  String partitionFormatKeep(String format) {
    return 'Pozostaw sformatowaną jako $format';
  }

  @override
  String get partitionErase => 'Sformatuj partycję';

  @override
  String get partitionMountPointLabel => 'Punkt montowania:';

  @override
  String get confirmPageTitle => 'Gotów do instalacji';

  @override
  String get confirmHeader => 'Przejrzyj swoje wybory';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Brak';

  @override
  String get confirmDevicesTitle => 'Urządzenia';

  @override
  String get confirmEntryApplications => 'Programy';

  @override
  String get confirmEntryDiskSetup => 'Rodzaj instalacji';

  @override
  String get confirmEntryDiskEncryption => 'Szyfrowanie dysku';

  @override
  String get confirmEntryInstallationDisk => 'Dysk instalacyjny';

  @override
  String get confirmEntryProprietarySoftware => 'Oprogramowanie własnościowe';

  @override
  String get confirmSectionGeneralTitle => 'Ogólne';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Bezpieczeństwo i nie tylko';

  @override
  String get confirmPartitionsTitle => 'Partycje';

  @override
  String get confirmPartitionTables =>
      'Zmieniane są tablice partycji następujących urządzeń:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodeki';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kodeki i sterowniki';

  @override
  String get confirmProprietarySoftwareDrivers => 'Sterowniki';

  @override
  String get confirmInstallButton => 'Instaluj';

  @override
  String get confirmTableErased => 'Wymazano';

  @override
  String get confirmTableUnchanged => 'Nie zmieniono';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Zmieniono rozmiar z $oldsize na $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Utworzono i sformatowano jako $format do użycia dla $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Sformatowano jako $format do użycia dla $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Do użyciu dla $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Sformatowano jako $format';
  }

  @override
  String get installationCompleteTitle => 'Instalacja zakończona';

  @override
  String readyToUse(String system) {
    return '$system został zainstalowany i jest gotowy do użycia';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** skopiowano na dysk';
  }

  @override
  String restartInto(String system) {
    return 'Uruchom ponownie do $system';
  }

  @override
  String get restartWarningBody =>
      'Uruchom ponownie w celu dokończenia instalacji lub kontynuuj testowanie.\nWszelkie wprowadzone zmiany nie zostaną zapisane.';

  @override
  String get rebootToConfigureWarning =>
      'Musisz ponownie uruchomić komputer, aby kontynuować proces instalacji.';

  @override
  String get shutdown => 'Zamknij';

  @override
  String get restartNow => 'Uruchom ponownie teraz';

  @override
  String get continueTesting => 'Kontynuuj testowanie';

  @override
  String get bitlockerInfoTitle => 'Wykryto funkcję BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'Jedna lub więcej partycji są szyfrowane za pomocą funkcji BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'Aby przeprowadzić instalację obok systemu Windows, wyłącz funkcję BitLocker w systemie Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Po instalacji system Windows może zażądać kluczy odzyskiwania podczas rozruchu.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Instrukcje znajdziesz w <a href=\"$url\">przewodniku po funkcji BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Bez kluczy odzyskiwania funkcji BitLocker możesz utracić wszystkie swoje dane';

  @override
  String get restartComputer => 'Uruchom ponownie komputer';

  @override
  String get restartComputerTitle => 'Uruchomić ponownie komputer?';

  @override
  String get restartIntoWindows => 'Uruchom ponownie do Windows';

  @override
  String get restartIntoWindowsTitle => 'Uruchomić ponownie do Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Czy na pewno chcesz ponownie uruchomić komputer? Później należy ponownie uruchomić instalację $DISTRO, aby zakończyć instalowanie $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Witaj w $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Dostępne:';

  @override
  String get installationSlidesIncluded => 'Dołączone:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Szybki, darmowy i pełen nowych funkcji';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Najnowsza wersja $DISTRO sprawia, że korzystanie z komputera jest łatwiejsze niż kiedykolwiek.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Niezależnie od tego, czy jesteś programistą, twórcą, graczem czy administratorem, w $RELEASE znajdziesz nowe narzędzia, które poprawią produktywność i wrażenia.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Wszystkie potrzebne aplikacje';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Instaluj, zarządzaj i aktualizuj wszystkie aplikacje w Ubuntu Software, w tym tysiące aplikacji zarówno ze Snap Store, jak i archiwum $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Twórz z wykorzystaniem najlepszych rozwiązań open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO to idealna stacja robocza do tworzenia aplikacji lub stron internetowych, nauki o danych i sztucznej inteligencji/uczenia maszynowego, a także DevOps i administracji. Każda wersja $DISTRO zawiera najnowsze zestawy narzędzi i obsługuje wszystkie główne IDE.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Zwiększ swoją kreatywność';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Jeśli zajmujesz się animacją, projektowaniem, tworzeniem wideo lub gier, możesz łatwo przenieść swoje przepływy pracy do $DISTRO dzięki obsłudze oprogramowania i aplikacji będących standardem branżowym oraz open source.';
  }

  @override
  String get installationSlidesGamingTitle => 'Świetny do gier';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO obsługuje najnowsze sterowniki NVIDIA i Mesa, aby poprawić wydajność i kompatybilność. Tysiące tytułów dla systemu Windows działają świetnie na $DISTRO za pośrednictwem aplikacji takich jak Steam, bez dodatkowej konfiguracji.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Prywatny i bezpieczny';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO zapewnia wszystkie narzędzia potrzebne do zachowania prywatności i bezpieczeństwa w Internecie. Umożliwia pełną kontrolę nad danymi dzięki wbudowanej zaporze sieciowej, obsłudze VPN oraz wielu aplikacjom zorientowanym na prywatność.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Wszystkie wersje $DISTRO LTS są dostarczane z pięcioletnim łataniem zabezpieczeń, które można wydłużyć do dziesięciu lat za pomocą subskrypcji Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'Zwiększ swoją produktywność';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop zawiera LibreOffice, pakiet kompatybilnych z Microsoft Office aplikacji open source do dokumentów, arkuszy kalkulacyjnych i prezentacji. Dostępne są również popularne narzędzia do współpracy.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Dostęp dla wszystkich';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'U podstaw filozofii $DISTRO leży przekonanie, że informatyka jest dla każdego. Dzięki zaawansowanym narzędziom ułatwień dostępu i opcjom zmiany języka, kolorów oraz rozmiaru tekstu $DISTRO sprawia, że korzystanie z komputera jest łatwe — kimkolwiek i gdziekolwiek jesteś.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Czytnik ekranu Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Obsługa języków';

  @override
  String get installationSlidesSupportTitle => 'Pomoc i wsparcie';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Oficjalna dokumentacja $DISTRO jest dostępna zarówno online, jak i poprzez ikonę Pomoc w doku.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Serwis Ask Ubuntu obejmuje szereg pytań i odpowiedzi, a Ubuntu Discourse zawiera przewodniki i dyskusje dla nowych i doświadczonych użytkowników.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Dla użytkowników korporacyjnych Canonical zapewnia komercyjne wsparcie, aby ułatwić wdrożenie i bezpieczne zarządzanie systemem Ubuntu w miejscu pracy.';

  @override
  String get installationSlidesSupportResources => 'Pomocne zasoby:';

  @override
  String get installationSlidesSupportDocumentation => 'Oficjalna dokumentacja';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Całodobowe wsparcie klasy korporacyjnej za pomocą Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Następny slajd';

  @override
  String get previousSlideSemanticLabel => 'Poprzedni slajd';

  @override
  String get playSlideshowSemanticLabel => 'Odtwórz pokaz slajdów';

  @override
  String get pauseSlideshowSemanticLabel => 'Wstrzymaj pokaz slajdów';

  @override
  String get toggleLogsSemanticLabel => 'Przełącz dzienniki instalacji';

  @override
  String get copyingFiles => 'Kopiowanie plików…';

  @override
  String get installingSystem => 'Instalowanie systemu…';

  @override
  String get configuringSystem => 'Konfigurowanie systemu…';

  @override
  String get installationFailed => 'Instalacja nieudana';

  @override
  String get notEnoughDiskSpaceTitle => 'Za mało przestrzeni dyskowej';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Za mało przestrzeni dyskowej do zainstalowania $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Na wybranym dysku nie ma wystarczającej ilości przestrzeni dyskowej, aby zainstalować $DISTRO. Zakończ instalator, aby zwolnić przestrzeń, lub wybierz inny dysk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Dostępna:';

  @override
  String get notEnoughDiskSpaceRequired => 'Wymagana:';

  @override
  String get refreshPageTitle => 'Dostępna aktualizacja';

  @override
  String get refreshHeader => 'Dostępna jest aktualizacja instalatora';

  @override
  String get refreshUpdateNow => 'Zaktualizuj teraz';

  @override
  String get refreshInfo =>
      'Zaktualizuj do najnowszej wersji, aby zwiększyć niezawodność i uzyskać więcej funkcji.';

  @override
  String get refreshReady => 'Aktualizacja przygotowana';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Bieżąca wersja $snap to $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Zaktualizuj do wersji $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Bieżąca wersja $version jest aktualna.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Aktualizowanie $snap...';
  }

  @override
  String get refreshRestart =>
      'Zamknij instalator i uruchom go ponownie, aby kontynuować';

  @override
  String get refreshCloseLabel => 'Zamknij instalator';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Sprawdzanie wymagań wstępnych $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Odświeżanie $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Sprawdzanie ponownego odświeżenia $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Przygotowywanie $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Pobieranie $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Sprawdzanie poprawności $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Montowanie $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Zatrzymywanie usług $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Usuwanie aliasów $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Odłączanie $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Aktualizowanie zasobów $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Aktualizowanie wiersza poleceń jądra $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopiowanie danych $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Konfigurowanie profili bezpieczeństwa $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Łączenie $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Łączenie wtyczek i gniazd $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Ustawianie automatycznych aliasów $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Konfigurowanie aliasów $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Uruchamianie usług $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Czyszczenie $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Klucz odzyskiwania';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Ważne';

  @override
  String get recoveryKeyHeader => 'Zapisz klucz odzyskiwania';

  @override
  String get recoveryKeyInfoHeader =>
      'Bez klucza odzyskiwania możesz utracić wszystkie swoje dane';

  @override
  String get recoveryKeyTextFieldLabel => 'Klucz odzyskiwania';

  @override
  String get recoveryKeyStorageAdvice =>
      'Jeśli odszyfrowanie nie powiedzie się podczas uruchamiania, konieczne będzie podanie tego klucza odzyskiwania. Bez klucza utracisz dostęp do wszystkich swoich danych. Zapisz go w bezpiecznym miejscu, np. w menedżerze haseł.';

  @override
  String get recoveryKeyConfirmation =>
      'Mam zapisany klucz odzyskiwania w bezpiecznym miejscu';

  @override
  String get recoveryKeyLinkLabel => 'Dowiedz się więcej';

  @override
  String get recoveryKeySaveToFileLabel => 'Zapisz do pliku';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Pokaż kod QR';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Klucz odzyskiwania';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Zeskanuj kod QR, aby skopiować klucz odzyskiwania i zapisać go w bezpiecznym miejscu, np. w menedżerze haseł. Możesz również zrobić zdjęcie do późniejszego wykorzystania.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Skopiowano do schowka';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Plik klucza odzyskiwania nie został zapisany';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Pliku klucza odzyskiwania nie można zapisać w lokalizacji tymczasowej';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Nieznany błąd';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Nie masz uprawnień do zapisu w tym folderze. Spróbuj innej lokalizacji lub użyj innej metody.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Spróbuj innej lokalizacji, np. dysku wymiennego, lub użyj innej metody.';

  @override
  String get recoveryKeyFilePickerTitle => 'Zapisz plik klucza odzyskiwania';

  @override
  String get recoveryKeyFilePickerFilter => 'Pliki tekstowe';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Zeskanuj kod QR lub wprowadź poniższy kod na <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Instalacja zautomatyzowana';

  @override
  String get landscapeHeader => 'Zaloguj się do Landscape';

  @override
  String get landscapeDomainHeader => 'Wprowadź domenę Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Domena Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Podaj domenę Landscape swojej organizacji, aby się zalogować i pobrać plik autoinstalacji. Możesz uzyskać FQDN od pomocy technicznej.';

  @override
  String get landscapeDomainTextField => 'Domena Landscape (FQDN)';

  @override
  String get next => 'Dalej';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Nieprawidłowa domena, sprawdź lub skontaktuj się z pomocą techniczną';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Połącz się z Internetem, aby kontynuować';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Do pobrania pliku autoinstalacji z Landscape potrzebny jest Internet';

  @override
  String get landscapeCodeExpiredWarning => 'Kod wygasł, spróbuj ponownie';

  @override
  String get landscapeLoginFailedWarning =>
      'Logowanie nie powiodło się, spróbuj ponownie';

  @override
  String get landscapeErrorPageTitle =>
      'Automatyczna instalacja nie jest dostępna dla Twojego konta';

  @override
  String get landscapeErrorPageBody =>
      'Skontaktuj się ze swoim wsparciem IT lub wypróbuj inną opcję instalacji.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Kod błędu: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu zostanie zainstalowany z konfiguracją dostarczoną przez Twoją organizację';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Poniżej możesz przejrzeć plik autoinstalacji zaimportowany z Landscape.';

  @override
  String get successIconSemanticLabel => 'Powodzenie';

  @override
  String get errorIconSemanticLabel => 'Błąd';

  @override
  String get closeIconSemanticLabel => 'Zamknij';

  @override
  String get maximizeIconSemanticLabel => 'Maksymalizuj';

  @override
  String get minimizeIconSemanticLabel => 'Minimalizuj';

  @override
  String get tpmActionPageTitle =>
      'Hardware-backed encryption could not be enabled';

  @override
  String get tpmActionBadgeLabel => 'Action required';

  @override
  String get tpmActionDetailsLabel => 'Technical details';

  @override
  String get tpmActionConfirmLabel => 'Confirm';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Solution $n: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel => 'Link to documentation';

  @override
  String get tpmActionErrorSupportLabel =>
      'Try the solutions below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorKindInternal => 'Internal';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Shutdown Required';

  @override
  String get tpmActionErrorKindRebootRequired => 'Reboot Required';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Unexpected Action';

  @override
  String get tpmActionErrorKindMissingArgument => 'Missing Argument';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Invalid Argument';

  @override
  String get tpmActionErrorKindActionFailed => 'Action Failed';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'The current environment is a virtual machine.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'This computer is using older firmware (legacy BIOS) that is not compatible with this encryption method.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'There is an issue with this computer\'s firmware settings.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'This computer does not have the required security hardware (TPM 2.0) for this encryption method.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'This computer\'s TPM is disabled.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'This computer\'s TPM is already in use by another system or application.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'This computer\'s TPM is currently locked.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'This computer\'s TPM does not have enough storage available.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'This computer is not compatible with hardware-backed encryption.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI debugging is enabled';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'This computer is missing a required security feature (DMA protection).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'This computer is missing a required security feature (kernel IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'There is an issue with this computer\'s security settings.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'There is software running at startup that may prevent a secure connection with the computer\'s TPM.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Absolute Persistence Module is enabled in this computer.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Secure boot is disabled in this computer or is not configured in \"deployed\" mode.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Some of the certificates verifying components in this computer are outdated or use weak protection.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'This computer is using a manual allowlist to verify software at startup.';

  @override
  String get tpmActionErrorKindAddonDriversPresent => 'Addon Drivers Present';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'There is an issue with this computer\'s TPM.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'There is an issue with this computer\'s firmware.';

  @override
  String get tpmActionFixActionReboot => 'Restart';

  @override
  String get tpmActionFixActionShutdown => 'Power off';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Restart to firmware settings';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Enable secure boot manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Enable PCR banks manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Enable TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Disable Absolute Persistence Module manually';

  @override
  String get tpmActionFixActionContactOem => 'Contact OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Contact OS Vendor';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware => 'Enable TPM on restart';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Enable and clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpm => 'Clear TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignore';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Restart the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Restarting the computer may fix the issue.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Power off the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'You can do this in you computer\'s firmware settings.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'You may be able to do this in you computer\'s firmware settings. Check the documentation of the CPU vendor for guidance.';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Ignoring the issue may result in a less secure installation.';

  @override
  String get tpmActionRestartLabel => 'Restart';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Restart and enable TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Restart and clear TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignore and continue';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Clearing the TPM erases all encryption keys';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'You will lose access to all data in encrypted drives for which you do not have recovery keys. It will also break other features that depend on the TPM, such as authentication and certificates.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'I understand the consequences of clearing the TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'You may be asked to confirm this action on restart.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'You will then have to retry installation from scratch.';

  @override
  String get tpmActionErrorTitle => 'This solution failed';

  @override
  String get tpmActionErrorDescription =>
      'Try a different solution or contact IT support';

  @override
  String get manualPartitioningWarningBody =>
      'Try something else. You may also <a href=\"\">send an error report</a>.';
}
