// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class UbuntuBootstrapLocalizationsCs extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Instalátor Ubuntu pro osobní počítače';

  @override
  String windowTitle(String RELEASE) {
    return 'Nainstalovat $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automatická instalace';

  @override
  String get autoinstallDirectHeader => 'Importovat soubor autoinstall';

  @override
  String get autoinstallDirectUrlLabel => 'Můžete zadat adresu URL souboru autoinstall:';

  @override
  String get autoinstallDirectFileLabel => 'Nebo vyberte místní soubor:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Vybrat soubor…';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Vyčistit soubor';

  @override
  String get autoinstallDirectFilePickerTitle => 'Vybrat soubor';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Soubory YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importovat';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'K souboru autoinstall nelze přistoupit';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Zkontrolujte správnost adresy URL, otestujte připojení k internetu nebo to zkuste později.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Neplatná adresa URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Zkontrolujte správnost adresy URL nebo vyberte místní soubor.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Neplatný soubor autoinstall';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Zkontrolujte soubor nebo poskytněte jiný.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Soubor autoinstall není čitelný';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Zkontrolujte svá oprávnění nebo poskytněte jiný soubor.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Neznámá chyba';

  @override
  String get autoinstallTitle => 'Typ instalace';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Jak chcete nainstalovat $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Zadejte adresu URL autoinstall.yaml nebo cestu k místnímu souboru:';

  @override
  String get autoinstallInteractiveOption => 'Interaktivní instalace';

  @override
  String get autoinstallInteractiveDescription => 'Pro uživatele, kteří chtějí být instalací provedeni krok za krokem.';

  @override
  String get autoinstallDirectOption => 'Automatizováno podle souboru autoinstall';

  @override
  String get autoinstallDirectDescription => 'Pro pokročilé uživatele, kteří mají soubor autoinstall.yaml pro konzistentní a opakovatelné nastavení systému.';

  @override
  String get autoinstallLandscapeOption => 'Automatizováno podle Landscape';

  @override
  String get autoinstallLandscapeDescription => 'Pro uživatele v organizacích, které poskytují soubor autoinstall prostřednictvím Landscape.';

  @override
  String get changeButtonText => 'Změnit';

  @override
  String get quitButtonText => 'Opustit instalaci';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Vítejte v $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Připravuje se $DISTRO…';
  }

  @override
  String get warningLabel => 'Varování:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Vyzkoušet nebo nainstalovat $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Co chcete s $DISTRO udělat?';
  }

  @override
  String get tryOrInstallRepairOption => 'Opravit instalaci';

  @override
  String get tryOrInstallRepairDescription => 'Oprava přeinstaluje veškerý doposud nainstalovaný software, ale zachová data a nastavení uživatele.';

  @override
  String tryOption(String RELEASE) {
    return 'Vyzkoušet $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Můžete si $RELEASE vyzkoušet, aniž by se v počítači cokoli změnilo.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Nainstalovat $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Nainstalovat $RELEASE vedle (nebo namísto) stávajícího operačního systému. Nebude to zdlouhavé.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Nejspíš si budete chtít přečíst <a href=\"$url\">poznámky k vydání</a>.';
  }

  @override
  String get rstTitle => 'Zjištěno RST';

  @override
  String get rstHeader => 'Aby mohla instalace pokračovat, musíte RST vypnout';

  @override
  String get rstDisable => 'Váš počítač používá technologii Intel RST (Rapid Storage Technology). RST můžete vypnout buď v:';

  @override
  String get rstDisableWindows => 'Windows, pokud používáte dual boot se systémem Windows';

  @override
  String get rstDisableBios => 'Nastavení BIOSu';

  @override
  String rstInstructions(String url) {
    return 'Pro pokyny naskenujte QR kód na jiném zařízení (třeba telefonu) nebo navštivte: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Nastavit Secure Boot';

  @override
  String get configureSecureBootDescription => 'Zvolili jste nainstalovat ovladač hardwaru pocházející od třetí strany. K tomu je nutné\nvypnout Secure Boot. Musíte si teď proto zvolit klíč zabezpečení a zadat ho po restartu systému.';

  @override
  String get configureSecureBootOption => 'Nastavit Secure Boot';

  @override
  String get chooseSecurityKey => 'Zvolte si klíč zabezpečení';

  @override
  String get confirmSecurityKey => 'Zopakujte klíč zabezpečení';

  @override
  String get dontInstallDriverSoftwareNow => 'Zatím ještě ovladač neinstalovat';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Můžete ho později nainstalovat pomocí nástroje Software a aktualizace.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Je třeba zadat klíč zabezpečení';

  @override
  String get secureBootSecurityKeysDontMatch => 'Klíče zabezpečení se liší';

  @override
  String get showSecurityKey => 'Zobrazit';

  @override
  String get hideSecurityKey => 'Skrýt';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplikace a aktualizace';

  @override
  String get updatesOtherSoftwarePageDescription => 'Které aplikace chcete mít hned od začátku nainstalované?';

  @override
  String get codecsAndDriversPageTitle => 'Optimalizovat počítač';

  @override
  String get codecsAndDriversPageDescription => 'Instalovat doporučený proprietární software?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO se standardně dodává bez proprietárního softwaru. Instalace dalšího softwaru může zlepšit výkon vašeho počítače.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Byla zjištěna grafická karta NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody => 'Pro nejlepší výkon grafických karet NVIDIA se důrazně doporučuje nainstalovat dodatečné ovladače.';

  @override
  String get fullInstallationTitle => 'Rozšířená instalace';

  @override
  String get fullInstallationSubtitle => 'Výběr webového prohlížeče, kancelářských nástrojů a pomůcek nevyžadujících internet.';

  @override
  String get minimalInstallationTitle => 'Výchozí výběr';

  @override
  String get minimalInstallationSubtitle => 'Jen to nejnutnější, webový prohlížeč a základní nástroje.';

  @override
  String get otherOptions => 'Další možnosti';

  @override
  String get installThirdPartyTitle => 'Nainstalovat ovladače třetích stran pro grafické čipy a adaptéry bezdrátových sítí (Wi-Fi), a také dodatečné kodeky multimédií';

  @override
  String get installThirdPartySubtitle => 'Tento software je předmětem licenčních ujednání obsažených v dokumentaci k němu. Některá jsou proprietární.';

  @override
  String get installDriversTitle => 'Nainstalovat ovladače od třetích stran pro grafické čipy a síťová rozhraní Wi-Fi';

  @override
  String get installDriversSubtitle => 'Obsahuje mimo jiné ovladače NVIDIA a podobné';

  @override
  String get installCodecsTitle => 'Stáhnout a nainstalovat podporu pro další multimediální formáty';

  @override
  String get installCodecsSubtitle => 'Obsahuje mimo jiné MP3, MP4, MOV a podobné';

  @override
  String get batteryWarning => 'Počítač není připojen ke zdroji napájení.';

  @override
  String get offlineWarning => 'Nejste připojení k Internetu';

  @override
  String get choosePassphraseHeader => 'Vytvořit přístupové heslo';

  @override
  String get choosePassphraseBody => 'K šifrování souborů potřebujete přístupové heslo. Při každém zapnutí vás počítač vyzve k zadání tohoto hesla.';

  @override
  String get choosePassphraseInfoHeader => 'Přístupové heslo si uložte na bezpečném místě';

  @override
  String get choosePassphraseInfoBody => 'Pokud ztratíte přístupové heslo, ztratíte i všechna data.';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Uložte si přístupové heslo a klíč pro obnovení na bezpečném místě';

  @override
  String get chooseOptionalPassphraseInfoBody => 'Pokud ztratíte přístupové heslo, ztratíte i všechna data. Přístupové heslo nenahrazuje klíč pro obnovení ani vaše uživatelské heslo.';

  @override
  String get passphrasePageTitle => 'Encryption';

  @override
  String get passphrasePageHeaderPassphrase => 'Set an encryption passphrase';

  @override
  String get passphrasePageHeaderPin => 'Set an encryption PIN';

  @override
  String get passphrasePageBodyPassphrase => 'You will need to enter your passphrase every time you turn on your computer. This passphrase is different from your user password. You will be able to change it later, but not disable it. If you forget your passphrase, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageBodyPin => 'You will need to enter your PIN every time you turn on your computer. This PIN is different from your user password. You will be able to change it later, but not disable it. If you forget your PIN, you can regain access to the disk by using the recovery key.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Passphrase';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Confirm passphrase';

  @override
  String get passphrasePageRequiredPassphrase => 'A passphrase is required';

  @override
  String get passphrasePageMismatchPassphrase => 'The passphrases do not match';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Confirm PIN';

  @override
  String get passphrasePageRequiredPin => 'A PIN is required';

  @override
  String get passphrasePageMismatchPin => 'The PINs do not match';

  @override
  String get passphraseTypePassphraseTileTitle => 'Require a passphrase';

  @override
  String get passphraseTypePassphraseTileSubTitle => 'Most secure. You will need to enter a longer passphrase every time you turn on your computer.';

  @override
  String get passphraseTypePinTileTitle => 'Require a PIN';

  @override
  String get passphraseTypePinTileSubTitle => 'More secure. You will need to enter a numeric PIN every time you turn on your computer.';

  @override
  String get passphraseTypeNoneTileTitle => 'Unlock disk automatically';

  @override
  String get passphraseTypePageHeader => 'Encryption PIN or passphrase';

  @override
  String get passphraseTypePageBody => 'By default, the computer’s Trusted Platform Module (TPM) will unlock the disk during startup. However, you can also require a PIN or a passphrase to further protect your data.';

  @override
  String get installationTypeTitle => 'Nastavení disku';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Jak chcete $DISTRO nainstalovat?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Na tomto počítači se už nachází $os. Co si přejete udělat?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Na tomto počítači se už nacházejí $os1 a $os2. Co si přejete udělat?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Na tomto počítači se už nachází několik operačních systémů. Co si přejete udělat?';

  @override
  String get installationTypeNoOSDetected => 'Na tomto počítači nebyl zjištěn žádný operační systém. Co si přejete udělat?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Vymazat disk a nainstalovat $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Všechna data a oddíly na disku budou smazány, včetně operačních systémů.';

  @override
  String get installationTypeAdvancedLabel => 'Zobrazit pokročilé možnosti…';

  @override
  String get installationTypeAdvancedTitle => 'Šifrování a souborový systém';

  @override
  String get installationTypeExperimental => 'Experimentální';

  @override
  String get installationTypeNone => 'Bez šifrování';

  @override
  String get installationTypeNoneInfo => 'Standardní souborový systém bez šifrování.';

  @override
  String get installationTypeNoneSelected => 'Nic nevybráno';

  @override
  String get installationTypeLVM => 'Použít LVM bez šifrování';

  @override
  String get installationTypeLVMSelected => 'Vybráno LVM';

  @override
  String get installationTypeLVMEncryption => 'Šifrovat pomocí přístupového hesla';

  @override
  String get installationTypeLVMEncryptionInfo => 'Při každém zapnutí počítače budete muset zadat přístupové heslo. Používá se šifrování LUKS s LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'Vybráno LVM a šifrování';

  @override
  String get installationTypeEncryptInfo => 'V následujícím kroku si zvolíte šifrovací klíč.';

  @override
  String get installationTypeZFS => 'Použít ZFS bez šifrování';

  @override
  String get installationTypeZFSEncryption => 'Šifrovat s přístupovým heslem pomocí ZFS';

  @override
  String get installationTypeZFSEncryptionInfo => 'Nativní šifrování pomocí ZFS. Při každém zapnutí počítače budete muset zadat přístupové heslo.';

  @override
  String get installationTypeZFSSelected => 'Vybráno ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'Vybráno ZFS a šifrování';

  @override
  String get installationTypeTPM => 'Použít hardwarové šifrování';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Než zvolíte tuto možnost, <a href=\"$url\">Přečtěte si o šifrování TPM</a>. Nemusí fungovat s vaším hardwarem nebo v budoucích vydáních $DISTRO.';
  }

  @override
  String get installationTypeTPMSelected => 'Vybráno TPM';

  @override
  String installationTypeReinstall(String os) {
    return 'Vymazat $os a přeinstalovat';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Varování:</font> Tímto se smažou veškeré aplikace, dokumenty, fotky, hudba a všechny ostatní soubory v systému $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Nainstalovat $product vedle $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Nainstalovat $product vedle $os1 a $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Nainstalovat $product vedle stávajících operačních systémů';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Nainstalovat $product vedle ostatních oddílů';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Vyberte oddíl, jehož velikost chcete změnit, aby se vytvořilo místo pro $product. Operační systém si můžete vybrat při spuštění počítače.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Vymazat $os a nainstalovat $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Všechny soubory a data ze stávající instalace $os budou trvale smazány.';
  }

  @override
  String get installationTypeManual => 'Ruční instalace';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Pro pokročilé uživatele, kteří chtějí nastavení disků upravit vlastnoručně.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Vymazat disk a nainstalovat $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Začněte na zvoleném disku od nuly.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Vyberte disk:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Vyberte oddíl:';

  @override
  String get selectGuidedStorageInfoLabel => 'Použije se celý disk:';

  @override
  String get selectGuidedStorageInstallNow => 'Nainstalovat nyní';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Vyberte, kam $DISTRO nainstalovat';
  }

  @override
  String get installAlongsideSpaceDivider => 'Přidělte prostor na jednotce posunutím dělítka níže:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num menších oddílů skryto. Pokud potřebujete postup více upravit, použijte <a href=\"$url\">nástroj pro pokročilou správu oddílů</a>';
  }

  @override
  String get installAlongsideResizePartition => 'Změnit velikost oddílu';

  @override
  String get installAlongsideAllocateSpace => 'Přidělit prostor';

  @override
  String get installAlongsideFiles => 'Soubory';

  @override
  String get installAlongsidePartition => 'Oddíl:';

  @override
  String get installAlongsideSize => 'Velikost:';

  @override
  String get installAlongsideAvailable => 'K dispozici:';

  @override
  String get allocateDiskSpace => 'Ruční dělení';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Je třeba, aby přípojné body začínaly na „/“';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Přípojné body nemohou obsahovat mezery';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(String mountpoint, String format) {
    return '$format není podporovaný souborový systém pro $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Zařízení';

  @override
  String get diskHeadersType => 'Typ';

  @override
  String get diskHeadersMountPoint => 'Přípojný bod';

  @override
  String get diskHeadersSize => 'Velikost';

  @override
  String get diskHeadersUsed => 'Využito';

  @override
  String get diskHeadersSystem => 'Systém';

  @override
  String get diskHeadersFormat => 'Formátovat';

  @override
  String get freeDiskSpace => 'Volné místo';

  @override
  String get newPartitionTable => 'Nová tabulka dělení oddílů';

  @override
  String get newPartitionTableConfirmationTitle => 'Nový prázdný oddíl';

  @override
  String get newPartitionTableConfirmationMessage => 'Vytvoření nové tabulky oddílů na celém zařízení odebere veškeré stávající oddíly. V tomto kroku ještě lze tuto operaci vzít zpět.';

  @override
  String get tooManyPrimaryPartitions => 'Příliš mnoho primárních oddílů';

  @override
  String get partitionLimitReached => 'Dosaženo limitu';

  @override
  String get bootLoaderDevice => 'Zařízení kam nainstalovat zavaděč systému';

  @override
  String get partitionCreateTitle => 'Vytvořit oddíl';

  @override
  String get partitionEditTitle => 'Upravit oddíl';

  @override
  String get partitionSizeLabel => 'Velikost:';

  @override
  String get partitionTypeLabel => 'Typ nového oddílu:';

  @override
  String get partitionTypePrimary => 'Primární';

  @override
  String get partitionTypeLogical => 'Logický';

  @override
  String get partitionLocationLabel => 'Umístění nového oddílu:';

  @override
  String get partitionLocationBeginning => 'Začátek tohoto prostoru';

  @override
  String get partitionLocationEnd => 'Konec tohoto prostoru';

  @override
  String get partitionFormatLabel => 'Použito jako:';

  @override
  String get partitionFormatNone => 'Ponechat nenaformátované';

  @override
  String partitionFormatKeep(String format) {
    return 'Ponechat naformátované jako $format';
  }

  @override
  String get partitionErase => 'Naformátovat oddíl';

  @override
  String get partitionMountPointLabel => 'Přípojný bod:';

  @override
  String get confirmPageTitle => 'Připraveno k instalaci';

  @override
  String get confirmHeader => 'Zkontrolujte své volby';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Žádné';

  @override
  String get confirmDevicesTitle => 'Zařízení';

  @override
  String get confirmEntryApplications => 'Aplikace';

  @override
  String get confirmEntryDiskSetup => 'Typ instalace';

  @override
  String get confirmEntryDiskEncryption => 'Šifrování disku';

  @override
  String get confirmEntryInstallationDisk => 'Instalační disk';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietární software';

  @override
  String get confirmSectionGeneralTitle => 'Obecné';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Bezpečnost a další';

  @override
  String get confirmPartitionsTitle => 'Oddíly';

  @override
  String get confirmPartitionTables => 'Tabulky dělení oddílů se na následujících zařízení změní:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodeky';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kodeky a ovladače';

  @override
  String get confirmProprietarySoftwareDrivers => 'Ovladače';

  @override
  String get confirmInstallButton => 'Instalace';

  @override
  String get confirmTableErased => 'Vymazáno';

  @override
  String get confirmTableUnchanged => 'Nezměněno';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Změněna velikost z $oldsize na $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Vytvořeno a naformátováno jako $format, použito pro $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Naformátováno jako $format, použito pro $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Použito pro $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Naformátováno jako $format';
  }

  @override
  String get installationCompleteTitle => 'Instalace dokončena';

  @override
  String readyToUse(String system) {
    return '$system je nainstalované a připravené k použití';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** bylo zkopírováno na disk';
  }

  @override
  String restartInto(String system) {
    return 'Restartovat do $system';
  }

  @override
  String get restartWarningBody => 'Restartujte, aby se dokončila instalace, nebo pokračujte v testování.\nŽádné změny, které provedete, nebudou uloženy.';

  @override
  String get rebootToConfigureWarning => 'Chcete-li pokračovat v procesu instalace, musíte počítač restartovat.';

  @override
  String get shutdown => 'Vypnout';

  @override
  String get restartNow => 'Restartovat nyní';

  @override
  String get continueTesting => 'Pokračovat ve zkoušení';

  @override
  String get bitlockerInfoTitle => 'Zjištěn BitLocker';

  @override
  String get bitlockerInfoDescription => 'Jeden nebo více oddílů je šifrováno pomocí nástroje BitLocker.';

  @override
  String get bitlockerInfoDisable => 'Pro instalaci vedle systému Windows vypněte ve Windows nástroj BitLocker.';

  @override
  String get bitlockerInfoRecovery => 'Po instalaci může systém Windows při spuštění vyžadovat obnovovací klíče.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Pokyny naleznete v <a href=\"$url\">průvodci nástrojem BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'Bez obnovovacích klíčů nástroje BitLocker můžete přijít o všechna data';

  @override
  String get restartComputer => 'Restartovat počítač';

  @override
  String get restartComputerTitle => 'Restartovat počítač?';

  @override
  String get restartIntoWindows => 'Restartovat do Windows';

  @override
  String get restartIntoWindowsTitle => 'Restartovat do Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Opravdu chcete počítač restartovat? Pokud pak budete chtít instalaci $DISTRO dokončit, bude třeba instalaci $DISTRO spustit znovu.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Vítejte v $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'K dispozici:';

  @override
  String get installationSlidesIncluded => 'Obsaženo:';

  @override
  String get installationSlidesWelcomeTitle => 'Rychlé, bezplatné a plné nových funkcí';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Nejnovější verze $DISTRO usnadňuje používání počítače víc než kdy dříve.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Ať už jste vývojáři, tvůrci, hráči či správci, v $RELEASE naleznete nové nástroje, které vám zvýší produktivitu a zpříjemní používání systému.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Všechny aplikace, které potřebujete';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'V Centru aplikací můžete instalovat, spravovat a aktualizovat všechny aplikace, včetně tisíců aplikací z obchodu Snap i z archivu $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Vyvíjejte s nejlepším open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO je ideální prostředí pro vývoj aplikací či webů, datovou vědu a umělou inteligenci (AI/ML), a také pro devops a správu systémů. Každé vydání $DISTRO obsahuje nejnovější sady potřebných nástrojů a podporuje všechna hlavní integrovaná vývojářská prostředí (IDE).';
  }

  @override
  String get installationSlidesCreativityTitle => 'Buďte tvořivější';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Poku jste animátory, designéry, tvůrci videí či vývojáři her, je snadné přenést své pracovní postupy na $DISTRO díky podpoře software a aplikací, které patří k open source a oborovým standardům.';
  }

  @override
  String get installationSlidesGamingTitle => 'Skvělé pro hraní her';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO podporuje nejnovější ovladače NVIDIA a Mesa, což zlepšuje výkon a kompatibilitu. Tisíce her pro Windows skvěle fungují na $DISTRO prostřednictvím aplikací jako je Steam, bez potřeby něco dále nastavovat.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Soukromé a bezpečné';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO poskytuje veškeré nástroje které jsou zapotřebí pro ochranu soukromí a bezpečné používání Internetu. Díky vestavěné bráně firewall, podpoře VPN a řadě aplikací zaměřených na ochranu soukromí máte svá data plně pod kontrolou.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Všechna vydání $DISTRO LTS dostávají opravy zabezpečení po dobu pěti let, nebo prodloužené na deset let předplatným Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Zvyšte svou produktivitu';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop obsahuje LibreOffice – sadu open source aplikací kompatibilní s Microsoft Office pro dokumenty, tabulky a prezentace. Jsou též k dispozici oblíbené nástroje pro spolupráci.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Přístupnost pro každého';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'V jádru filozofie $DISTRO je myšlenka, že počítače jsou pro všechny. Díky pokročilým nástrojům pro zpřístupnění a možnostem změnit jazyk, barvy a velikost textu rozhraní usnadňuje $DISTRO používání počítače, ať už jste kdokoli a kdekoli.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Čtečka obrazovky Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Podpora jazyků';

  @override
  String get installationSlidesSupportTitle => 'Nápověda a podpora';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Oficiální dokumentace k $DISTRO je k dispozici jak online, tak přes ikonu Nápověda na panelu.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Stránka Ask Ubuntu pokrývá celou škálu otázek a odpovědí, dále na fóru Ubuntu Discourse jsou k dispozici návody a diskuze pro nové i pokročilé uživatele.';

  @override
  String get installationSlidesSupportEnterprise => 'Pro firemní uživatele Canonical poskytuje komerční podporu, díky které je snadné zavést a spravovat Ubuntu na pracovišti.';

  @override
  String get installationSlidesSupportResources => 'Užitečné zdroje:';

  @override
  String get installationSlidesSupportDocumentation => 'Oficiální dokumentace';

  @override
  String get installationSlidesSupportUbuntuPro => 'Nepřetržitá podpora na podnikové úrovni s Ubuntu Pro';

  @override
  String get copyingFiles => 'Kopírování souborů…';

  @override
  String get installingSystem => 'Instalace systému…';

  @override
  String get configuringSystem => 'Nastavování systému…';

  @override
  String get installationFailed => 'Instalace se nezdařila';

  @override
  String get notEnoughDiskSpaceTitle => 'Nedostatek místa na disku';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Nedostatek místa na disku pro instalaci $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Vybraný disk nemá pro instalaci $DISTRO dostatek místa. Ukončete instalační program a uvolněte místo, nebo vyberte jiný disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'K dispozici:';

  @override
  String get notEnoughDiskSpaceRequired => 'Vyžadováno:';

  @override
  String get refreshPageTitle => 'Je k dispozici aktualizace';

  @override
  String get refreshHeader => 'Pro instalační program je k dispozici aktualizace';

  @override
  String get refreshUpdateNow => 'Aktualizovat nyní';

  @override
  String get refreshInfo => 'Aktualizujte na nejnovější verzi pro lepší spolehlivost a více funkcí.';

  @override
  String get refreshReady => 'Aktualizace je připravena';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Stávající verze $snap je $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Aktualizovat na verzi $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Stávající verze $version je aktuální.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Aktualizování $snap…';
  }

  @override
  String get refreshRestart => 'Pro pokračování prosím instalátor ukončete a znovu spusťte';

  @override
  String get refreshCloseLabel => 'Zavřít instalační program';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Zajišťování závislostí pro $snap…';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Znovunačítání $snap…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Kontrola opětovného znovunačítání $snap…';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Příprava $snap…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Stahování $snap…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Ověřování $snap…';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Připojování $snap…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Zastavování služeb $snap…';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Odebírání alternativních názvů $snap…';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Rušení odkazů na $snap…';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Aktualizace dat $snap…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Aktualizace parametrů $snap pro spouštění jádra systému…';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopírování dat $snap…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Nastavování profilů zabezpečení $snap…';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Napojování $snap…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Připojování rozhraní a slotů $snap…';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Nastavování automatických alternativních názvů pro $snap…';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Nastavování alternativních názvů pro $snap…';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Spouštění služeb $snap…';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Úklid $snap…';
  }

  @override
  String get recoveryKeyTitle => 'Obnovovací klíč k TPM';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Important';

  @override
  String get recoveryKeyHeader => 'Získat obnovovací klíč';

  @override
  String get recoveryKeyInfoHeader => 'Bez klíče pro obnovení můžete přijít o všechna data';

  @override
  String get recoveryKeyTextFieldLabel => 'Recovery key';

  @override
  String get recoveryKeyStorageAdvice => 'Uložte si klíč pro obnovení na bezpečném místě. Použijte jej k dešifrování disku v případě určitých systémových změn. Můžete jej například potřebovat, pokud měníte součásti v počítači nebo aktualizujete firmware.';

  @override
  String get recoveryKeyConfirmation => 'Rozumím, že pokud nebudu mít klíč pro obnovení, mohu ztratit všechna svá data';

  @override
  String get recoveryKeyLinkLabel => 'Dozvědět se více';

  @override
  String get recoveryKeySaveToFileLabel => 'Save to file';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Show QR code';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Recovery key';
  }

  @override
  String get recoveryKeyQrDialogBody => 'Scan the QR code to copy the recovery key and save it somewhere safe, such as a password manager. You can also take a photo for later use.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Copied to clipboard';

  @override
  String get recoveryKeyExceptionFileSystemTitle => 'Recovery key file not saved';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle => 'Recovery key file cannot be saved in a temporary location';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Unknown error';

  @override
  String get recoveryKeyExceptionFileSystemBody => 'You do not have permission to write to that folder. Try a different location or use another method.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody => 'Try a different location, such as a removable drive, or use another method.';

  @override
  String get recoveryKeyFilePickerTitle => 'Save recovery key file';

  @override
  String get recoveryKeyFilePickerFilter => 'Text files';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Naskenujte QR kód nebo zadejte kód níže na <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automatická instalace';

  @override
  String get landscapeHeader => 'Přihlásit se k Landscape';

  @override
  String get landscapeDomainHeader => 'Zadejte doménu Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Doména Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions => 'Zadejte doménu Landscape vaší organizace, abyste se mohli přihlásit a načíst soubor autoinstall. FQDN můžete získat od vaší IT podpory.';

  @override
  String get landscapeDomainTextField => 'Doména Landscape (FQDN)';

  @override
  String get next => 'Další';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Neplatná doména, zkontrolujte nebo kontaktujte IT podporu';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Chcete-li pokračovat, připojte se k internetu';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'K načtení souboru autoinstall z Landscape je potřeba internet';

  @override
  String get landscapeCodeExpiredWarning => 'Kód vypršel, zkuste to znovu';

  @override
  String get landscapeLoginFailedWarning => 'Přihlášení se nezdařilo, zkuste to znovu';

  @override
  String get landscapeErrorPageTitle => 'Automatizovaná instalace není pro váš účet k dispozici';

  @override
  String get landscapeErrorPageBody => 'Obraťte se na svou IT podporu nebo zkuste jinou možnost instalace.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Kód chyby: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle => 'Ubuntu bude nainstalováno s nastavením, které poskytuje vaše organizace';

  @override
  String get landscapeConfirmPageSuccessInfoContent => 'Níže si můžete prohlédnout soubor s nastaveními pro automatickou instalaci, načtený z Landscape.';
}
