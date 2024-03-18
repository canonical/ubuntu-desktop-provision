import 'ubuntu_bootstrap_localizations.dart';

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
  String get autoinstallTitle => 'Type of installation';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'How would you like to install $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Enter the autoinstall.yaml URL.';

  @override
  String get autoinstallInteractiveOption => 'Interactive installation';

  @override
  String get autoinstallInteractiveDescription => 'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallAutomatedOption => 'Automated installation';

  @override
  String get autoinstallAutomatedDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get changeButtonText => 'Zmień';

  @override
  String get quitButtonText => 'Zakończ instalację';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Witaj w $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Przygotowywanie $DISTRO…';
  }

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Wypróbuj lub zainstaluj $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
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
    return 'Możesz chcieć przeczytać <a href=\"$url\">informacje o wydaniu</a>.';
  }

  @override
  String get rstTitle => 'Funkcja RST jest włączona';

  @override
  String get rstHeader => 'Wyłącz funkcję RST, aby kontynuować';

  @override
  String rstDescription(String DISTRO) {
    return 'Ten komputer wykorzystuje funkcję Intel RST (Rapid Storage Technology). Musisz wyłączyć RST w systemie Windows przed instalacją Ubuntu.';
  }

  @override
  String rstInstructions(String url) {
    return 'Aby uzyskać instrukcje, zeskanuj kod QR na innym urządzeniu lub odwiedź: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Skonfiguruj bezpieczny rozruch (Secure Boot)';

  @override
  String get configureSecureBootDescription => 'Wybrano instalację oprogramowania sterownika innego dostawcy. Wymaga to wyłączenia bezpiecznego rozruchu (Secure Boot).\nAby to zrobić, musisz teraz wybrać klucz bezpieczeństwa i podać go po ponownym uruchomieniu systemu.';

  @override
  String get configureSecureBootOption => 'Skonfiguruj bezpieczny rozruch (Secure Boot)';

  @override
  String get chooseSecurityKey => 'Wybierz klucz bezpieczeństwa';

  @override
  String get confirmSecurityKey => 'Potwierdź klucz bezpieczeństwa';

  @override
  String get dontInstallDriverSoftwareNow => 'Na razie nie instaluj oprogramowania sterownika';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Możesz zainstalować je później za pomocą aplikacji Oprogramowanie i aktualizacje.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Wymagany jest klucz bezpieczeństwa';

  @override
  String get secureBootSecurityKeysDontMatch => 'Klucze bezpieczeństwa nie są zgodne';

  @override
  String get showSecurityKey => 'Pokaż klucz bezpieczeństwa';

  @override
  String get hideSecurityKey => 'Hide';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplikacje i aktualizacje';

  @override
  String get updatesOtherSoftwarePageDescription => 'Jakie programy chcesz zainstalować na początek?';

  @override
  String get codecsAndDriversPageTitle => 'Optimise your computer';

  @override
  String get codecsAndDriversPageDescription => 'Install recommended proprietary software?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO ships with no proprietary software by default. Installing additional software may improve your computer\'s performance.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA graphics card detected';

  @override
  String get codecsAndDriversNvidiaBody => 'For the best performance of NVIDIA graphic cards, installing additional drivers is strongly recommended.';

  @override
  String get fullInstallationTitle => 'Instalacja pełna';

  @override
  String get fullInstallationSubtitle => 'Ukierunkowany na tryb offline wybór narzędzi biurowych, programów użytkowych, przeglądarki internetowej i gier.';

  @override
  String get minimalInstallationTitle => 'Instalacja domyślna';

  @override
  String get minimalInstallationSubtitle => 'Tylko niezbędne elementy, przeglądarka internetowa i podstawowe narzędzia.';

  @override
  String get otherOptions => 'Pozostałe opcje';

  @override
  String get installThirdPartyTitle => 'Zainstaluj oprogramowanie innych dostawców do obsługi sprzętu graficznego i Wi-Fi, a także dodatkowe formaty multimedialne';

  @override
  String get installThirdPartySubtitle => 'Oprogramowanie to podlega warunkom licencyjnym dołączonym do jego dokumentacji. Niektóre z nich są własnościowe.';

  @override
  String get installDriversTitle => 'Zainstaluj oprogramowanie innego dostawcy do sprzętu graficznego i Wi-Fi';

  @override
  String get installDriversSubtitle => 'Sterowniki te podlegają warunkom licencyjnym dołączonym do ich dokumentacji. Są one własnościowe.';

  @override
  String get installCodecsTitle => 'Pobierz i zainstaluj obsługę dodatkowych formatów multimediów';

  @override
  String get installCodecsSubtitle => 'Oprogramowanie to podlega warunkom licencyjnym dołączonym do jego dokumentacji. Niektóre jest własnościowe.';

  @override
  String onBatteryWarning(String color) {
    return '<font color=\"$color\">Ostrzeżenie:</font> komputer nie jest podłączony do źródła zasilania.';
  }

  @override
  String get offlineWarning => 'Jesteś obecnie offline';

  @override
  String get choosePassphraseTitle => 'Disk passphrase';

  @override
  String get choosePassphraseHeader => 'Create a passphrase';

  @override
  String get choosePassphraseBody => 'You need a passphrase to encrypt your files. You will be prompted for your passphrase every time you turn on your computer.';

  @override
  String get choosePassphraseHint => 'Choose a passphrase';

  @override
  String get choosePassphraseConfirmHint => 'Confirm the passphrase';

  @override
  String get choosePassphraseRequired => 'A passphrase is required';

  @override
  String get choosePassphraseMismatch => 'The passphrases do not match';

  @override
  String get choosePassphraseInfoHeader => 'Make sure you save your passphrase';

  @override
  String get choosePassphraseInfoBody => 'If you lose your passphrase, you will lose all of your data.';

  @override
  String get createPassphrase => 'Create a passphrase';

  @override
  String get confirmPassphrase => 'Confirm the passphrase';

  @override
  String get installationTypeTitle => 'Typ instalacji';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Na tym komputerze jest obecnie zainstalowany system $os. Co chcesz zrobić?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Na tym komputerze są obecnie zainstalowane systemy $os1 i $os2. Co chcesz zrobić?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Na tym komputerze jest obecnie zainstalowanych wiele systemów operacyjnych. Co chcesz zrobić?';

  @override
  String get installationTypeNoOSDetected => 'Na tym komputerze nie ma obecnie wykrytych systemów operacyjnych. Co chcesz zrobić?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Wymaż dysk i zainstaluj $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Start from scratch on your selected disk.';

  @override
  String get installationTypeAdvancedLabel => 'Zaawansowane funkcje…';

  @override
  String get installationTypeAdvancedTitle => 'Zaawansowane funkcje';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Brak';

  @override
  String get installationTypeNoneSelected => 'Nie wybrano';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'Wybrano LVM';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'Wybrano LVM i szyfrowanie';

  @override
  String get installationTypeEncryptInfo => 'Klucz bezpieczeństwa zostanie wybrany w następnym kroku.';

  @override
  String get installationTypeZFS => 'EKSPERYMENTALNE: wymaż dysk i użyj ZFS';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'Wybrano ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'EKSPERYMENTALNE: włącz sprzętowe szyfrowanie całego dysku';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware of future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before your choose this option.';
  }

  @override
  String get installationTypeTPMSelected => 'Wybrano moduł TPM';

  @override
  String installationTypeReinstall(String os) {
    return 'Wymaż $os i zainstaluj ponownie';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Ostrzeżenie:</font> spowoduje to usunięcie wszystkich programów $os, dokumentów, zdjęć, muzyki i wszelkich innych plików.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Zainstaluj $product obok $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Zainstaluj $product obok $os1 i $os2';
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
  String get installationTypeAlongsideInfo => 'Dokumenty, muzyka i inne pliki osobiste zostaną zachowane. Przy każdym uruchomieniu komputera można wybrać system operacyjny, który ma być używany.';

  @override
  String get installationTypeManual => 'Ręczne partycjonowanie';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Możesz samodzielnie utworzyć lub zmienić rozmiar partycji lub wybrać wiele partycji dla $DISTRO';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Wymaż dysk i zainstaluj $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDropdownLabel => 'Wybierz napęd:';

  @override
  String get selectGuidedStorageInfoLabel => 'Zostanie użyta cała powierzchnia dysku:';

  @override
  String get selectGuidedStorageInstallNow => 'Zainstaluj teraz';

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
  String get newPartitionTableConfirmationMessage => 'Utworzenie nowej tabeli partycji na całym urządzeniu spowoduje usunięcie wszystkich jego bieżących partycji. Operację tę można cofnąć w razie potrzeby.';

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
  String get confirmHeader => 'Jeśli będziesz kontynuować, zmiany wymienione poniżej zostaną zapisane na dyskach. Będzie można wprowadzać dalsze zmiany ręcznie.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'None';

  @override
  String get confirmDevicesTitle => 'Urządzenia';

  @override
  String get confirmEntryApplications => 'Applications';

  @override
  String get confirmEntryDiskSetup => 'Disk setup';

  @override
  String get confirmEntryDiskEncryption => 'Disk encryption';

  @override
  String get confirmEntryInstallationDisk => 'Installation disk';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietary software';

  @override
  String get confirmSectionGeneralTitle => 'General';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Security & more';

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
    return 'partycja <b>$sysname</b> zmieniła rozmiar z <b>$oldsize</b> na <b>$newsize</b>';
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
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & drivers';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivers';

  @override
  String get confirmInstallButton => 'Instaluj';

  @override
  String get installationCompleteTitle => 'Instalacja zakończona';

  @override
  String readyToUse(String system) {
    return '**$system** został zainstalowany i jest gotowy do użycia';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return 'Uruchom ponownie do $system';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make not be saved.';

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

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
    return 'Czy na pewno chcesz ponownie uruchomić komputer? Później będziesz musieć ponownie uruchomić instalację $DISTRO, aby zakończyć instalowanie $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Witaj w $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Dostępne:';

  @override
  String get installationSlidesIncluded => 'Dołączone:';

  @override
  String get installationSlidesWelcomeTitle => 'Szybki, darmowy i pełen nowych funkcji';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Najnowsza wersja $DISTRO sprawia, że korzystanie z komputera jest łatwiejsze niż kiedykolwiek.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Niezależnie od tego, czy jesteś programistą, twórcą, graczem czy administratorem, w $RELEASE znajdziesz nowe narzędzia, które poprawią produktywność i wrażenia.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Wszystkie potrzebne aplikacje';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Instaluj, zarządzaj i aktualizuj wszystkie aplikacje w Ubuntu Software, w tym tysiące aplikacji zarówno z Snap Store, jak i archiwum $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Twórz z wykorzystaniem najlepszych rozwiązań open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO to idealna stacja robocza do tworzenia aplikacji lub stron internetowych, nauki o danych i sztucznej inteligencji/uczenia maszynowego, a także DevOps i administracji. Każda wersja $DISTRO zawiera najnowsze zestawy narzędzi i obsługuje wszystkie główne IDE.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Zwiększ swoją kreatywność';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Jeśli zajmujesz się animacją, projektowaniem, tworzeniem wideo lub gier, możesz łatwo przenieść swoje przepływy pracy do $DISTRO dzięki obsłudze oprogramowania i aplikacji będących standardem branżowym oraz open source.';
  }

  @override
  String get installationSlidesGamingTitle => 'Świetny do gier';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO obsługuje najnowsze sterowniki NVIDIA i Mesa, aby poprawić wydajność i kompatybilność. Tysiące tytułów dla systemu Windows działa świetnie na $DISTRO za pośrednictwem aplikacji takich jak Steam bez dodatkowej konfiguracji.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Prywatny i bezpieczny';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO zapewnia wszystkie narzędzia potrzebne do zachowania prywatności i bezpieczeństwa w Internecie. Dzięki wbudowanej zaporze sieciowej, obsłudze VPN oraz wielu aplikacjom zorientowanym na prywatność, aby zapewnić pełną kontrolę nad danymi.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Wszystkie wersje $DISTRO LTS są dostarczane z pięcioletnim łataniem zabezpieczeń, które można wydłużyć do dziesięciu lat za pomocą subskrypcji Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Zwiększ swoją produktywność';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop zawiera LibreOffice, pakiet kompatybilnych z Microsoft Office aplikacji open source do dokumentów, arkuszy kalkulacyjnych i prezentacji. Dostępne są również popularne narzędzia do współpracy.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Dostęp dla wszystkich';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'U podstaw filozofii $DISTRO leży przekonanie, że informatyka jest dla każdego. Dzięki zaawansowanym narzędziom ułatwień dostępu i opcjom zmiany języka, kolorów oraz rozmiaru tekstu $DISTRO sprawia, że korzystanie z komputera jest łatwe — kimkolwiek i gdziekolwiek jesteś.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Czytnik ekranu Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Obsługa języków';

  @override
  String get installationSlidesSupportTitle => 'Pomoc i wsparcie';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Oficjalna dokumentacja $DISTRO jest dostępna zarówno online, jak i za pośrednictwem ikony Pomoc umieszczonej w doku.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Serwis Ask Ubuntu obejmuje szereg pytań i odpowiedzi, a Ubuntu Discourse zawiera przewodniki i dyskusje dla nowych i doświadczonych użytkowników.';

  @override
  String get installationSlidesSupportEnterprise => 'Dla użytkowników korporacyjnych Canonical zapewnia komercyjne wsparcie, aby ułatwić wdrożenie i bezpieczne zarządzanie systemem Ubuntu w miejscu pracy.';

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
  String get notEnoughDiskSpaceTitle => 'Za mało przestrzeni';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Za mało przestrzeni na dysku do zainstalowania $DISTRO';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Dostępna:';

  @override
  String get notEnoughDiskSpaceRequired => 'Wymagana:';

  @override
  String get refreshPageTitle => 'Dostępna aktualizacja';

  @override
  String get refreshHeader => 'An update is available for the installer';

  @override
  String get refreshUpdateNow => 'Update now';

  @override
  String get refreshInfo => 'Update to the latest version for improved reliability and more features.';

  @override
  String get refreshReady => 'Update ready';

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
  String get refreshRestart => 'Uruchom ponownie instalator.';

  @override
  String get refreshCloseLabel => 'Close installer';

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
    return 'Łączenie wtyczek i gniazd $snap...';
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
    return '<font color=\"$color\">Ostrzeżenie:</font> jeśli zgubisz ten klucz bezpieczeństwa, wszystkie dane zostaną utracone. W razie potrzeby zapisz swój klucz i przechowuj go w bezpiecznym miejscu gdzie indziej.';
  }

  @override
  String get validate => 'Validate';
}
