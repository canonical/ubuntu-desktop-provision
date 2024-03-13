import 'ubuntu_bootstrap_localizations.dart';

/// The translations for Danish (`da`).
class UbuntuBootstrapLocalizationsDa extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Ubuntu Skrivebordsinstallatør';

  @override
  String windowTitle(String RELEASE) {
    return 'Installation $RELEASE';
  }

  @override
  String get autoinstallTitle => 'Installation type';

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
  String get changeButtonText => 'Ændre';

  @override
  String get quitButtonText => 'Afslut installation';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Velkommen til $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Forbereder $DISTRO…';
  }

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Prøv eller installér $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
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
    return 'Du kan prøve $RELEASE, uden at foretage nogen ændringer, på din computer.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Installér $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Installér $RELEASE, ved siden af (eller i stedet for) dit nuværende operativsystem. Dette burde ikke tage lang tid.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Du kunne nok ønske at læse <a href=\"$url\">udgivelsesnoter</a>.';
  }

  @override
  String get rstTitle => 'RST er aktiveret';

  @override
  String get rstHeader => 'Slå RST fra, for at fortsætte';

  @override
  String rstDescription(String DISTRO) {
    return 'Denne computer bruger Intel RST (Rapid Storage Technology). Før installation af Ubuntu, skal du slå RST fra i Windows.';
  }

  @override
  String rstInstructions(String url) {
    return 'For instruktioner, skan QR-koden på en anden enhed, eller besøg: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Konfigurér Sikker Start';

  @override
  String get configureSecureBootDescription => 'Du har valgt at installere tredjeparts driver-software. Dette kræver at man slår Sikker Start fra.\nFor at gøre dette, skal du nu vælge en sikkerhedsnøgle og indtaste den, når systemet genstarter.';

  @override
  String get configureSecureBootOption => 'Konfigurér Sikker Start';

  @override
  String get chooseSecurityKey => 'Vælg sikkerhedsnøgle';

  @override
  String get confirmSecurityKey => 'Bekræft sikkerhedsnøglen';

  @override
  String get dontInstallDriverSoftwareNow => 'Installér ikke driver-softwaren lige nu';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Du kan installere det senere fra Software & Opdateringer.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Sikkerhedsnøgle er påkrævet';

  @override
  String get secureBootSecurityKeysDontMatch => 'Sikkerhedsnøgler stemmer ikke overens';

  @override
  String get showSecurityKey => 'Vis sikkerhedsnøgle';

  @override
  String get hideSecurityKey => 'Hide';

  @override
  String get updatesOtherSoftwarePageTitle => 'Applikationer og opdateringer';

  @override
  String get updatesOtherSoftwarePageDescription => 'Hvilke apps vil du installere, til at starte med?';

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
  String get fullInstallationTitle => 'Extended selection';

  @override
  String get fullInstallationSubtitle => 'An offline-friendly selection of office tools, utilities, web browser and games.';

  @override
  String get minimalInstallationTitle => 'Default selection';

  @override
  String get minimalInstallationSubtitle => 'Just the essentials, web browser and basic utilities.';

  @override
  String get otherOptions => 'Andre muligheder';

  @override
  String get installThirdPartyTitle => 'Installér tredjeparts software til grafik og Wi-Fi hardware, såvel som yderligere medieformater';

  @override
  String get installThirdPartySubtitle => 'Denne software er underlagt de licensvilkår, som er inkluderet i dens dokumentation. Nogle er proprietære.';

  @override
  String get installDriversTitle => 'Installér tredjeparts software til grafik og Wi-Fi hardware';

  @override
  String get installDriversSubtitle => 'Disse chauffører er underlagt de licensvilkår, som er inkluderet i deres dokumentation. De er proprietære.';

  @override
  String get installCodecsTitle => 'Hent og installér understøttelse af yderligere medieformater';

  @override
  String get installCodecsSubtitle => 'Denne software er underlagt licensbetingelserne, som er inkluderet i dens dokumentation. Nogle er proprietære.';

  @override
  String onBatteryWarning(String color) {
    return '<font color=\"$color\">Advarsel:</font> Computeren er ikke sluttet til en strømkilde.';
  }

  @override
  String get offlineWarning => 'Du er i øjeblikket offline';

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
  String get installationTypeTitle => 'installationstype';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Din computer har aktuelt $os installeret. Hvad kunne du tænke dig at gøre?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Denne computer har aktuelt $os1 og $os2 installeret. Hvad kunne du tænke dig at gøre?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Denne computer har aktuelt flere forskellige operativsystemer installeret. Hvad kunne du tænke dig at gøre?';

  @override
  String get installationTypeNoOSDetected => 'Denne computer har aktuelt ingen opfangede operativsystemer. Hvad kunne du tænke dig at gøre?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Udslet disk og installér $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Start from scratch on your selected disk.';

  @override
  String get installationTypeAdvancedLabel => 'Avancerede funktioner...';

  @override
  String get installationTypeAdvancedTitle => 'Avancerede funktioner';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Ingen';

  @override
  String get installationTypeNoneSelected => 'Ingen valgt';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'LVM opfanget';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM og kryptering valgt';

  @override
  String get installationTypeEncryptInfo => 'Du vil vælge en sikkerhedsnøgle, i næste trin.';

  @override
  String get installationTypeZFS => 'EKSPERIMENTEL: Udslet disk og benyt ZFS';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'ZFS valgt';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'EKSPERIMENTEL: Hardware-assisteret fuld diskkrypterings aktivering';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware of future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before your choose this option.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM Valgt';

  @override
  String installationTypeReinstall(String os) {
    return 'Udslet $os og geninstallér';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Advarsel:</font> Dette vil slette alle dine $os programmer, dokumenter, fotografier, musik, og enhver anden fil.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Installér $product, ved siden af $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Installér $product, ved siden af $os1 og $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Installér $product, ved siden af dem';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Installér $product, ved siden af andre partitioner';
  }

  @override
  String get installationTypeAlongsideInfo => 'Dokumenter, musik, og andre personlige filer vil blive bevaret. Du kan vælge hvilket operativsystem du vil bruge, hver gang computeren starter op.';

  @override
  String get installationTypeManual => 'Manuel partitionering';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Du kan selv oprette eller ændre størrelse på partitioner, eller vælge flere partitioner til $DISTRO';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Udslet disk og installér $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDropdownLabel => 'Vælg drev:';

  @override
  String get selectGuidedStorageInfoLabel => 'Hele disken vil blive brugt:';

  @override
  String get selectGuidedStorageInstallNow => 'Installér nu';

  @override
  String get installAlongsideSpaceDivider => 'Allokér drevplads, ved at trække skellet herunder:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num mindre partitioner er skjulte; brug det <a href=\"$url\">avancerede partitionsværktøj</a> for mere kontrol';
  }

  @override
  String get installAlongsideResizePartition => 'Ændr størrelse på partition';

  @override
  String get installAlongsideAllocateSpace => 'Allokér plads';

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
  String get allocateDiskSpaceInvalidMountPointSlash => 'Monteringspunkter skal starte med \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Monteringspunkter må ikke indeholde mellemrum';

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
  String get freeDiskSpace => 'Fri plads';

  @override
  String get newPartitionTable => 'Ny partitionstabel';

  @override
  String get newPartitionTableConfirmationTitle => 'Ny tom partition';

  @override
  String get newPartitionTableConfirmationMessage => 'Oprettelse af ny partitionstabel, på en hel enhed, vil fjerne alle dens nuværende partitioner. Denne operation kan fortrydes, hvis det er nødvendigt.';

  @override
  String get tooManyPrimaryPartitions => 'For mange primære partitioner';

  @override
  String get partitionLimitReached => 'Grænse nået';

  @override
  String get bootLoaderDevice => 'Enhed til installation af opstartslæser';

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
  String get partitionLocationLabel => 'Placering for ny partition:';

  @override
  String get partitionLocationBeginning => 'Begyndelse på denne plads';

  @override
  String get partitionLocationEnd => 'Ende på denne plads';

  @override
  String get partitionFormatLabel => 'Brugt som:';

  @override
  String get partitionFormatNone => 'Efterlad uformateret';

  @override
  String partitionFormatKeep(String format) {
    return 'Leave formatted as $format';
  }

  @override
  String get partitionErase => 'Formatér partition';

  @override
  String get partitionMountPointLabel => 'Monteringspunkt:';

  @override
  String get confirmPageTitle => 'Klar til at installere';

  @override
  String get confirmHeader => 'Hvis du fortsætter, vil ændringerne på listen nedenfor blive skrevet til disken(e). Du vil kunne foretage yderligere ændringer manuelt.';

  @override
  String get confirmDevicesTitle => 'Enheder';

  @override
  String get confirmPartitionsTitle => 'Partitioner';

  @override
  String get confirmPartitionTables => 'Partitionstabellen på de følgende enheder er ændret:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'De følgende partitionsændringer vil træde i kraft:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'partition <b>$sysname</b> ændres fra <b>$oldsize</b> til <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'partition <b>$sysname</b> formateret som <b>$format</b> brugt til <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'partition <b>$sysname</b> formateret som <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'partition <b>$sysname</b> brugt til <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'partition <b>$sysname</b> oprettet';
  }

  @override
  String get confirmInstallButton => 'Installér';

  @override
  String get installationCompleteTitle => 'Installation gennemført';

  @override
  String readyToUse(String system) {
    return '**$system** er installeret og klar til brug';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return 'Genstart i $system';
  }

  @override
  String restartWarning(String RELEASE) {
    return 'Du kan fortsat afprøve $RELEASE nu, men indtil du genstarter computeren, vil ingen ændringer du foretager, eller dokumenter du gemmer, blive bevaret.';
  }

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'Luk Ned';

  @override
  String get restartNow => 'Genstart nu';

  @override
  String get continueTesting => 'Fortsæt afprøvning';

  @override
  String get bitlockerTitle => 'BitLocker er aktiveret';

  @override
  String get bitlockerHeader => 'Slå BitLocker fra, for at fortsætte';

  @override
  String bitlockerDescription(String option) {
    return 'Denne computer benytter Windows BitLocker kryptering.\nDu bliver nødt til at bruge Windows til, at frigøre plads, eller vælge \'$option\", for at fortsætte.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'For instruktioner, skan QR-koden, på en anden enhed eller besøg:<a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Genstart i Windows';

  @override
  String get restartIntoWindowsTitle => 'Genstart i Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Er du sikker på, at du vil genstarte din computer? Du vil skulle genstarte $DISTRO-installationen senere, for at færdiggøre installationen af $DISTRO.';
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
  String get installationSlidesWelcomeTitle => 'Hurtigt, gratis og fyldt med nye funktioner';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Den seneste udgave af $DISTRO gøre computer-arbejde nemmere end nogensinde.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Om du er udvikler, skaber, gamer, eller administrator, vil du finde nye værktøjer til at forbedre din produktivitet og berige din oplevelse med $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Alle de applikationer du har brug for';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Installér, administrér og opdatér alle dine apps i Ubuntu Varehus, inklusiv tusindvis af applikationer, fra både Snap Butikken og ${DISTRO}s arkiv.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Udvikl det bedste indenfor åben kilde';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO er den idéelle arbejdsstation til app- eller netudvikling, data-videnskab og kunstig intelligens/maskinlærling, så vel som devops og administration. Hver $DISTRO-udgivelse inkluderer de seneste værktøjskæder og understøtter alle større IDEer.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Berig din kreativitet';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Hvis du er animator, designer, videnskaber, eller spiludvikler, så er det nemt at tage dine arbejdsgange med til $DISTRO, med understøttelse af åben kildekode og industriel standard-programvare samt -applikationer.';
  }

  @override
  String get installationSlidesGamingTitle => 'Super til gaming';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO understøtter de seneste NVIDIA- og Mesa-drivere, for at forbedre ydeevne og kompatibilitet. Tusindvis af Windows-titler kører glimrende på $DISTRO, via applikationer som Stram, uden nogen yderligere konfiguration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privat og sikkert';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO tilbyder alle de værktøjer, du har brug for, til at forblive privat og sikker på linjen. Med indbygget firewall og VPN-understøttelse, samt en mængde privatlivsorienterede applikationer, til at sikre at du har fuld kontrol over dine data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Alle $DISTRO LTS-udgivelser kommer med fem års sikkerhedsrettelser inkluderet, som kan udvides helt op til ti år, med et Ubuntu Pro-abonnement.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Send din produktivitet til himmels';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop inkluderer LibreOffice, en pakke Microsoft Office-kompatible applikationer med åben kildekode, til dokumenter, regneark og præsentationer. Populære kollaborationsværktøjer er også tilgængelige.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Adgang for alle';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'I centrum for $DISTRO-filosofien er troen på, at computere er for alle. Med avancerede tilgængelighedsværktøjer og muligheder af, at ændre sprog, farver, og tekst størrelse, gør $DISTRO det nemt at bruge computeren - hvem end og hvor end du er.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca Skærmoplæser';

  @override
  String get installationSlidesAccessibilityLanguages => 'Sprogunderstøttelse';

  @override
  String get installationSlidesSupportTitle => 'Hjælp & Støtte';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Den officielle $DISTRO-dokumentation er både tilgængelig på nettet og via Hjælp-ikonet i dokken.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Spørg Ubuntu dækker en bred vifte af spørgsmål og svar, og Ubuntu Discourse tilbyder vejledninger og diskussioner, for nye og erfarne brugere.';

  @override
  String get installationSlidesSupportEnterprise => 'For entreprise-brugere tilbyder Canonical kommerciel støtte, for at gøre det nemt at onboarde og administrere Ubuntu sikkert på arbejdspladsen.';

  @override
  String get installationSlidesSupportResources => 'Nyttige ressourcer:';

  @override
  String get installationSlidesSupportDocumentation => 'Officiel dokumentation';

  @override
  String get installationSlidesSupportUbuntuPro => '24/7 støtte på entreprise-niveau, med Ubuntu Pro';

  @override
  String get copyingFiles => 'Kopierer filer…';

  @override
  String get installingSystem => 'Installerer systemet…';

  @override
  String get configuringSystem => 'Opsætter systemet…';

  @override
  String get installationFailed => 'Installation slog fejl';

  @override
  String get notEnoughDiskSpaceTitle => 'Ikke nok plads';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Ikke nok diskplads, til at installere $DISTRO';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Tilgængelig:';

  @override
  String get notEnoughDiskSpaceRequired => 'Påkrævet:';

  @override
  String get refreshPageTitle => 'Update available';

  @override
  String refreshCurrent(String snap, String version) {
    return 'The current $snap version is $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Update to version $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'The current version $version is up-to-date.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Updating $snap...';
  }

  @override
  String get refreshRestart => 'Please quit and relaunch the installer.';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Ensuring $snap prerequisites...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Refreshing $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Checking $snap re-refresh...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Preparing $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Downloading $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validating $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Mounting $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Stopping $snap services...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Removing $snap aliases...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Unlinking $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Updating $snap assets...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Updating $snap kernel command line...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Copying $snap data...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Setting up $snap security profiles...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Linking $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Connecting $snap plugs and slots...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Setting automatic $snap aliases...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Setting up $snap aliases...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Starting $snap services...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Cleaning up $snap...';
  }

  @override
  String get recoveryKeyTitle => 'TPM recovery key';

  @override
  String get recoveryKeyCommand => 'You can access your recovery key after installation with the following command:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Warning:</font> If you lose this security key, all data will be lost. If you need to, write down your key and keep it in a safe place elsewhere.';
  }

  @override
  String get validate => 'Validate';
}
