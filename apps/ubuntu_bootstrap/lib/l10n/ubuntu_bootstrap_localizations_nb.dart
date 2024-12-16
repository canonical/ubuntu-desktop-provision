import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class UbuntuBootstrapLocalizationsNb extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appTitle => 'Ubuntu Skrivebord Installering';

  @override
  String windowTitle(String RELEASE) {
    return 'Installere $RELEASE';
  }

  @override
  String get autoinstallTitle => 'Installasjonstype';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Hvordan vil du installere $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Skriv inn autoinstall.yaml-nettadresse:';

  @override
  String get autoinstallInteractiveOption => 'Interaktiv installasjon';

  @override
  String get autoinstallInteractiveDescription => 'For brukere som vil bli veiledet steg for steg gjennom installasjonen.';

  @override
  String get autoinstallAutomatedOption => 'Automatisert installasjon';

  @override
  String get autoinstallAutomatedDescription => 'For avanserte brukere som har en autoinstall.yaml for konsistente og reproduserbare systemoppsett.';

  @override
  String get changeButtonText => 'Endre';

  @override
  String get quitButtonText => 'Avslutt installasjon';

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
    return 'Prøv eller Installere';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Hva vil du gjøre med $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Reparere installasjonen';

  @override
  String get tryOrInstallRepairDescription => 'Reparasjon vil installere all installert programvare på nytt uten å berøre dokumenter eller innstillinger.';

  @override
  String tryOption(String RELEASE) {
    return 'Prøv $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Du kan prøve $RELEASE uten å gjøre noen endringer på datamaskinen.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Installere $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Installer $RELEASE ved siden av (eller i stedet for) ditt nåværende operativsystem. Dette bør ikke ta for lang tid.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Det kan være lurt å lese <a href=\"$url\">versjonsnotatene</a>.';
  }

  @override
  String get rstTitle => 'Slå av RST';

  @override
  String get rstHeader => 'Skru av RST for å fortsette';

  @override
  String rstDescription(String DISTRO) {
    return 'Denne datamaskinen bruker Intel RST (Rapid Storage Technology). Du må slå av RST i Windows før du installerer Ubuntu.';
  }

  @override
  String rstInstructions(String url) {
    return 'For instruksjoner, åpne denne siden på en telefon eller annen enhet: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Tilpass Sikkeroppstart';

  @override
  String get configureSecureBootDescription => 'Du har valgt å installere tredjeparts driverprogramvare. Dette krever at du slår av sikker oppstart.\nFor å gjøre dette, må du velge en sikkerhetsnøkkel nå, og angi den når systemet starter på nytt.';

  @override
  String get configureSecureBootOption => 'Tilpass sikkeroppstart';

  @override
  String get chooseSecurityKey => 'Velg en sikkerhetnøkkel';

  @override
  String get confirmSecurityKey => 'Bekreft sikkerhetsnøkkel';

  @override
  String get dontInstallDriverSoftwareNow => 'Ikke installere drivere programvare nå';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Du kan installere det senere fra programvare & oppdateringer.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Sikkerhetsnøkkel er krevet';

  @override
  String get secureBootSecurityKeysDontMatch => 'Sikkerhetsnøkkel stemmer ikke';

  @override
  String get showSecurityKey => 'Vis sikkerhetsnøkkel';

  @override
  String get hideSecurityKey => 'Skjul';

  @override
  String get updatesOtherSoftwarePageTitle => 'Oppdateringer og annet programvare';

  @override
  String get updatesOtherSoftwarePageDescription => 'Hvilke apper vil du installere til å begynne med?';

  @override
  String get codecsAndDriversPageTitle => 'Optimaliser din datamaskin';

  @override
  String get codecsAndDriversPageDescription => 'Installer anbefalt ufri programvare?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO leveres som forvalg uten ufri programvare. Dette kan medføre redusert ytelse.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Grafikk-kort fra Nvidia oppdaget';

  @override
  String get codecsAndDriversNvidiaBody => 'For best mulig ytelse på grafikk-kort fra Nvidia anbefales ufrie drivere.';

  @override
  String get fullInstallationTitle => 'Utvidet utvalg';

  @override
  String get fullInstallationSubtitle => 'An offline-friendly selection of office tools, utilities and web browser.';

  @override
  String get minimalInstallationTitle => 'Forvalgt utvalg';

  @override
  String get minimalInstallationSubtitle => 'Kun det grunnleggende, nettleser og enkle verktøy.';

  @override
  String get otherOptions => 'Andre valg';

  @override
  String get installThirdPartyTitle => 'Installer tredjepartsprogramvare for grafikk og trådløs-maskinvare, samt ytterligere medieformater';

  @override
  String get installThirdPartySubtitle => 'Denne programvaren er underlagt lisensvilkårene som følger med dokumentasjonen. Noen er proprietære.';

  @override
  String get installDriversTitle => 'Installer tredjepartsprogramvare for grafikk- og Wi-Fi-maskinvare';

  @override
  String get installDriversSubtitle => 'Disse driverrutinene har lisensvilkår som er å finne i dokumentasjonen av dem. De er ufrie.';

  @override
  String get installCodecsTitle => 'Last ned og installer støtte for ytterligere mediaformater';

  @override
  String get installCodecsSubtitle => 'Denne programvaren har lisensvilkår som er å finnen i dokumentasjonen av den. Noen av dem er ufrie.';

  @override
  String get batteryWarning => 'The computer is not plugged in to a power source.';

  @override
  String get offlineWarning => 'Du er frakoblet';

  @override
  String get choosePassphraseTitle => 'Disk-passord';

  @override
  String get choosePassphraseHeader => 'Opprett et passord';

  @override
  String get choosePassphraseBody => 'You need a passphrase to encrypt your files. You will be prompted for your passphrase every time you turn on your computer.';

  @override
  String get choosePassphraseHint => 'Velg et passord';

  @override
  String get choosePassphraseConfirmHint => 'Bekreft passordet';

  @override
  String get choosePassphraseRequired => 'Et passord er påkrevd';

  @override
  String get choosePassphraseMismatch => 'Passordene samsvarer ikke';

  @override
  String get choosePassphraseInfoHeader => 'Forsikre deg om at du lagrer passordet';

  @override
  String get choosePassphraseInfoBody => 'Mister du passordet mister du også all dataen din.';

  @override
  String get createPassphrase => 'Opprett et passord';

  @override
  String get confirmPassphrase => 'Bekreft passordet';

  @override
  String get installationTypeTitle => 'Installasjontype';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Hvordan vil du installere $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Denne datamaskinen har for øyeblikket $os på seg. Hva har du lyst til å gjøre?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Denne datamaskinen har for øyeblikket $os1 og $os2. Hva har du lyst til å gjøre?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Denne datamaskinen har for tiden flere operativsystemer. Hva har du lyst til å gjøre?';

  @override
  String get installationTypeNoOSDetected => 'Denne datamaskinen har for øyeblikket ingen registrerte operativsystemer. Hva har du lyst til å gjøre?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Formatere harddisken og installere $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Start fra blanke ark på din valgte disk.';

  @override
  String get installationTypeAdvancedLabel => 'Avansert funksjoner...';

  @override
  String get installationTypeAdvancedTitle => 'Avansert funksjoner';

  @override
  String get installationTypeExperimental => 'Eksperimentelt';

  @override
  String get installationTypeNone => 'Ingen';

  @override
  String get installationTypeNoneSelected => 'Ingenting valgt';

  @override
  String get installationTypeLVM => 'Bruk LVM';

  @override
  String get installationTypeLVMSelected => 'LVM valg';

  @override
  String get installationTypeLVMEncryption => 'Bruk LVM og kryptering';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM og kryptering valgt';

  @override
  String get installationTypeEncryptInfo => 'Du velger en sikkerhetsnøkkel i neste trinn.';

  @override
  String get installationTypeZFS => 'EKSPERIMENTELL: Slett disk og bruk ZFS';

  @override
  String get installationTypeZFSEncryption => 'Slett disken og bruk ZFS med kryptering';

  @override
  String get installationTypeZFSSelected => 'ZFS valgt';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS og kryptering valgt';

  @override
  String get installationTypeTPM => 'Skru på maskinvarebasert kryptering av hele disken.';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware or future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before you choose this option.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM valgt';

  @override
  String installationTypeReinstall(String os) {
    return 'Slett og formatere $os og reinstallere';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Advarsel:</font> Dette vil slette alle dine $os-programmer, dokumenter, bilder, musikk og andre filer.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Installer $product ved siden av $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Installer $product ved siden av $os1 og $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Installer $product ved siden av dem';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Installer $product ved siden av andre partisjoner';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Dokumenter, musikk og andre personlige filer vil bli oppbevart. Du kan velge hvilket operativsystem du vil ha hver gang datamaskinen starter opp.';
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
  String get installationTypeManual => 'Noe annet';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Du kan opprette eller endre størrelse på partisjoner selv, eller velge flere partisjoner for $DISTRO';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Slett disk og installer $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Start fra blanke ark på valgt disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Valgt disk:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Velg partisjon:';

  @override
  String get selectGuidedStorageInfoLabel => 'Hele disken vil bli brukt:';

  @override
  String get selectGuidedStorageInstallNow => 'Installere nå';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Velg hvor du vil installere $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Tildel lagringsplass ved å dra inndeleren nedenfor:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num mindre partisjoner er skjult, bruk <a href=\"$url\">avansert partisjoneringsverktøy</a> for mer kontroll';
  }

  @override
  String get installAlongsideResizePartition => 'Endre størrelse på partisjon';

  @override
  String get installAlongsideAllocateSpace => 'Tildel plass';

  @override
  String get installAlongsideFiles => 'Filer';

  @override
  String get installAlongsidePartition => 'Partisjon:';

  @override
  String get installAlongsideSize => 'Størrelse:';

  @override
  String get installAlongsideAvailable => 'Tilgjengelig:';

  @override
  String get allocateDiskSpace => 'Tildel diskplass';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Monteringspunkter må starte med skråstrek «/»';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Monteringspunkter kan ikke inneholde mellomrom';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Enhet';

  @override
  String get diskHeadersType => 'Type';

  @override
  String get diskHeadersMountPoint => 'Monteringspunkt';

  @override
  String get diskHeadersSize => 'Størrelse';

  @override
  String get diskHeadersUsed => 'Brukt';

  @override
  String get diskHeadersSystem => 'System';

  @override
  String get diskHeadersFormat => 'Format';

  @override
  String get freeDiskSpace => 'Ledig plass';

  @override
  String get newPartitionTable => 'Ny partisjonstabell';

  @override
  String get newPartitionTableConfirmationTitle => 'Opprett en ny partisjonstabell på enheten?';

  @override
  String get newPartitionTableConfirmationMessage => 'Du har valgt en hel enhet å partisjonere. Hvis du fortsetter med opprettelse av en ny partisjonstabell på enheten vil alle nåværende partisjoner på den fjernes.\n\nMerk at du også vil kunne angre operasjonen senere hvis du ønsker det.';

  @override
  String get tooManyPrimaryPartitions => 'For mange primære partisjoner';

  @override
  String get partitionLimitReached => 'Grense nådd';

  @override
  String get bootLoaderDevice => 'Enhet å installere oppstartslaster på';

  @override
  String get partitionCreateTitle => 'Opprett partisjon';

  @override
  String get partitionEditTitle => 'Rediger partisjon';

  @override
  String get partitionSizeLabel => 'Størrelse:';

  @override
  String get partitionTypeLabel => 'Type for ny partisjon:';

  @override
  String get partitionTypePrimary => 'Primær';

  @override
  String get partitionTypeLogical => 'Logisk';

  @override
  String get partitionLocationLabel => 'Plassering av ny partisjon:';

  @override
  String get partitionLocationBeginning => 'Begynnelsen av plassen';

  @override
  String get partitionLocationEnd => 'På slutten av plassen';

  @override
  String get partitionFormatLabel => 'Brukt som:';

  @override
  String get partitionFormatNone => 'Levn uformatert';

  @override
  String partitionFormatKeep(String format) {
    return 'La stå formatert som $format';
  }

  @override
  String get partitionErase => 'Formater partisjonen';

  @override
  String get partitionMountPointLabel => 'Monteringspunkt:';

  @override
  String get confirmPageTitle => 'Skriv endringer til disk';

  @override
  String get confirmHeader => 'Hvis du fortsetter vil endringene nedenfor bli skrevet til diskene. Du vil kunne gjøre videre endringer manuelt.';

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
  String get confirmEntryApplications => 'Programmer';

  @override
  String get confirmEntryDiskSetup => 'Diskoppsett';

  @override
  String get confirmEntryDiskEncryption => 'Diskkryptering';

  @override
  String get confirmEntryInstallationDisk => 'Installasjonsdisk';

  @override
  String get confirmEntryProprietarySoftware => 'Ufri programvare';

  @override
  String get confirmSectionGeneralTitle => 'Generelt';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Sikkerhet og mer';

  @override
  String get confirmPartitionsTitle => 'Partisjoner';

  @override
  String get confirmPartitionTables => 'Partisjonstabellen for følgende enheter har blitt endret:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Følgende partisjonsendringer vil bli utført:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'endret størrelse på partisjon <b>$sysname</b> fra <b>$oldsize</b> til <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'partisjon <b>$sysname</b> formatert som <b>$format</b> og brukt som <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'partisjon <b>$sysname</b> formatert som <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'partisjon <b>$sysname</b> brukt til <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'partisjon <b>$sysname</b> opprettet';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodek';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kodek og drivere';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivere';

  @override
  String get confirmInstallButton => 'Installer';

  @override
  String get installationCompleteTitle => 'Installasjon fullført';

  @override
  String readyToUse(String system) {
    return '$system er installert og klart til bruk.';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** har blitt kopiert til disken';
  }

  @override
  String restartInto(String system) {
    return 'Start om igjen til $system';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make will not be saved.';

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'Slå av';

  @override
  String get restartNow => 'Utfør omstart nå';

  @override
  String get continueTesting => 'Fortsett testingen';

  @override
  String get bitlockerTitle => 'Skru av BitLocker';

  @override
  String get bitlockerHeader => 'Skru av BitLocker for å fortsette';

  @override
  String bitlockerDescription(String option) {
    return 'Maskinen bruker Windows BitLocker-kryptering.\nDu må skru dette av før du installerer Ubuntu.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Instruks er tilgjengelig hvis du åpner denne siden på en telefon eller en annen enhet: <a href=\"https://$url\"></a>';
  }

  @override
  String get restartIntoWindows => 'Omstart til Windows';

  @override
  String get restartIntoWindowsTitle => 'Utfør omstart inn i Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Are you sure you want to restart your computer? You will need to restart the $DISTRO installation later to finish installing $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Velkommen til $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Tilgjengelig:';

  @override
  String get installationSlidesIncluded => 'Inkludert:';

  @override
  String get installationSlidesWelcomeTitle => 'Raskt, fritt, og fult av nye funksjoner';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'The latest version of $DISTRO makes computing easier than ever.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Whether you\'re a developer, creator, gamer or administrator you\'ll find new tools to improve your productivity and enhance your experience in $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Alle programmene du trenger';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Install, manage and update all your apps in Ubuntu Software, including thousands of applications from both the Snap Store and $DISTRO archive.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Develop with the best of open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO is the ideal workstation for app or web development, data science and AI/ML as well as devops and administration. Every $DISTRO release includes the latest toolchains and supports all major IDEs.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Enhance your creativity';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'If you\'re an animator, designer, video creator or game developer it\'s easy to bring your workflows to $DISTRO with support for open source and industry standard software and applications.';
  }

  @override
  String get installationSlidesGamingTitle => 'Passer for spilling';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO supports the latest NVIDIA and Mesa drivers to improve performance and compatibility. Thousands of Windows titles play great on $DISTRO via applications like Steam with no additional configuration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privat og sikkert';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO provides all of the tools you need to stay private and secure online. With built in firewall and VPN support and a host of privacy-centric applications to ensure you are in full control of your data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'All $DISTRO LTS releases come with five years of security patching included, extending to ten years with an Ubuntu Pro subscription.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Power up your productivity';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop includes LibreOffice, a suite of Microsoft Office compatible open source applications for documents, spreadsheets and presentations. Popular collaboration tools are also available.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Tilgang for alle';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'At the heart of the $DISTRO philosophy is the belief that computing is for everyone. With advanced accessibility tools and options to change language, colours and text size, $DISTRO makes computing easy - whoever and wherever you are.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca-skjermleser';

  @override
  String get installationSlidesAccessibilityLanguages => 'Språkstøtte';

  @override
  String get installationSlidesSupportTitle => 'Hjelp og støtte';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'The official $DISTRO documentation is available both online and via the Help icon in the dock.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu covers a range of questions and responses and the Ubuntu Discourse provides guides and discussions for new and experienced users.';

  @override
  String get installationSlidesSupportEnterprise => 'For enterprise users Canonical provides commercial support to make it easy to onboard and manage Ubuntu securely in the workplace.';

  @override
  String get installationSlidesSupportResources => 'Nyttige ressurser:';

  @override
  String get installationSlidesSupportDocumentation => 'Offisiell dokumentasjon';

  @override
  String get installationSlidesSupportUbuntuPro => 'Enterprise-grade 24/7 support with Ubuntu Pro';

  @override
  String get copyingFiles => 'Kopierer filer …';

  @override
  String get installingSystem => 'Installerer systemet …';

  @override
  String get configuringSystem => 'Setter opp systemet …';

  @override
  String get installationFailed => 'Installasjonen mislyktes';

  @override
  String get notEnoughDiskSpaceTitle => 'Beklager';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Not enough disk space to install $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'The selected disk does not have enough disk space to install $DISTRO. Quit the installer to make space available or select another disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Tilgjengelig:';

  @override
  String get notEnoughDiskSpaceRequired => 'Påkrevd:';

  @override
  String get refreshPageTitle => 'Update available';

  @override
  String get refreshHeader => 'An update is available for the installer';

  @override
  String get refreshUpdateNow => 'Oppgrader nå';

  @override
  String get refreshInfo => 'Update to the latest version for improved reliability and more features.';

  @override
  String get refreshReady => 'Oppgradering klar';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Nåværende $snap-versjon er $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Oppgrader til versjon $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'The current version $version is up-to-date.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Oppgraderer $snap …';
  }

  @override
  String get refreshRestart => 'Please close the installer and relaunch to continue';

  @override
  String get refreshCloseLabel => 'Close installer';

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
    return 'Forbereder $snap …';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Laster ned $snap …';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validating $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Monterer $snap …';
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
    return 'Rydder opp $snap …';
  }

  @override
  String get recoveryKeyTitle => 'TPM-gjenopprettingsnøkkel';

  @override
  String get recoveryKeyCommand => 'You can access your recovery key after installation with the following command:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Warning:</font> If you lose this security key, all data will be lost. If you need to, write down your key and keep it in a safe place elsewhere.';
  }

  @override
  String get validate => 'Bekreft';
}
