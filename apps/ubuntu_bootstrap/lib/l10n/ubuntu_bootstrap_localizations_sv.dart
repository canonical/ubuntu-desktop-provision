import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class UbuntuBootstrapLocalizationsSv extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Ubuntu skrivbordsinstallatören';

  @override
  String windowTitle(String RELEASE) {
    return 'Installera $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automatisk installation';

  @override
  String get autoinstallDirectHeader => 'Importera automatisk installationsfil';

  @override
  String get autoinstallDirectUrlLabel => 'Du kan ange URL:en till en automatisk installationsfil:';

  @override
  String get autoinstallDirectFileLabel => 'Eller välj en lokal fil:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Välj fil...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Rensa fil';

  @override
  String get autoinstallDirectFilePickerTitle => 'Välj fil';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML filer';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importera';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Automatisk installationsfil kan inte nås';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Kontrollera att webbadressen är korrekt, testa din internetanslutning eller försök senare.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Ogiltig webbadress';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Kontrollera att webbadressen är korrekt eller välj en lokal fil.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Ogiltig automatisk installationsfil';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Kontrollera filen eller ange en annan.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Filen för automatisk installation är inte läsbar';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Kontrollera dina behörigheter eller ange en annan fil.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Okänt fel';

  @override
  String get autoinstallTitle => 'Typ av installation';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Hur vill du installera $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Ange autoinstall.yaml URL eller lokal filsökväg:';

  @override
  String get autoinstallInteractiveOption => 'Interaktiv installation';

  @override
  String get autoinstallInteractiveDescription => 'För användare som vill bli guidade steg för steg genom installationen.';

  @override
  String get autoinstallDirectOption => 'Automatiserad med automatisk installationsfil';

  @override
  String get autoinstallDirectDescription => 'För avancerade användare som har en autoinstall.yaml för konsekventa och repeterbara systemkonfigurationer.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organisations that provide an autoinstall file via Landscape.';

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
    return 'Prova eller installera $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Vad vill du göra med $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Reparera installation';

  @override
  String get tryOrInstallRepairDescription => 'Reparation kommer att installera om all installerad programvara utan att röra dokument eller inställningar.';

  @override
  String tryOption(String RELEASE) {
    return 'Prova $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Du kan prova $RELEASE utan att göra några ändringar till din dator.';
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
  String get rstTitle => 'RST upptäckt';

  @override
  String get rstHeader => 'Slå av RST för att fortsätta';

  @override
  String get rstDisable => 'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows => 'Windows, if you are using a dual boot setup with Windows';

  @override
  String get rstDisableBios => 'The BIOS settings';

  @override
  String rstInstructions(String url) {
    return 'För instruktioner, scanna QR-koden på en annan enhet eller besök:<a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Konfigurera Säker start';

  @override
  String get configureSecureBootDescription => 'Du har valt att installera drivrutinsprogram från tredje part. Detta kräver att du stänger av Säker Start.\nFör att göra detta måste du välja en säkerhetsnyckel nu och ange den när systemet startar om.';

  @override
  String get configureSecureBootOption => 'Konfigurera Säker start';

  @override
  String get chooseSecurityKey => 'Välj en säkerhetsnyckel';

  @override
  String get confirmSecurityKey => 'Bekräfta säkerhetsnyckeln';

  @override
  String get dontInstallDriverSoftwareNow => 'Installera inte drivrutinsprogramvara för tillfället';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Du kan installera det senare från Programvara och uppdateringar.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Säkerhetsnyckel krävs';

  @override
  String get secureBootSecurityKeysDontMatch => 'Säkerhetsnycklarna matchar inte';

  @override
  String get showSecurityKey => 'Visa säkerhetsnyckel';

  @override
  String get hideSecurityKey => 'Dölj';

  @override
  String get updatesOtherSoftwarePageTitle => 'Program och uppdateringar';

  @override
  String get updatesOtherSoftwarePageDescription => 'Vilka program skulle du vilja installera till att börja med?';

  @override
  String get codecsAndDriversPageTitle => 'Optimera din dator';

  @override
  String get codecsAndDriversPageDescription => 'Installera rekommenderad proprietär programvara?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO levereras som standard utan proprietär programvara. Att installera ytterligare programvara kan förbättra din dators prestanda.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA grafikkort har upptäckts';

  @override
  String get codecsAndDriversNvidiaBody => 'För bästa prestanda för NVIDIA grafikkort rekommenderas starkt att du installerar ytterligare drivrutiner.';

  @override
  String get fullInstallationTitle => 'Fullständig installation';

  @override
  String get fullInstallationSubtitle => 'Ett offline-vänligt urval av kontorsverktyg, verktyg och webbläsare.';

  @override
  String get minimalInstallationTitle => 'Standard installation';

  @override
  String get minimalInstallationSubtitle => 'Bara de viktigaste, webbläsare och grundläggande verktyg.';

  @override
  String get otherOptions => 'Andra alternativ';

  @override
  String get installThirdPartyTitle => 'Installera programvara från tredje part för grafik och Wi-Fi-hårdvara, samt ytterligare mediaformat';

  @override
  String get installThirdPartySubtitle => 'Denna programvara är föremål för licensvillkor som ingår i dess dokumentation. Vissa är proprietära.';

  @override
  String get installDriversTitle => 'Installera programvara från tredje part för grafik och Wi-Fi-hårdvara';

  @override
  String get installDriversSubtitle => 'Inkluderar men inte begränsat till NVIDIA-drivrutiner och liknande';

  @override
  String get installCodecsTitle => 'Ladda ner och installera stöd för ytterligare medieformat';

  @override
  String get installCodecsSubtitle => 'Inkluderar men inte begränsat till MP3, MP4, MOV och liknande';

  @override
  String get batteryWarning => 'Datorn är inte ansluten till en strömkälla.';

  @override
  String get offlineWarning => 'Du är för närvarande offline';

  @override
  String get choosePassphraseTitle => 'Disk lösenfras';

  @override
  String get choosePassphraseHeader => 'Skapa en lösenfras';

  @override
  String get choosePassphraseBody => 'Du behöver en lösenfras för att kryptera dina filer. Du kommer att bli ombedd att ange din lösenfras varje gång du slår på din dator.';

  @override
  String get choosePassphraseHint => 'Välj en lösenfras';

  @override
  String get choosePassphraseConfirmHint => 'Bekräfta lösenfrasen';

  @override
  String get choosePassphraseRequired => 'En lösenfras krävs';

  @override
  String get choosePassphraseMismatch => 'Lösenfraserna matchar inte';

  @override
  String get choosePassphraseInfoHeader => 'Se till att du sparar din lösenfras';

  @override
  String get choosePassphraseInfoBody => 'Om du tappar bort din lösenfras kommer du att förlora all din data.';

  @override
  String get chooseOptionalPassphraseHeader => 'Create a passphrase (optional)';

  @override
  String get chooseOptionalPassphraseBody => 'A passphrase can help protect your data even if your hardware gets compromised. You will need to enter the passphrase every time you turn on your computer. You will not be able to remove it later';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody => 'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get createPassphrase => 'Skapa en lösenfras';

  @override
  String get confirmPassphrase => 'Bekräfta lösenfrasen';

  @override
  String get installationTypeTitle => 'Typ av installation';

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
  String get installationTypeMultiOSDetected => 'Den här datorn har för närvarande flera operativsystem på sig. Vad skulle du vilja göra?';

  @override
  String get installationTypeNoOSDetected => 'Den här datorn har för närvarande inga upptäckta operativsystem. Vad skulle du vilja göra?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Radera disk och installera $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'All data och partitioner på disken kommer att raderas, inklusive operativsystem.';

  @override
  String get installationTypeAdvancedLabel => 'Avancerade funktioner...';

  @override
  String get installationTypeAdvancedTitle => 'Avancerade funktioner';

  @override
  String get installationTypeExperimental => 'Experimentell';

  @override
  String get installationTypeNone => 'Inga';

  @override
  String get installationTypeNoneSelected => 'Inga valda';

  @override
  String get installationTypeLVM => 'Använd LVM';

  @override
  String get installationTypeLVMSelected => 'LVM valt';

  @override
  String get installationTypeLVMEncryption => 'Använd LVM och kryptering';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM och kryptering vald';

  @override
  String get installationTypeEncryptInfo => 'Du väljer en säkerhetsnyckel i nästa steg.';

  @override
  String get installationTypeZFS => 'EXPERIMENTELLT: Radera disk och använd ZFS';

  @override
  String get installationTypeZFSEncryption => 'Radera disk och använd ZFS med kryptering';

  @override
  String get installationTypeZFSSelected => 'ZFS valt';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS och kryptering vald';

  @override
  String get installationTypeTPM => 'EXPERIMENTELLT: Aktivera hårdvarustöd fullständig diskkryptering';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Detta är en experimentell funktion. Det kanske inte fungerar med din hårdvara eller med framtida $DISTRO släpp. <a href=\"$url\">Läs om TPM kryptering</a> innan du väljer det alternativet.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM vald';

  @override
  String installationTypeReinstall(String os) {
    return 'Radera $os och installera om';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Varning:</font> Detta tar bort alla dina $os-program, dokument, foton, musik och alla andra filer.';
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
    return 'Alla filer och data från din befintliga $os installation kommer att raderas permanent.';
  }

  @override
  String get installationTypeManual => 'Manuell partitionering';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Du kan skapa eller ändra storlek på partitioner själv, eller välja flera partitioner för $DISTRO';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Radera disk och installera $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Börja från början på den valda disken.';

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
  String get installAlongsideSpaceDivider => 'Tilldela enhetsutrymme genom att dra i spaken nedan:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num mindre partitioner är dolda, använd det <a href=\"$url\">avancerade partitionsverktyget</a> för mer kontroll';
  }

  @override
  String get installAlongsideResizePartition => 'Ändra storlek på partition';

  @override
  String get installAlongsideAllocateSpace => 'Tilldela utrymme';

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
  String get allocateDiskSpaceInvalidMountPointSlash => 'Monteringspunkter måste börja med \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Monteringspunkter kan inte innehålla mellanslag';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
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
  String get newPartitionTableConfirmationTitle => 'Skapa en ny tom partition';

  @override
  String get newPartitionTableConfirmationMessage => 'Att skapa en ny partitionstabell på en hel enhet tar bort alla dess nuvarande partitioner. Denna operation kan ångras om det behövs.';

  @override
  String get tooManyPrimaryPartitions => 'För många primära partitioner';

  @override
  String get partitionLimitReached => 'Gränsen nådd';

  @override
  String get bootLoaderDevice => 'Enhet för installation av starthanteraren';

  @override
  String get partitionCreateTitle => 'Skapa partition';

  @override
  String get partitionEditTitle => 'Redigera partition';

  @override
  String get partitionSizeLabel => 'Storlek:';

  @override
  String get partitionTypeLabel => 'Typ för den nya partitionen:';

  @override
  String get partitionTypePrimary => 'Primär';

  @override
  String get partitionTypeLogical => 'Logisk';

  @override
  String get partitionLocationLabel => 'Plats för den nya partitionen:';

  @override
  String get partitionLocationBeginning => 'Början av detta utrymme';

  @override
  String get partitionLocationEnd => 'Slutet på detta utrymme';

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
  String get confirmHeader => 'Se över dina val';

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
  String get confirmEntryDiskSetup => 'Diskinställningar';

  @override
  String get confirmEntryDiskEncryption => 'Disk kryptering';

  @override
  String get confirmEntryInstallationDisk => 'Installationsdisk';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietär programvara';

  @override
  String get confirmSectionGeneralTitle => 'Allmän';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Säkerhet & mer';

  @override
  String get confirmPartitionsTitle => 'Partitioner';

  @override
  String get confirmPartitionTables => 'Följande enheters partitionstabeller är ändrade:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Följande partitionsändringar kommer att tillämpas:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'partition <b>$sysname</b> storleksändrad från <b>$oldsize</b> till <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'partition <b>$sysname</b> formaterad som <b>$format</b> används för <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'partition <b>$sysname</b> formaterad som <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'partition <b>$sysname</b> används för <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'partition <b>$sysname</b> skapad';
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
  String get restartWarningBody => 'Starta om för att slutföra installationen eller fortsätt att testa.\nÄndringar du gör kommer inte att sparas.';

  @override
  String get rebootToConfigureWarning => 'Du måste starta om datorn för att fortsätta installationsprocessen.';

  @override
  String get shutdown => 'Stäng av';

  @override
  String get restartNow => 'Starta om nu';

  @override
  String get continueTesting => 'Fortsätt att testa';

  @override
  String get bitlockerInfoTitle => 'BitLocker detected';

  @override
  String get bitlockerInfoDescription => 'One or more partitions are encrypted with BitLocker.';

  @override
  String get bitlockerInfoDisable => 'To install alongside Windows, disable BitLocker in Windows.';

  @override
  String get bitlockerInfoRecovery => 'Windows may request recovery keys on boot after installation.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'For instructions, visit the <a href=\"$url\">BitLocker guide</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'You may lose all your data without BitLocker recovery keys';

  @override
  String get restartComputer => 'Restart computer';

  @override
  String get restartComputerTitle => 'Restart computer?';

  @override
  String get restartIntoWindows => 'Starta om till Windows';

  @override
  String get restartIntoWindowsTitle => 'Starta om till Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Är du säker på att du vill starta om din dator? Du kommer att behöva starta om $DISTRO senare för att slutföra installationen av $DISTRO.';
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
  String get installationSlidesWelcomeTitle => 'Snabb, gratis och full av nya funktioner';

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
  String get installationSlidesDevelopmentTitle => 'Utveckla med det bästa av öppen källkod';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO är den idealiska arbetsstationen för app eller webbutveckling, datavetenskap och AI/ML samt devops och administration. Varje $DISTRO-version innehåller de senaste verktygskedjorna och stöder alla större IDE:er.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Förbättra din kreativitet';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Om du är en animatör, designer, videoskapare eller spelutvecklare är det enkelt att ta med dina arbetsflöden till $DISTRO med stöd för industristandard programvara och applikationer med öppen källkod.';
  }

  @override
  String get installationSlidesGamingTitle => 'Perfekt för spel';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO stödjer dom senaste NVIDIA och Mesa drivrutinerna för att förbättra prestanda och kompatibilitet. Tusen av Windows titlar fungerar bra att spela på $DISTRO via program som Steam utan ytterligare konfiguration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privat och säker';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO ger dig alla verktyg du behöver för att hålla dig privat och säker online. Med inbyggd brandvägg och VPN-stöd och en mängd sekretesscentrerade program för att säkerställa att du har full kontroll över din data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Alla $DISTRO LTS-släpp kommer med fem års av säkerhetskorrigering ingår, samt sträcker sig till tio år med ett Ubuntu Pro-abonnemang.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Öka din produktivitet';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Skrivbord inkluderar Libreoffice, en svit av Microsoft Office kompatibla öppen källkods program för dokument, kalkylblad och presentationer. Populära samarbetsverktyg finns också tillgängliga.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Tillgång för alla';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'I hjärtat av $DISTRO filosofin är tron att datoranvändning är för alla. Med avancerade tillgänglighetsverktyg och alternativ för att ändra språk, färger och textstorlek gör $DISTRO datoranvändning enkel - vem och var du än är.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca skärmläsare';

  @override
  String get installationSlidesAccessibilityLanguages => 'Språkstöd';

  @override
  String get installationSlidesSupportTitle => 'Hjälp och support';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Den officiella $DISTRO dokumentation är tillgänglig både online och via Hjälp ikonen i dockan.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu täcker en rad frågor och svar och Ubuntu Discourse ger guider och diskussioner för nya och erfarna användare.';

  @override
  String get installationSlidesSupportEnterprise => 'För företagsanvändare tillhandahåller Canonical kommersiell support för att göra det enkelt att installera och hantera Ubuntu säkert på arbetsplatsen.';

  @override
  String get installationSlidesSupportResources => 'Hjälpsamma resurser:';

  @override
  String get installationSlidesSupportDocumentation => 'Officiell dokumentation';

  @override
  String get installationSlidesSupportUbuntuPro => 'Support i företagsklass 24/7 med Ubuntu Pro';

  @override
  String get copyingFiles => 'Kopierar filer…';

  @override
  String get installingSystem => 'Installerar ditt system…';

  @override
  String get configuringSystem => 'Ställer in ditt system…';

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
  String get refreshHeader => 'En uppdatering är tillgänglig för installationsprogrammet';

  @override
  String get refreshUpdateNow => 'Uppdatera nu';

  @override
  String get refreshInfo => 'Uppdatera till den senaste versionen för förbättrad tillförlitlighet och fler funktioner.';

  @override
  String get refreshReady => 'Uppdatering redo';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Din nuvarande $snap version är $version.';
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
  String get refreshRestart => 'Vänligen stäng installationsprogrammet och starta om för att fortsätta';

  @override
  String get refreshCloseLabel => 'Stäng installationsprogrammet';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Säkerställer $snap förutsättningar...';
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
    return 'Laddar ner $snap...';
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
    return 'Stoppar $snap tjänster...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Tar bort $snap alias...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Avlänkar $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Uppdaterar $snap tillgångar...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Uppdaterar $snap kärnans kommandorad...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopierar $snap data...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Ställer in $snap säkerhetsprofiler...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Länkar $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Ansluter $snap pluggar och fack...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Ställer in automatiska $snap alias...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Ställer in $snap alias...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Startar $snap tjänster...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Rensar upp $snap...';
  }

  @override
  String get recoveryKeyTitle => 'TPM återställningsnyckel';

  @override
  String get recoveryKeyHeader => 'Get a recovery key';

  @override
  String get recoveryKeyInfoHeader => 'You may lose all your data without a recovery key';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Get a recovery key as soon as you first log into $distro and store it somewhere safe.';
  }

  @override
  String get recoveryKeyCommand => 'Du kan komma åt din återställningsnyckel efter installationen med följande kommando:';

  @override
  String get recoveryKeyStorageAdvice => 'Store the recovery key somewhere safe. Use it to decrypt the disk in case of certain system changes. For example, you may need it if you change the components in your computer or update firmware.';

  @override
  String get recoveryKeyConfirmation => 'I understand I may lose all my data if I don\'t have a recovery key';

  @override
  String landscapeMagicAttachInstructions(Object url) {
    return 'Scan the QR code or enter the code below at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automated installation';

  @override
  String get landscapeHeader => 'Log in to Landscape';

  @override
  String get landscapeDomainHeader => 'Enter Landscape domain (FQDN)';

  @override
  String get landscapeDomainInstructions => 'Provide your organization\'s Landscape domain to log in and fetch an autoinstall file. You can get the FQDN from your IT support.';

  @override
  String get landscapeDomainTextField => 'Landscape domain (FQDN)';

  @override
  String get next => 'Next';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Invalid domain, please check or contact your IT support';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Connect to the internet to continue';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'Internet is needed to fetch the autoinstall file from Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Code expired, please try again';

  @override
  String get landscapeLoginFailedWarning => 'Login failed, please try again';
}
