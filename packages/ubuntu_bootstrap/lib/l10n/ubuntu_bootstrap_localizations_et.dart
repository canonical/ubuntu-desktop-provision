import 'ubuntu_bootstrap_localizations.dart';

/// The translations for Estonian (`et`).
class UbuntuBootstrapLocalizationsEt extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'Ubuntu töölauaversiooni paigaldaja';

  @override
  String windowTitle(String RELEASE) {
    return 'Paigalda $RELEASE';
  }

  @override
  String get autoinstallTitle => 'Paigalduse tüüp';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Kuidas sa sooviksid ${DISTRO}t paigaldada?';
  }

  @override
  String get autoinstallInstructions => 'Sisesta autoinstall.yaml faili võrguaadress või vali kohalik asukoht:';

  @override
  String get autoinstallInteractiveOption => 'Interaktiivne paigaldus';

  @override
  String get autoinstallInteractiveDescription => 'Kasutajatele, kes soovivad sammhaaval juhendamist paigalduse ajal.';

  @override
  String get autoinstallAutomatedOption => 'Automated installation';

  @override
  String get autoinstallAutomatedDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get changeButtonText => 'Muuda';

  @override
  String get quitButtonText => 'Lõpeta paigaldus';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Tere tulemast, see on $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO on ettevalmistamisel…';
  }

  @override
  String get warningLabel => 'Hoiatus:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return '$DISTRO - proovi või paigalda';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Mida sa sooviksid teha ${DISTRO}ga?';
  }

  @override
  String get tryOrInstallRepairOption => 'Paranda paigaldus';

  @override
  String get tryOrInstallRepairDescription => 'Parandamise käigus paigaldatakse kogu senipaigaldatud tarkvara uuesti, kuid nii dokumendid kui seadistused jäävad muutmata.';

  @override
  String tryOption(String RELEASE) {
    return 'Proovi ${RELEASE}t';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Sa võid proovida ${RELEASE}t ilma arvutisse muudatusi tegemata.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Paigalda $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Paigalda $RELEASE hetkel arvutis olemasoleva operatsioonisüsteemi kõrvale või asemele. Selleks ei tohiks liiga palju aega kuluda.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Huvi korral saad lugeda ka <a href=\"$url\">selle versiooni väljalasketeadet</a>.';
  }

  @override
  String get rstTitle => 'RST on kasutusel';

  @override
  String get rstHeader => 'Turn off RST to continue';

  @override
  String rstDescription(String DISTRO) {
    return 'This computer uses Intel RST (Rapid Storage Technology). You need to turn off RST in Windows before installing $DISTRO.';
  }

  @override
  String rstInstructions(String url) {
    return 'Skaneerides QR-koodi mõne muu seadmega leiad teemakohase juhendi. Või lihtsalt vaata veebilehte <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Seadista Secure Booti';

  @override
  String get configureSecureBootDescription => 'Sa oled otsustanud paigaldada kolmandate osapoolte draiverite tarkvara. See aga eeldab, et Secure Boot on välja lülitatud.\nSelleks palun loo nüüd turvavõti ning sisesta see süsteemi uuesti käivitamisel.';

  @override
  String get configureSecureBootOption => 'Seadista Secure Booti';

  @override
  String get chooseSecurityKey => 'Vali turvavõti';

  @override
  String get confirmSecurityKey => 'Korda turvavõtit';

  @override
  String get dontInstallDriverSoftwareNow => 'Ära esialgu paigalda draiveri tarkvara';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Sa saad ta alati hiljem paigaldada rakendusest „Tarkvara ja uuendused“.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Turvavõti on kohustuslik';

  @override
  String get secureBootSecurityKeysDontMatch => 'Turvavõtmed ei klapi omavahel';

  @override
  String get showSecurityKey => 'Näita';

  @override
  String get hideSecurityKey => 'Peida';

  @override
  String get updatesOtherSoftwarePageTitle => 'Rakendused';

  @override
  String get updatesOtherSoftwarePageDescription => 'Mis rakendusi sa tahaksid paigaldamisel lisada?';

  @override
  String get codecsAndDriversPageTitle => 'Optimeeri oma arvutit';

  @override
  String get codecsAndDriversPageDescription => 'Kas soovid paigaldada ka soovituslikku suletud ja omanduslikku tarkvara?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO distributsioonis vaikimisi ei leidu suletud ja omanduslikku tarkvara. Küll aga mõne sellise täiendava tarkvarapaketi lisamine võib sinu arvuti jõudlust parandada.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Tuvastasime NVIDIA graafikakaardi';

  @override
  String get codecsAndDriversNvidiaBody => 'Tagamaks parimat jõudlust NVIDIA graafikakaartidega, soovitame täiendavate draiverite paigaldamist.';

  @override
  String get fullInstallationTitle => 'Laiendatud valik';

  @override
  String get fullInstallationSubtitle => 'Vallasrežiimisõbralik kontoritarkvara, tarvikud, mängud ja veebibrauser.';

  @override
  String get minimalInstallationTitle => 'Vaikimisi valik';

  @override
  String get minimalInstallationSubtitle => 'Vaid põhilised töövahendid, veebibrauser ja tarvikud.';

  @override
  String get otherOptions => 'Muud valikud';

  @override
  String get installThirdPartyTitle => 'Paigalda kolmandate osapoolte loodud tarkvara graafika- ja WiFi-kaardi jaoks ning teegid täiendavate meediavormingute kasutamiseks';

  @override
  String get installThirdPartySubtitle => 'Selle tarkvara kasutamine on võimalik nende dokumentatsioonis näidatud litsentsitingimustele. Osa sellest tarkvarast on suletud ja omanduslik tarkvara.';

  @override
  String get installDriversTitle => 'Paigalda kolmandate osapoolte tarkvara graafika- ja WiFi-kaardi jaoks';

  @override
  String get installDriversSubtitle => 'Sealhulgas, aga mitte ainult, NVIDIA dariverid ja muu sarnane';

  @override
  String get installCodecsTitle => 'Laadi alla ja paigalda täiendavate meediavormingute tugi';

  @override
  String get installCodecsSubtitle => 'Sealhulgas, aga mitte ainult, MP3, MP4, MOV ja muu sarnase tugi';

  @override
  String get batteryWarning => 'See arvuti pole ühendatud vooluvõrku.';

  @override
  String get offlineWarning => 'Sa hetkel pole võrgus';

  @override
  String get choosePassphraseTitle => 'Disk passphrase';

  @override
  String get choosePassphraseHeader => 'Loo salafraas';

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
  String get installationTypeTitle => 'Kettaseadistus';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Kuidas sa tahad $DISTRO paigaldada?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Selles arvutis on juba on olemas $os. Mida sa tahad teha?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Selles arvutis on juba on olemas $os1 ja $os2. Mida sa tahad teha?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Selles arvutis on juba on olemas üsna mitu operatsioonisüsteemi. Mida sa tahad teha?';

  @override
  String get installationTypeNoOSDetected => 'Selles arvutis on pole olemas ühtegi tuvastatavat operatsioonisüsteemi. Mida sa tahad teha?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Kustuta ja vorminda ketas ning paigaldada $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Start from scratch on your selected disk.';

  @override
  String get installationTypeAdvancedLabel => 'Advanced features...';

  @override
  String get installationTypeAdvancedTitle => 'Advanced features';

  @override
  String get installationTypeExperimental => 'Katseline';

  @override
  String get installationTypeNone => 'None';

  @override
  String get installationTypeNoneSelected => 'Ühtegi pole valitud';

  @override
  String get installationTypeLVM => 'Use LVM';

  @override
  String get installationTypeLVMSelected => 'LVM on valitud';

  @override
  String get installationTypeLVMEncryption => 'Use LVM and encryption';

  @override
  String get installationTypeLVMEncryptionSelected => 'Krüptitud LVM on valitud';

  @override
  String get installationTypeEncryptInfo => 'Krüptovõtme saad sisestada järgmises sammus.';

  @override
  String get installationTypeZFS => 'Erase disk and use ZFS';

  @override
  String get installationTypeZFSEncryption => 'Erase disk and use ZFS with encryption';

  @override
  String get installationTypeZFSSelected => 'ZFS on valitud';

  @override
  String get installationTypeZFSEncryptionSelected => 'Krüptitud ZFS on valitud';

  @override
  String get installationTypeTPM => 'Enable hardware-backed full disk encryption';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'This is an experimental feature. It may not work with your hardware or future $DISTRO releases. <a href=\"$url\">Read about TPM encryption</a> before you choose this option.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM on valitud';

  @override
  String installationTypeReinstall(String os) {
    return 'Kustuta $os ja paigalda uuesti';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Hoiatus:</font> järgnevaga kustutad kõik $os operatsioonisüsteemi programmid, dokumendid, fotod, muusika ja kõik muud failid.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Paigalda $product kõrvuti operatsioonisüsteemiga $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Paigalda $product kõrvuti operatsioonisüsteemidega $os1 ja $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Install $product alongside them';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Paigalda $product kõrvuti olemasolevate partitsioonidega';
  }

  @override
  String get installationTypeAlongsideInfo => 'You can choose your operating system during boot.';

  @override
  String get installationTypeManual => 'Käsitsi paigaldus';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Sobib asjatundjatele, kes soovivad kettaid kohandada vastavalt oma üksikasjalikele eelistustele.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Kustuta ja vorminda ketas ning paigaldada $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Alusta valitud kettaga nullist.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Vali ketas:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Vali partitsioon:';

  @override
  String get selectGuidedStorageInfoLabel => 'Kasuta kogu ketast:';

  @override
  String get selectGuidedStorageInstallNow => 'Paiglada nüüd';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Vali, kuhu soovid $DISTRO paigaldada';
  }

  @override
  String get installAlongsideSpaceDivider => 'Eralda vajalik kettaruum nihutades märkejoont järgneval skeemil:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num väiksem(at) partitsioon(i) on peidetud, detailsemaks halduseks kasuta <a href=\"$url\">üksikasjalikku partitsioonide loojat</a>';
  }

  @override
  String get installAlongsideResizePartition => 'Muuda partitsiooni suurust';

  @override
  String get installAlongsideAllocateSpace => 'Eralda andmeruumi';

  @override
  String get installAlongsideFiles => 'Failid';

  @override
  String get installAlongsidePartition => 'Partitsioon:';

  @override
  String get installAlongsideSize => 'Suurus:';

  @override
  String get installAlongsideAvailable => 'Saadaval:';

  @override
  String get allocateDiskSpace => 'Käsitsi partitsioneerimine';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Haakepunkti alguses peab olema kaldkriips „/“';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Haakepunktis ei tohi olla tühikuid';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format pole toetatud failisüsteem „$mountpoint“ haakepunkti jaoks';
  }

  @override
  String get diskHeadersDevice => 'Seade';

  @override
  String get diskHeadersType => 'Tüüp';

  @override
  String get diskHeadersMountPoint => 'Haakepunkt';

  @override
  String get diskHeadersSize => 'Suurus';

  @override
  String get diskHeadersUsed => 'Kasutusel';

  @override
  String get diskHeadersSystem => 'Süsteem';

  @override
  String get diskHeadersFormat => 'Vorming';

  @override
  String get freeDiskSpace => 'Vaba ruum';

  @override
  String get newPartitionTable => 'Uus kettajaotustabel';

  @override
  String get newPartitionTableConfirmationTitle => 'Uus tühi partitsioon';

  @override
  String get newPartitionTableConfirmationMessage => 'Uue kettajaotustabeli (partitsioonitabeli) loomine kogu seadmele eemaldab kõik senised partitsioonid. Seda tegevust ei saa hiljem tagasi pöörata.';

  @override
  String get tooManyPrimaryPartitions => 'Liiga palju primaarseid partitsioone';

  @override
  String get partitionLimitReached => 'Ülempiir on käes';

  @override
  String get bootLoaderDevice => 'Seade alglaaduri paigaldamiseks';

  @override
  String get partitionCreateTitle => 'Loo partitsioon';

  @override
  String get partitionEditTitle => 'Muuda partitsiooni';

  @override
  String get partitionSizeLabel => 'Suurus:';

  @override
  String get partitionTypeLabel => 'Uue partitsiooni tüüp:';

  @override
  String get partitionTypePrimary => 'Primaarne partitsioon';

  @override
  String get partitionTypeLogical => 'Loogiline partitsioon';

  @override
  String get partitionLocationLabel => 'Uue partitsiooni asukoht:';

  @override
  String get partitionLocationBeginning => 'Selle andmeruumi alguses';

  @override
  String get partitionLocationEnd => 'Selle andmeruumi lõpus';

  @override
  String get partitionFormatLabel => 'Kasutusel kui:';

  @override
  String get partitionFormatNone => 'Jäta vormindamata';

  @override
  String partitionFormatKeep(String format) {
    return 'Kasuta $format vormindust';
  }

  @override
  String get partitionErase => 'Vorminda partitsioon';

  @override
  String get partitionMountPointLabel => 'Haakepunkt:';

  @override
  String get confirmPageTitle => 'Valmis paigaldamiseks';

  @override
  String get confirmHeader => 'Vaata oma valikud üle';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Pole kasutusel';

  @override
  String get confirmDevicesTitle => 'Seadmed';

  @override
  String get confirmEntryApplications => 'Rakendused';

  @override
  String get confirmEntryDiskSetup => 'Disk setup';

  @override
  String get confirmEntryDiskEncryption => 'Ketta krüptimine';

  @override
  String get confirmEntryInstallationDisk => 'Paigaldusmeedia';

  @override
  String get confirmEntryProprietarySoftware => 'Suletud lähtekoodiga tarkvara';

  @override
  String get confirmSectionGeneralTitle => 'Üldine';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Turvalisus ja muu';

  @override
  String get confirmPartitionsTitle => 'Partitsioonid';

  @override
  String get confirmPartitionTables => 'Järgnevate seadmete partitsioonitabelid on muudetud:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'The following partition changes are going to be applied:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'partition <b>$sysname</b> resized from <b>$oldsize</b> to <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'partition <b>$sysname</b> formatted as <b>$format</b> used for <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'partition <b>$sysname</b> formatted as <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'partition <b>$sysname</b> used for <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'partition <b>$sysname</b> created';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Koodekid';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Koodekid ja draiverid';

  @override
  String get confirmProprietarySoftwareDrivers => 'Draiverid';

  @override
  String get confirmInstallButton => 'Paigalda';

  @override
  String get installationCompleteTitle => 'Paigaldamine on lõppenud';

  @override
  String readyToUse(String system) {
    return '$system on paigaldatud ja valmis kasutamiseks';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** on kopeeritud andmekandjale';
  }

  @override
  String restartInto(String system) {
    return 'Käivita uuesti kui $system';
  }

  @override
  String get restartWarningBody => 'Paigaldamise lõpetamiseks käivita arvuti või jätka testimist.\nViimasel juhul jäävad sinu tehtud muudatused salvestamata.';

  @override
  String get rebootToConfigureWarning => 'Paigaldusprotsessi jätkamiseks pead arvuti uuesti käivitama.';

  @override
  String get shutdown => 'Seiska';

  @override
  String get restartNow => 'Taaskäivita kohe';

  @override
  String get continueTesting => 'Jätka proovisessioni';

  @override
  String get bitlockerTitle => 'BitLocker is enabled';

  @override
  String get bitlockerHeader => 'Turn off BitLocker to continue';

  @override
  String bitlockerDescription(String option) {
    return 'This computer uses Windows BitLocker encryption.\nYou need to use Windows to create free space or go back and choose \'$option\' to continue.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'For instructions, scan the QR code on another device or visit: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Taaskäivita arvuti ja laadi Windows';

  @override
  String get restartIntoWindowsTitle => 'Kas taaskäivitame arvuti ja laadime Windowsi?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Kas sa oled kindel, et soovid arvuti uuesti käivitada? Lõpetamaks $DISTRO paigaldust, pead tema paigalduse hiljem uuesti alustama.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Tere tulemast - see on $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Saadaval:';

  @override
  String get installationSlidesIncluded => 'Sisaldab:';

  @override
  String get installationSlidesWelcomeTitle => 'Kiire, vaba ja paljude uute võimalustega';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '$DISTRO viimane versioon teeb arvutikasutuse lihtsamaks, kui ealeski varem.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Olenemata sellest, kas sa oled arendaja, sisulooja, arvutimängude huviline või süsteemihaldur, siis $RELEASE versioonis leidub uusi töövahendeid, mis parandavad sinu tõhusust ja kasutuskogemust.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Kõik rakendused, mida sa vajad';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Paigalda, halda ja uuenda kõiki oma rakendusi Ubuntu Tarkvarast, sealhulgas tuhandeid rakendusi, mis leiduvad nii Snap Store\'is kui $DISTRO distributsiooni arhiivis.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Arenda parimate avatud lähtekoodil põhinevate töövahenditega';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO on ideaalne tööjaam rakenduste või veebiteenuste arendusteks, andmeteaduse ja tehisintellektiga seotud tööde jaoks ning loomulikult devopsi ja süsteemihalduse jaoks. Iga $DISTRO viimane versioon sisaldab uusimaid arendustarvikuid ning toetab kõiki suurimaid lõimitud arenduskeskondi.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Lase loovusel lennata';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Kas sa oled animatsioonide tegija, kujundaja, videolooja või mänguarendaja, siis $DISTRO toetab sinu töövoogu nii avatud lähtekoodil põhineva, kui valdkonnale omase tarkvara ja rakendustega.';
  }

  @override
  String get installationSlidesGamingTitle => 'Suurepärane mängimiseks';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return 'Parema jõudluse ja ühilduvuse nimel toetab $DISTRO uusimaid NVIDIA ja Mesa draivereid. Steami ja muude sarnaste rakenduste abil on tuhanded Windowsi mängud sobilikud $DISTRO jaoks ilma täiendava seadistamiseta.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Privaatne ja turvaline';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO valikus leiduvad kõik töövahendid püsimaks tänapäevases võrgumaailmas privaatsena ja turvalisena. Sisseehitatud tulemüür ja VPN-ide tugi ning pinu privaatsuskeskseid rakendusi tagavad, et sul on täielik kontroll oma andmete üle.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Kõikide $DISTRO LTS-versioonidega kaasneb viieaastane turvaparanduste tugi, mida Ubuntu Pro tellimusega on võimalik pikendada kümne aastani.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Tõhusam töökorraldus';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO töölaual leidub LibreOffice, mis on Microsoft Office\'iga ühilduv avatud lähtekoodil põhinev kontoritarkvarapakett tekstitöötluse, tabelarvutuse ja esitluste jaoks. Lisaks on olemas paljud laialt kasutusel olevad ühistöörakendused.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Hõlbustus ja ligipääs kõigile';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO filosoofia põhineb arusaamal, et arvutid sobivad kõigile. Laia valiku hõlbustustarvikute ning võimaluste abil kohendada keelt, värve ja teksti suurust tagab $DISTRO arvutikasutuse mugavuse kõigile, kes iganes te pole või kus iganes te ka ei viibi.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Ekraanivaate ettelugeja Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Erinevate keelte tugi';

  @override
  String get installationSlidesSupportTitle => 'Abiteave ja kasutajatugi';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return '$DISTRO ametlik dokumentatsioon leidub nii võrgus, kui doki abiteave ikooni kaudu.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu veebisaidist leiad laias valikus küsimusi koos vastustega ning Ubuntu Discourse\'i põhine kogukonnafoorum sisaldab juhendeid ja vestlusi nii uutele, kui kogenud kasutajatele.';

  @override
  String get installationSlidesSupportEnterprise => 'Suurklientidele ja äriklientidele pakub Canonical teenusepõhist kasutajatuge, mis teeb töökohal Ubuntu turvalise kasutuselevõtmise ja haldamise lihtsaks.';

  @override
  String get installationSlidesSupportResources => 'Kasulikku teavet leiad siit:';

  @override
  String get installationSlidesSupportDocumentation => 'Ametlik dokumentatsioon';

  @override
  String get installationSlidesSupportUbuntuPro => 'Ubuntu Pro tellimusega suurfirmade tasemel 24/7 tugi';

  @override
  String get copyingFiles => 'Kopeerin faile…';

  @override
  String get installingSystem => 'Paigaldan süsteemi…';

  @override
  String get configuringSystem => 'Seadistan süsteemi…';

  @override
  String get installationFailed => 'Paigaldamine ei õnnestunud';

  @override
  String get notEnoughDiskSpaceTitle => 'Pole piisavalt kettaruumi';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return '$DISTRO paigaldamiseks pole piisavalt kettaruumi';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Valitud andmekandjal pole piisavalt ruumi $DISTRO paigaldamiseks. Palun välju paigaldajast ning lisa piisavalt ruumi või vali mõni muu andmekandja.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Saadaval:';

  @override
  String get notEnoughDiskSpaceRequired => 'Vaja:';

  @override
  String get refreshPageTitle => 'Uuendus on saadaval';

  @override
  String get refreshHeader => 'Paigaldajale on saadaval uuendus';

  @override
  String get refreshUpdateNow => 'Uuenda kohe';

  @override
  String get refreshInfo => 'Parema töökindluse ja lisafunktsionaalsuste nimel uuenda viimase versioonini.';

  @override
  String get refreshReady => 'Uuendus on valmis';

  @override
  String refreshCurrent(String snap, String version) {
    return '$snap paketi praegune versioon on $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Uuenda versioonini $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Praegune versioon $version ongi kõige uuem.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Uuendan paketi andmeid: $snap...';
  }

  @override
  String get refreshRestart => 'Jätkamaks palun sulge paigaldusrakendus ning käivita ta uuesti';

  @override
  String get refreshCloseLabel => 'Sulge paigaldusrakendus';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Kontrollime, et $snap paketi eeldused oleks täidetud...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Uuendan paketti: $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Kontrollime paketi täiendava uuenduse vajadust: $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Valmistan paketti ette: $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Laadime paketti alla: $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Valideerime paketti: $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Haagime paketti: $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Peatan paketi teenuseid: $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Eemaldan paketi aliasi: $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Eemaldan paketi linke: $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Uuendan paketi komponente: $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Uuendan paketi käsurida süsteemi tuuma jaoks: $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopeerin paketi andmeid: $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Seadistan paketi turvaprofiile: $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Lingime paketti: $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Ühendan paketi pistikuid ja slotte: $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Seadistan paketi automaatseid aliasi: $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Seadistan paketi aliasi: $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Käivitan paketi teenuseid: $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Eemaldan paketi paigaldusandmeid: $snap...';
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
