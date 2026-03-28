// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class UbuntuBootstrapLocalizationsSv extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Installerare för Ubuntu-skrivbordet';

  @override
  String windowTitle(String RELEASE) {
    return 'Installera $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automatisk installation';

  @override
  String get autoinstallDirectHeader => 'Importera automatisk installationsfil';

  @override
  String get autoinstallDirectUrlLabel =>
      'Du kan ange URL:en till en automatisk installationsfil:';

  @override
  String get autoinstallDirectFileLabel => 'Eller välj en lokal fil:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Välj fil...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Töm fil';

  @override
  String get autoinstallDirectFilePickerTitle => 'Välj fil';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML-filer';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importera';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Automatiska installationsfilen kan inte nås';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Kontrollera att webbadressen är korrekt, testa din internetanslutning eller försök senare.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Ogiltig webbadress';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Kontrollera att webbadressen är korrekt eller välj en lokal fil.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Ogiltig automatisk installationsfil';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Kontrollera filen eller ange en annan.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Filen för automatisk installation är inte läsbar';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Kontrollera dina behörigheter eller ange en annan fil.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Okänt fel';

  @override
  String get autoinstallTitle => 'Installationstyp';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Hur vill du installera $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'Ange autoinstall.yaml URL eller lokal filsökväg:';

  @override
  String get autoinstallInteractiveOption => 'Interaktiv installation';

  @override
  String get autoinstallInteractiveDescription =>
      'För användare som vill bli guidade steg för steg genom installationen.';

  @override
  String get autoinstallDirectOption =>
      'Automatiserad med automatisk installationsfil';

  @override
  String get autoinstallDirectDescription =>
      'För avancerade användare som har en autoinstall.yaml för konsekventa och repeterbara systemkonfigurationer.';

  @override
  String get autoinstallLandscapeOption => 'Automatiserad med Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'För användare i organisationer som tillhandahåller en autoinstallationsfil via Landscape.';

  @override
  String get autoinstallErrorMessage =>
      'A command in the autoinstall file failed to run during installation.';

  @override
  String get autoinstallErrorInstructions =>
      'You will need to restart the installation. Check the autoinstall file, choose a different installation type, or contact your IT support.';

  @override
  String get changeButtonText => 'Ändra';

  @override
  String get quitButtonText => 'Avbryt installation';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Välkommen till $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Förbereder $DISTRO…';
  }

  @override
  String get warningLabel => 'Varning:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Testa eller installera $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Vad vill du göra med $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Reparera installation';

  @override
  String get tryOrInstallRepairDescription =>
      'Reparation kommer att installera om all installerad programvara utan att röra dokument eller inställningar.';

  @override
  String tryOption(String RELEASE) {
    return 'Testa $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Du kan testa $RELEASE utan att göra några ändringar till din dator.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Installera $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Installera $RELEASE bredvid (eller istället för) ditt nuvarande operativsystem. Det här ska inte ta för lång tid.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Du kanske vill läsa <a href=\"$url\">kommentarer till utgåvan</a>.';
  }

  @override
  String get rstTitle => 'RST upptäcktes';

  @override
  String get rstHeader =>
      'Du måste inaktivera RST för att fortsätta installationen';

  @override
  String get rstDisable =>
      'Din dator använder Intel RST (Rapid Storage Technology). Du kan inaktivera RST antingen i:';

  @override
  String get rstDisableWindows =>
      'Windows, om du använder en dual boot-installation med Windows';

  @override
  String get rstDisableBios => 'BIOS-inställningarna';

  @override
  String rstInstructions(String url) {
    return 'För instruktioner, skanna QR-koden på en annan enhet eller besök: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Konfigurera Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'Du har valt att installera drivrutinsprogram från tredje part. Detta kräver att du stänger av Secure Boot.\nFör att göra detta måste du välja en säkerhetsnyckel nu och ange den när systemet startar om.';

  @override
  String get configureSecureBootOption => 'Konfigurera Secure Boot';

  @override
  String get chooseSecurityKey => 'Välj en säkerhetsnyckel';

  @override
  String get confirmSecurityKey => 'Bekräfta säkerhetsnyckeln';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Installera inte drivrutinsprogramvara för tillfället';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Du kan installera det senare från Programvara och uppdateringar.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Säkerhetsnyckel krävs';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Säkerhetsnycklarna matchar inte';

  @override
  String get showSecurityKey => 'Visa';

  @override
  String get hideSecurityKey => 'Dölj';

  @override
  String get updatesOtherSoftwarePageTitle => 'Applikationer';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Vilka program skulle du vilja installera till att börja med?';

  @override
  String get codecsAndDriversPageTitle => 'Optimera din dator';

  @override
  String get codecsAndDriversPageDescription =>
      'Installera rekommenderad proprietär programvara?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO levereras som standard utan proprietär programvara. Att installera ytterligare programvara kan förbättra din dators prestanda.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA-grafikkort har upptäckts';

  @override
  String get codecsAndDriversNvidiaBody =>
      'För bästa prestanda för NVIDIA-grafikkort rekommenderas starkt att du installerar ytterligare drivrutiner.';

  @override
  String get fullInstallationTitle => 'Utökat urval';

  @override
  String get fullInstallationSubtitle =>
      'Ett offline-vänligt urval av kontorsverktyg, verktyg och webbläsare.';

  @override
  String get minimalInstallationTitle => 'Standardurval';

  @override
  String get minimalInstallationSubtitle =>
      'Bara det viktigaste, webbläsare och grundläggande verktyg.';

  @override
  String get otherOptions => 'Andra alternativ';

  @override
  String get installThirdPartyTitle =>
      'Installera programvara från tredje part för grafik och Wi-Fi-hårdvara, samt ytterligare mediaformat';

  @override
  String get installThirdPartySubtitle =>
      'Denna programvara är föremål för licensvillkor som ingår i dess dokumentation. Vissa är proprietära.';

  @override
  String get installDriversTitle =>
      'Installera programvara från tredje part för grafik och Wi-Fi-hårdvara';

  @override
  String get installDriversSubtitle =>
      'Inkluderar men inte begränsat till NVIDIA-drivrutiner och liknande';

  @override
  String get installCodecsTitle =>
      'Hämta ner och installera stöd för ytterligare medieformat';

  @override
  String get installCodecsSubtitle =>
      'Inkluderar men inte begränsat till MP3, MP4, MOV och liknande';

  @override
  String get batteryWarning => 'Datorn är inte ansluten till en strömkälla.';

  @override
  String get offlineWarning => 'Du är för närvarande frånkopplad';

  @override
  String get choosePassphraseHeader => 'Skapa en lösenfras';

  @override
  String get choosePassphraseBody =>
      'Du måste ange din lösenfras varje gång du startar datorn. Denna lösenfras skiljer sig från ditt användarlösenord.';

  @override
  String get choosePassphraseInfoHeader =>
      'Försäkra dig om att spara din lösenfras';

  @override
  String get choosePassphraseInfoBody =>
      'Om du förlorar den, förlorar du all din data.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Förvara din lösenfras och återställningsnyckel på ett säkert ställe';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Om du tappar bort din lösenfras kommer du att förlora all din data. Lösenfrasen ersätter inte återställningsnyckeln eller ditt användarlösenord.';

  @override
  String get passphrasePageTitle => 'Kryptering';

  @override
  String get passphrasePageHeaderPassphrase =>
      'Ställ in en krypteringslösenfras';

  @override
  String get passphrasePageHeaderPin => 'Ställ in en krypterings-PIN';

  @override
  String get passphrasePageBodyPassphrase =>
      'Du måste ange din lösenfras varje gång du startar datorn. Denna lösenfras skiljer sig från ditt användarlösenord. Du kan ändra den senare, men inte inaktivera den. Om du glömmer bort din lösenfras kan du återfå åtkomst till disken med hjälp av återställningsnyckeln.';

  @override
  String get passphrasePageBodyPin =>
      'Du måste ange din PIN-kod varje gång du startar datorn. Denna PIN-kod skiljer sig från ditt användarlösenord. Du kan ändra den senare, men inte inaktivera den. Om du glömmer bort din PIN-kod kan du återfå åtkomst till disken med hjälp av återställningsnyckeln.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Lösenfras';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Bekräfta lösenfras';

  @override
  String get passphrasePageRequiredPassphrase => 'En lösenfras krävs';

  @override
  String get passphrasePageMismatchPassphrase =>
      'Lösenordsfraserna matchar inte';

  @override
  String get passphrasePageChoosePinHint => 'PIN-kod';

  @override
  String get passphrasePageConfirmPinHint => 'Bekräfta PIN-kod';

  @override
  String get passphrasePageRequiredPin => 'En PIN-kod krävs';

  @override
  String get passphrasePageMismatchPin => 'PIN-koderna matchar inte';

  @override
  String get passphraseTypePassphraseTileTitle => 'Kräv en lösenfras';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Mest säker. Du måste ange en längre lösenfras varje gång du startar datorn.';

  @override
  String get passphraseTypePinTileTitle => 'Kräv en PIN-kod';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Mer säker. Du måste ange en numerisk PIN-kod varje gång du startar datorn.';

  @override
  String get passphraseTypeNoneTileTitle => 'Lås upp disk automatiskt';

  @override
  String get passphraseTypePageHeader => 'Ytterligare säkerhet';

  @override
  String get passphraseTypePageBody =>
      'Som standard låser datorns Trusted Platform Module (TPM) upp disken under uppstart. Du har också alternativ för att ytterligare skydda din data.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Svag lösenfras, gör den längre eller mer komplex';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Helt ok lösenfras, gör den längre eller mer komplex för bättre säkerhet';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Stark lösenfras';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Svag PIN-kod, gör den längre eller mindre förutsägbar';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Helt ok PIN-kod, gör den längre eller mindre förutsägbar för bättre säkerhet';

  @override
  String get passphrasePagePinEntropyOptimal =>
      'PIN-koden är tillräckligt lång';

  @override
  String get installationTypeTitle => 'Diskkonfiguration';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Hur vill du installera $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Den här datorn har för närvarande $os på sig. Vad skulle du vilja göra?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Den här datorn har för närvarande $os1 och $os2 på sig. Vad skulle du vilja göra?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Den här datorn har för närvarande flera operativsystem på sig. Vad skulle du vilja göra?';

  @override
  String get installationTypeNoOSDetected =>
      'Den här datorn har för närvarande inga upptäckta operativsystem. Vad skulle du vilja göra?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Radera disk och installera $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'All data och partitioner på disken kommer att raderas, inklusive operativsystem.';

  @override
  String get installationTypeAdvancedLabel => 'Avancerade alternativ';

  @override
  String get installationTypeAdvancedTitle => 'Kryptering och filsystem';

  @override
  String get installationTypeExperimental => 'Experimentell';

  @override
  String get installationTypeNone => 'Ingen kryptering';

  @override
  String get installationTypeNoneInfo => 'Standardfilsystem utan kryptering.';

  @override
  String get installationTypeNoneSelected => 'Inget valt';

  @override
  String get installationTypeLVM => 'Använd LVM utan kryptering';

  @override
  String get installationTypeLVMSelected => 'LVM valt';

  @override
  String get installationTypeLVMEncryption => 'Kryptera med en lösenfras';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'Du kommer att behöva ange en lösenfras varje gång du startar din dator. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'Detta använder LVM med LUKS-kryptering.';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM och kryptering valt';

  @override
  String get installationTypeEncryptInfo =>
      'Du väljer en säkerhetsnyckel i nästa steg.';

  @override
  String get installationTypeZFS => 'Använd ZFS utan kryptering';

  @override
  String get installationTypeZFSEncryption =>
      'Kryptera med en lösenfras med ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Inbyggd kryptering med ZFS. Du måste ange en lösenfras varje gång du startar din dator.';

  @override
  String get installationTypeZFSSelected => 'ZFS valt';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS och kryptering valt';

  @override
  String get installationTypeTPM => 'Använd hårdvarustödd kryptering';

  @override
  String get installationTypeTPMInfoResolute =>
      'Disken kommer att låsas upp automatiskt under uppstart.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Ej tillgänglig på den här datorn.';

  @override
  String get installationTypeTPMSelected => 'TPM valt';

  @override
  String installationTypeReinstall(String os) {
    return 'Radera $os och installera om';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Varning:</font> Detta raderar alla dina program, dokument, foton, musik och alla andra filer i $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Installera $product bredvid $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Installera $product bredvid $os1 och $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Installera $product tillsammans med befintliga operativsystem';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Installera $product bredvid andra partitioner';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Välj en partition att ändra storlek på och skapa utrymme för $product. Du kan välja ditt operativsystem under uppstart.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Radera $os och installera $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Alla filer och data från din befintliga $os-installation kommer att raderas permanent.';
  }

  @override
  String get installationTypeManual => 'Manuell partitionering';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'För avancerade användare som söker anpassade diskkonfigurationer.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Radera disk och installera $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo =>
      'Börja från början på den valda disken.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Välj disk:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Välj partition:';

  @override
  String get selectGuidedStorageInfoLabel => 'Hela disken kommer att användas:';

  @override
  String get selectGuidedStorageInstallNow => 'Installera nu';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Välj var du vill installera $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Tilldela diskutrymme genom att dra i listen nedan:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num mindre partitioner är dolda, använd det <a href=\"$url\">avancerade partitionsverktyget</a> för mer kontroll';
  }

  @override
  String get installAlongsideResizePartition => 'Ändra storlek på partition';

  @override
  String get installAlongsideAllocateSpace => 'Allokera utrymme';

  @override
  String get installAlongsideFiles => 'Filer';

  @override
  String get installAlongsidePartition => 'Partition:';

  @override
  String get installAlongsideSize => 'Storlek:';

  @override
  String get installAlongsideAvailable => 'Tillgängligt:';

  @override
  String get allocateDiskSpace => 'Manuell partitionering';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Monteringspunkter måste börja med \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Monteringspunkter får inte innehålla mellanslag';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format är inte ett filsystem som stöds för $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Enhet';

  @override
  String get diskHeadersType => 'Typ';

  @override
  String get diskHeadersMountPoint => 'Monteringspunkt';

  @override
  String get diskHeadersSize => 'Storlek';

  @override
  String get diskHeadersUsed => 'Använt';

  @override
  String get diskHeadersSystem => 'System';

  @override
  String get diskHeadersFormat => 'Formatera';

  @override
  String get freeDiskSpace => 'Ledigt utrymme';

  @override
  String get newPartitionTable => 'Ny partitionstabell';

  @override
  String get newPartitionTableConfirmationTitle => 'Ny tom partition';

  @override
  String get newPartitionTableConfirmationMessage =>
      'Skapa en ny partitionstabell på en hel enhet tar bort alla dess nuvarande partitioner. Denna operation kan ångras om det behövs.';

  @override
  String get tooManyPrimaryPartitions => 'För många primära partitioner';

  @override
  String get partitionLimitReached => 'Gränsen uppnådd';

  @override
  String get bootLoaderDevice => 'Enhet för installation av starthanteraren';

  @override
  String get partitionCreateTitle => 'Skapa partition';

  @override
  String get partitionEditTitle => 'Redigera partition';

  @override
  String get partitionSizeLabel => 'Storlek:';

  @override
  String get partitionTypeLabel => 'Typ för nya partitionen:';

  @override
  String get partitionTypePrimary => 'Primär';

  @override
  String get partitionTypeLogical => 'Logisk';

  @override
  String get partitionLocationLabel => 'Plats för nya partitionen:';

  @override
  String get partitionLocationBeginning => 'Början av detta utrymme';

  @override
  String get partitionLocationEnd => 'Slutet av detta utrymme';

  @override
  String get partitionFormatLabel => 'Används som:';

  @override
  String get partitionFormatNone => 'Lämna oformaterad';

  @override
  String partitionFormatKeep(String format) {
    return 'Lämna formaterat som $format';
  }

  @override
  String get partitionErase => 'Formatera partitionen';

  @override
  String get partitionMountPointLabel => 'Monteringspunkt:';

  @override
  String get confirmPageTitle => 'Redo att installera';

  @override
  String get confirmHeader => 'Granska dina val';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Ingen';

  @override
  String get confirmDevicesTitle => 'Enheter';

  @override
  String get confirmEntryApplications => 'Program';

  @override
  String get confirmEntryDiskSetup => 'Installationstyp';

  @override
  String get confirmEntryDiskEncryption => 'Diskkryptering';

  @override
  String get confirmEntryInstallationDisk => 'Installationsdisk';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietär programvara';

  @override
  String get confirmSectionGeneralTitle => 'Allmänt';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Säkerhet & mer';

  @override
  String get confirmPartitionsTitle => 'Partitioner';

  @override
  String get confirmPartitionTables =>
      'Partitionstabellerna för följande enheter är ändrade:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodekar';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kodekar & drivrutiner';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivrutiner';

  @override
  String get confirmInstallButton => 'Installera';

  @override
  String get confirmTableErased => 'Raderad';

  @override
  String get confirmTableUnchanged => 'Oförändrad';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Ändrat storlek från $oldsize till $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Skapad och formaterad som $format används för $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formaterad som $format används för $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Används för $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formaterad som $format';
  }

  @override
  String get installationCompleteTitle => 'Installationen är klar';

  @override
  String readyToUse(String system) {
    return '$system är installerat och redo att användas';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** har kopierats till disken';
  }

  @override
  String restartInto(String system) {
    return 'Starta om till $system';
  }

  @override
  String get restartWarningBody =>
      'Starta om för att slutföra installationen eller fortsätt att testa.\nEventuella ändringar du gör kommer inte att sparas.';

  @override
  String get rebootToConfigureWarning =>
      'Du måste starta om datorn för att fortsätta installationsprocessen.';

  @override
  String get shutdown => 'Stäng ner';

  @override
  String get restartNow => 'Starta om nu';

  @override
  String get continueTesting => 'Fortsätt att testa';

  @override
  String get bitlockerInfoTitle => 'BitLocker upptäckt';

  @override
  String get bitlockerInfoDescription =>
      'En eller flera partitioner är krypterade med BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'För att installera bredvid med Windows, inaktivera BitLocker i Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows kan begära återställningsnycklar vid uppstart efter installationen.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'För instruktioner, besök vår <a href=\"$url\">BitLocker-guide</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Du kan förlora all din data utan BitLocker-återställningsnycklar';

  @override
  String get restartComputer => 'Starta om datorn';

  @override
  String get restartComputerTitle => 'Starta om datorn?';

  @override
  String get restartInstaller => 'Restart installer';

  @override
  String get restartIntoWindows => 'Starta om till Windows';

  @override
  String get restartIntoWindowsTitle => 'Starta om till Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Är du säker på att du vill starta om din dator? Du kommer att behöva starta om $DISTRO-installationen senare för att slutföra installationen av $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Välkommen till $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Tillgängligt:';

  @override
  String get installationSlidesIncluded => 'Inkluderat:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Snabb, gratis och full av nya funktioner';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Den senaste versionen av $DISTRO gör datoranvändning enklare än någonsin.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Oavsett om du är en utvecklare, skapare, spelare eller administratör hittar du nya verktyg för att förbättra din produktivitet och förbättra din upplevelse i $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Alla program du behöver';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Installera, hantera och uppdatera alla dina program med Ubuntu Software, inklusive tusentals program från både Snap Store och $DISTRO-arkivet.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Utveckla med det bästa av öppen källkod';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO är den idealiska arbetsstationen för app- eller webbutveckling, datavetenskap och AI/ML samt devops och administration. Varje $DISTRO-version innehåller de senaste verktygskedjorna och har stöd för alla större IDE:er.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Förbättra din kreativitet';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Om du är en animatör, designer, videoskapare eller spelutvecklare är det enkelt att ta med dina arbetsflöden till $DISTRO med stöd för industristandardprogram och applikationer med öppen källkod.';
  }

  @override
  String get installationSlidesGamingTitle => 'Perfekt för spel';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO har stöd för de senaste NVIDIA- och Mesa-drivrutinerna för att förbättra prestanda och kompatibilitet. Tusentals Windows-spel fungerar bra att spela på $DISTRO via program som Steam utan ytterligare konfiguration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privat och säker';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO tillhandahåller alla verktyg du behöver för att skydda din integritet och säkerhet online. Med inbyggd brandvägg och VPN-stöd samt en rad integritetsfokuserade applikationer som garanterar att du har full kontroll över dina data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Alla $DISTRO LTS-utgåvor levereras med fem års säkerhetsuppdateringar inkluderade, vilket förlängs till tio år med ett Ubuntu Pro-abonnemang.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Öka din produktivitet';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO-skrivbordet innehåller LibreOffice, en svit av Microsoft Office-kompatibla öppen källkodsprogram för dokument, kalkylblad och presentationer. Populära samarbetsverktyg finns också tillgängliga.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Åtkomst för alla';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'Kärnan i ${DISTRO}s filosofi är övertygelsen att datorer är till för alla. Med avancerade hjälpmedelsverktyg och alternativ för att ändra språk, färger och textstorlek gör $DISTRO det enkelt att använda datorer – oavsett vem du är och var du befinner dig.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca skärmläsare';

  @override
  String get installationSlidesAccessibilityLanguages => 'Språkstöd';

  @override
  String get installationSlidesSupportTitle => 'Hjälp och support';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Den officiella $DISTRO-dokumentation finns tillgänglig både på nätet och via Hjälp-ikonen i dockan.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu täcker en rad frågor och svar och Ubuntu Discourse ger guider och diskussioner för nya och erfarna användare.';

  @override
  String get installationSlidesSupportEnterprise =>
      'För företagsanvändare tillhandahåller Canonical kommersiell support för att göra det enkelt att installera och hantera Ubuntu säkert på arbetsplatsen.';

  @override
  String get installationSlidesSupportResources => 'Användbara resurser:';

  @override
  String get installationSlidesSupportDocumentation =>
      'Officiell dokumentation';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Support i företagsklass 24/7 med Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Nästa bild';

  @override
  String get previousSlideSemanticLabel => 'Föregående bild';

  @override
  String get playSlideshowSemanticLabel => 'Visa bildspel';

  @override
  String get pauseSlideshowSemanticLabel => 'Pausa bildspel';

  @override
  String get toggleLogsSemanticLabel => 'Växla installationsloggar';

  @override
  String get copyingFiles => 'Kopierar filer…';

  @override
  String get installingSystem => 'Installerar systemet…';

  @override
  String get configuringSystem => 'Ställer in systemet…';

  @override
  String get installationFailed => 'Installationen misslyckades';

  @override
  String get notEnoughDiskSpaceTitle => 'Inte tillräckligt med diskutrymme';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Inte tillräckligt med diskutrymme för att installera $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Den valda disken har inte tillräckligt med utrymme att installera $DISTRO. Avsluta installationsprogrammet för att göra utrymme tillgängligt eller välj en annan disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Tillgängligt:';

  @override
  String get notEnoughDiskSpaceRequired => 'Krävs:';

  @override
  String get refreshPageTitle => 'Uppdatering tillgänglig';

  @override
  String get refreshHeader =>
      'En uppdatering är tillgänglig för installationsprogrammet';

  @override
  String get refreshUpdateNow => 'Uppdatera nu';

  @override
  String get refreshInfo =>
      'Uppdatera till den senaste versionen för förbättrad tillförlitlighet och fler funktioner.';

  @override
  String get refreshReady => 'Uppdatering redo';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Din nuvarande $snap-version är $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Uppdatera till version $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Den aktuella versionen $version är uppdaterad.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Uppdaterar $snap...';
  }

  @override
  String get refreshRestart =>
      'Stäng installationsprogrammet och starta om för att fortsätta';

  @override
  String get refreshCloseLabel => 'Stäng installationsprogrammet';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Säkerställer förutsättningar för $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Uppdaterar $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Kontrollerar $snap efter uppdateringen...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Förbereder $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Hämtar ner $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validerar $snap..';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Monterar $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Stoppar $snap-tjänster...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Tar bort $snap-alias...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Avlänkar $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Uppdaterar $snap-tillgångar...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Uppdaterar $snap-kärnans kommandorad...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopierar $snap-data...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Ställer in $snap-säkerhetsprofiler...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Länkar $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Ansluter $snap-pluggar och fack...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Ställer in automatiska $snap-alias...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Ställer in $snap-alias...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Startar $snap-tjänster...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Städar upp $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Återställningsnyckel';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Viktigt';

  @override
  String get recoveryKeyHeader => 'Spara din återställningsnyckel';

  @override
  String get recoveryKeyInfoHeader =>
      'Du kan förlora all din data utan en återställningsnyckel';

  @override
  String get recoveryKeyTextFieldLabel => 'Återställningsnyckel';

  @override
  String get recoveryKeyStorageAdvice =>
      'Du måste ange denna återställningsnyckel om avkrypteringen misslyckas under uppstarten. Utan nyckeln förlorar du åtkomst till all din data. Spara den någonstans säkert, till exempel i en lösenordshanterare.';

  @override
  String get recoveryKeyConfirmation =>
      'Jag har sparat min återställningsnyckel någonstans säkert';

  @override
  String get recoveryKeyLinkLabel => 'Läs mer';

  @override
  String get recoveryKeySaveToFileLabel => 'Spara till fil';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Visa QR-kod';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO-skrivbordet - Återställningsnyckel';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Skanna QR-koden för att kopiera återställningsnyckeln och spara den på ett säkert ställe, till exempel i en lösenordshanterare. Du kan också ta ett foto för senare användning.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Kopierad till urklipp';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Återställningsnyckelfilen sparades inte';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Återställningsnyckelfilen kan inte sparas på en temporär plats';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Okänt fel';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Du har inte behörighet att skriva till den mappen. Försök med en annan plats eller använd en annan metod.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Försök med en annan plats, till exempel en flyttbar enhet, eller använd en annan metod.';

  @override
  String get recoveryKeyFilePickerTitle => 'Spara återställningsnyckelfil';

  @override
  String get recoveryKeyFilePickerFilter => 'Textfiler';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Skanna QR-koden eller ange koden nedan på <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automatisk installation';

  @override
  String get landscapeHeader => 'Logga in till Landscape';

  @override
  String get landscapeDomainHeader => 'Ange Landscape-domän (FQDN)';

  @override
  String get landscapeDomainHintText => 'Landscape-domän (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Ange din organisations Landscape-domän för att logga in och hämta en autoinstallationsfil. Du kan få FQDN från din IT-support.';

  @override
  String get landscapeDomainTextField => 'Landscape-domän (FQDN)';

  @override
  String get next => 'Nästa';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Ogiltig domän, kontrollera eller kontakta din IT-support';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Anslut till internet för att fortsätta';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internet behövs för att hämta autoinstallationsfilen från Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Koden har löpt ut, försök igen';

  @override
  String get landscapeLoginFailedWarning =>
      'Inloggningen misslyckades, försök igen';

  @override
  String get landscapeErrorPageTitle =>
      'Automatisk installation är inte tillgänglig för ditt konto';

  @override
  String get landscapeErrorPageBody =>
      'Kontakta din IT-support eller prova ett annat installationsalternativ.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Felkod: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu kommer att installeras med den konfiguration som tillhandahålls av din organisation';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Du kan granska autoinstallationsfilen som importeras från Landscape nedan.';

  @override
  String get successIconSemanticLabel => 'Lyckades';

  @override
  String get errorIconSemanticLabel => 'Fel';

  @override
  String get closeIconSemanticLabel => 'Stäng';

  @override
  String get maximizeIconSemanticLabel => 'Maximera';

  @override
  String get minimizeIconSemanticLabel => 'Minimera';

  @override
  String get tpmActionPageTitle =>
      'Hårdvarubaserad kryptering kunde inte aktiveras';

  @override
  String get tpmActionBadgeLabel => 'Åtgärd krävs';

  @override
  String get tpmActionDetailsLabel => 'Tekniska detaljer';

  @override
  String get tpmActionConfirmLabel => 'Bekräfta';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Lösning $n: $text';
  }

  @override
  String tpmActionSingleSolutionLabel(String text) {
    return 'Lösning: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel =>
      'Läs mer om hårdvarustödd kryptering';

  @override
  String get tpmActionErrorSupportLabel =>
      'Testa lösningarna nedanför, kontakta IT-support, eller välj en annan krypteringsmetod.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Testa lösningen nedanför, kontakta IT-supporten, eller välj en annan krypteringsmetod.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Kontakta IT-support, eller välj en annan krypteringsmetod.';

  @override
  String get tpmActionErrorKindInternal => 'Internt fel.';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Avstängning krävs.';

  @override
  String get tpmActionErrorKindRebootRequired => 'Omstart krävs.';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Oväntad åtgärd.';

  @override
  String get tpmActionErrorKindMissingArgument => 'Argument saknas.';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Ogiltigt argument.';

  @override
  String get tpmActionErrorKindActionFailed => 'Åtgärd misslyckades.';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'Den aktuella miljön är en virtuell maskin.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'Denna dator använder äldre fast programvara (äldre BIOS) som inte är kompatibel med denna krypteringsmetod.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'Det finns ett problem med den här datorns fasta programvara.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'Denna dator har inte den säkerhetshårdvara (TPM 2.0) som krävs för denna krypteringsmetod.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'Den här datorns TPM är inaktiverad.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'Denna dators TPM används redan av ett annat system eller en annan applikation.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'Den här datorns TPM är för närvarande låst.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'Denna dators TPM har inte tillräckligt med lagringsutrymme tillgängligt.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'Denna dator är inte kompatibel med hårdvarubaserad kryptering.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI-felsökning är aktiverad.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'Denna dator saknar en nödvändig säkerhetsfunktion (DMA-skydd).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'Denna dator saknar en nödvändig säkerhetsfunktion (IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'Det finns ett problem med säkerhetskonfigurationen på den här datorn.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Det finns programvara som körs vid uppstart som kan förhindra en säker anslutning till datorns TPM.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Modulen Absolute Persistence är aktiverad på den här datorn.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Secure boot är inaktiverad på den här datorn, eller är inte inställd till distribuerat läge.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Vissa av certifikaten som verifierar mjukvara i den här datorn är föråldrade eller använder svagt skydd.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'Denna dator använder en manuell tillåtelselista för att verifiera programvara vid uppstart.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Tilläggsdrivrutiner finns.';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'Det finns ett problem med TPM på den här datorn.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'Det finns ett problem med den här datorns fasta programvara.';

  @override
  String get tpmActionFixActionReboot => 'Starta om';

  @override
  String get tpmActionFixActionShutdown => 'Stäng av';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Starta om till firmware-inställningar';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'Om inställningar för fast programvara inte läses in automatiskt, starta om och tryck på inställningstangenten upprepade gånger under uppstarten (ofta F2, F10 eller Delete).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Aktivera DMA-skydd manuellt';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Rensa TPM manuellt';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Aktivera säker uppstart manuellt';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Aktivera IOMMU manuellt';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Aktivera PCR-bankar manuellt';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Aktivera TPM manuellt';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Rensa TPM manuellt';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Rensa TPM manuellt';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Inaktivera modulen Absolute Persistence manuellt';

  @override
  String get tpmActionFixActionContactOem => 'Kontakta OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Kontakta OS-leverantör';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Aktivera TPM vid omstart';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Aktivera och töm TPM vid omstart';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Töm TPM vid omstart';

  @override
  String get tpmActionFixActionClearTpm => 'Töm TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignorera';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Starta om datorn för att slutföra tidigare åtgärder.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Om du startar om datorn kan problemet lösas.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Stäng av datorn för att slutföra tidigare åtgärder.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'Du kan göra detta i din dators inställningar för fast programvara.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'Du kan eventuellt göra detta i datorns inställningar för fast programvara. Se dokumentationen från CPU-leverantören för vägledning.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Kontrollera att secure boot-läge är inställt till ”distribuerat”.';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'Funktionen kan benämnas ”Virtualiseringsteknologi”, ”VT-d” eller ”AMD-Vi”.';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Att ignorera detta problem kan leda till en mindre säker installation.';

  @override
  String get tpmActionRestartLabel => 'Starta om';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Starta om och aktivera TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Starta om och rensa TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignorera och fortsätt';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Att rensa TPM raderar alla krypteringsnycklar';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'Du kommer att förlora åtkomst till all data på krypterade enheter för vilka du saknar återställningsnycklar. Det kommer också att stoppa annan funktionalitet som beror på TPM, som autentisering och certifikat.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'Jag förstår konsekvenserna av att rensa TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'Du kan bli ombedd att bekräfta denna åtgärd vid omstart.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Du måste då starta installationen på nytt.';

  @override
  String get tpmActionErrorTitle => 'Lösningen misslyckades';

  @override
  String get tpmActionErrorDescription =>
      'Testa en annan lösning eller kontakta IT-support.';

  @override
  String get manualPartitioningWarningBody =>
      'Prova någonting annat. Du kan också <a href=\"\">skicka en felrapport</a>.';
}
