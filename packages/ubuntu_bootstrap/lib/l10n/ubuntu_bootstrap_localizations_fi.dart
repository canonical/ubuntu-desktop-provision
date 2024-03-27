import 'ubuntu_bootstrap_localizations.dart';

/// The translations for Finnish (`fi`).
class UbuntuBootstrapLocalizationsFi extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'Ubuntun työpöytäversion asennusohjelma';

  @override
  String windowTitle(String RELEASE) {
    return 'Asenna $RELEASE';
  }

  @override
  String get autoinstallTitle => 'Type of installation';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'How would you like to install $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Enter the autoinstall.yaml URL:';

  @override
  String get autoinstallInteractiveOption => 'Interactive installation';

  @override
  String get autoinstallInteractiveDescription => 'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallAutomatedOption => 'Automated installation';

  @override
  String get autoinstallAutomatedDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get changeButtonText => 'Muuta';

  @override
  String get quitButtonText => 'Lopeta asennus';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Tervetuloa, tämä on $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Valmistellaan ${DISTRO}a…';
  }

  @override
  String get warningLabel => 'Warning:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Kokeile tai asenna ${DISTRO}a';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Korjaa asennus';

  @override
  String get tryOrInstallRepairDescription => 'Korjaus asentaa kaikki ohjelmat uudelleen, asiakirjat ja asetukset säilytetään.';

  @override
  String tryOption(String RELEASE) {
    return 'Kokeile ${RELEASE}a';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Voit kokeilla ${RELEASE}a tekemättä muutoksia tietokoneellesi.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Asenna $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Asenna $RELEASE nykyisen käyttöjärjestelmäsi rinnalle tai tilalle. Asentaminen ei kestä kauan.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Voit halutessasi lukea <a href=\"$url\">julkaisumuistion</a>.';
  }

  @override
  String get rstTitle => 'RST on käytössä';

  @override
  String get rstHeader => 'Poista RST käytöstä jatkaaksesi';

  @override
  String rstDescription(String DISTRO) {
    return 'Tämä tietokone käyttää Intel RST:tä (Rapid Storage Technology). Sinun tulee sammuttaa RST, ennen kuin asennat Ubuntun.';
  }

  @override
  String rstInstructions(String url) {
    return 'Lue ohjeet skannaamalla QR-koodi tai käy toisella laitteella: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Määritä Secure Boot';

  @override
  String get configureSecureBootDescription => 'Valitsit kolmansien osapuolten ajurien asennuksen. Tämä vaatii että Secure Boot tulee määrittää.\nTämä vaatii, että valitset turva-avaimen nyt ja kirjoitat sen järjestelmän käynnistyessä uudelleen.';

  @override
  String get configureSecureBootOption => 'Määritä Secure Boot';

  @override
  String get chooseSecurityKey => 'Valitse salausavain';

  @override
  String get confirmSecurityKey => 'Vahvista salausavain';

  @override
  String get dontInstallDriverSoftwareNow => 'Älä asenna ajureita toistaiseksi';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Voit asentaa ne myöhemmin Päivitykset ja muut ohjelmistot -ohjelmassa.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Salausavain vaaditaan';

  @override
  String get secureBootSecurityKeysDontMatch => 'Salausavaimet eivät täsmää';

  @override
  String get showSecurityKey => 'Näytä salausavain';

  @override
  String get hideSecurityKey => 'Hide';

  @override
  String get updatesOtherSoftwarePageTitle => 'Sovellukset ja päivitykset';

  @override
  String get updatesOtherSoftwarePageDescription => 'Millä sovelluksin haluat aloittaa?';

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
  String get fullInstallationTitle => 'Täysi asennus';

  @override
  String get fullInstallationSubtitle => 'Yhteydettömään tilaan soveltuva kokoelma toimisto-ohjelmistoja, työkaluja, verkkoselain ja pelejä.';

  @override
  String get minimalInstallationTitle => 'Oletusasennus';

  @override
  String get minimalInstallationSubtitle => 'Vain tarpeellinen, verkkoselain ja perustyökalut.';

  @override
  String get otherOptions => 'Muut valinnat';

  @override
  String get installThirdPartyTitle => 'Asenna kolmannen osapuolen ohjelmistot näytönohjainta ja wifi-laitteistoa sekä eri mediamuotoja varten';

  @override
  String get installThirdPartySubtitle => 'Näihin ohjelmistoihin kohdistuvat dokumentaation mukana olevat lisenssiehdot. Jotkin voivat olla suljetun lähdekoodin ohjelmistoja.';

  @override
  String get installDriversTitle => 'Asenna kolmannen osapuolen ohjelmistot näytönohjainta ja wifi-laitteistoa varten';

  @override
  String get installDriversSubtitle => 'Näihin ajureihin pätee niiden dokumentaation mukana tulevat lisenssiehdot. Nämä ajurit ovat omisteellisia.';

  @override
  String get installCodecsTitle => 'Lataa ja asenna tuki eri mediamuotoja varten';

  @override
  String get installCodecsSubtitle => 'Tähän ohjelmistoon pätee sen dokumentaation mukana tulevat lisenssiehdot. Jotkin ohjelmistot ovat omisteellisia.';

  @override
  String get batteryWarning => 'The computer is not plugged in to a power source.';

  @override
  String get offlineWarning => 'Et ole yhteydessä verkkoon';

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
  String get installationTypeTitle => 'Asennustyyppi';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Tässä tietokoneessa on tällä hetkellä asennettuna käyttöjärjestelmä \"$os\". Mitä haluat tehdä?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Tässä tietokoneessa on jo käyttöjärjestelmät $os1 ja $os2. Mitä haluat tehdä?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Tässä tietokoneessa on jo useita käyttöjärjestelmiä. Mitä haluat tehdä?';

  @override
  String get installationTypeNoOSDetected => 'Tässä tietokoneessa ei havaittu asennettuja käyttöjärjestelmiä. Mitä haluat tehdä?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Tyhjennä levy ja asenna $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Start from scratch on your selected disk.';

  @override
  String get installationTypeAdvancedLabel => 'Edistyneet asetukset...';

  @override
  String get installationTypeAdvancedTitle => 'Edistyneet asetukset';

  @override
  String get installationTypeExperimental => 'Experimental';

  @override
  String get installationTypeNone => 'Ei mitään';

  @override
  String get installationTypeNoneSelected => 'Ei valintoja';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'LVM valittu';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM ja salaus valittu';

  @override
  String get installationTypeEncryptInfo => 'Salausavain valitaan seuraavassa vaiheessa.';

  @override
  String get installationTypeZFS => 'KOKEELLINEN: Tyhjennä levy ja käytä ZFS:ää';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'ZFS valittu';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'KOKEELLINEN: Käytä laitteistopohjaista koko levyn salausta';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware of future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before your choose this option.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM valittu';

  @override
  String installationTypeReinstall(String os) {
    return 'Poista $os ja asenna uudelleen';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Varoitus:</font> Tämä poistaa kaikki käyttäjärjestelmän \"$os\" sovellukset, asiakirjat, valokuvat, musiikit ja muut tiedostot.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Asenna $product käyttöjärjestelmän \"$os\" rinnalle';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Asenna $product käyttöjärjestelmien $os1 ja $os2 rinnalle';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Asenna $product niiden rinnalle';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Asenna $product muiden osioiden rinnalle';
  }

  @override
  String get installationTypeAlongsideInfo => 'Asiakirjat, musiikki ja muut henkilökohtaiset tiedostot säilytetään. Jokaisella tietokoneen käynnistyskerralla voit valita, mikä käyttöjärjestelmä käynnistetään.';

  @override
  String get installationTypeManual => 'Manuaalinen osiointi';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Voit luoda tai muuttaa osioiden kokoja itse, tai valita useita osioita ${DISTRO}n käytettäväksi';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Tyhjennä levy ja asenna $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Select drive:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Select partition:';

  @override
  String get selectGuidedStorageInfoLabel => 'Koko levy käytetään:';

  @override
  String get selectGuidedStorageInstallNow => 'Asenna nyt';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choose where to install $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Varaa levytilaa raahaamalla alla olevaa erotinta:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num pienempää osiota on piilotettu, käytä <a href=\"$url\">edistynyttä osiointityökalua</a> saadaksesi lisää toiminnallisuuksia';
  }

  @override
  String get installAlongsideResizePartition => 'Muuta osion kokoa';

  @override
  String get installAlongsideAllocateSpace => 'Varaa tilaa';

  @override
  String get installAlongsideFiles => 'Tiedostot';

  @override
  String get installAlongsidePartition => 'Osio:';

  @override
  String get installAlongsideSize => 'Koko:';

  @override
  String get installAlongsideAvailable => 'Saatavilla:';

  @override
  String get allocateDiskSpace => 'Manuaalinen osiointi';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Liitospisteiden tulee alkaa merkillä \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Liitospisteet eivät voi sisältää välilyöntejä';

  @override
  String get diskHeadersDevice => 'Laite';

  @override
  String get diskHeadersType => 'Tyyppi';

  @override
  String get diskHeadersMountPoint => 'Liitoskohta';

  @override
  String get diskHeadersSize => 'Koko';

  @override
  String get diskHeadersUsed => 'Käytössä';

  @override
  String get diskHeadersSystem => 'Järjestelmä';

  @override
  String get diskHeadersFormat => 'Alusta';

  @override
  String get freeDiskSpace => 'Vapaata tilaa';

  @override
  String get newPartitionTable => 'Uusi osiotaulu';

  @override
  String get newPartitionTableConfirmationTitle => 'Uusi tyhjä osio';

  @override
  String get newPartitionTableConfirmationMessage => 'Uuden osiotaulun luominen koko laitteelle poistaa kaikki laitteen nykyiset levyosiot. Voit perua tämän toimenpiteen, jos haluat.';

  @override
  String get tooManyPrimaryPartitions => 'Liian monta ensisijaista osiota';

  @override
  String get partitionLimitReached => 'Raja saavutettu';

  @override
  String get bootLoaderDevice => 'Laite, jolle alkulatausohjelma asennetaan';

  @override
  String get partitionCreateTitle => 'Luo osio';

  @override
  String get partitionEditTitle => 'Muokkaa osiota';

  @override
  String get partitionSizeLabel => 'Koko:';

  @override
  String get partitionTypeLabel => 'Uuden osion tyyppi:';

  @override
  String get partitionTypePrimary => 'Ensisijainen';

  @override
  String get partitionTypeLogical => 'Looginen';

  @override
  String get partitionLocationLabel => 'Uuden osion paikka:';

  @override
  String get partitionLocationBeginning => 'Tilan alku';

  @override
  String get partitionLocationEnd => 'Tilan loppu';

  @override
  String get partitionFormatLabel => 'Tiedostojärjestelmä:';

  @override
  String get partitionFormatNone => 'Jätä alustamatta';

  @override
  String partitionFormatKeep(String format) {
    return 'Jätä alustetuksi muotoon $format';
  }

  @override
  String get partitionErase => 'Alusta osio';

  @override
  String get partitionMountPointLabel => 'Liitoskohta:';

  @override
  String get confirmPageTitle => 'Valmis asennukseen';

  @override
  String get confirmHeader => 'Jos jatkat, alla luetellut muutokset kirjoitetaan levyille. Muussa tapauksessa voit tehdä itse lisää muutoksia.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'None';

  @override
  String get confirmDevicesTitle => 'Laitteet';

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
  String get confirmPartitionsTitle => 'Osiot';

  @override
  String get confirmPartitionTables => 'Seuraavien laitteiden osiotauluja on muutettu:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Seuraavat osiomuutokset toteutetaan:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'osion <b>$sysname</b> koko <b>$oldsize</b> muutettu kokoon <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'osio <b>$sysname</b> alustettu muotoon <b>$format</b> käytettäväksi liitospisteenä <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'osio <b>$sysname</b> alustettu muotoon <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'osio <b>$sysname</b> käytettäväksi liitospisteenä <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'osio <b>$sysname</b> luotu';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Codecs';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs & drivers';

  @override
  String get confirmProprietarySoftwareDrivers => 'Drivers';

  @override
  String get confirmInstallButton => 'Asenna';

  @override
  String get installationCompleteTitle => 'Asennus on valmis';

  @override
  String readyToUse(String system) {
    return '$system on asennettu ja on valmis käytettäväksi.';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return 'Käynnistä uudelleen käyttöjärjestelmään \"$system\"';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make not be saved.';

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'Sammuta';

  @override
  String get restartNow => 'Käynnistä uudelleen nyt';

  @override
  String get continueTesting => 'Jatka testaamista';

  @override
  String get bitlockerTitle => 'BitLocker on käytössä';

  @override
  String get bitlockerHeader => 'Poista BitLocker käytöstä jatkaaksesi';

  @override
  String bitlockerDescription(String option) {
    return 'Tämä tietokone käyttää Windowsin BitLocker-salausta.\nSinun tulee käyttää Windowsia luodaksesi vapaata tilaa tai valitse \'$option\' jatkaaksesi.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Lue ohjeet skannaamalla QR-koodi tai käy jollain toisella laitteella: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Uudelleenkäynnistä Windowsiin';

  @override
  String get restartIntoWindowsTitle => 'Käynnistetäänkö uudelleen Windowsiin?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Haluatko varmasti käynnistää tietokoneen uudelleen? Sinun tulee käynnistää uudelleen $DISTRO-asennusohjelma, jotta voit viimeistellä ${DISTRO}n asennuksen.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Tervetuloa, tämä on $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Saatavilla:';

  @override
  String get installationSlidesIncluded => 'Sisältyy:';

  @override
  String get installationSlidesWelcomeTitle => 'Nopea, ilmainen ja täynnä uusia ominaisuuksia';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '${DISTRO}n uusin versio tekee tietojenkäsittelystä helpompaa kuin koskaan aiemmin.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Oletpa sitten kehittäjä, taiteilija, pelaaja tai ylläpitäjä, $RELEASE:n uudet työkalut parantavat tuottavuuttasi ja kokemustasi.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Kaikki tarvitsemasi sovellukset';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Asenna, hallitse ja päivitä sovelluksia Ubuntun sovelluskaupasta, mukaan lukien tuhansia sovelluksia Snap-sovelluskaupasta ja ${DISTRO}n arkistosta.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Kehitä avoimen lähdekoodin parhailla välineillä';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO on erinomainen valinta sovellus- tai web-kehitykseen, datatieteisiin, AI-/ML-työskentelyyn sekä devopsiin ja ylläpitotehtäviin. Jokainen $DISTRO-julkaisu sisältää uusimmat työkalut sekä tuen keskeisimmille sovelluskehitysympäristöille.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Paranna luovuuttasi';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Jos olet animaattori, suunnittelija, videokäsittelijä tai pelikehittäjä, työnkulkujesi tuominen ${DISTRO}un on helppoa avoimen lähdekoodin ja alan standardisovellusten tuen myötä.';
  }

  @override
  String get installationSlidesGamingTitle => 'Mainio pelaamiseen';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO tukee uusimpia NVIDIA- ja Mesa-ajureita suorituskyvyn sekä yhteensopivuuden takaamiseksi. Tuhannet Windows-pelit toimivat erinomaisesti ${DISTRO}lla Steamin kaltaisten sovellusten avulla ilman ylimääräistä säätämistä.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Yksityinen ja turvallinen';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO tarjoaa kaikki tarvitsemasi työkalut, jotta pysyt verkossa yksityisenä ja turvassa. Sisäänrakennettu palomuuri ja VPN-tuki sekä yksityisyyteen keskittyvät sovellukset varmistavat, että hallitset itse omia tietojasi.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Kaikki $DISTRO LTS -julkaisut sisältävät viiden vuoden tietoturvatuen, Ubuntu Pro -tilauksella tietoturvatuki on laajennettavissa kymmeneen vuoteen.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Kiihdytä tuottavuuttasi';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '${DISTRO}n työpöytäversio sisältää LibreOfficen, kokoelman Microsoft Office -yhteensopivia avoimen lähdekoodin sovelluksia asiakirjojen, taulukoiden ja esitysten kanssa työskentelyyn. Myös muita yhteistyön mahdollistavia sovelluksia on saatavilla.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Esteetön kaikille';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '${DISTRO}n filosofian ytimessä on usko siihen, että tietokoneiden käyttö sopii kaikille. Tämän takia $DISTRO tarjoaa erilaisia mukauttamismahdollisuuksia ollakseen mahdollisimman helppokäyttöinen. Tarjolla ovat muun muassa edistyneet esteettömyystoiminnot sekä lukuisat valinnaiset kirjasimet, väriteemat ja kielet.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca-näytönlukija';

  @override
  String get installationSlidesAccessibilityLanguages => 'Kielituki';

  @override
  String get installationSlidesSupportTitle => 'Ohjeet ja tuki';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Virallinen $DISTRO-dokumentaatio on saatavilla verkossa ja telakan Ohje-kuvaketta napsauttamalla.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu -palvelu sisältää lukuisia kysymyksiä sekä vastauksia, ja Ubuntu Discourse tarjoaa ohjeita sekä keskusteluja niin uusille kuin vanhoillekin käyttäjille.';

  @override
  String get installationSlidesSupportEnterprise => 'Yrityskäyttäjille Canonical tarjoaa kaupallista tukea, jotta Ubuntu pysyy hallittavissa ja turvallisena työympäristössä.';

  @override
  String get installationSlidesSupportResources => 'Hyödyllisiä resursseja:';

  @override
  String get installationSlidesSupportDocumentation => 'Virallinen dokumentaatio';

  @override
  String get installationSlidesSupportUbuntuPro => 'Yritystason 24/7-tuki Ubuntu Pro -tilauksella';

  @override
  String get copyingFiles => 'Kopioidaan tiedostoja…';

  @override
  String get installingSystem => 'Asennetaan järjestelmää…';

  @override
  String get configuringSystem => 'Määritetään järjestelmää…';

  @override
  String get installationFailed => 'Asennus epäonnistui';

  @override
  String get notEnoughDiskSpaceTitle => 'Tilaa ei ole riittävästi';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Tilaa ei ole riittävästi, jotta $DISTRO olisi mahdollista asentaa';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Saatavilla:';

  @override
  String get notEnoughDiskSpaceRequired => 'Vaadittu:';

  @override
  String get refreshPageTitle => 'Päivitys saatavilla';

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
    return 'Nykyinen $snap-versio on $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Päivitä versioon $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Nykyinen versio $version on ajan tasalla.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Päivitetään $snap...';
  }

  @override
  String get refreshRestart => 'Käynnistä asennusohjelma uudelleen.';

  @override
  String get refreshCloseLabel => 'Close installer';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Varmistetaan snapin $snap edellytyksiä...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Päivitetään $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Tarkistetaan $snap uudelleenpäivitys...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Valmistellaan $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Ladataan $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Vahvistetaan $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Liitetään $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Pysäytetään $snap-palvelut...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Poistetaan $snap-aliakset...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Poistetaan snapin $snap linkitys...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Päivitetään snapin $snap resurssit...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Päivitetään snapin $snap ytimen komentorivi...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopioidaan snapin $snap dataa...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Asetetaan snapin $snap tietoturvaprofiileja...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Linkitetään $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Connecting $snap plugs and slots...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Asetetaan automaattisia $snap-aliaksia...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Asetetaan $snap-aliaksia...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Käynnistetään $snap-palveluja...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Siivotaan $snap...';
  }

  @override
  String get recoveryKeyTitle => 'TPM-palautusavain';

  @override
  String get recoveryKeyCommand => 'Pääset palautusavaimeesi asennuksen jälkeen seuraavalla komennolla:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Varoitus:</font> Jos kadotat tämän turva-avaimen, kaikki data menetetään. Kirjoita tarvittaessa avain muistiin johonkin turvalliseen paikkaan.';
  }

  @override
  String get validate => 'Validate';
}
