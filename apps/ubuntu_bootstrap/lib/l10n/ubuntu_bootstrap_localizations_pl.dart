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
  String get autoinstallDirectTitle => 'Automated installation';

  @override
  String get autoinstallDirectHeader => 'Import autoinstall file';

  @override
  String get autoinstallDirectUrlLabel => 'You can enter the URL of an autoinstall file:';

  @override
  String get autoinstallDirectFileLabel => 'Or select a local file:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Select file...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Clear file';

  @override
  String get autoinstallDirectFilePickerTitle => 'Choose file';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML files';

  @override
  String get autoinstallDirectImportButtonLabel => 'Import';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Autoinstall file is not reachable';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Check the URL is correct, test your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Check the file or provide a different one.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Unknown error';

  @override
  String get autoinstallTitle => 'Rodzaj instalacji';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Jak chcesz zainstalować $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Wpisz adres URL pliku autoinstall.yaml lub ścieżkę pliku lokalnego:';

  @override
  String get autoinstallInteractiveOption => 'Instalacja interaktywna';

  @override
  String get autoinstallInteractiveDescription => 'Dla użytkowników, którzy chcą być prowadzeni krok po kroku przez instalację.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

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
  String get tryOrInstallRepairDescription => 'Naprawa spowoduje ponowną instalację całego zainstalowanego oprogramowania bez naruszania dokumentów lub ustawień.';

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
  String get rstHeader => 'Wyłącz funkcję RST, aby kontynuować';

  @override
  String rstDescription(String DISTRO) {
    return 'Ten komputer wykorzystuje funkcję Intel RST (Rapid Storage Technology). Musisz wyłączyć RST w systemie Windows przed instalacją $DISTRO.';
  }

  @override
  String rstInstructions(String url) {
    return 'Aby uzyskać instrukcje, zeskanuj kod QR na innym urządzeniu lub odwiedź: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Skonfiguruj bezpieczny rozruch (Secure Boot)';

  @override
  String get configureSecureBootDescription => 'Wybrano instalację oprogramowania sterownika innego dostawcy. Wymaga to wyłączenia bezpiecznego rozruchu (Secure Boot).\nAby to zrobić, musisz teraz wybrać klucz bezpieczeństwa i podać go po ponownym uruchomieniu systemu.';

  @override
  String get configureSecureBootOption => 'Skonfiguruj bezpieczny rozruch (Secure Boot)';

  @override
  String get chooseSecurityKey => 'Wybierz klucz bezpieczeństwa';

  @override
  String get confirmSecurityKey => 'Potwierdź klucz bezpieczeństwa';

  @override
  String get dontInstallDriverSoftwareNow => 'Na razie nie instaluj oprogramowania sterownika';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Możesz zainstalować je później za pomocą aplikacji Oprogramowanie i aktualizacje.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Wymagany jest klucz bezpieczeństwa';

  @override
  String get secureBootSecurityKeysDontMatch => 'Klucze bezpieczeństwa nie są zgodne';

  @override
  String get showSecurityKey => 'Pokaż klucz bezpieczeństwa';

  @override
  String get hideSecurityKey => 'Ukryj';

  @override
  String get updatesOtherSoftwarePageTitle => 'Programy';

  @override
  String get updatesOtherSoftwarePageDescription => 'Jakie programy chcesz zainstalować na początek?';

  @override
  String get codecsAndDriversPageTitle => 'Zoptymalizuj swój komputer';

  @override
  String get codecsAndDriversPageDescription => 'Zainstalować zalecane oprogramowanie własnościowe?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'Domyślnie $DISTRO nie dostarcza żadnego oprogramowania własnościowego. Zainstalowanie dodatkowego oprogramowania może poprawić wydajność komputera.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Wykryto kartę graficzną NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody => 'Aby uzyskać najlepszą wydajność kart graficznych NVIDIA, zdecydowanie zaleca się zainstalowanie dodatkowych sterowników.';

  @override
  String get fullInstallationTitle => 'Rozszerzony wybór';

  @override
  String get fullInstallationSubtitle => 'Ukierunkowany na tryb offline wybór narzędzi biurowych, programów użytkowych oraz przeglądarka internetowa.';

  @override
  String get minimalInstallationTitle => 'Domyślny wybór';

  @override
  String get minimalInstallationSubtitle => 'Tylko niezbędne elementy, przeglądarka internetowa i podstawowe narzędzia.';

  @override
  String get otherOptions => 'Pozostałe opcje';

  @override
  String get installThirdPartyTitle => 'Zainstaluj oprogramowanie innych dostawców do obsługi sprzętu graficznego i Wi-Fi, a także dodatkowe formaty multimedialne';

  @override
  String get installThirdPartySubtitle => 'Oprogramowanie to podlega warunkom licencyjnym dołączonym do jego dokumentacji. Niektóre z nich są własnościowe.';

  @override
  String get installDriversTitle => 'Zainstaluj oprogramowanie innego dostawcy do sprzętu graficznego i Wi-Fi';

  @override
  String get installDriversSubtitle => 'W tym między innymi sterowniki NVIDIA i podobne';

  @override
  String get installCodecsTitle => 'Pobierz i zainstaluj obsługę dodatkowych formatów multimediów';

  @override
  String get installCodecsSubtitle => 'W tym między innymi MP3, MP4, MOV i podobne';

  @override
  String get batteryWarning => 'Komputer nie jest podłączony do źródła zasilania.';

  @override
  String get offlineWarning => 'Jesteś obecnie offline';

  @override
  String get choosePassphraseTitle => 'Hasło dysku';

  @override
  String get choosePassphraseHeader => 'Utwórz hasło';

  @override
  String get choosePassphraseBody => 'Aby zaszyfrować pliki, potrzebujesz hasła. Przy każdym włączeniu komputera będzie wymagane podanie hasła.';

  @override
  String get choosePassphraseHint => 'Wybierz hasło';

  @override
  String get choosePassphraseConfirmHint => 'Potwierdź hasło';

  @override
  String get choosePassphraseRequired => 'Wymagane jest hasło';

  @override
  String get choosePassphraseMismatch => 'Hasła nie pasują do siebie';

  @override
  String get choosePassphraseInfoHeader => 'Pamiętaj, aby zapisać swoje hasło';

  @override
  String get choosePassphraseInfoBody => 'Jeśli zgubisz hasło, utracisz wszystkie swoje dane.';

  @override
  String get createPassphrase => 'Utwórz hasło';

  @override
  String get confirmPassphrase => 'Potwierdź hasło';

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
  String get installationTypeMultiOSDetected => 'Na tym komputerze jest obecnie zainstalowanych wiele systemów operacyjnych. Co chcesz zrobić?';

  @override
  String get installationTypeNoOSDetected => 'Na tym komputerze nie ma obecnie wykrytych systemów operacyjnych. Co chcesz zrobić?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Wymaż dysk i zainstaluj $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Zacznij od zera na wybranym dysku.';

  @override
  String get installationTypeAdvancedLabel => 'Zaawansowane funkcje…';

  @override
  String get installationTypeAdvancedTitle => 'Zaawansowane funkcje';

  @override
  String get installationTypeExperimental => 'Eksperymentalne';

  @override
  String get installationTypeNone => 'Brak';

  @override
  String get installationTypeNoneSelected => 'Nie wybrano';

  @override
  String get installationTypeLVM => 'Użyj LVM';

  @override
  String get installationTypeLVMSelected => 'Wybrano LVM';

  @override
  String get installationTypeLVMEncryption => 'Użyj LVM i szyfrowania';

  @override
  String get installationTypeLVMEncryptionSelected => 'Wybrano LVM i szyfrowanie';

  @override
  String get installationTypeEncryptInfo => 'Klucz bezpieczeństwa zostanie wybrany w następnym kroku.';

  @override
  String get installationTypeZFS => 'Wymaż dysk i użyj ZFS';

  @override
  String get installationTypeZFSEncryption => 'Wymaż dysk i użyj ZFS z szyfrowaniem';

  @override
  String get installationTypeZFSSelected => 'Wybrano ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'Wybrano ZFS i szyfrowanie';

  @override
  String get installationTypeTPM => 'EKSPERYMENTALNE: włącz sprzętowe szyfrowanie całego dysku';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Jest to funkcja eksperymentalna. Może nie działać z tym sprzętem lub przyszłymi wydaniami $DISTRO. <a href=\"$url\">Przeczytaj o szyfrowaniu TPM</a>, zanim wybierzesz tę opcję.';
  }

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
    return 'Zainstaluj $product obok nich';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Zainstaluj $product obok innych partycji';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Dokumenty, muzyka i inne pliki osobiste zostaną zachowane. Przy każdym uruchomieniu komputera można wybrać system operacyjny, który ma być używany.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Erase $os and install $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'All files and data from the existing $os installation will be permanently deleted.';
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
  String get selectGuidedStorageInfoLabel => 'Zostanie użyta cała powierzchnia dysku:';

  @override
  String get selectGuidedStorageInstallNow => 'Zainstaluj teraz';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Wybierz miejsce instalacji $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Przydziel przestrzeń dyskową, przesuwając poniższą podziałkę:';

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
  String get allocateDiskSpaceInvalidMountPointSlash => 'Punkty montowania muszą zaczynać się od „/”';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Punkty montowania nie mogą zawierać spacji';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
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
  String get newPartitionTableConfirmationMessage => 'Utworzenie nowej tabeli partycji na całym urządzeniu spowoduje usunięcie wszystkich jego bieżących partycji. Operację tę można cofnąć w razie potrzeby.';

  @override
  String get tooManyPrimaryPartitions => 'Zbyt wiele partycji podstawowych';

  @override
  String get partitionLimitReached => 'Osiągnięto limit';

  @override
  String get bootLoaderDevice => 'Urządzenie do instalacji programu rozruchowego';

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
  String get confirmEntryDiskSetup => 'Konfiguracja dysku';

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
  String get confirmPartitionTables => 'Zmieniane są tablice partycji następujących urządzeń:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Zostaną zastosowane następujące zmiany partycji:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'partycja <b>$sysname</b> zmieniła rozmiar z <b>$oldsize</b> na <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'partycja <b>$sysname</b> sformatowana jako <b>$format</b> używana do <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'partycja <b>$sysname</b> sformatowana jako <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'partycja <b>$sysname</b> używana do <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'utworzona partycja <b>$sysname</b>';
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
  String get restartWarningBody => 'Uruchom ponownie w celu dokończenia instalacji lub kontynuuj testowanie.\nWszelkie wprowadzone zmiany nie zostaną zapisane.';

  @override
  String get rebootToConfigureWarning => 'Musisz ponownie uruchomić komputer, aby kontynuować proces instalacji.';

  @override
  String get shutdown => 'Zamknij';

  @override
  String get restartNow => 'Uruchom ponownie teraz';

  @override
  String get continueTesting => 'Kontynuuj testowanie';

  @override
  String get bitlockerTitle => 'Funkcja BitLocker jest włączona';

  @override
  String get bitlockerHeader => 'Wyłącz funkcję BitLocker, aby kontynuować';

  @override
  String bitlockerDescription(String option) {
    return 'Ten komputer używa szyfrowania Windows BitLocker.\nNależy użyć systemu Windows do utworzenia wolnej przestrzeni lub wybrać \'$option\', aby kontynuować.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Aby uzyskać instrukcje, zeskanuj kod QR na innym urządzeniu lub odwiedź: <a href=\"https://$url\">$url</a>';
  }

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
  String get installationSlidesWelcomeTitle => 'Szybki, darmowy i pełen nowych funkcji';

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
  String get installationSlidesDevelopmentTitle => 'Twórz z wykorzystaniem najlepszych rozwiązań open source';

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
  String get installationSlidesProductivityTitle => 'Zwiększ swoją produktywność';

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
    return 'Oficjalna dokumentacja $DISTRO jest dostępna zarówno online, jak i poprzez ikonę Pomoc w doku.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Serwis Ask Ubuntu obejmuje szereg pytań i odpowiedzi, a Ubuntu Discourse zawiera przewodniki i dyskusje dla nowych i doświadczonych użytkowników.';

  @override
  String get installationSlidesSupportEnterprise => 'Dla użytkowników korporacyjnych Canonical zapewnia komercyjne wsparcie, aby ułatwić wdrożenie i bezpieczne zarządzanie systemem Ubuntu w miejscu pracy.';

  @override
  String get installationSlidesSupportResources => 'Pomocne zasoby:';

  @override
  String get installationSlidesSupportDocumentation => 'Oficjalna dokumentacja';

  @override
  String get installationSlidesSupportUbuntuPro => 'Całodobowe wsparcie klasy korporacyjnej za pomocą Ubuntu Pro';

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
  String get refreshInfo => 'Zaktualizuj do najnowszej wersji, aby zwiększyć niezawodność i uzyskać więcej funkcji.';

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
  String get refreshRestart => 'Zamknij instalator i uruchom go ponownie, aby kontynuować';

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
  String get recoveryKeyTitle => 'Klucz odzyskiwania modułu TPM';

  @override
  String get recoveryKeyCommand => 'Możesz uzyskać dostęp do klucza odzyskiwania po instalacji za pomocą następującego polecenia:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Ostrzeżenie:</font> jeśli zgubisz ten klucz bezpieczeństwa, wszystkie dane zostaną utracone. W razie potrzeby zapisz swój klucz i przechowuj go w bezpiecznym miejscu gdzie indziej.';
  }

  @override
  String landscapeMagicAttachInstructions(Object url) {
    return 'Scan the QR code or enter the code below at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automated installation';

  @override
  String get landscapeHeader => 'Log in to Landscape';
}
