// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

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
  String get autoinstallDirectTitle => 'Automaatne paigaldus';

  @override
  String get autoinstallDirectHeader =>
      'Impordi automaatse paigalduse juhtfail';

  @override
  String get autoinstallDirectUrlLabel =>
      'Sa võid sisestada automaatse paigalduse juhtfaili võrguaadressi:';

  @override
  String get autoinstallDirectFileLabel => 'Või vali fail kohalikust seadmest:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Vali fail...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Eemalda fail';

  @override
  String get autoinstallDirectFilePickerTitle => 'Vali fail';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML-failid';

  @override
  String get autoinstallDirectImportButtonLabel => 'Impordi';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Automaatse paigalduse juhtfail pole leitav';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Palun kontrolli, et võrguaadress oleks õige ja võrguühendus toimib või proovi hiljem uuesti.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Vigane võrguaadress';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Palun kontrolli, kas võrguaadress on korrektne või vali kohalik fail.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Vigane automaatse paigalduse juhtfail';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Kontrolli, kas fail on korrektne või asenda ta mõne muu failiga.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Automaatse paigalduse juhtfail pole loetav';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Kontrolli vajalikke õigusi või otsi mõni muu fail.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Tundmatu viga';

  @override
  String get autoinstallTitle => 'Paigalduse tüüp';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Kuidas sa sooviksid ${DISTRO}t paigaldada?';
  }

  @override
  String get autoinstallInstructions =>
      'Sisesta autoinstall.yaml faili võrguaadress või vali kohalik asukoht:';

  @override
  String get autoinstallInteractiveOption => 'Interaktiivne paigaldus';

  @override
  String get autoinstallInteractiveDescription =>
      'Kasutajatele, kes soovivad sammhaaval juhendamist paigalduse ajal.';

  @override
  String get autoinstallDirectOption => 'Juhtfailipõhine automaatne paigaldus';

  @override
  String get autoinstallDirectDescription =>
      'Asjatundjatele, kes soovivad kasutada autoinstall.yaml faili järjekindlate ja korratavate paigalduste jaoks.';

  @override
  String get autoinstallLandscapeOption =>
      'Landscape\'i põhine automaatne paigaldus';

  @override
  String get autoinstallLandscapeDescription =>
      'Kasutajatele organisatsioonides, kus on olemas Landscape\'i põhine automaatse paigalduse teenus.';

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
  String get tryOrInstallRepairDescription =>
      'Parandamise käigus paigaldatakse kogu senipaigaldatud tarkvara uuesti, kuid nii dokumendid kui seadistused jäävad muutmata.';

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
  String get rstHeader => 'Paigaldusega jätkamiseks pead RST välja lülitama';

  @override
  String get rstDisable =>
      'Sinu arvutis on kasutusel Inteli RST (Rapid Storage Technology). Sa võid RST välja lülitada kas:';

  @override
  String get rstDisableWindows =>
      'Windowsist, kui kasutad arvutis mitut operatsioonisüsteemi, millest üks on Windows';

  @override
  String get rstDisableBios => 'BIOSi seadistustest';

  @override
  String rstInstructions(String url) {
    return 'Skaneerides QR-koodi mõne muu seadmega leiad teemakohase juhendi. Või lihtsalt vaata veebilehte <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Seadista Secure Booti';

  @override
  String get configureSecureBootDescription =>
      'Sa oled otsustanud paigaldada kolmandate osapoolte draiverite tarkvara. See aga eeldab, et Secure Boot on välja lülitatud.\nSelleks palun loo nüüd turvavõti ning sisesta see süsteemi uuesti käivitamisel.';

  @override
  String get configureSecureBootOption => 'Seadista Secure Booti';

  @override
  String get chooseSecurityKey => 'Vali turvavõti';

  @override
  String get confirmSecurityKey => 'Korda turvavõtit';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Ära esialgu paigalda draiveri tarkvara';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Sa saad ta alati hiljem paigaldada rakendusest „Tarkvara ja uuendused“.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Turvavõti on kohustuslik';

  @override
  String get secureBootSecurityKeysDontMatch => 'Turvavõtmed ei klapi omavahel';

  @override
  String get showSecurityKey => 'Näita';

  @override
  String get hideSecurityKey => 'Peida';

  @override
  String get updatesOtherSoftwarePageTitle => 'Rakendused';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Mis rakendusi sa tahaksid paigaldamisel lisada?';

  @override
  String get codecsAndDriversPageTitle => 'Optimeeri oma arvutit';

  @override
  String get codecsAndDriversPageDescription =>
      'Kas soovid paigaldada ka soovituslikku suletud ja omanduslikku tarkvara?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO distributsioonis vaikimisi ei leidu suletud ja omanduslikku tarkvara. Küll aga mõne sellise täiendava tarkvarapaketi lisamine võib sinu arvuti jõudlust parandada.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Tuvastasime NVIDIA graafikakaardi';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Tagamaks parimat jõudlust NVIDIA graafikakaartidega, soovitame täiendavate draiverite paigaldamist.';

  @override
  String get fullInstallationTitle => 'Laiendatud valik';

  @override
  String get fullInstallationSubtitle =>
      'Vallasrežiimisõbralik kontoritarkvara, tarvikud, mängud ja veebibrauser.';

  @override
  String get minimalInstallationTitle => 'Vaikimisi valik';

  @override
  String get minimalInstallationSubtitle =>
      'Vaid põhilised töövahendid, veebibrauser ja tarvikud.';

  @override
  String get otherOptions => 'Muud valikud';

  @override
  String get installThirdPartyTitle =>
      'Paigalda kolmandate osapoolte loodud tarkvara graafika- ja WiFi-kaardi jaoks ning teegid täiendavate meediavormingute kasutamiseks';

  @override
  String get installThirdPartySubtitle =>
      'Selle tarkvara kasutamine on võimalik nende dokumentatsioonis näidatud litsentsitingimustele. Osa sellest tarkvarast on suletud ja omanduslik tarkvara.';

  @override
  String get installDriversTitle =>
      'Paigalda kolmandate osapoolte tarkvara graafika- ja WiFi-kaardi jaoks';

  @override
  String get installDriversSubtitle =>
      'Sealhulgas, aga mitte ainult, NVIDIA dariverid ja muu sarnane';

  @override
  String get installCodecsTitle =>
      'Laadi alla ja paigalda täiendavate meediavormingute tugi';

  @override
  String get installCodecsSubtitle =>
      'Sealhulgas, aga mitte ainult, MP3, MP4, MOV ja muu sarnase tugi';

  @override
  String get batteryWarning => 'See arvuti pole ühendatud vooluvõrku.';

  @override
  String get offlineWarning => 'Sa hetkel pole võrgus';

  @override
  String get choosePassphraseHeader => 'Loo salafraas';

  @override
  String get choosePassphraseBody =>
      'Pead selle salafraasi sisestama igal arvuti käivituskorral. Salafraas ei ole sama, kui sinu salasõna.';

  @override
  String get choosePassphraseInfoHeader =>
      'Palun salvesta salafraas turvaliselt, näiteks digitaalses salasõnalaekas või vana kooli seifis';

  @override
  String get choosePassphraseInfoBody =>
      'Kui unustad salafraasi siis kaotad ligipääsu kõikidele oma andmetele.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Salvesta salafraas ja taastevõti turvaliselt, näiteks digitaalses salasõnalaekas või vana kooli seifis';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Kui unustad salafraasi, siis kaotad ligipääsu oma andmetele. Salafraas ei asenda taastevõtit ega kasutajakonto salasõna.';

  @override
  String get passphrasePageTitle => 'Krüptimine';

  @override
  String get passphrasePageHeaderPassphrase => 'Seadista krüptimise salafraas';

  @override
  String get passphrasePageHeaderPin => 'Seadista krüptimise PIN-kood';

  @override
  String get passphrasePageBodyPassphrase =>
      'Pead selle salafraasi sisestama igal arvuti käivituskorral. See salafraas ei ole sama, kui sinu salasõna. Vajadusel saad teda hiljem muuta, kuid mitte välja lülitada. Kui peaksid salafraasi unustama, siis saad ligipääsu andmekandjale taastada taastevõtmega.';

  @override
  String get passphrasePageBodyPin =>
      'Pead selle PIN-koodi sisestama igal arvuti käivituskorral. See PIN-kood ei ole sama, kui sinu salasõna. Vajadusel saad teda hiljem muuta, kuid mitte välja lülitada. Kui peaksid PIN-koodi unustama, siis saad ligipääsu andmekandjale taastada taastevõtmega.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Salafraas';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Korda salafraasi';

  @override
  String get passphrasePageRequiredPassphrase => 'Salafraas on nõutav';

  @override
  String get passphrasePageMismatchPassphrase =>
      'Salafraasid ei klapi omavahel';

  @override
  String get passphrasePageChoosePinHint => 'PIN-kood';

  @override
  String get passphrasePageConfirmPinHint => 'Korda PIN-koodi';

  @override
  String get passphrasePageRequiredPin => 'PIN-kood on vajalik';

  @override
  String get passphrasePageMismatchPin => 'PIN-koodid ei klapi omavahel';

  @override
  String get passphraseTypePassphraseTileTitle => 'Eelda salafraasi kasutamist';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Kõige turvalisem. Igal arvuti sisselülitamisel pead sisestama salafraasi.';

  @override
  String get passphraseTypePinTileTitle => 'Eelda PIN-koodi kasutamist';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Turvalisem, kui muidu. Igal arvuti sisselülitamisel pead sisestama numbritest koosneva PIN-koodi.';

  @override
  String get passphraseTypeNoneTileTitle =>
      'Eemalda andmekandja lukustus automaatselt';

  @override
  String get passphraseTypePageHeader => 'Täiendav turvalisus';

  @override
  String get passphraseTypePageBody =>
      'Vaikimisi eemaldab selle arvuti Trusted Platform Module (TPM) lukustuse automaatselt. Lisaks on sul täiendavad võimalused oma andmete kaitsmiseks.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Salafraas on kehv, palun muuda ta pikemaks ja keerukamaks';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Salafraas on juba täitsa hea, parema turvalisuse nimel palun muuda ta pikemaks ja keerukamaks';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Salafraas on korralik';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'PIN-kood on kehv, palun muuda ta pikemaks ja vähem ennustatavaks';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'PIN-kood on juba täitsa hea, parema turvalisuse nimel palun muuda ta pikemaks ja vähem ennustatavaks';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN-kood on piisavalt pikk';

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
  String get installationTypeMultiOSDetected =>
      'Selles arvutis on juba on olemas üsna mitu operatsioonisüsteemi. Mida sa tahad teha?';

  @override
  String get installationTypeNoOSDetected =>
      'Selles arvutis on pole olemas ühtegi tuvastatavat operatsioonisüsteemi. Mida sa tahad teha?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Kustuta ja vorminda ketas ning paigaldada $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Kõik andmed ja partitsioonid sellelt kettalt saavad järgnevaga kustutatud, sealhulgas operatsioonisüsteemid.';

  @override
  String get installationTypeAdvancedLabel => 'Näita lisavalikuid...';

  @override
  String get installationTypeAdvancedTitle => 'Krüptimine ja failisüsteem';

  @override
  String get installationTypeExperimental => 'Katseline';

  @override
  String get installationTypeNone => 'Krüptimata';

  @override
  String get installationTypeNoneInfo =>
      'Standardne failisüsteem ilma krüptimiseta.';

  @override
  String get installationTypeNoneSelected => 'Ühtegi pole valitud';

  @override
  String get installationTypeLVM => 'Kasuta ilma krüptimata LVM-i';

  @override
  String get installationTypeLVMSelected => 'LVM on valitud';

  @override
  String get installationTypeLVMEncryption => 'Krüpti salafraasiga';

  @override
  String get installationTypeLVMEncryptionInfo =>
      'Sa pead sisestama selle salafraasi alati peale arvuti sisselülitamist. Krüptimiseks on kasutusel LUKS ja LVM.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'Krüptitud LVM on valitud';

  @override
  String get installationTypeEncryptInfo =>
      'Krüptovõtme saad sisestada järgmises sammus.';

  @override
  String get installationTypeZFS => 'Kasuta ilma krüptimata ZFS-i';

  @override
  String get installationTypeZFSEncryption =>
      'Krüpti salafraasiga kasutades ZFS failisüsteemi';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Sa pead sisestama selle salafraasi alati peale arvuti sisselülitamist. Krüptimiseks on kasutusel ZFS-i sisseehitatud liidestus.';

  @override
  String get installationTypeZFSSelected => 'ZFS on valitud';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'Krüptitud ZFS on valitud';

  @override
  String get installationTypeTPM => 'Kasuta raudvarapõhist krüptimist';

  @override
  String get installationTypeTPMInfoResolute =>
      'The disk will unlock automatically during startup.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Not available on this computer.';

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
    return 'Paigalda $product kõrvuti kõikide olemasolevate operatsioonisüsteemidega';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Paigalda $product kõrvuti olemasolevate partitsioonidega';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Vali partitsioon, mille suuruse muutmisega saad luua ruumi $product jaoks. Konkreetselt kasutatava operatsioonisüsteemi saad valida arvuti käivitamisel.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Kustuta $os ja paigalda $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Kõik $os operatsioonisüsteemi olemasolevad failid ja andmed saavad järgnevaga olema jäädavalt kustutatud.';
  }

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
  String get installAlongsideSpaceDivider =>
      'Eralda vajalik kettaruum nihutades märkejoont järgneval skeemil:';

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
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Haakepunkti alguses peab olema kaldkriips „/“';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Haakepunktis ei tohi olla tühikuid';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
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
  String get newPartitionTableConfirmationMessage =>
      'Uue kettajaotustabeli (partitsioonitabeli) loomine kogu seadmele eemaldab kõik senised partitsioonid. Seda tegevust ei saa hiljem tagasi pöörata.';

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
  String get confirmEntryDiskSetup => 'Paigalduse tüüp';

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
  String get confirmPartitionTables =>
      'Järgnevate seadmete partitsioonitabelid on muudetud:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
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
  String get confirmTableErased => 'Kustutatud';

  @override
  String get confirmTableUnchanged => 'Muutmata';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Suurus on muudetud: $oldsize → $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Loodud ja vormindatud kui $format „$mountpoint“ haakepunkti jaoks';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Vormindatud kui $format „$mountpoint“ haakepunkti jaoks';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Kasutusel „$mountpoint“ haakepunkti jaoks';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Vormindatud kui $format';
  }

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
  String get restartWarningBody =>
      'Paigaldamise lõpetamiseks käivita arvuti või jätka testimist.\nViimasel juhul jäävad sinu tehtud muudatused salvestamata.';

  @override
  String get rebootToConfigureWarning =>
      'Paigaldusprotsessi jätkamiseks pead arvuti uuesti käivitama.';

  @override
  String get shutdown => 'Seiska';

  @override
  String get restartNow => 'Taaskäivita kohe';

  @override
  String get continueTesting => 'Jätka proovisessioni';

  @override
  String get bitlockerInfoTitle => 'Tuvastasime BitLockeri';

  @override
  String get bitlockerInfoDescription =>
      'Üks või enam partitsiooni on krüptitud BitLockeriga.';

  @override
  String get bitlockerInfoDisable =>
      'Paigaldamaks kõrvuti Windowsiga, palun lülita BitLocker Windowsist välja.';

  @override
  String get bitlockerInfoRecovery =>
      'Peale paigaldamist võib Windows järgmisel alglaadimisel küsida taastevõtmeid.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Täpsem teave leidub <a href=\"$url\">BitLockeri juhendis</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Ilma BitLockeri taastevõtmeteta võid kaotada ligipääsu kõikidele oma andmetele';

  @override
  String get restartComputer => 'Taaskäivita arvuti';

  @override
  String get restartComputerTitle => 'Kas taaskäivitame arvuti?';

  @override
  String get restartIntoWindows => 'Taaskäivita arvuti ja laadi Windows';

  @override
  String get restartIntoWindowsTitle =>
      'Kas taaskäivitame arvuti ja laadime Windowsi?';

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
  String get installationSlidesWelcomeTitle =>
      'Kiire, vaba ja paljude uute võimalustega';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '$DISTRO viimane versioon teeb arvutikasutuse lihtsamaks, kui ealeski varem.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Olenemata sellest, kas sa oled arendaja, sisulooja, arvutimängude huviline või süsteemihaldur, siis $RELEASE versioonis leidub uusi töövahendeid, mis parandavad sinu tõhusust ja kasutuskogemust.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Kõik rakendused, mida sa vajad';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Paigalda, halda ja uuenda kõiki oma rakendusi Ubuntu Tarkvarast, sealhulgas tuhandeid rakendusi, mis leiduvad nii Snap Store\'is kui $DISTRO distributsiooni arhiivis.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Arenda parimate avatud lähtekoodil põhinevate töövahenditega';

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
  String get installationSlidesAccessibilityTitle =>
      'Hõlbustus ja ligipääs kõigile';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '$DISTRO filosoofia põhineb arusaamal, et arvutid sobivad kõigile. Laia valiku hõlbustustarvikute ning võimaluste abil kohendada keelt, värve ja teksti suurust tagab $DISTRO arvutikasutuse mugavuse kõigile, kes iganes te pole või kus iganes te ka ei viibi.';
  }

  @override
  String get installationSlidesAccessibilityOrca =>
      'Ekraanivaate ettelugeja Orca';

  @override
  String get installationSlidesAccessibilityLanguages =>
      'Erinevate keelte tugi';

  @override
  String get installationSlidesSupportTitle => 'Abiteave ja kasutajatugi';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return '$DISTRO ametlik dokumentatsioon leidub nii võrgus, kui doki abiteave ikooni kaudu.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu veebisaidist leiad laias valikus küsimusi koos vastustega ning Ubuntu Discourse\'i põhine kogukonnafoorum sisaldab juhendeid ja vestlusi nii uutele, kui kogenud kasutajatele.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Suurklientidele ja äriklientidele pakub Canonical teenusepõhist kasutajatuge, mis teeb töökohal Ubuntu turvalise kasutuselevõtmise ja haldamise lihtsaks.';

  @override
  String get installationSlidesSupportResources =>
      'Kasulikku teavet leiad siit:';

  @override
  String get installationSlidesSupportDocumentation =>
      'Ametlik dokumentatsioon';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Ubuntu Pro tellimusega suurfirmade tasemel 24/7 tugi';

  @override
  String get nextSlideSemanticLabel => 'Järgmine slaid';

  @override
  String get previousSlideSemanticLabel => 'Eelmine slaid';

  @override
  String get playSlideshowSemanticLabel => 'Käivita slaidiprogramm';

  @override
  String get pauseSlideshowSemanticLabel => 'Peata slaidiprogramm';

  @override
  String get toggleLogsSemanticLabel => 'Näita paigalduslogisid või peida nad';

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
  String get refreshInfo =>
      'Parema töökindluse ja lisafunktsionaalsuste nimel uuenda viimase versioonini.';

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
  String get refreshRestart =>
      'Jätkamaks palun sulge paigaldusrakendus ning käivita ta uuesti';

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
    return 'Haagin paketti: $snap...';
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
  String get recoveryKeyTitle => 'Taastevõti';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Oluline';

  @override
  String get recoveryKeyHeader => 'Salvesta oma taastevõti';

  @override
  String get recoveryKeyInfoHeader =>
      'Ilma taastevõtmeta võid kaotada ligipääsu kõikidele oma andmetele';

  @override
  String get recoveryKeyTextFieldLabel => 'Taastevõti';

  @override
  String get recoveryKeyStorageAdvice =>
      'Kui dekrüptimine käivitamisel ei õnnestunud, siis pead sisestama selle taastevõtme. Ilma selle taastevõtmeta kaotad ligipääsu kõikidele oma andmetele. Hoia taastevõtit turvaliselt kas moodsas digitaalses salasõnalaekas või vana kooli seifis.';

  @override
  String get recoveryKeyConfirmation =>
      'Ma olen oma taastevõtme turvaliselt salvestanud';

  @override
  String get recoveryKeyLinkLabel => 'Lisateave';

  @override
  String get recoveryKeySaveToFileLabel => 'Salvesta failina';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Näita QR-koodi';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO töölaud - taastevõti';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Taastevõtme kopeerimiseks ja turvaliseks talletamiseks skaneeri seda QR-koodi. Turvaliseks salvestamiseks sobib digitaalne salasõnahaldur. Hilisemaks töötlemiseks võid teda pildistada.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Kopeeritud lõikelauale';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Taastevõtme fail pole salvestatud';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Taastevõtit ei saa salvestada ajutisse asukohta';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Tundmatu viga';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Sul puuduvad õigused sellesse kausta kirjutamiseks. Proovi muud asukohta või kasuta muud meetodit.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Proovi kasutada muud asukohta, näiteks eemaldatavat andmekandjat või muud meetodit.';

  @override
  String get recoveryKeyFilePickerTitle => 'Salvesta taastevõti failina';

  @override
  String get recoveryKeyFilePickerFilter => 'Tekstifailid';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Skaneeri QR-koodi või sisesta järgnev kood veebilehel <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automaatne paigaldus';

  @override
  String get landscapeHeader => 'Logi sisse Landscape\'i teenusesse';

  @override
  String get landscapeDomainHeader =>
      'Sisesta Landscape\'i domeen (FQDN ehk täielik domeeninimi)';

  @override
  String get landscapeDomainHintText => 'Landscape\'i domeen (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Logimaks oma organisatsiooni Landscape\'i teenusesse ja laadimaks automaatse paigalduse juhtfaili, sisesta domeeni nimi. Täieliku domeeninime saad oma IT-kasutajatoelt.';

  @override
  String get landscapeDomainTextField => 'Landscape\'i domeen (FQDN)';

  @override
  String get next => 'Edasi';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Vigane domeen. Palun kontrolli tema õigsust või küsi abi oma IT-kasutajatoelt';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Jätkamiseks lisa internetiühendus';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internetiühendus on vajalik automaatse paigalduse juhtfaili laadimiseks Landscape\'i teenusest';

  @override
  String get landscapeCodeExpiredWarning => 'Kood aegus, palun proovi uuesti';

  @override
  String get landscapeLoginFailedWarning =>
      'Sisselogimine ei õnnestunud, palun proovi uuesti';

  @override
  String get landscapeErrorPageTitle =>
      'Sinu kasutajakonto jaoks pole automaatne paigaldus saadaval';

  @override
  String get landscapeErrorPageBody =>
      'Küsi abi oma IT-kasutajatoelt või proovi mõnda muud paigaldusviisi.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Veakood: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu jätkab paigaldust sinu organisatsiooni poolt etteantud seadistuste alusel';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Landscape\'i teenusest imporditud automaatse paigalduse juhtfaili sisu saad vaadata alljärgnevalt.';

  @override
  String get successIconSemanticLabel => 'Õnnestus';

  @override
  String get errorIconSemanticLabel => 'Viga';

  @override
  String get closeIconSemanticLabel => 'Sulge';

  @override
  String get maximizeIconSemanticLabel => 'Maksimeeri';

  @override
  String get minimizeIconSemanticLabel => 'Minimeeri';

  @override
  String get tpmActionPageTitle =>
      'Hardware-backed encryption could not be enabled';

  @override
  String get tpmActionBadgeLabel => 'Action required';

  @override
  String get tpmActionDetailsLabel => 'Technical details';

  @override
  String get tpmActionConfirmLabel => 'Confirm';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Solution $n: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel => 'Link to documentation';

  @override
  String get tpmActionErrorSupportLabel =>
      'Try the solutions below, contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Contact IT support, or choose a different encryption method.';

  @override
  String get tpmActionErrorKindInternal => 'Internal';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Shutdown Required';

  @override
  String get tpmActionErrorKindRebootRequired => 'Reboot Required';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Unexpected Action';

  @override
  String get tpmActionErrorKindMissingArgument => 'Missing Argument';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Invalid Argument';

  @override
  String get tpmActionErrorKindActionFailed => 'Action Failed';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'The current environment is a virtual machine.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'This computer is using older firmware (legacy BIOS) that is not compatible with this encryption method.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'There is an issue with this computer\'s firmware settings.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'This computer does not have the required security hardware (TPM 2.0) for this encryption method.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'This computer\'s TPM is disabled.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'This computer\'s TPM is already in use by another system or application.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'This computer\'s TPM is currently locked.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'This computer\'s TPM does not have enough storage available.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'This computer is not compatible with hardware-backed encryption.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI debugging is enabled';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'This computer is missing a required security feature (DMA protection).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'This computer is missing a required security feature (kernel IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'There is an issue with this computer\'s security settings.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'There is software running at startup that may prevent a secure connection with the computer\'s TPM.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Absolute Persistence Module is enabled in this computer.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Secure boot is disabled in this computer or is not configured in \"deployed\" mode.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Some of the certificates verifying components in this computer are outdated or use weak protection.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'This computer is using a manual allowlist to verify software at startup.';

  @override
  String get tpmActionErrorKindAddonDriversPresent => 'Addon Drivers Present';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'There is an issue with this computer\'s TPM.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'There is an issue with this computer\'s firmware.';

  @override
  String get tpmActionFixActionReboot => 'Restart';

  @override
  String get tpmActionFixActionShutdown => 'Power off';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Restart to firmware settings';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Enable secure boot manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Enable DMA protection manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Enable PCR banks manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Enable TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Clear TPM manually';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Disable Absolute Persistence Module manually';

  @override
  String get tpmActionFixActionContactOem => 'Contact OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Contact OS Vendor';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware => 'Enable TPM on restart';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Enable and clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Clear TPM on restart';

  @override
  String get tpmActionFixActionClearTpm => 'Clear TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignore';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Restart the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Restarting the computer may fix the issue.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Power off the computer to complete previous actions.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'You can do this in you computer\'s firmware settings.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'You may be able to do this in you computer\'s firmware settings. Check the documentation of the CPU vendor for guidance.';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Ignoring the issue may result in a less secure installation.';

  @override
  String get tpmActionRestartLabel => 'Restart';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Restart and enable TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Restart and clear TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignore and continue';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Clearing the TPM erases all encryption keys';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'You will lose access to all data in encrypted drives for which you do not have recovery keys. It will also break other features that depend on the TPM, such as authentication and certificates.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'I understand the consequences of clearing the TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'You may be asked to confirm this action on restart.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'You will then have to retry installation from scratch.';

  @override
  String get tpmActionErrorTitle => 'This solution failed';

  @override
  String get tpmActionErrorDescription =>
      'Try a different solution or contact IT support';

  @override
  String get manualPartitioningWarningBody =>
      'Try something else. You may also <a href=\"\">send an error report</a>.';
}
