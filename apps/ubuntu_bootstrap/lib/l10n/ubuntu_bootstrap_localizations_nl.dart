import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class UbuntuBootstrapLocalizationsNl extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Ubuntu Desktop instalatieprogramma';

  @override
  String windowTitle(String RELEASE) {
    return '$RELEASE installeren';
  }

  @override
  String get autoinstallDirectTitle => 'Geautomatiseerde installatie';

  @override
  String get autoinstallDirectHeader => 'Autom. installatiebestand importeren';

  @override
  String get autoinstallDirectUrlLabel => 'Je kunt de URL van een autom. installatiebestand invoeren:';

  @override
  String get autoinstallDirectFileLabel => 'Of selecteer een lokaal bestand:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Bestand selecteren…';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Bestand wissen';

  @override
  String get autoinstallDirectFilePickerTitle => 'Bestand kiezen';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML-bestanden';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importeren';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Autom. installatiebestand is onbereikbaar';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Controleer of de URL correct is, test de internetverbinding of probeer het later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Ongeldige URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Controleer of de URL correct is of selecteer een lokaal bestand.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Ongeldig autom. installatiebestand';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Controleer het bestand of geef een ander bestand op.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Autom. installatiebestand is niet leesbaar';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Controleer je machtigingen of biedt een ander bestand aan.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Onbekende fout';

  @override
  String get autoinstallTitle => 'Type installatie';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Hoe wilt je $DISTRO installeren?';
  }

  @override
  String get autoinstallInstructions => 'Voer de URL van de autoinstall.yaml of het lokale bestandspad in:';

  @override
  String get autoinstallInteractiveOption => 'Interactieve installatie';

  @override
  String get autoinstallInteractiveDescription => 'Voor gebruikers die stap voor stap door de installatie geleid willen worden.';

  @override
  String get autoinstallDirectOption => 'Geautomatiseerd met autom. installatiebestand';

  @override
  String get autoinstallDirectDescription => 'Voor gevorderde gebruikers die een autoinstall.yaml hebben voor consistente en reproduceerbare systeeminstellingen.';

  @override
  String get autoinstallLandscapeOption => 'Geautomatiseerd met Landscape';

  @override
  String get autoinstallLandscapeDescription => 'Voor gebruikers in organisaties die een automatisch installatiebestand leveren via Landscape.';

  @override
  String get changeButtonText => 'Veranderen';

  @override
  String get quitButtonText => 'Installatie afbreken';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Welkom bij $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO voorbereiden…';
  }

  @override
  String get warningLabel => 'Waarschuwing:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '$DISTRO uitproberen of installeren';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Wat wil je doen met $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Repareer de installatie';

  @override
  String get tryOrInstallRepairDescription => 'Reparatie zal opnieuw alles installeren, zonder de bestaande documenten of instellingen aan te passen.';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASE uitproberen';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'U kunt $RELEASE uitproberen, zonder dat er aanpassingen op de bestaande installatie wordt gemaakt.';
  }

  @override
  String installOption(String RELEASE) {
    return '$RELEASE installeren';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Installeer $RELEASE naast (of in plaats van) het huidige besturingssysteem, dit zal niet lang duren.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'De wijzigingen in deze uitgave kunt U <a href=\"$url\">hier, in het Engels, lezen</a>.';
  }

  @override
  String get rstTitle => 'RST uitschakelen';

  @override
  String get rstHeader => 'RST moet uitgeschakeld worden om door te gaan met de installatie';

  @override
  String get rstDisable => 'Je computer maakt gebruik van Intel RST (Rapid Storage Technology). Je kunt RST uitschakelen in:';

  @override
  String get rstDisableWindows => 'Windows, als je een dual-boot-opstelling met Windows gebruikt';

  @override
  String get rstDisableBios => 'De BIOS-instellingen';

  @override
  String rstInstructions(String url) {
    return 'Voor instructies, open de volgende website op uw telefoon of op een ander apparaat: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Secure Boot configureren';

  @override
  String get configureSecureBootDescription => 'Je hebt ervoor gekozen om stuurprogramma\'s van derden te installeren. Hiervoor moet Secure Boot worden uitgeschakeld.\nOm dit te doen, moet je nu een beveiligingssleutel kiezen en deze invoeren wanneer het systeem opnieuw wordt opgestart.';

  @override
  String get configureSecureBootOption => 'Secure Boot configureren';

  @override
  String get chooseSecurityKey => 'Kies een beveiligingssleutel';

  @override
  String get confirmSecurityKey => 'De beveiligingssleutel bevestigen';

  @override
  String get dontInstallDriverSoftwareNow => 'Stuurprogramma\'s voorlopig niet installeren';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Je kunt het later installeren vanuit Software & Updates.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Beveiligingssleutel is vereist';

  @override
  String get secureBootSecurityKeysDontMatch => 'Beveiligingssleutels komen niet overeen';

  @override
  String get showSecurityKey => 'Weergeven';

  @override
  String get hideSecurityKey => 'Verbergen';

  @override
  String get updatesOtherSoftwarePageTitle => 'Toepassingen';

  @override
  String get updatesOtherSoftwarePageDescription => 'Welke apps zou je om te beginnen willen installeren?';

  @override
  String get codecsAndDriversPageTitle => 'Optimaliseer je computer';

  @override
  String get codecsAndDriversPageDescription => 'Aanbevolen propriëtaire software installeren?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO wordt standaard geleverd zonder propriëtaire software. Het installeren van extra software kan de prestaties van je computer verbeteren.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA grafische kaart gedetecteerd';

  @override
  String get codecsAndDriversNvidiaBody => 'Voor de beste prestaties van NVIDIA grafische kaarten wordt het installeren van extra stuurprogramma\'s sterk aanbevolen.';

  @override
  String get fullInstallationTitle => 'Uitgebreide selectie';

  @override
  String get fullInstallationSubtitle => 'Een offline-vriendelijke selectie van kantoorsoftware, hulpprogramma\'s en webbrowsers.';

  @override
  String get minimalInstallationTitle => 'Standaard-selectie';

  @override
  String get minimalInstallationSubtitle => 'Alleen de essentie, webbrowser en basishulpprogramma\'s.';

  @override
  String get otherOptions => 'Andere opties';

  @override
  String get installThirdPartyTitle => 'Software van derde partijen installeren voor grafische en Wi-Fi-hardware en extra mediaformaten';

  @override
  String get installThirdPartySubtitle => 'Deze software is onderworpen aan licentievoorwaarden die bij de documentatie zijn inbegrepen. Een deel ervan is gepatenteerd.';

  @override
  String get installDriversTitle => 'Software van derden installeren voor grafische en Wi-Fi-hardware';

  @override
  String get installDriversSubtitle => 'Met inbegrip van, maar niet beperkt tot, NVIDIA-stuurprogramma\'s en dergelijke';

  @override
  String get installCodecsTitle => 'Ondersteuning voor extra media-indelingen downloaden en installeren';

  @override
  String get installCodecsSubtitle => 'Inclusief maar niet beperkt tot MP3, MP4, MOV en dergelijke';

  @override
  String get batteryWarning => 'De computer is niet aangesloten op een stroombron.';

  @override
  String get offlineWarning => 'Je bent momenteel offline';

  @override
  String get choosePassphraseTitle => 'Wachtwoordzin voor de schijf';

  @override
  String get choosePassphraseHeader => 'Wachtwoordzin aanmaken';

  @override
  String get choosePassphraseBody => 'Je hebt een wachtwoordzin nodig om je bestanden te versleutelen. Elke keer dat je de computer aanzet, wordt je om je wachtwoordzin gevraagd.';

  @override
  String get choosePassphraseHint => 'Kies een wachtwoordzin';

  @override
  String get choosePassphraseConfirmHint => 'Wachtwoordzin bevestigen';

  @override
  String get choosePassphraseRequired => 'Een wachtwoordzin is vereist';

  @override
  String get choosePassphraseMismatch => 'De wachtwoordzinnen komen niet overeen';

  @override
  String get choosePassphraseInfoHeader => 'Bewaar je wachtwoordzin op een veilige plek';

  @override
  String get choosePassphraseInfoBody => 'Als je de wachtwoordzin verliest, verlies je al je gegevens.';

  @override
  String get chooseOptionalPassphraseHeader => 'Wachtwoordzin aanmaken (optioneel)';

  @override
  String get chooseOptionalPassphraseBody => 'Een wachtwoordzin kan helpen je gegevens te beschermen, zelfs als jouw hardware wordt gecompromitteerd. Je moet de wachtwoordzin elke keer invoeren wanneer je de computer aanzet. Je kunt het later niet meer verwijderen';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Bewaar je wachtwoordzin en herstelcodes op een veilige plek';

  @override
  String get chooseOptionalPassphraseInfoBody => 'Als je de wachtwoordzin verliest, verlies je al je gegevens. De wachtwoordzin is niet de herstelcode of het wachtwoord van je gebruiker.';

  @override
  String get createPassphrase => 'Wachtwoordzin aanmaken';

  @override
  String get confirmPassphrase => 'Wachtwoordzin bevestigen';

  @override
  String get installationTypeTitle => 'Schijfindeling';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Hoe wil je $DISTRO installeren?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Op deze computer staat momenteel $os. Wat zou je willen doen?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Op deze computer staan momenteel $os1 en $os2. Wat zou je willen doen?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Op deze computer staan momenteel meerdere besturingssystemen. Wat zou je willen doen?';

  @override
  String get installationTypeNoOSDetected => 'Deze computer heeft momenteel geen gedetecteerde besturingssystemen. Wat zou je willen doen?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'De schijf wissen en $DISTRO installeren';
  }

  @override
  String get installationTypeEraseInfo => 'Alle gegevens en partities op de schijf worden gewist, inclusief besturingssystemen.';

  @override
  String get installationTypeAdvancedLabel => 'Geavanceerde opties weergeven…';

  @override
  String get installationTypeAdvancedTitle => 'Versleuteling en bestandssysteem';

  @override
  String get installationTypeExperimental => 'Experimenteel';

  @override
  String get installationTypeNone => 'Geen versleuteling';

  @override
  String get installationTypeNoneInfo => 'Standaard bestandssysteem zonder versleuteling.';

  @override
  String get installationTypeNoneSelected => 'Niets geselecteerd';

  @override
  String get installationTypeLVM => 'LVM gebruiken zonder versleuteling';

  @override
  String get installationTypeLVMSelected => 'LVM geselecteerd';

  @override
  String get installationTypeLVMEncryption => 'Versleutelen met een wachtwoordzin';

  @override
  String get installationTypeLVMEncryptionInfo => 'Je moet elke keer dat je de computer aanzet een wachtwoordzin invoeren. Dit maakt gebruik van LUKS-codering met LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM en versleuteling geselecteerd';

  @override
  String get installationTypeEncryptInfo => 'In de volgende stap kies je een beveiligingssleutel.';

  @override
  String get installationTypeZFS => 'ZFS gebruiken zonder versleuteling';

  @override
  String get installationTypeZFSEncryption => 'Versleutelen met een wachtwoordzin met ZFS';

  @override
  String get installationTypeZFSEncryptionInfo => 'Lokale versleuteling met ZFS. Je moet elke keer dat je de computer aanzet een wachtwoordzin invoeren.';

  @override
  String get installationTypeZFSSelected => 'ZFS geselecteerd';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS en versleuteling geselecteerd';

  @override
  String get installationTypeTPM => 'Hardwarematige versleuteling gebruiken';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Lees meer over TPM-versleuteling</a> voordat je deze optie kiest. Dit werkt mogelijk niet met jouw hardware of toekomstige versies van $DISTRO.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM geselecteerd';

  @override
  String installationTypeReinstall(String os) {
    return '$os wissen en opnieuw installeren';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Waarschuwing:</font> Hiermee worden alle $os-programma\'s, documenten, foto\'s, muziek en andere bestanden verwijderd.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return '$product naast $os installeren';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return '$product naast $os1 en $os2 installeren';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return '$product naast bestaande besturingssystemen installeren';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return '$product naast andere partities installeren';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Selecteer een partitie om de grootte te wijzigen en ruimte te maken voor $product. Je kunt bij het opstarten je besturingssysteem kiezen.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return '$os wissen en $product installeren';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Alle bestanden en gegevens van de bestaande $os-installatie worden permanent verwijderd.';
  }

  @override
  String get installationTypeManual => 'Handmatige installatie';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Voor gevorderde gebruikers die op zoek zijn naar aangepaste schijfconfiguraties.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Schijf wissen en $DISTRO installeren';
  }

  @override
  String get selectGuidedStorageInfo => 'Helemaal opnieuw beginnen op de geselecteerde schijf.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Schijf selecteren:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Partitie selecteren:';

  @override
  String get selectGuidedStorageInfoLabel => 'De hele schijf wordt gebruikt:';

  @override
  String get selectGuidedStorageInstallNow => 'Nu installeren';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Kies waar je $DISTRO wilt installeren';
  }

  @override
  String get installAlongsideSpaceDivider => 'Wijs schijfruimte toe door hieronder de scheidingslijn te verslepen:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num kleinere partities zijn verborgen, gebruik dan de <a href=\"$url\">geavanceerde partitionering</a> voor meer controle';
  }

  @override
  String get installAlongsideResizePartition => 'Grootte van de partitie wijzigen';

  @override
  String get installAlongsideAllocateSpace => 'Ruimte toewijzen';

  @override
  String get installAlongsideFiles => 'Bestanden';

  @override
  String get installAlongsidePartition => 'Partitie:';

  @override
  String get installAlongsideSize => 'Grootte:';

  @override
  String get installAlongsideAvailable => 'Beschikbaar:';

  @override
  String get allocateDiskSpace => 'Handmatige partitionering';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Aankoppelpunten moeten beginnen met \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Aankoppelpunten mogen geen spaties bevatten';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is geen ondersteund bestandssysteem voor $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Apparaat';

  @override
  String get diskHeadersType => 'Type';

  @override
  String get diskHeadersMountPoint => 'Aankoppelpunt';

  @override
  String get diskHeadersSize => 'Grootte';

  @override
  String get diskHeadersUsed => 'Gebruikt';

  @override
  String get diskHeadersSystem => 'Systeem';

  @override
  String get diskHeadersFormat => 'Formatteren';

  @override
  String get freeDiskSpace => 'Vrije ruimte';

  @override
  String get newPartitionTable => 'Nieuwe partitietabel';

  @override
  String get newPartitionTableConfirmationTitle => 'Nieuwe lege partitie';

  @override
  String get newPartitionTableConfirmationMessage => 'Bij de aanmaak van een nieuwe partitietabel op een heel apparaat, worden alle huidige partities verwijderd. Deze handeling kan indien nodig ongedaan worden gemaakt.';

  @override
  String get tooManyPrimaryPartitions => 'Te veel primaire partities';

  @override
  String get partitionLimitReached => 'Limiet bereikt';

  @override
  String get bootLoaderDevice => 'Apparaat voor installatie van bootloader';

  @override
  String get partitionCreateTitle => 'Partitie aanmaken';

  @override
  String get partitionEditTitle => 'Partitie bewerken';

  @override
  String get partitionSizeLabel => 'Grootte:';

  @override
  String get partitionTypeLabel => 'Typ voor de nieuwe partitie:';

  @override
  String get partitionTypePrimary => 'Primair';

  @override
  String get partitionTypeLogical => 'Logisch';

  @override
  String get partitionLocationLabel => 'Locatie voor de nieuwe partitie:';

  @override
  String get partitionLocationBeginning => 'Begin van deze ruimte';

  @override
  String get partitionLocationEnd => 'Einde van deze ruimte';

  @override
  String get partitionFormatLabel => 'Gebruikt als:';

  @override
  String get partitionFormatNone => 'Ongeformatteerd laten';

  @override
  String partitionFormatKeep(String format) {
    return 'Als $format geformatteerd laten';
  }

  @override
  String get partitionErase => 'De partitie formatteren';

  @override
  String get partitionMountPointLabel => 'Aankoppelpunt:';

  @override
  String get confirmPageTitle => 'Klaar voor installatie';

  @override
  String get confirmHeader => 'Bekijk uw keuzes';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Geen';

  @override
  String get confirmDevicesTitle => 'Apparaten';

  @override
  String get confirmEntryApplications => 'Toepassingen';

  @override
  String get confirmEntryDiskSetup => 'Type installatie';

  @override
  String get confirmEntryDiskEncryption => 'Versleuteling van de schijf';

  @override
  String get confirmEntryInstallationDisk => 'Installatieschijf';

  @override
  String get confirmEntryProprietarySoftware => 'Propriëtaire software';

  @override
  String get confirmSectionGeneralTitle => 'Algemeen';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Beveiliging & meer';

  @override
  String get confirmPartitionsTitle => 'Partities';

  @override
  String get confirmPartitionTables => 'De partitietabellen van de volgende apparaten worden gewijzigd:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & stuurprogramma\'s';

  @override
  String get confirmProprietarySoftwareDrivers => 'Stuurprogramma\'s';

  @override
  String get confirmInstallButton => 'Installeren';

  @override
  String get confirmTableErased => 'Gewist';

  @override
  String get confirmTableUnchanged => 'Onveranderd';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Grootte aangepast van $oldsize naar $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Aangemaakt en geformatteerd als $format gebruikt voor $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Geformatteerd als $format gebruikt voor $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Gebruikt voor $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Geformatteerd als $format';
  }

  @override
  String get installationCompleteTitle => 'Installatie voltooid';

  @override
  String readyToUse(String system) {
    return '$system is geïnstalleerd en klaar voor gebruik';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** is naar de schijf gekopieerd';
  }

  @override
  String restartInto(String system) {
    return 'Opnieuw opstarten naar $system';
  }

  @override
  String get restartWarningBody => 'Start opnieuw op om de installatie te voltooien of ga door met testen.\nWijzigingen die u aanbrengt, worden niet opgeslagen.';

  @override
  String get rebootToConfigureWarning => 'Je moet de computer opnieuw opstarten om het installatieproces voort te zetten.';

  @override
  String get shutdown => 'Afsluiten';

  @override
  String get restartNow => 'Nu opnieuw starten';

  @override
  String get continueTesting => 'Doorgaan met testen';

  @override
  String get bitlockerInfoTitle => 'Bitlocker gedetecteerd';

  @override
  String get bitlockerInfoDescription => 'Een of meer partities zijn versleuteld met BitLocker.';

  @override
  String get bitlockerInfoDisable => 'Voor een installatie naast Windows moet BitLocker in Windows uitgeschakeld worden.';

  @override
  String get bitlockerInfoRecovery => 'Na installatie kan Windows bij het opstarten om herstelcodes vragen.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Ga voor instructies naar de <a href=\"$url\">BitLocker handleiding</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'Zonder BitLocker-herstelcodes kun je al je gegevens kwijtraken';

  @override
  String get restartComputer => 'Computer opnieuw starten';

  @override
  String get restartComputerTitle => 'Computer opnieuw starten?';

  @override
  String get restartIntoWindows => 'Opnieuw starten naar Windows';

  @override
  String get restartIntoWindowsTitle => 'Opnieuw starten naar Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Weet je zeker dat je jouw computer opnieuw wilt opstarten? Je moet de installatie van $DISTRO later opnieuw opstarten om de installatie van $DISTRO te voltooien.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Welkom bij $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Beschikbaar:';

  @override
  String get installationSlidesIncluded => 'Inbegrepen:';

  @override
  String get installationSlidesWelcomeTitle => 'Snel, gratis en vol nieuwe functies';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'De nieuwste versie van $DISTRO maakt computergebruik eenvoudiger dan ooit.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Of je nu een ontwikkelaar bent of maker of gamer of beheerder, in $RELEASE vind je nieuwe hulpmiddelen om je productiviteit en je ervaring te verbeteren.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Alle toepassingen die je nodig hebt';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Installeer, beheer en update al je apps in Ubuntu Software, inclusief duizenden applicaties uit zowel de Snap Store als het $DISTRO-archief.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Ontwikkel enmet het beste van open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO is het ideale werkstation voor app- of webontwikkeling, data science en AI/ML, maar ook voor devops en beheer. Elke $DISTRO-release bevat de nieuwste toolchains en ondersteunt alle belangrijke IDE\'s.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Vergroot je creativiteit';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Of je een animator, ontwerper, videomaker of game-ontwikkelaar bent, het is eenvoudig om je workflows naar $DISTRO te brengen met ondersteuning voor open source en industriestandaard software en applicaties.';
  }

  @override
  String get installationSlidesGamingTitle => 'Geweldig voor gamen';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO ondersteunt de nieuwste NVIDIA- en Mesa-stuurprogramma\'s om de prestaties en compatibiliteit te verbeteren. Duizenden Windows-titels spelen geweldig op $DISTRO via applicaties zoals Steam, zonder extra configuratie.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privé en veilig';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO biedt alle tools die je nodig hebt om online privé en veilig te blijven. Met ingebouwde firewall- en VPN-ondersteuning en een groot aantal privacygerichte applicaties om ervoor te zorgen dat je volledige controle houdt over jouw gegevens.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Alle $DISTRO LTS-releases worden uitgegeven met vijf jaar beveiligingsupdates, verlengd tot tien jaar met een Ubuntu Pro-abonnement.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Verhoog je productiviteit';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop bevat LibreOffice, een suite van Microsoft Office-compatibele open source-applicaties voor documenten, spreadsheets en presentaties. Populaire samenwerkingstools zijn ook beschikbaar.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Toegang voor iedereen';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'De kern van de $DISTRO-filosofie is de overtuiging dat computers voor iedereen zijn. Met geavanceerde toegankelijkheidstools en opties om taal, kleuren en tekstgrootte te wijzigen, maakt $DISTRO computergebruik eenvoudig, wie en waar je ook bent.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca Screen Reader';

  @override
  String get installationSlidesAccessibilityLanguages => 'Taalondersteuning';

  @override
  String get installationSlidesSupportTitle => 'Hulp en ondersteuning';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'De officiële $DISTRO-documentatie is zowel online beschikbaar als via het Help-pictogram in het dok.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu behandelt een breed scala aan vragen en antwoorden en het Ubuntu Discourse biedt handleidingen en discussies voor zowel nieuwe als ervaren gebruikers.';

  @override
  String get installationSlidesSupportEnterprise => 'Voor zakelijke gebruikers biedt Canonical commerciële ondersteuning om het gemakkelijk te maken om Ubuntu veilig op de werkplek in te voeren en te beheren.';

  @override
  String get installationSlidesSupportResources => 'Nuttige bronnen:';

  @override
  String get installationSlidesSupportDocumentation => 'Officiële documentatie';

  @override
  String get installationSlidesSupportUbuntuPro => '24/7 ondersteuning op bedrijfsniveau met Ubuntu Pro';

  @override
  String get copyingFiles => 'Bestanden kopiëren…';

  @override
  String get installingSystem => 'Systeem installeren…';

  @override
  String get configuringSystem => 'Systeem instellen…';

  @override
  String get installationFailed => 'Installatie mislukt';

  @override
  String get notEnoughDiskSpaceTitle => 'Niet genoeg schijfruimte';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Niet genoeg schijfruimte om $DISTRO te installeren';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'De geselecteerde schijf heeft niet genoeg schijfruimte om $DISTRO te installeren. Sluit het installatieprogramma om ruimte vrij te maken of selecteer een andere schijf.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Beschikbaar:';

  @override
  String get notEnoughDiskSpaceRequired => 'Vereist:';

  @override
  String get refreshPageTitle => 'Update beschikbaar';

  @override
  String get refreshHeader => 'Er is een update beschikbaar voor het installatieprogramma';

  @override
  String get refreshUpdateNow => 'Nu bijwerken';

  @override
  String get refreshInfo => 'Bijwerken naar de nieuwste versie voor verbeterde betrouwbaarheid en meer functies.';

  @override
  String get refreshReady => 'Update klaar';

  @override
  String refreshCurrent(String snap, String version) {
    return 'De huidige $snap-versie is $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Bijwerken naar versie $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'De huidige versie $version is up-to-date.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap bijwerken…';
  }

  @override
  String get refreshRestart => 'Sluit het installatieprogramma en start het opnieuw op om door te gaan';

  @override
  String get refreshCloseLabel => 'Installatieprogramma sluiten';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Vereisten voor $snap worden gecontroleerd…';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap vernieuwen…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Vernieuwing van $snap opnieuw controleren…';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap voorbereiden…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap downloaden…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap valideren…';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap aankoppelen…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap-diensten beëindigen…';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap-aliassen verwijderen…';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '$snap loskoppelen…';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '$snap-materialen bijwerken…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '$snap-kernel Opdrachtregel bijwerken...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap-gegevens kopiëren…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '$snap-beveiligingsprofielen instellen…';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap koppelen…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '$snap-stekkers en -sleuven aansluiten…';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Automatische $snap-aliassen instellen…';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '$snap-aliassen inrichten…';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '$snap-diensten starten…';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap opschonen…';
  }

  @override
  String get recoveryKeyTitle => 'TPM-herstelcode';

  @override
  String get recoveryKeyHeader => 'Herstelcode opvragen';

  @override
  String get recoveryKeyInfoHeader => 'Zonder herstelcode kun je al je gegevens verliezen';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Vraag een herstelcode op zodra je je voor het eerst aanmeldt bij $distro en bewaar deze op een veilige plek.';
  }

  @override
  String get recoveryKeyCommand => 'Om een herstelcode te krijgen, moet je de installatie voltooien, de computer opnieuw opstarten en deze opdracht uitvoeren in de terminal:';

  @override
  String get recoveryKeyStorageAdvice => 'Bewaar de herstelcode op een veilige plek. Gebruik hem om de schijf te decoderen in geval van bepaalde systeemwijzigingen. Je kunt hem bijvoorbeeld nodig hebben als je bepaalde onderdelen in je computer vervangt of de firmware bijwerkt.';

  @override
  String get recoveryKeyConfirmation => 'Ik begrijp dat ik al mijn gegevens kan verliezen als ik geen herstelcode heb';

  @override
  String get recoveryKeyLinkLabel => 'Learn more';

  @override
  String landscapeMagicAttachInstructions(Object url) {
    return 'Scan de QR-code of voer de onderstaande code in op <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Geautomatiseerde installatie';

  @override
  String get landscapeHeader => 'Inloggen bij Landscape';

  @override
  String get landscapeDomainHeader => 'Landscape-domain invoeren (FQDN)';

  @override
  String get landscapeDomainHintText => 'Landscape-domein (FQDN)';

  @override
  String get landscapeDomainInstructions => 'Geef het Landscape-domein van je organisatie op om aan te melden en een automatisch installatiebestand op te halen. Je kunt de FQDN verkrijgen bij je IT-ondersteuning.';

  @override
  String get landscapeDomainTextField => 'Landscape-domein (FQDN)';

  @override
  String get next => 'Verder';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Ongeldig domein, controleer het of neem contact op met je IT-ondersteuning';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Maak verbinding met internet om door te gaan';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'Internet is nodig om het automatische installatiebestand op te halen van Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Code verlopen, probeer het opnieuw';

  @override
  String get landscapeLoginFailedWarning => 'Inloggen mislukt, probeer het opnieuw';

  @override
  String get landscapeErrorPageTitle => 'Geautomatiseerde installatie is niet beschikbaar voor dit account';

  @override
  String get landscapeErrorPageBody => 'Neem contact op met uw IT-ondersteuning of probeer een andere installatieoptie.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Foutcode: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle => 'Ubuntu wordt geïnstalleerd met de door jouw organisatie verstrekte configuratie';

  @override
  String get landscapeConfirmPageSuccessInfoContent => 'Je kunt het automatische installatiebestand dat uit Landscape is geïmporteerd hieronder bekijken.';
}
