import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class UbuntuBootstrapLocalizationsDa extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Ubuntu Skrivebordsinstallation';

  @override
  String windowTitle(String RELEASE) {
    return 'Installér $RELEASE';
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
  String get autoinstallTitle => 'Installationstype';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Hvordan vil du installere $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Indtast autoinstall.yaml-URL eller lokal filsti:';

  @override
  String get autoinstallInteractiveOption => 'Interaktiv installation';

  @override
  String get autoinstallInteractiveDescription => 'Til brugere som vil guides gennem installationen et trin ad gangen.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organisations that provide an autoinstall file via Landscape.';

  @override
  String get changeButtonText => 'Ændr';

  @override
  String get quitButtonText => 'Afslut installation';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Velkommen til $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Forbereder $DISTRO …';
  }

  @override
  String get warningLabel => 'Advarsel:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Prøv eller installér $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Hvad vil du gøre med $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Reparér installation';

  @override
  String get tryOrInstallRepairDescription => 'Reparation geninstallerer al installeret software uden at røre ved dokumenter eller indstillinger.';

  @override
  String tryOption(String RELEASE) {
    return 'Prøv $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Du kan prøve $RELEASE uden at foretage nogen ændringer på din computer.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Installér $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Installér $RELEASE ved siden af (eller i stedet for) dit nuværende operativsystem. Dette burde ikke tage lang tid.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Du vil måske gerne læse <a href=\"$url\">udgivelsesnoterne</a>.';
  }

  @override
  String get rstTitle => 'RST detekteret';

  @override
  String get rstHeader => 'Slå RST fra for at fortsætte';

  @override
  String rstDescription(String DISTRO) {
    return 'Denne computer bruger Intel RST (Rapid Storage Technology). Før installation af $DISTRO skal du slå RST fra i Windows.';
  }

  @override
  String rstInstructions(String url) {
    return 'Få vejledning ved at skanne QR-koden på en anden enhed, eller besøg: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Konfigurér Secure Boot';

  @override
  String get configureSecureBootDescription => 'Du har valgt at installere tredjeparts-driversoftware. Dette kræver, at man slår Secure Boot fra.\nFor at gøre dette skal du nu vælge en sikkerhedsnøgle og indtaste den, når systemet genstarter.';

  @override
  String get configureSecureBootOption => 'Konfigurér Secure Boot';

  @override
  String get chooseSecurityKey => 'Vælg sikkerhedsnøgle';

  @override
  String get confirmSecurityKey => 'Bekræft sikkerhedsnøglen';

  @override
  String get dontInstallDriverSoftwareNow => 'Installér ikke driversoftwaren lige nu';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Du kan installere den senere fra Software & opdateringer.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Sikkerhedsnøgle er påkrævet';

  @override
  String get secureBootSecurityKeysDontMatch => 'Sikkerhedsnøgler stemmer ikke overens';

  @override
  String get showSecurityKey => 'Vis';

  @override
  String get hideSecurityKey => 'Skjul';

  @override
  String get updatesOtherSoftwarePageTitle => 'Programmer';

  @override
  String get updatesOtherSoftwarePageDescription => 'Hvilke programmer vil du installere til at begynde med?';

  @override
  String get codecsAndDriversPageTitle => 'Optimér din computer';

  @override
  String get codecsAndDriversPageDescription => 'Installér anbefalet proprietær software?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'Som standard følger der ingen proprietær software med $DISTRO. Installation af yderligere software kan forbedre din computers ydelse.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA-grafikkort fundet';

  @override
  String get codecsAndDriversNvidiaBody => 'Det anbefales stærkt at installere yderligere drivere for at få den bedste ydelse med NVIDIA-grafikkort.';

  @override
  String get fullInstallationTitle => 'Udvidet udvalg';

  @override
  String get fullInstallationSubtitle => 'Et offlinevenligt udvalg af kontorsoftware, værktøjer og webbrowser.';

  @override
  String get minimalInstallationTitle => 'Standardudvalg';

  @override
  String get minimalInstallationSubtitle => 'Kun det vigtigste – webbrowser og basisværktøjer.';

  @override
  String get otherOptions => 'Andre muligheder';

  @override
  String get installThirdPartyTitle => 'Installér tredjepartssoftware til grafik- og wi-fi-hardware samt yderligere medieformater';

  @override
  String get installThirdPartySubtitle => 'Denne software er underlagt de licensvilkår, som er inkluderet i dens dokumentation. Nogle er proprietære.';

  @override
  String get installDriversTitle => 'Installér tredjepartssoftware til grafik- og wi-fi-hardware';

  @override
  String get installDriversSubtitle => 'Inkluderer men er ikke begrænset til NVIDIA-drivere og lignende';

  @override
  String get installCodecsTitle => 'Hent og installér understøttelse af yderligere medieformater';

  @override
  String get installCodecsSubtitle => 'Inkluderer men er ikke begrænset til MP3, MP4, MOV og lignende';

  @override
  String get batteryWarning => 'Denne computer er ikke tilsluttet ekstern strømforsyning.';

  @override
  String get offlineWarning => 'Du er i øjeblikket offline';

  @override
  String get choosePassphraseTitle => 'Diskadgangskode';

  @override
  String get choosePassphraseHeader => 'Opret en adgangskode';

  @override
  String get choosePassphraseBody => 'Du skal bruge en adgangskode for at kryptere dine filer. Du vil blive bedt om din adgangskode hver gang, du tænder computeren.';

  @override
  String get choosePassphraseHint => 'Vælg en adgangskode';

  @override
  String get choosePassphraseConfirmHint => 'Bekræft adgangskoden';

  @override
  String get choosePassphraseRequired => 'Adgangskode påkrævet';

  @override
  String get choosePassphraseMismatch => 'Adgangskoderne stemmer ikke overens';

  @override
  String get choosePassphraseInfoHeader => 'Sørg for at gemme din adgangskode';

  @override
  String get choosePassphraseInfoBody => 'Hvis du mister din adgangskode, går alle dine data tabt.';

  @override
  String get createPassphrase => 'Opret en adgangskode';

  @override
  String get confirmPassphrase => 'Bekræft adgangskoden';

  @override
  String get installationTypeTitle => 'Diskopsætning';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Hvordan vil du installere $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Denne computer har i øjeblikket $os installeret. Hvad kunne du tænke dig at gøre?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Denne computer har i øjeblikket $os1 og $os2 installeret. Hvad kunne du tænke dig at gøre?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Denne computer har i øjeblikket flere forskellige operativsystemer installeret. Hvad kunne du tænke dig at gøre?';

  @override
  String get installationTypeNoOSDetected => 'Der blev ikke fundet noget operativsystem på denne computer. Hvad kunne du tænke dig at gøre?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Slet disk og installér $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Start forfra på din valgte disk.';

  @override
  String get installationTypeAdvancedLabel => 'Avancerede funktioner …';

  @override
  String get installationTypeAdvancedTitle => 'Avancerede funktioner';

  @override
  String get installationTypeExperimental => 'Eksperimentel';

  @override
  String get installationTypeNone => 'Ingen';

  @override
  String get installationTypeNoneSelected => 'Ingen valgt';

  @override
  String get installationTypeLVM => 'Brug LVM';

  @override
  String get installationTypeLVMSelected => 'LVM valgt';

  @override
  String get installationTypeLVMEncryption => 'Brug LVM og kryptering';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM og kryptering valgt';

  @override
  String get installationTypeEncryptInfo => 'I næste trin skal du vælge en sikkerhedsnøgle.';

  @override
  String get installationTypeZFS => 'Slet disk og benyt ZFS';

  @override
  String get installationTypeZFSEncryption => 'Slet disk og benyt ZFS med kryptering';

  @override
  String get installationTypeZFSSelected => 'ZFS valgt';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS og kryptering valgt';

  @override
  String get installationTypeTPM => 'Aktivér fuld diskkryptering i hardware';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Denne funktion er eksperimentel. Den fungerer måske ikke med din hardware eller i fremtidige udgaver af $DISTRO. <a href=\"$url\">Læs om TPM-kryptering</a>, før du vælger denne mulighed.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM Valgt';

  @override
  String installationTypeReinstall(String os) {
    return 'Slet $os og geninstallér';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Advarsel:</font> Dette vil slette alle dine programmer, dokumenter, fotografier, musik, og enhver anden fil i $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Installér $product ved siden af $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Installér $product ved siden af $os1 og $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Installér $product ved siden af dem';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Installér $product ved siden af andre partitioner';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Du kan vælge dit operativsystem under systemopstart.';
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
  String get installationTypeManual => 'Manuel installation';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'For avancerede brugere som ønsker brugertilpasset diskopsætning.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Slet disk og installér $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Start forfra på din valgte disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Vælg drev:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Vælg partition:';

  @override
  String get selectGuidedStorageInfoLabel => 'Hele disken vil blive brugt:';

  @override
  String get selectGuidedStorageInstallNow => 'Installér nu';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Vælg, hvor du vil installere $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Tildel diskplads ved at trække i adskilleren herunder:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num mindre partitioner er skjulte; brug det <a href=\"$url\">avancerede partitionsværktøj</a> for at få mere kontrol';
  }

  @override
  String get installAlongsideResizePartition => 'Ændr størrelse på partition';

  @override
  String get installAlongsideAllocateSpace => 'Tildel plads';

  @override
  String get installAlongsideFiles => 'Filer';

  @override
  String get installAlongsidePartition => 'Partition:';

  @override
  String get installAlongsideSize => 'Størrelse:';

  @override
  String get installAlongsideAvailable => 'Tilgængelig:';

  @override
  String get allocateDiskSpace => 'Manuel partitionering';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Monteringspunkter skal starte med “/”';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Monteringspunkter må ikke indeholde mellemrum';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Enhed';

  @override
  String get diskHeadersType => 'Type';

  @override
  String get diskHeadersMountPoint => 'Monteringspunkt';

  @override
  String get diskHeadersSize => 'Størrelse';

  @override
  String get diskHeadersUsed => 'Brugt';

  @override
  String get diskHeadersSystem => 'System';

  @override
  String get diskHeadersFormat => 'Format';

  @override
  String get freeDiskSpace => 'Ledig plads';

  @override
  String get newPartitionTable => 'Ny partitionstabel';

  @override
  String get newPartitionTableConfirmationTitle => 'Ny tom partition';

  @override
  String get newPartitionTableConfirmationMessage => 'Oprettelse af ny partitionstabel på en hel enhed vil fjerne alle dens nuværende partitioner. Denne handling kan fortrydes, hvis det er nødvendigt.';

  @override
  String get tooManyPrimaryPartitions => 'For mange primære partitioner';

  @override
  String get partitionLimitReached => 'Grænse nået';

  @override
  String get bootLoaderDevice => 'Enhed til installation af opstartsindlæser';

  @override
  String get partitionCreateTitle => 'Opret partition';

  @override
  String get partitionEditTitle => 'Redigér partition';

  @override
  String get partitionSizeLabel => 'Størrelse:';

  @override
  String get partitionTypeLabel => 'Type for ny partition:';

  @override
  String get partitionTypePrimary => 'Primær';

  @override
  String get partitionTypeLogical => 'Logisk';

  @override
  String get partitionLocationLabel => 'Placering af ny partition:';

  @override
  String get partitionLocationBeginning => 'Begyndelse på dette område';

  @override
  String get partitionLocationEnd => 'Slutning af dette område';

  @override
  String get partitionFormatLabel => 'I brug som:';

  @override
  String get partitionFormatNone => 'Lad være uformateret';

  @override
  String partitionFormatKeep(String format) {
    return 'Forbliv formateret som $format';
  }

  @override
  String get partitionErase => 'Formatér partitionen';

  @override
  String get partitionMountPointLabel => 'Monteringspunkt:';

  @override
  String get confirmPageTitle => 'Klar til at installere';

  @override
  String get confirmHeader => 'Gennemgå dine valg';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Ingen';

  @override
  String get confirmDevicesTitle => 'Enheder';

  @override
  String get confirmEntryApplications => 'Programmer';

  @override
  String get confirmEntryDiskSetup => 'Diskopsætning';

  @override
  String get confirmEntryDiskEncryption => 'Diskkryptering';

  @override
  String get confirmEntryInstallationDisk => 'Installationsdisk';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietær software';

  @override
  String get confirmSectionGeneralTitle => 'Generelt';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Sikkerhed med mere';

  @override
  String get confirmPartitionsTitle => 'Partitioner';

  @override
  String get confirmPartitionTables => 'Partitionstabellen på de følgende enheder er ændret:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Følgende partitionsændringer vil blive udført:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'partitionen <b>$sysname</b> ændrer størrelse fra <b>$oldsize</b> til <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'partitionen <b>$sysname</b> formateres som <b>$format</b> og bruges til <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'partitionen <b>$sysname</b> formateres som <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'partitionen <b>$sysname</b> bruges til <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'partitionen <b>$sysname</b> oprettes';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codec';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codec og drivere';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivere';

  @override
  String get confirmInstallButton => 'Installér';

  @override
  String get installationCompleteTitle => 'Installation gennemført';

  @override
  String readyToUse(String system) {
    return '$system er installeret og klar til brug';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** er blevet kopieret til disken';
  }

  @override
  String restartInto(String system) {
    return 'Genstart i $system';
  }

  @override
  String get restartWarningBody => 'Genstart for at fuldføre installationen eller fortsæt med at afprøve.\nEventuelle ændringer, du foretager, gemmes ikke.';

  @override
  String get rebootToConfigureWarning => 'Du skal genstarte computeren for at fortsætte installationsprocessen.';

  @override
  String get shutdown => 'Sluk';

  @override
  String get restartNow => 'Genstart nu';

  @override
  String get continueTesting => 'Fortsæt afprøvning';

  @override
  String get bitlockerTitle => 'BitLocker er aktiveret';

  @override
  String get bitlockerHeader => 'Slå BitLocker fra for at fortsætte';

  @override
  String bitlockerDescription(String option) {
    return 'Denne computer benytter kryptering med Windows BitLocker.\nDu bliver nødt til at bruge Windows til at frigøre plads eller gå tilbage og vælge “$option” for at fortsætte.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Få vejledning ved at skanne QR-koden på en anden enhed, eller besøg: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Genstart i Windows';

  @override
  String get restartIntoWindowsTitle => 'Genstart i Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Er du sikker på, at du vil genstarte din computer? Du vil skulle genstarte $DISTRO-installationen senere for at færdiggøre installationen af $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Velkommen til $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Tilgængelig:';

  @override
  String get installationSlidesIncluded => 'Inkluderet:';

  @override
  String get installationSlidesWelcomeTitle => 'Hurtig, fri og fyldt med nye funktioner';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Den seneste udgave af $DISTRO gør computerarbejde nemmere end nogensinde.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Hvad enten du er udvikler, forfatter, gamer eller administrator, vil du finde nye værktøjer, som forbedrer din produktivitet og beriger din oplevelse med $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Alle de programmer du behøver';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Installér, håndtér og opdatér alle dine programmer i Ubuntu Software inklusive tusindvis af programmer fra både Snapbutikken og ${DISTRO}s arkiv.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Udvikling med de bedste open source-værktøjer';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO er den ideelle platform til program- eller webudvikling, datavidenskab og AI/ML samt devops og administration. Hver $DISTRO-udgivelse inkluderer de seneste toolchains og understøtter alle større IDE\'er.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Berig din kreativitet';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Hvad enten du er animator, designer eller spiludvikler, så er det nemt at tage dine arbejdsgange med til $DISTRO med understøttelse af industristandarder og open source software.';
  }

  @override
  String get installationSlidesGamingTitle => 'Super til gaming';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO understøtter de seneste NVIDIA- og Mesa-drivere, som forbedrer ydeevne og kompatibilitet. Tusindvis af Windows-titler kører glimrende på $DISTRO via programmer som Steam uden nogen yderligere konfiguration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privat og sikkert';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO tilbyder alle de værktøjer, du har brug for, til at beskytte dit privatliv og din sikkerhed på nettet. Med indbygget firewall og VPN-understøttelse samt en mængde privatlivsorienterede programmer har du fuld kontrol over dine data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Alle $DISTRO LTS-udgivelser understøttes i fem år med sikkerhedsrettelser, hvilket kan forlænges helt op til ti år med et Ubuntu Pro-abonnement.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Send din produktivitet til himmels';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Skrivebord inkluderer LibreOffice, en række Microsoft Office-kompatible programmer med åben kildekode til dokumenter, regneark og præsentationer. Populære samarbejdssværktøjer er også tilgængelige.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Adgang for alle';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'I centrum for $DISTRO-filosofien er troen på, at computere er for alle. Med avancerede tilgængelighedsværktøjer og muligheder for at ændre sprog, farver og tekststørrelse, gør $DISTRO det nemt at bruge computeren – hvem end og hvor end du er.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Skærmoplæseren Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Sprogunderstøttelse';

  @override
  String get installationSlidesSupportTitle => 'Hjælp og støtte';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Den officielle $DISTRO-dokumentation er både tilgængelig på nettet og via Hjælp-ikonet i dokken.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu dækker en bred vifte af spørgsmål og svar, og Ubuntu Discourse tilbyder vejledninger og diskussioner for både nye og erfarne brugere.';

  @override
  String get installationSlidesSupportEnterprise => 'For virksomhedsbrugere tilbyder Canonical kommerciel støtte for at gøre det nemt at onboarde og administrere Ubuntu sikkert på arbejdspladsen.';

  @override
  String get installationSlidesSupportResources => 'Nyttige ressourcer:';

  @override
  String get installationSlidesSupportDocumentation => 'Officiel dokumentation';

  @override
  String get installationSlidesSupportUbuntuPro => '24/7-støtte på virksomhedsniveau med Ubuntu Pro';

  @override
  String get copyingFiles => 'Kopierer filer…';

  @override
  String get installingSystem => 'Installerer systemet …';

  @override
  String get configuringSystem => 'Opsætter systemet …';

  @override
  String get installationFailed => 'Installationen mislykkedes';

  @override
  String get notEnoughDiskSpaceTitle => 'Utilstrækkelig diskplads';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Der er ikke nok diskplads til at installere $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Den valgte disk har ikke nok plads til at installere $DISTRO. Afslut installationsprogrammet og frigør plads eller vælg en anden disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Tilgængelig:';

  @override
  String get notEnoughDiskSpaceRequired => 'Påkrævet:';

  @override
  String get refreshPageTitle => 'Opdatering tilgængelig';

  @override
  String get refreshHeader => 'En opdatering er tilgængelig til installationsprogrammet';

  @override
  String get refreshUpdateNow => 'Opdatér nu';

  @override
  String get refreshInfo => 'Opdatér til seneste version for at få forbedret stabilitet og flere funktioner.';

  @override
  String get refreshReady => 'Opdatering klar';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Nuværende version af $snap er $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Opdatér til version $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Nuværende version $version er opdateret.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Opdaterer $snap …';
  }

  @override
  String get refreshRestart => 'Luk venligst installationsprogrammet og kør igen for at fortsætte';

  @override
  String get refreshCloseLabel => 'Luk installationsprogram';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Sikrer forudsætninger for $snap …';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Opdaterer $snap …';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Kontrollerer genopfriskning af $snap …';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Forbereder $snap …';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Henter $snap …';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validerer $snap …';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Monterer $snap …';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Stopper $snap-tjenester …';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Fjerner $snap-aliasser …';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Fjerner link til $snap …';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Opdaterer ressourcer for $snap …';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Opdaterer $snap-kernekommandolinje …';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopierer $snap-data …';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Opsætter $snap-sikkerhedsprofiler …';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Linker $snap …';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Forbinder plugs og slots for $snap …';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Angiver automatiske aliasser for $snap …';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Konfigurerer $snap-aliasser …';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Starter $snap-tjenester …';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Rydder op i $snap …';
  }

  @override
  String get recoveryKeyTitle => 'TPM-genoprettelsesnøgle';

  @override
  String get recoveryKeyCommand => 'Du kan tilgå din genoprettelsesnøgle efter installation med følgende kommando:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Advarsel:</font> Hvis du mister denne sikkerhedsnøgle, tabes alle data. Hvis du har brug for det, så skriv din nøgle ned og gem den på et andet, sikkert sted.';
  }

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
