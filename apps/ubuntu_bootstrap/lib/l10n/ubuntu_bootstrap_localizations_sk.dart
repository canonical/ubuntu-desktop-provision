import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class UbuntuBootstrapLocalizationsSk extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Inštalátor plochy Ubuntu';

  @override
  String windowTitle(String RELEASE) {
    return 'Nainštalovať $RELEASE';
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
  String get autoinstallDirectErrorNetworkBody => 'Please check the URL is correct, check your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Please check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Please check or provide a different file.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Please check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Unknown error';

  @override
  String get autoinstallTitle => 'Typ inštalácie';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Ako by ste chceli nainštalovať $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Zadajte autoinstall.yaml URL alebo cestu k lokálnemu súboru:';

  @override
  String get autoinstallInteractiveOption => 'Interaktívna inštalácia';

  @override
  String get autoinstallInteractiveDescription => 'Pre používateľov, ktorí chcú byť prevedení inštaláciou krok za krokom.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get changeButtonText => 'Zmeniť';

  @override
  String get quitButtonText => 'Ukončiť inštaláciu';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Vitajte v $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Pripravuje sa $DISTRO…';
  }

  @override
  String get warningLabel => 'Upozornenie:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Vyskúšať alebo nainštalovať $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Čo chcete urobiť s $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Opraviť inštaláciu';

  @override
  String get tryOrInstallRepairDescription => 'Opravou preinštalujete všetok nainštalovaný softvér bez toho, aby sa to dotklo dokumentov alebo nastavení.';

  @override
  String tryOption(String RELEASE) {
    return 'Vyskúšať $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Môžete vyskúšať $RELEASE bez vykonania zmien vo vašom počítači.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Nainštalovať $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Nainštalujte $RELEASE spoločne z (alebo namiesto) vášho operačného systému. Nemalo by to trvať dlho.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Možno si budete chcieť prečítať <a href=\"$url\">poznámky k vydaniu</a>.';
  }

  @override
  String get rstTitle => 'Zistené RST';

  @override
  String get rstHeader => 'Ak chcete pokračovať, vypnite RST';

  @override
  String rstDescription(String DISTRO) {
    return 'Tento počítač používa technológiu Intel RST (Rapid Storage Technology). Pred inštaláciou $DISTRO musíte vo Windowse vypnúť RST.';
  }

  @override
  String rstInstructions(String url) {
    return 'Ohľadne pokynov naskenujte QR kód na inom zariadení alebo choďte na: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Nastaviť Secure Boot';

  @override
  String get configureSecureBootDescription => 'Vybrali ste nainštalovať ovládač hardvéru, pochádzajúci od tretej strany. Aby to bolo možné, je potrebné vypnúť Secure Boot.\nTo urobíte vytvorením kľúča zabezpečenia a jeho následným zadaním po reštarte systému.';

  @override
  String get configureSecureBootOption => 'Nastaviť Secure Boot';

  @override
  String get chooseSecurityKey => 'Vyberte bezpečnostný kľúč';

  @override
  String get confirmSecurityKey => 'Zopakujte zadanie bezpečnostného kľúča';

  @override
  String get dontInstallDriverSoftwareNow => 'Zatiaľ neinštalujte softvér ovládača';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Je ho možné nainštalovať kedykoľvek neskôr pomocou nástroja Softvér a aktualizácie.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Je potrebné zadať kľúč zabezpečenia';

  @override
  String get secureBootSecurityKeysDontMatch => 'Bezpečnostné kľúče sa nezhodujú';

  @override
  String get showSecurityKey => 'Zobraziť';

  @override
  String get hideSecurityKey => 'Skryť';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplikácie';

  @override
  String get updatesOtherSoftwarePageDescription => 'Aké aplikácie by ste chceli teraz nainštalovať?';

  @override
  String get codecsAndDriversPageTitle => 'Optimalizujte svoj počítač';

  @override
  String get codecsAndDriversPageDescription => 'Nainštalovať odporúčaný proprietárny softvér?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO sa štandardne dodáva bez proprietárneho softvéru. Inštalácia dodatočného softvéru môže zlepšiť výkon vášho počítača.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Zistila sa grafická karta NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody => 'Pre najlepší výkon grafických kariet NVIDIA sa dôrazne odporúča nainštalovať ďalšie ovládače.';

  @override
  String get fullInstallationTitle => 'Rozšírený výber';

  @override
  String get fullInstallationSubtitle => 'Výber vhodný pre režim off-line kancelárske nástroje, pomôcky a webový prehliadač.';

  @override
  String get minimalInstallationTitle => 'Predvolený výber';

  @override
  String get minimalInstallationSubtitle => 'Len to najnutnejšie, webový prehliadač a základné nástroje.';

  @override
  String get otherOptions => 'Ďalšie možnosti';

  @override
  String get installThirdPartyTitle => 'Nainštalovať ovládače tretích strán pre grafické čipy a adaptéry bezdrôtových Wi-Fi sietí, ako aj dodatočné kodeky multimédií';

  @override
  String get installThirdPartySubtitle => 'Tento softvér podlieha licenčným podmienkam, ktoré sú súčasťou jeho dokumentácie. Niektoré sú poprietárne.';

  @override
  String get installDriversTitle => 'Nainštalovať ovládače od tretích strán pre grafické čipy a Wi-Fi sieťové rozhrania';

  @override
  String get installDriversSubtitle => 'Vrátane ovládačov NVIDIA a ďalších ostatných';

  @override
  String get installCodecsTitle => 'Stiahnuť a nainštalovať podporu pre ďalšie formáty médií';

  @override
  String get installCodecsSubtitle => 'Vrátane MP3, MP4, MOV a ďalších ostatných';

  @override
  String get batteryWarning => 'Počítač nie je pripojený k zdroju napájania.';

  @override
  String get offlineWarning => 'V tejto chvíli nie ste pripojení';

  @override
  String get choosePassphraseTitle => 'Prístupová fráza disku';

  @override
  String get choosePassphraseHeader => 'Vytvorenie prístupovej frázy';

  @override
  String get choosePassphraseBody => 'Na šifrovanie súborov potrebujete prístupovú frázu. Pri každom zapnutí počítača sa zobrazí výzva na zadanie prístupovej frázy.';

  @override
  String get choosePassphraseHint => 'Vyberte prístupovú frázu';

  @override
  String get choosePassphraseConfirmHint => 'Zopakujte zadanie prístupovej frázy';

  @override
  String get choosePassphraseRequired => 'Je potrebné zadať prístupovú frázu';

  @override
  String get choosePassphraseMismatch => 'Prístupové frázy sa nezhodujú';

  @override
  String get choosePassphraseInfoHeader => 'Uistite sa, že ste si uložili svoju prístupovú frázu';

  @override
  String get choosePassphraseInfoBody => 'Ak stratíte prístupovú frázu, stratíte všetky svoje údaje.';

  @override
  String get createPassphrase => 'Vytvoriť prístupovú frázu';

  @override
  String get confirmPassphrase => 'Zopakujte zadanie prístupovej frázy';

  @override
  String get installationTypeTitle => 'Nastavenie disku';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Ako chcete nainštalovať $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Na tomto počítači sa už nachádza $os. Čo chcete urobiť?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Na tomto počítači sa už nachádzajú $os1 a $os2. Čo chcete urobiť?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Na tomto počítači sa v súčasnosti nachádza viacero operačných systémov. Čo chcete urobiť?';

  @override
  String get installationTypeNoOSDetected => 'Na tomto počítači sa teraz nezistil žiadny operačný systém. Čo chcete urobiť?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Vymazať disk a nainštalovať $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Začnite od začiatku na vybranom disku.';

  @override
  String get installationTypeAdvancedLabel => 'Pokročilé funkcie…';

  @override
  String get installationTypeAdvancedTitle => 'Pokročilé funkcie';

  @override
  String get installationTypeExperimental => 'Experimentálne';

  @override
  String get installationTypeNone => 'Žiadne';

  @override
  String get installationTypeNoneSelected => 'Nič nevybrané';

  @override
  String get installationTypeLVM => 'Použiť LVM';

  @override
  String get installationTypeLVMSelected => 'Vybrané LVM';

  @override
  String get installationTypeLVMEncryption => 'Použiť LVM a šifrovanie';

  @override
  String get installationTypeLVMEncryptionSelected => 'Vybrané LVM a šifrovanie';

  @override
  String get installationTypeEncryptInfo => 'V nasledujúcom kroku si zvolíte bezpečnostný kľúč.';

  @override
  String get installationTypeZFS => 'Vymazať disk a použiť ZFS';

  @override
  String get installationTypeZFSEncryption => 'Vymazať disk a použiť ZFS so šifrovaním';

  @override
  String get installationTypeZFSSelected => 'Vybrané ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'Vybrané ZFS a šifrovanie';

  @override
  String get installationTypeTPM => 'Zapnúť hardvérovo zálohované šifrovanie celého disku';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Toto je experimentálna funkcia. Nemusí fungovať s vaším hardvérom alebo budúcimi vydaniami $DISTRO. <a href=\"$url\">Prečítajte si o šifrovaní TPM</a> predtým, než si vyberiete túto možnosť.';
  }

  @override
  String get installationTypeTPMSelected => 'Vybrané TPM';

  @override
  String installationTypeReinstall(String os) {
    return 'Vymazať $os a preinštalovať';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">UPOZORNENIE:</font> Týmto vymažete všetky aplikácie, dokumenty, fotky, hudbu a všetky ostatné súbory, nachádzajúce sa v rámci $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Nainštalovať $product vedľa $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Nainštalovať $product vedľa $os1 a $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Nainštalovať $product vedľa nich';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Nainštalovať $product vedľa ostatných oddielov';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Počas zavádzania si môžete vybrať operačný systém.';
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
  String get installationTypeManual => 'Manuálna inštalácia';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Pre pokročilých používateľov, ktorí hľadajú prispôsobené nastavenia disku.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Vymazať disk a nainštalovať $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Začnite od začiatku na vybranom disku.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Vybrať jednotku:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Vybrať oddiel:';

  @override
  String get selectGuidedStorageInfoLabel => 'Bude použitý celý disk:';

  @override
  String get selectGuidedStorageInstallNow => 'Nainštalovať teraz';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Vyberte, kde sa má nainštalovať $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Prideľte miesto na disku potiahnutím rozdeľovača nižšie:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num menších oddielov je skrytých. Pokiaľ potrebujete mať nad procesom viac kontroly, použite <a href=\"$url\">nástroj pre pokročilú správu oddielov</a>';
  }

  @override
  String get installAlongsideResizePartition => 'Zmeniť veľkosť oddielu';

  @override
  String get installAlongsideAllocateSpace => 'Prideliť priestor';

  @override
  String get installAlongsideFiles => 'Súbory';

  @override
  String get installAlongsidePartition => 'Oddiel:';

  @override
  String get installAlongsideSize => 'Veľkosť:';

  @override
  String get installAlongsideAvailable => 'K dispozícii:';

  @override
  String get allocateDiskSpace => 'Manuálne rozdelenie';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Prípojné body musia začínať znakom „/“';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Prípojné body nemôžu obsahovať medzery';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format nie je podporovaným súborovým systémom pre $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Zariadenie';

  @override
  String get diskHeadersType => 'Typ';

  @override
  String get diskHeadersMountPoint => 'Prípojný bod';

  @override
  String get diskHeadersSize => 'Veľkosť';

  @override
  String get diskHeadersUsed => 'Využité';

  @override
  String get diskHeadersSystem => 'Systém';

  @override
  String get diskHeadersFormat => 'Formátovať';

  @override
  String get freeDiskSpace => 'Voľné miesto';

  @override
  String get newPartitionTable => 'Nová tabuľka oddielov';

  @override
  String get newPartitionTableConfirmationTitle => 'Nový prázdny oddiel';

  @override
  String get newPartitionTableConfirmationMessage => 'Vytvorenie novej tabuľky oddielov na celom zariadení z neho odoberie všetky existujúce oddiely. V prípade potreby je možné v tomto kroku ešte túto operáciu vziať späť.';

  @override
  String get tooManyPrimaryPartitions => 'Príliš veľa primárnych oddielov';

  @override
  String get partitionLimitReached => 'Dosiahnutý limit';

  @override
  String get bootLoaderDevice => 'Zariadenie na ktoré nainštalovať zavádzač systému';

  @override
  String get partitionCreateTitle => 'Vytvoriť oddiel';

  @override
  String get partitionEditTitle => 'Upraviť oddiel';

  @override
  String get partitionSizeLabel => 'Veľkosť:';

  @override
  String get partitionTypeLabel => 'Zadajte typ pre nový oddiel:';

  @override
  String get partitionTypePrimary => 'Primárny';

  @override
  String get partitionTypeLogical => 'Logický';

  @override
  String get partitionLocationLabel => 'Umiestnenie nového oddielu:';

  @override
  String get partitionLocationBeginning => 'Začiatok tohto priestoru';

  @override
  String get partitionLocationEnd => 'Koniec tohto priestoru';

  @override
  String get partitionFormatLabel => 'Použité ako:';

  @override
  String get partitionFormatNone => 'Ponechať nenaformátované';

  @override
  String partitionFormatKeep(String format) {
    return 'Nechať naformátované ako $format';
  }

  @override
  String get partitionErase => 'Naformátovať oddiel';

  @override
  String get partitionMountPointLabel => 'Prípojný bod:';

  @override
  String get confirmPageTitle => 'Pripravené na inštaláciu';

  @override
  String get confirmHeader => 'Skontrolujte svoje voľby';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Žiadne';

  @override
  String get confirmDevicesTitle => 'Zariadenia';

  @override
  String get confirmEntryApplications => 'Aplikácie';

  @override
  String get confirmEntryDiskSetup => 'Nastavenie disku';

  @override
  String get confirmEntryDiskEncryption => 'Šifrovanie disku';

  @override
  String get confirmEntryInstallationDisk => 'Inštalačný disk';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietárny softvér';

  @override
  String get confirmSectionGeneralTitle => 'Všeobecné';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Zabezpečenie a ďalšie';

  @override
  String get confirmPartitionsTitle => 'Oddiely';

  @override
  String get confirmPartitionTables => 'Budú zmenené tabuľky rozdelenia na oddiely nasledujúcich zariadení:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Budú vykonané nasledujúce zmeny na oddieloch:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'veľkosť oddielu <b>$sysname</b> zmenené z <b>$oldsize</b> na <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'oddiel <b>$sysname</b> naformátovaný ako <b>$format</b> použitý pre <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'oddiel <b>$sysname</b> naformátovaný ako <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'oddiel <b>$sysname</b> použitý pre <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'oddiel <b>$sysname</b> vytvorený';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodeky';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kodeky a ovládače';

  @override
  String get confirmProprietarySoftwareDrivers => 'Ovládače';

  @override
  String get confirmInstallButton => 'Inštalácia';

  @override
  String get installationCompleteTitle => 'Inštalácia je dokončená';

  @override
  String readyToUse(String system) {
    return '$system je nainštalované a pripravené na použitie';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** bolo skopírované na disk';
  }

  @override
  String restartInto(String system) {
    return 'Reštartovať do $system';
  }

  @override
  String get restartWarningBody => 'Reštartujte na dokončenie inštalácie alebo pokračujte v skúšaní.\nZmeny, ktoré vykonáte, sa neuložia.';

  @override
  String get rebootToConfigureWarning => 'Ak chcete pokračovať v procese inštalácie, musíte reštartovať počítač.';

  @override
  String get shutdown => 'Vypnúť';

  @override
  String get restartNow => 'Reštartovať teraz';

  @override
  String get continueTesting => 'Pokračovať v skúšaní';

  @override
  String get bitlockerTitle => 'BitLocker je zapnutý';

  @override
  String get bitlockerHeader => 'Ak chcete pokračovať, vypnite BitLocker';

  @override
  String bitlockerDescription(String option) {
    return 'Na tomto počítači je používané šifrovanie nástrojom Windows BitLocker.\nNa vytvorenie voľného miesta musíte použiť systém Windows alebo sa vráťte späť a pokračujte výberom možnosti \'$option\'.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Ohľadne pokynov naskenujte QR kód na inom zariadení alebo choďte na: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Reštartovať do Windows';

  @override
  String get restartIntoWindowsTitle => 'Reštartovať do Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Naozaj chcete váš počítač reštartovať? Ak potom budete chcieť dokončiť inštaláciu $DISTRO, bude potrebné znova spustiť inštaláciu $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Vitajte v $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'K dispozícii:';

  @override
  String get installationSlidesIncluded => 'Obsiahnuté:';

  @override
  String get installationSlidesWelcomeTitle => 'Rýchle, slobodné a plné nových funkcií';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Najnovšia verzia $DISTRO uľahčuje používanie počítača viac ako kedykoľvek predtým.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Či už ste vývojári, tvorcovia, hráči alebo správcovia, nájdete tu nové nástroje zvyšujúce vašu produktivitu a vylepšujúce váš dojem z používania $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Všetky aplikácie ktoré potrebujete';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Inštalujte, spravujte a aktualizujte vami používané aplikácie v Ubuntu Software, obsahujúceho tisíce aplikácií ako zo Snap Store, tak z archívu balíčkov $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Vyvíjajte s najlepším open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO je ideálne prostredie pre vývoj aplikácií či webov, dátovú vedu a umelú inteligenciu / strojové učenie, rovnako tak pre devops a správu systémov. Každé vydanie $DISTRO obsahuje najnovšie sady potrebných nástrojov a podporuje všetky hlavné integrované vývojárske prostredia.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Buďte tvorivejší';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Ak ste animátormi, dizajnérmi, tvorcami videí či vývojármi hier, je ľahké preniesť svoje pracovné postupy na $DISTRO vďaka podpore softvéru a aplikácií, ktoré patria k open source a priemyselným štandardom.';
  }

  @override
  String get installationSlidesGamingTitle => 'Skvelé na hranie hier';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO podporuje najnovšie ovládače od NVIDIA a Mesa, čo zlepšuje výkon a kompatibilitu. Tisíce hier pre Windows skvele fungujú na $DISTRO prostredníctvom aplikácií ako je Steam, bez potreby niečo ďalej nastavovať.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Súkromné a bezpečné';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO poskytuje všetky nástroje, ktoré sú potrebné na ochranu súkromia a bezpečné používanie Internetu. Vďaka vstavanej bráne firewall, podpore VPN a radu aplikácií zameraných na ochranu súkromia máte svoje dáta plne pod kontrolou.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Všetky $DISTRO LTS vydania dostávajú po dobu piatich rokov opravy zabezpečenia s tým, že ich je možné predĺžiť na desať rokov s predplatným Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Zvýšte svoju produktivitu';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop obsahuje LibreOffice, balík open source aplikácií kompatibilných s Microsoft Office pre dokumenty, tabuľky a prezentácie. K dispozícii sú aj obľúbené nástroje na spoluprácu.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Prístupnosť pre každého';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'V srdci filozofie $DISTRO je myšlienka, že počítače sú pre všetkých. Vďaka pokročilým nástrojom na sprístupnenie hendikepovaným a možnosti zmeniť jazyk, farby a veľkosť textu rozhrania, $DISTRO robí používanie počítača jednoduché – nech už ste ktokoľvek a žijete kdekoľvek.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Čítačka obrazovky Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Podpora jazykov';

  @override
  String get installationSlidesSupportTitle => 'Pomoc a podpora';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Oficiálna dokumentácia k $DISTRO je k dispozícii online aj cez ikonu Pomocník na paneli.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Web Ask Ubuntu pokrýva celú škálu otázok a odpovedí, ďalej na fóre Ubuntu Discourse sú k dispozícii návody a diskusie pre nových aj pokročilých používateľov.';

  @override
  String get installationSlidesSupportEnterprise => 'Pre firemných používateľov Canonical poskytuje komerčnú podporu, vďaka ktorej je ľahké zaviesť a spravovať Ubuntu na pracovisku.';

  @override
  String get installationSlidesSupportResources => 'Užitočné zdroje:';

  @override
  String get installationSlidesSupportDocumentation => 'Oficiálna dokumentácia';

  @override
  String get installationSlidesSupportUbuntuPro => 'Podpora 24/7 na podnikovej úrovni s Ubuntu Pro';

  @override
  String get copyingFiles => 'Kopírovanie súborov…';

  @override
  String get installingSystem => 'Inštalácia systému…';

  @override
  String get configuringSystem => 'Nastavovanie systému…';

  @override
  String get installationFailed => 'Inštalácia sa nepodarila';

  @override
  String get notEnoughDiskSpaceTitle => 'Nedostatočný priestor na disku';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Nedostatok miesta na disku pre inštaláciu $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Vybratý disk nemá dostatok miesta na inštaláciu $DISTRO. Ukončite inštalátor, aby ste uvoľnili miesto alebo vyberte iný disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'K dispozícii:';

  @override
  String get notEnoughDiskSpaceRequired => 'Vyžadované:';

  @override
  String get refreshPageTitle => 'K dispozícii je aktualizácia';

  @override
  String get refreshHeader => 'Pre inštalátor je k dispozícii aktualizácia';

  @override
  String get refreshUpdateNow => 'Aktualizovať teraz';

  @override
  String get refreshInfo => 'Aktualizujte na najnovšiu verziu pre vyššiu spoľahlivosť a viac funkcií.';

  @override
  String get refreshReady => 'Aktualizácia je pripravená';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Aktuálne používaná verzia $snap je $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Aktualizovať na verziu $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Aktuálne používaná verzia $version je najnovšia.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Aktualizuje sa $snap...';
  }

  @override
  String get refreshRestart => 'Ak chcete pokračovať, zatvorte prosím inštalátor a znova ho spustite';

  @override
  String get refreshCloseLabel => 'Zatvoriť inštalátor';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Kontrolujú sa súčasti $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Obnovuje sa $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Kontroluje sa opätovné obnovenie $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Pripravuje sa $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Sťahuje sa $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Overuje sa $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Pripája sa $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Zastavujú sa služby $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Odstraňuje sa alias $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Odpája sa $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Aktualizujú sa položky $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Aktualizuje sa príkazový riadok jadra $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopírujú sa údaje $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Nastavujú sa bezpečnostné profily $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Prepája sa $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Pripájajú sa zástrčky a sloty $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Nastavujú sa automatické aliasy $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Nastavujú sa aliasy $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Spúšťajú sa služby $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Čistí sa $snap...';
  }

  @override
  String get recoveryKeyTitle => 'TPM kľúč na obnovenie';

  @override
  String get recoveryKeyCommand => 'K obnovovaciemu kľúču sa dostanete po inštalácii pomocou nasledujúceho príkazu:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Upozornenie:</font> Pokiaľ tento bezpečnostný kľúč zabudnete, k svojim dátam sa už nedostanete. Ak vám to pomôže, bezpečnostný kľúč si zapíšte na papier a ten si bezpečne uložte niekam mimo počítača.';
  }
}
