// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class UbuntuBootstrapLocalizationsEu extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appTitle => 'Mahaigainerako Ubunturen instalatzailea';

  @override
  String windowTitle(String RELEASE) {
    return 'Instalatu $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Instalazio automatizatua';

  @override
  String get autoinstallDirectHeader => 'Inportatu autoinstall fitxategia';

  @override
  String get autoinstallDirectUrlLabel =>
      'Autoinstall fitxategi baten URLa sar dezakezu:';

  @override
  String get autoinstallDirectFileLabel => 'Edo fitxategi lokal bat hautatu:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Hautatu fitxategia...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Kendu fitxategia';

  @override
  String get autoinstallDirectFilePickerTitle => 'Aukeratu fitxategia';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML fitxategiak';

  @override
  String get autoinstallDirectImportButtonLabel => 'Inportatu';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Ezin izan da autoinstall fitxategia eskuratu';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Egiaztatu URLa zuzena dela, probatu Interneterako konexioa, edo saiatu geroago.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'URL baliogabea';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Egiaztatu URLa zuzena dela edo hautatu fitxategi lokal bat.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Autoinstall fitxategi baliogabea';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Egiaztatu fitxategia egokia dela, edo aukeratu beste bat.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Autoinstall fitxategia ezin da irakurri';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Egiaztatu irakurtzeko baimenak dituzula, edo aukeratu beste fitxategi bat.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Errore ezezaguna';

  @override
  String get autoinstallTitle => 'Instalazio mota';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Nola instalatu nahi duzu $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'Sartu autoinstall.yaml fitxategiaren URLa edo bide-izen lokala:';

  @override
  String get autoinstallInteractiveOption => 'Instalazio interaktiboa';

  @override
  String get autoinstallInteractiveDescription =>
      'Instalazioa urratsez urrats gidatuta egin nahi duten erabiltzaileentzat.';

  @override
  String get autoinstallDirectOption =>
      'Automatizatua, autoinstall fitxategi batekin';

  @override
  String get autoinstallDirectDescription =>
      'Erabiltzaile aurreratuentzat, autoinstall.yaml fitxategi batean zehaztutako konfigurazio sistematiko errepikakorrekin.';

  @override
  String get autoinstallLandscapeOption => 'Automatizatua, Landscape erabilita';

  @override
  String get autoinstallLandscapeDescription =>
      'Landscape bidezko autoinstall fitxategi bat darabilten erakundeetako erabiltzaileentzat.';

  @override
  String get autoinstallErrorMessage =>
      'Autoinstall fitxategiko komando batek huts egin du instalatu bitartean.';

  @override
  String get autoinstallErrorInstructions =>
      'Instalazioa berrabiarazi beharko duzu. Egiaztatu autoinstall fitxategia ondo dagoela, aukeratu beste instalazio mota bat, edo jarri zure IT laguntza zerbitzuarekin harremanetan.';

  @override
  String get changeButtonText => 'Aldatu';

  @override
  String get quitButtonText => 'Irten instalaziotik';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Ongi etorri ${DISTRO}ra';
  }

  @override
  String loadingHeader(String DISTRO) {
    return '$DISTRO prestatzen…';
  }

  @override
  String get warningLabel => 'Abisua:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Probatu edo instalatu $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Zer egin nahi duzu ${DISTRO}rekin?';
  }

  @override
  String get tryOrInstallRepairOption => 'Konpondu instalazioa';

  @override
  String get tryOrInstallRepairDescription =>
      'Konponketak instalatutako software guztia berrinstalatuko du, dokumentuak edo ezarpenak ukitu gabe.';

  @override
  String tryOption(String RELEASE) {
    return '$RELEASE probatu';
  }

  @override
  String tryDescription(String RELEASE) {
    return '$RELEASE proba dezakezu ordenagailuan aldaketarik egin gabe.';
  }

  @override
  String installOption(String RELEASE) {
    return '$RELEASE instalatu';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Instalatu $RELEASE uneko sistema eragilearekin batera (edo haren ordez). Ez luke denbora asko beharko.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Agian <a href=\"$url\">bertsio-oharrak</a> irakurri nahiko dituzu.';
  }

  @override
  String get rstTitle => 'RST antzeman da';

  @override
  String get rstHeader =>
      'RST ezgaitu behar duzu instalazioarekin aurrera egiteko';

  @override
  String get rstDisable =>
      'Ordenagailuak Intel RST (Rapid Storage Technology) darabil. Hemen ezgaitu dezakezu RST:';

  @override
  String get rstDisableWindows =>
      'Windowsen, abio bikoitza eta Windows instalatuta baduzu ordenagailuan';

  @override
  String get rstDisableBios => 'BIOSaren ezarpenetan';

  @override
  String rstInstructions(String url) {
    return 'Argibideetarako, eskaneatu QR kodea beste gailu batekin edo bisitatu: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Konfiguratu abio segurua';

  @override
  String get configureSecureBootDescription =>
      'Hirugarrenen kontrolatzaileak instalatzea aukeratu duzu. Hau egiteko abio segurua itzali beharra dago.\nHorretarako, orain segurtasun gako bat aukeratu behar duzu orain, eta sistema berrabiaraztean berau sartu.';

  @override
  String get configureSecureBootOption => 'Konfiguratu abio segurua';

  @override
  String get chooseSecurityKey => 'Aukeratu segurtasun gako bat';

  @override
  String get confirmSecurityKey => 'Berretsi segurtasun gakoa';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Ez instalatu kontrolatzaileak oraingoz';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Geroago instala ditzakezu Softwarea eta eguneraketak aplikaziotik.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Segurtasun gakoa beharrezkoa da';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Segurtasun gakoak ez datoz bat';

  @override
  String get showSecurityKey => 'Erakutsi';

  @override
  String get hideSecurityKey => 'Ezkutatu';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplikazioak';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Zer aplikazio instalatu nahi zenituzke hasteko?';

  @override
  String get codecsAndDriversPageTitle => 'Optimizatu ordenagailua';

  @override
  String get codecsAndDriversPageDescription =>
      'Software pribatibo gomendatua instalatu?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '${DISTRO}k ez dakar software pribatiborik defektuz. Software gehigarri hau instalatuz baliteke ordenagailuaren errendimendua hobetzea.';
  }

  @override
  String get codecsAndDriversNvidiaNote =>
      'NVIDIA txartel grafikoa antzeman da';

  @override
  String get codecsAndDriversNvidiaBody =>
      'NVIDIA txartel grafikoen errendimendu onena ziurtatzeko, biziki gomendatzen da kontrolatzaile gehigarriak instalatzea.';

  @override
  String get fullInstallationTitle => 'Aukera zabala';

  @override
  String get fullInstallationSubtitle =>
      'Konexiorik gabe lan egin ahal izateko bulegotika, tresnak eta web nabigatzailea.';

  @override
  String get minimalInstallationTitle => 'Oinarrizko aukera';

  @override
  String get minimalInstallationSubtitle =>
      'Behar-beharrezko aplikazioak soilik, web nabigatzailea eta oinarrizko tresnak.';

  @override
  String get otherOptions => 'Beste aukera batzuk';

  @override
  String get installThirdPartyTitle =>
      'Instalatu hirugarrenen softwarea grafikoen eta Wi-Fiaren hardwarearentzako, eta baita multimedia formatu gehigarrientzako euskarria ere';

  @override
  String get installThirdPartySubtitle =>
      'Software hau dokumentazioan datorren lizentziaren baldintzei lotua dago. Lizentzia batzuk pribatiboak dira.';

  @override
  String get installDriversTitle =>
      'Instalatu hirugarrenen softwarea grafikoen eta Wi-Fiaren hardwarearentzako';

  @override
  String get installDriversSubtitle =>
      'Barnean daude, besteak beste, NVIDIA eta antzeko kontrolagailuak';

  @override
  String get installCodecsTitle =>
      'Deskargatu eta instalatu multimedia formatu gehigarrientzako euskarria';

  @override
  String get installCodecsSubtitle =>
      'Barnean daude, besteak beste, MP3, MP4, MOV eta antzekoak';

  @override
  String get batteryWarning => 'Ordenagailua ez dago argindarrera konektatua.';

  @override
  String get offlineWarning => 'Une honetan ez zaude konektaturik';

  @override
  String get choosePassphraseHeader => 'Sortu pasaesaldia';

  @override
  String get choosePassphraseBody =>
      'Ordenagailua pizten duzunero pasaesaldia sartu beharko duzu. Pasaesaldi hau ez da erabiltzailearen pasahitza.';

  @override
  String get choosePassphraseInfoHeader =>
      'Ez ahaztu pasaesaldia leku seguruan gordetzea';

  @override
  String get choosePassphraseInfoBody =>
      'Galtzen baduzu, zure datu guztiak galduko dituzu.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Gorde pasaesaldia eta berreskuratze gakoa leku seguruan';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Pasaesaldia galtzen baduzu, zure datu guztiak galduko dituzu. Pasaesaldiak ez du berreskuratze gakoa edo erabiltzaile-pasahitza ordezkatzen.';

  @override
  String get passphrasePageTitle => 'Zifratzea';

  @override
  String get passphrasePageHeaderPassphrase => 'Ezarri zifratzeko pasaesaldia';

  @override
  String get passphrasePageHeaderPin => 'Ezarri zifratzeko PINa';

  @override
  String get passphrasePageBodyPassphrase =>
      'Pasaesaldia sartu beharko duzu ordenagailua pizten duzun aldiro. Pasaesaldi hau ez da erabiltzaile-pasahitza. Geroago aldatu ahalko duzu, baina ezingo duzu inoiz ezgaitu. Pasaesaldia ahazten bazaizu, berriro diskoa atzitu ahal izateko berreskuratze gakoa erabili beharko duzu.';

  @override
  String get passphrasePageBodyPin =>
      'PINa sartu beharko duzu ordenagailua pizten duzun aldiro. PIN hau ez da erabiltzaile-pasahitza. Geroago aldatu ahalko duzu, baina ezingo duzu inoiz ezgaitu. PINa ahazten bazaizu, berriro diskoa atzitu ahal izateko berreskuratze gakoa erabili beharko duzu.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Pasaesaldia';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Berretsi pasaesaldia';

  @override
  String get passphrasePageRequiredPassphrase => 'Pasaesaldia beharrezkoa da';

  @override
  String get passphrasePageMismatchPassphrase => 'Pasaesaldiak ez datoz bat';

  @override
  String get passphrasePageChoosePinHint => 'PINa';

  @override
  String get passphrasePageConfirmPinHint => 'Berretsi PINa';

  @override
  String get passphrasePageRequiredPin => 'PINa beharrezkoa da';

  @override
  String get passphrasePageMismatchPin => 'PINak ez datoz bat';

  @override
  String get passphraseTypePassphraseTileTitle => 'Eskatu pasaesaldia';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Seguruena. Pasaesaldi luzeago bat sartu beharko duzu ordenagailua pizten duzun aldiro.';

  @override
  String get passphraseTypePinTileTitle => 'Eskatu PINa';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Seguruagoa. Zenbakizko PIN bat sartu beharko duzu ordenagailua pizten duzun aldiro.';

  @override
  String get passphraseTypeNoneTileTitle => 'Desblokeatu diskoa automatikoki';

  @override
  String get passphraseTypePageHeader => 'Segurtasun gehigarria';

  @override
  String get passphraseTypePageBody =>
      'Defektuz, ordenagailuaren konfiantzazko plataforma moduluak (TPM) diskoa desblokeatuko du abioan. Zure datuak are hobeto babesteko aukerak ere badituzu.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Pasaesaldi ahula, egizu luzeagoa edo konplexuagoa';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Baleko pasaesaldia, egizu luzeagoa edo konplexuagoa segurtasuna areagotzeko';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Pasaesaldi sendoa';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'PIN ahula, egizu luzeagoa edo asmatzeko zailagoa';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Baleko PINa, egizu luzeagoa edo asmatzeko zailagoa segurtasuna areagotzeko';

  @override
  String get passphrasePagePinEntropyOptimal => 'Luzera egokiko PINa';

  @override
  String get installationTypeTitle => 'Diskoaren konfigurazioa';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Nola instalatu nahi duzu $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Ordenagailuak une honetan $os dauka instalaturik. Zer egin nahi duzu?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Ordenagailuak une honetan $os1 eta $os2 ditu instalaturik. Zer egin nahi duzu?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Ordenagailuak une honetan hainbat sistema eragile ditu instalaturik. Zer egin nahi duzu?';

  @override
  String get installationTypeNoOSDetected =>
      'Ordenagailuan ez da antzeman instalatutako sistema eragilerik. Zer egin nahi duzu?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Ezabatu diskoa eta instalatu $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Diskoko datu eta partizio guztiak ezabatuko dira, sistema eragileak barne.';

  @override
  String get installationTypeAdvancedLabel => 'Aukera aurreratuak';

  @override
  String get installationTypeAdvancedTitle => 'Zifratzea eta fitxategi-sistema';

  @override
  String get installationTypeExperimental => 'Esperimentala';

  @override
  String get installationTypeNone => 'Zifratzerik ez';

  @override
  String get installationTypeNoneInfo =>
      'Fitxategi-sistema estandarra, zifratze gabe.';

  @override
  String get installationTypeNoneSelected => 'Ez da bat ere hautatu';

  @override
  String get installationTypeLVM => 'Erabili LVM zifratze gabe';

  @override
  String get installationTypeLVMSelected => 'LVM hautatuta';

  @override
  String get installationTypeLVMEncryption => 'Zifratzea pasaesaldiarekin';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'Pasaesaldia sartu beharko duzu ordenagailua pizten duzunero. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'Honek LVM darabil LUKS zifratzearekin.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'LVM eta zifratzea hautatuta';

  @override
  String get installationTypeEncryptInfo =>
      'Hurrengo urratsean aukeratuko duzu segurtasun gakoa.';

  @override
  String get installationTypeZFS => 'Erabili ZFS zifratze gabe';

  @override
  String get installationTypeZFSEncryption =>
      'Zifratu pasaesaldiarekin, ZFS erabiliz';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Zifratze natiboa ZFSrekin. Pasaesaldia sartu beharko duzu ordenagailua pizten duzun aldiro.';

  @override
  String get installationTypeZFSSelected => 'ZFS hautatuta';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ZFS eta zifratzea hautatuta';

  @override
  String get installationTypeTPM => 'Erabili hardware bidezko zifratzea';

  @override
  String get installationTypeTPMInfoResolute =>
      'Diskoa automatikoki desblokeatuko da abioan.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Ez dago erabilgarri ordenagailu honetan.';

  @override
  String get installationTypeTPMSelected => 'TPM hautatuta';

  @override
  String installationTypeReinstall(String os) {
    return 'Ezabatu $os eta berrinstalatu';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Abisua:</font> Honek $os(e)ko programa guztiak, dokumentuak, argazkiak, musika eta beste edozein fitxategi ezabatuko ditu.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Instalatu $product, $os(r)ekin batera';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Instalatu $product, $os1 eta $os2(r)ekin batera';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Instalatu $product existitzen diren beste sistema eragileekin batera';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Instalatu $product beste partizioekin batera';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Hautatu tamainaz aldatu beharreko partizioa, horrela ${product}entzako lekua egiteko. Abioan sistema eragilea aukeratu ahalko duzu.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Ezabatu $os eta instalatu $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Existitzen den $os instalazioko fitxategi eta datu guztiak betiko ezabatuko dira.';
  }

  @override
  String get installationTypeManual => 'Eskuzko instalazioa';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Disko konfigurazio pertsonalizatua erabili nahi duten erabiltzaile aurreratuentzako.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Ezabatu diskoa eta instalatu $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Hasi zerotik hautatutako diskoan.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Hautatu unitatea:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Hautatu partizioa:';

  @override
  String get selectGuidedStorageInfoLabel => 'Disko osoa erabiliko da:';

  @override
  String get selectGuidedStorageInstallNow => 'Instalatu orain';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Aukeratu $DISTRO non instalatu';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Esleitu lekua unitatean azpiko banalerroa arrastatuz:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num partizio txikiago ezkutaturik daude, erabili <a href=\"$url\">partizio tresna aurreratua</a> kontrol gehiago izateko';
  }

  @override
  String get installAlongsideResizePartition => 'Aldatu partizioaren tamaina';

  @override
  String get installAlongsideAllocateSpace => 'Esleitu lekua';

  @override
  String get installAlongsideFiles => 'Fitxategiak';

  @override
  String get installAlongsidePartition => 'Partizioa:';

  @override
  String get installAlongsideSize => 'Tamaina:';

  @override
  String get installAlongsideAvailable => 'Erabilgarri:';

  @override
  String get allocateDiskSpace => 'Eskuzko partitzea';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Muntatze-puntuek \"/\" izan behar dute hasieran';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Muntatze-puntuek ezin dute zuriunerik izan';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format fitxategi-sistema ez dago onartuta $mountpoint puntuarentzat';
  }

  @override
  String get diskHeadersDevice => 'Gailua';

  @override
  String get diskHeadersType => 'Mota';

  @override
  String get diskHeadersMountPoint => 'Muntatze-puntua';

  @override
  String get diskHeadersSize => 'Tamaina';

  @override
  String get diskHeadersUsed => 'Erabilita';

  @override
  String get diskHeadersSystem => 'Sistema';

  @override
  String get diskHeadersFormat => 'Formatua';

  @override
  String get freeDiskSpace => 'Leku librea';

  @override
  String get newPartitionTable => 'Partizio-taula berria';

  @override
  String get newPartitionTableConfirmationTitle => 'Partizio huts berria';

  @override
  String get newPartitionTableConfirmationMessage =>
      'Gailu osoan partizio-taula berria sortuz gero, une honetan bertan dauden partizio guztiak ezabatuko dira. Eragiketa hau desegin daiteke, beharrezkoa bada.';

  @override
  String get tooManyPrimaryPartitions => 'Partizio primario gehiegi';

  @override
  String get partitionLimitReached => 'Mugara iritsi da';

  @override
  String get bootLoaderDevice => 'Abio kargatzailea instalatzeko gailua';

  @override
  String get partitionCreateTitle => 'Sortu partizioa';

  @override
  String get partitionEditTitle => 'Editatu partizioa';

  @override
  String get partitionSizeLabel => 'Tamaina:';

  @override
  String get partitionTypeLabel => 'Partizio berriaren mota:';

  @override
  String get partitionTypePrimary => 'Primarioa';

  @override
  String get partitionTypeLogical => 'Logikoa';

  @override
  String get partitionLocationLabel => 'Partizio berriaren kokalekua:';

  @override
  String get partitionLocationBeginning => 'Tarte honen hasieran';

  @override
  String get partitionLocationEnd => 'Tarte honen amaieran';

  @override
  String get partitionFormatLabel => 'Erabilera:';

  @override
  String get partitionFormatNone => 'Utzi formateatu gabe';

  @override
  String partitionFormatKeep(String format) {
    return 'Utzi $format gisa formateatuta';
  }

  @override
  String get partitionErase => 'Formateatu partizioa';

  @override
  String get partitionMountPointLabel => 'Muntatze-puntua:';

  @override
  String get confirmPageTitle => 'Instalatzeko prest';

  @override
  String get confirmHeader => 'Berrikusi zure aukeraketa';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Bat ere ez';

  @override
  String get confirmDevicesTitle => 'Gailuak';

  @override
  String get confirmEntryApplications => 'Aplikazioak';

  @override
  String get confirmEntryDiskSetup => 'Instalazio mota';

  @override
  String get confirmEntryDiskEncryption => 'Diskoaren zifratzea';

  @override
  String get confirmEntryInstallationDisk => 'Instalazio-diskoa';

  @override
  String get confirmEntryProprietarySoftware => 'Software pribatiboa';

  @override
  String get confirmSectionGeneralTitle => 'Orokorra';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Segurtasuna eta gehiago';

  @override
  String get confirmPartitionsTitle => 'Partizioak';

  @override
  String get confirmPartitionTables =>
      'Gailu hauetako partizio-taulak aldatu egin dira:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodekak';

  @override
  String get confirmProprietarySoftwareCodecsDrivers =>
      'Kodekak eta kontrolatzaileak';

  @override
  String get confirmProprietarySoftwareDrivers => 'Kontrolatzaileak';

  @override
  String get confirmInstallButton => 'Instalatu';

  @override
  String get confirmTableErased => 'Ezabatua';

  @override
  String get confirmTableUnchanged => 'Aldatu gabe';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Tamainaz aldatua (lehen: $oldsize / orain: $newsize)';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Sortua eta $format gisa formateatua. Erabilera: $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return '$format gisa formateatua. Erabilera: $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Erabilera: $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return '$format gisa formateatua';
  }

  @override
  String get installationCompleteTitle => 'Instalazioa osatu da';

  @override
  String readyToUse(String system) {
    return '$system instalatu da eta erabiltzeko prest dago';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** diskora kopiatu da';
  }

  @override
  String restartInto(String system) {
    return 'Berrabiarazi ${system}ra';
  }

  @override
  String get restartWarningBody =>
      'Berrabiarazi instalazioa osatzeko edo jarraitu probatzen.\nEgiten dituzun aldaketak ez dira gordeko.';

  @override
  String get rebootToConfigureWarning =>
      'Instalazio prozesuarekin jarraitzeko ordenagailua berrabiarazi behar duzu.';

  @override
  String get shutdown => 'Itzali';

  @override
  String get restartNow => 'Berrabiarazi orain';

  @override
  String get continueTesting => 'Jarraitu probatzen';

  @override
  String get bitlockerInfoTitle => 'BitLocker antzeman da';

  @override
  String get bitlockerInfoDescription =>
      'Partizio bat edo gehiago BitLocker erabiliz zifratu dira.';

  @override
  String get bitlockerInfoDisable =>
      'Windowsekin batera instalatzeko, ezgaitu BitLocker Windowsen.';

  @override
  String get bitlockerInfoRecovery =>
      'Baliteke Windowsek berreskuratze gakoak eskatzea instalazio ondoren abiaraztean.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Jarraibideetarako, bisitatu <a href=\"$url\">BitLocker-en gida</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Datu guztiak gal ditzakezu BitLocker-en berreskuratze gakorik gabe';

  @override
  String get restartComputer => 'Berrabiarazi ordenagailua';

  @override
  String get restartComputerTitle => 'Ordenagailua berrabiarazi?';

  @override
  String get restartInstaller => 'Berrabiarazi instalazioa';

  @override
  String get restartIntoWindows => 'Berrabiarazi Windowsera';

  @override
  String get restartIntoWindowsTitle => 'Windowsera berrabiarazi?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Ziur ordenagailua berrabiarazi nahi duzula? Geroago ${DISTRO}ren instalazioa berrekin beharko duzu, $DISTRO instalatzen amaitzeko.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Ongi etorri ${RELEASE}ra';
  }

  @override
  String get installationSlidesAvailable => 'Erabilgarri:';

  @override
  String get installationSlidesIncluded => 'Hau barne:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Bizkorra, librea eta eginbidez betea';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return '${DISTRO}ren azken bertsioak ordenagailuan aritzea inoiz baino errazago egiten du.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Garatzailea, sortzailea, bideojokozalea nahiz administratzailea izan, ${RELEASE}n produktibitatea handitzeko eta zure bizipena hobetzeko tresna berriak aurkituko dituzu.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Behar dituzun aplikazio guztiak';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Instalatu, kudeatu eta eguneratu zure aplikazio guztiak Ubuntu Softwarearekin, Snap biltegiko eta ${DISTRO}ren artxiboko milaka aplikazio barne.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Garatu kode irekirik onenarekin';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO lan-estazio paregabea da aplikazio edo web garapenerako, datuen zientziarako eta adimen artifizialerako (AA) / ikasketa automatikorako, hala nola devops eta administraziorako. ${DISTRO}ren bertsio bakoitzak azkeneko tresna-kateak ditu barnean, eta IDE nagusiekin bateragarria da.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Areagotu zure sormena';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Animatzailea, diseinatzailea, bideo-sortzailea edo bideojoko garatzailea bazara, erraz ekar ditzakezu zure lan-fluxuak ${DISTRO}ra, kode irekiko eta industriako software eta aplikazio estandarrei esker.';
  }

  @override
  String get installationSlidesGamingTitle => 'Jokatzeko aparta';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '${DISTRO}k azken NVIDIA eta Mesa kontrolatzaileen euskarria dauka errendimendua eta bateragarritasuna hobetzeko. Milaka Windowseko tituluk arazorik gabe funtzionatzen dute ${DISTRO}n Steam bezalako aplikazioen bitartez eta konfigurazio gehigarririk gabe.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Pribatua eta segurua';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '${DISTRO}k linean pribatutasuna eta segurtasuna mantentzeko behar dituzun tresna guztiak eskaintzen dizkizu. Integratutako suebaki eta VPN euskarriarekin, eta pribatutasunean oinarritutako aplikazio piloarekin, zure datuen erabateko kontrola zeure esku duzu.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return '${DISTRO}ren LTS bertsio guztiek bost urterako segurtasun adabakiak barne dituztela argitaratzen dira, Ubuntu Pro harpidetzaren bidez hamar urtera luza daitekeelarik tartea.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'Indartu zure produktibitatea';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return 'Mahaigainerako ${DISTRO}k LibreOffice dakar berekin: dokumentuak, kalkulu-orriak eta aurkezpenak kudeatzeko Microsoft Officerekin bateragarria den aplikazio sorta. Lankidetza tresna ezagunenak ere erabilgarri dituzu.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Erabilerraza denontzat';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return '${DISTRO}ren filosofiaren erroan informatika denontzako den sinesmena dago. Erabilerraztasun tresna aurreratuekin eta hizkuntza, koloreak eta testuen tamaina aldatzeko aukerarekin, ${DISTRO}k informatika erraz bilakatzen du - edonor zarela eta edonon zaudela ere.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca pantaila-irakurlea';

  @override
  String get installationSlidesAccessibilityLanguages => 'Hizkuntza-sostengua';

  @override
  String get installationSlidesSupportTitle => 'Laguntza eta sostengua';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return '${DISTRO}ren dokumentazio ofiziala eskuragarri dago bai online, bai atrakeko Laguntza ikonoaren bitartez.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntuk galdera-erantzun sorta zabala dauka, eta Ubuntu Discoursek erabiltzaile hasiberri zein esperientziadunentzako gidak eta eztabaidak eskaintzen ditu.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Enpresako erabiltzaileentzat, Canonicalek euskarri komertziala eskaintzen du lan-eremuan Ubuntu era seguruan erraz instalatu eta kudeatzeko.';

  @override
  String get installationSlidesSupportResources => 'Baliabide lagungarriak:';

  @override
  String get installationSlidesSupportDocumentation => 'Dokumentazio ofiziala';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Enpresa mailako 24/7 euskarria Ubuntu Pro-rekin';

  @override
  String get nextSlideSemanticLabel => 'Hurrengo diapositiba';

  @override
  String get previousSlideSemanticLabel => 'Aurreko diapositiba';

  @override
  String get playSlideshowSemanticLabel => 'Erreproduzitu diapositibak';

  @override
  String get pauseSlideshowSemanticLabel => 'Pausatu diapositibak';

  @override
  String get toggleLogsSemanticLabel => 'Erakutsi / ezkutatu erregistroak';

  @override
  String get copyingFiles => 'Fitxategiak kopiatzen…';

  @override
  String get installingSystem => 'Sistema instalatzen…';

  @override
  String get configuringSystem => 'Sistema konfiguratzen…';

  @override
  String get installationFailed => 'Instalazioak huts egin du';

  @override
  String get notEnoughDiskSpaceTitle => 'Ez dago behar beste leku diskoan';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Diskoan ez dago $DISTRO instalatzeko behar beste leku';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Hautatutako diskoak ez dauka $DISTRO instalatzeko behar beste leku. Irten instalatzailetik diskoan lekua egiteko, edo hautatu beste disko bat.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Erabilgarri:';

  @override
  String get notEnoughDiskSpaceRequired => 'Beharrezko:';

  @override
  String get refreshPageTitle => 'Eguneratzea eskuragarri';

  @override
  String get refreshHeader =>
      'Instalatzailearentzako eguneratze bat eskuragarri dago';

  @override
  String get refreshUpdateNow => 'Eguneratu orain';

  @override
  String get refreshInfo =>
      'Eguneratu azken bertsiora fidagarritasun handiagorako eta eginbide gehiago lortzeko.';

  @override
  String get refreshReady => 'Eguneratzea prest';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Uneko $snap bertsioa honakoa da: $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Eguneratu $version bertsiora';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Uneko bertsioa ($version) egunean dago.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap eguneratzen...';
  }

  @override
  String get refreshRestart =>
      'Jarraitzeko, itxi instalatzailea eta abiarazi berriro';

  @override
  String get refreshCloseLabel => 'Itxi instalatzailea';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '$snap(r)en eskakizunak egiaztatzen...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap berritzen...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return '$snap(r)en berritzea aztertzen...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap prestatzen...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap deskargatzen...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap balioztatzen...';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap muntatzen...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap zerbitzuak geldiarazten...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap aliasak ezabatzen...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '$snap desestekatzen...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '$snap baliabideak eguneratzen...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return '$snap kernelaren komando-lerroa eguneratzen...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap(r)en datuak kopiatzen...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return '$snap(r)en segurtasun-profilak konfiguratzen...';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap estekatzen...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return '$snap(r)en larakoak (plug) eta artekak (slot) konektatzen...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return '$snap(r)en alias automatikoak ezartzen...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return '$snap(r)en aliasak konfiguratzen...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '$snap(r)en zerbitzuak abiarazten...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap garbitzen...';
  }

  @override
  String get recoveryKeyTitle => 'Berreskuratze gakoa';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Garrantzitsua';

  @override
  String get recoveryKeyHeader => 'Gorde berreskuratze gakoa';

  @override
  String get recoveryKeyInfoHeader =>
      'Zure datu guztiak gal ditzakezu berreskuratze gakorik ez baduzu';

  @override
  String get recoveryKeyTextFieldLabel => 'Berreskuratze gakoa';

  @override
  String get recoveryKeyStorageAdvice =>
      'Abioan datuak deszifratzeak huts egiten badu, berreskuratze gakoa sartu beharko duzu. Gako hau gabe, zure datu guztietara sarbidea galduko duzu. Gorde ezazu leku seguruan, adibidez pasahitz-kudeatzaile batean.';

  @override
  String get recoveryKeyConfirmation =>
      'Berreskuratze gakoa leku seguruan gorde dut';

  @override
  String get recoveryKeyLinkLabel => 'Ikasi gehiago';

  @override
  String get recoveryKeySaveToFileLabel => 'Gorde fitxategian';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Erakutsi QR kodea';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Mahaigaina - Berreskuratze gakoa';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Eskaneatu QR kodea berreskuratze gakoa kopiatzeko eta leku seguruan gordetzeko, adibidez pasahitz-kudeatzaile batean. Geroago erabiltzeko argazki bat ere atera dezakezu.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Arbelera kopiatu da';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Berreskuratze gakoaren fitxategia ez da gorde';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Berreskuratze gakoaren fitxategia ezin izan da gorde aldi baterako kokalekuan';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Errore ezezaguna';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Ez duzu karpeta horretan idazteko baimenik. Saiatu beste kokaleku batean edo erabili bestelako metodo bat.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Saiatu beste kokaleku batekin, esaterako unitate aldagarri bat, edo erabili bestelako metodo bat.';

  @override
  String get recoveryKeyFilePickerTitle =>
      'Gorde berreskuratze gakoaren fitxategia';

  @override
  String get recoveryKeyFilePickerFilter => 'Testu-fitxategiak';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Eskaneatu QR kodea edo sartu azpiko kodea hemen: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Instalazio automatizatua';

  @override
  String get landscapeHeader => 'Hasi saioa Landscapen';

  @override
  String get landscapeDomainHeader => 'Sartu Landscapeko domeinua (FQDN)';

  @override
  String get landscapeDomainHintText => 'Landscapeko domeinua (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Sartu zure erakundearen Landscape domeinua saioa hasteko eta autoinstall fitxategi bat eskuratzeko. FQDNa zure IT laguntza zerbitzuak eman diezazuke.';

  @override
  String get landscapeDomainTextField => 'Landscape domeinua (FQDN)';

  @override
  String get next => 'Hurrengoa';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Domeinu baliogabea, egiaztatu ondo dagoela edo galdetu zure IT laguntza zerbitzuari';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Konektatu Internetera jarraitzeko';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internet beharrezkoa da Landscapetik autoinstall fitxategia eskuratzeko';

  @override
  String get landscapeCodeExpiredWarning => 'Kodea iraungi da, saiatu berriz';

  @override
  String get landscapeLoginFailedWarning =>
      'Saio hasierak huts egin du, saiatu berriz';

  @override
  String get landscapeErrorPageTitle =>
      'Instalazio automatizatua ez dago zure konturako erabilgarri';

  @override
  String get landscapeErrorPageBody =>
      'Jarri zure IT laguntza zerbitzuarekin harremanetan edo saiatu beste instalazio aukera batekin.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Errore kodea: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu zure erakundeak hornitutako konfigurazioarekin instalatuko da';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Jarraian Landscapetik inportatutako autoinstall fitxategia berrikus dezakezu.';

  @override
  String get successIconSemanticLabel => 'Dena ondo joan da';

  @override
  String get errorIconSemanticLabel => 'Errorea';

  @override
  String get closeIconSemanticLabel => 'Itxi';

  @override
  String get maximizeIconSemanticLabel => 'Maximizatu';

  @override
  String get minimizeIconSemanticLabel => 'Txikitu';

  @override
  String get tpmActionPageTitle =>
      'Ezin izan da hardware bidezko zifratzea gaitu';

  @override
  String get tpmActionBadgeLabel => 'Ekintza beharrezkoa da';

  @override
  String get tpmActionDetailsLabel => 'Xehetasun teknikoak';

  @override
  String get tpmActionConfirmLabel => 'Berretsi';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return '$n. soluzioa: $text';
  }

  @override
  String tpmActionSingleSolutionLabel(String text) {
    return 'Soluzioa: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel =>
      'Informazio gehiago hardware bidezko zifratzeari buruz';

  @override
  String get tpmActionErrorSupportLabel =>
      'Saiatu jarraian azaldutako soluzioekin, jarri laguntza informatiko zerbitzuarekin harremanetan, edo aukeratu beste zifratze metodo bat.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Probatu ondorengo soluzioa, jarri harremanetan IT laguntza-zerbitzuarekin, edo aukeratu beste zifratze metodo bat.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Jarri laguntza informatiko zerbitzuarekin harremanetan, edo aukeratu beste zifratze metodo bat.';

  @override
  String get tpmActionErrorKindInternal => 'Barne errorea.';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Itzaltzea beharrezkoa da.';

  @override
  String get tpmActionErrorKindRebootRequired =>
      'Berrabiaraztea beharrezkoa da.';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Ekintza esperogabea.';

  @override
  String get tpmActionErrorKindMissingArgument => 'Argumentua faltan.';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Okerreko argumentua.';

  @override
  String get tpmActionErrorKindActionFailed => 'Ekintzak huts egin du.';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'Uneko ingurunea ez da makina birtual bat.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'Ordenagailu honek firmware zaharrago bat darabil (BIOS legatua), zifratze metodo honekin bateragarria ez dena.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'Arazo bat dago ordenagailu honen firmwarearekin.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'Ordenagailuak ez dauka zifratze metodo honentzako beharrezko segurtasun hardwarerik (TPM 2.0).';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'Ordenagailu honen TPMa ezgaitua dago.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'Ordenagailu honen TPMa dagoeneko beste sistema edo aplikazio baten erabiltzen du.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'Ordenagailu honen TPMa une honetan blokeatua dago.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'Ordenagailu honen TPMak ez dauka behar beste leku libre.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'Ordenagailua ez da hardware bidezko zifratzearekin bateragarria.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'UEFI arazketa gaitua dago.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'Ordenagailu honek beharrezko segurtasun eginbide bat (DMA babesa) falta du.';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'Ordenagailu honek beharrezko segurtasun eginbide bat (IOMMU) falta du.';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'Arazo bat dago ordenagailu honen segurtasun konfigurazioarekin.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Baliteke abioan exekutatzen ari den softwareak ordenagailuaren TPMarekin konexio segurua ezartzea eragoztea.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Iraunkortasun Absoluturako Modulua gaitua dago ordenagailu honetan.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Abio segurua ezgaitua dago ordenagailu honetan, edo ez dago deployed moduan ezarria.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Ordenagailu honetako softwarea egiaztatzen duten zenbait ziurtagiri zaharkituta daude, edo babes ahula daukate.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'Ordenagailu honek eskuzko baimen-zerrenda darabil abioko softwarea egiaztatzeko.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Unitate gehigarriak presente daude.';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'Arazo bat dago ordenagailu honen TPMarekin.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'Arazo bat dago ordenagailu honen firmwarearekin.';

  @override
  String get tpmActionFixActionReboot => 'Berrabiarazi';

  @override
  String get tpmActionFixActionShutdown => 'Itzali';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Berrabiarazi firmwarearen ezarpenetara';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'Firmware ezarpenak ez badira automatikoki kargatzen, berrabiarazi eta sakatu ezarpenen tekla behin eta berriro abioan (normalean F2, F10 edo Ezabatu).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'DMA babesa eskuz gaitu';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'TPMa eskuz garbitu';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Abio segurua eskuz gaitu';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'IOMMU eskuz gaitu';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'PCR bankuak eskuz gaitu';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'TPMa eskuz gaitu';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'TPMa eskuz garbitu';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'TPMa eskuz garbitu';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Ezgaitu Iraunkortasun Absoluturako Modulua eskuz';

  @override
  String get tpmActionFixActionContactOem => 'Kontaktatu OEMa';

  @override
  String get tpmActionFixActionContactOsVendor =>
      'Kontaktatu SEaren hornitzailea';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Gaitu TPMa berrabiaraztean';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Gaitu eta garbitu TPMa berrabiaraztean';

  @override
  String get tpmActionFixActionClearTpmViaFirmware =>
      'Garbitu TPMa berrabiaraztean';

  @override
  String get tpmActionFixActionClearTpm => 'Garbitu TPMa';

  @override
  String get tpmActionFixActionProceed => 'Ez ikusi egin';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Berrabiarazi ordenagailua aurreko ekintzak osatzeko.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Baliteke ordenagailua berrabiaraziz arazoa konpontzea.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Itzali ordenagailua aurreko ekintzak osatzeko.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'Hau ordenagailuaren firmware ezarpenetatik egin dezakezu.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'Baliteke hau ordenagailuaren firmware ezarpenetatik egin ahal izatea. Irakurri PUZ hornitzailearen dokumentazioa gida gisa.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Egiaztatu abio seguru modua \"deployed\" gisa ezarria dagoela.';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'Eginbide hau \"Birtualizatze teknologia (Virtualization Technology)\", \"VT-d\" edo \"AMD-Vi\" gisa aipatua ager daiteke.';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Arazo honi ez ikusi eginez gero, baliteke instalazioaren segurtasun gutxitzea.';

  @override
  String get tpmActionRestartLabel => 'Berrabiarazi';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Berrabiarazi eta gaitu TPMa';

  @override
  String get tpmActionRestartAndClearTpmLabel =>
      'Berrabiarazi eta garbitu TPMa';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ez ikusi egin eta jarraitu';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'TPMa garbituz gero, zifratze gako guztiak ezabatuko dira';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'Zifratutako unitateetako datu guztietara sarbidea galduko duzu hauentzako berreskuratze gakorik ez badaukazu. TPMaren menpe dauden beste eginbide batzuk ere hautsiko ditu, hala nola, autentikazioa eta ziurtagiriak.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'Ulertzen ditut TPMa garbitzeak dituen ondorioak';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'Baliteke berrabiaraztean ekintza hau berresteko eskatzea.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Orduan, instalazioa berriro hasi beharko duzu.';

  @override
  String get tpmActionErrorTitle => 'Soluzio honek huts egin du';

  @override
  String get tpmActionErrorDescription =>
      'Probatu beste soluzioren bat, edo jarri harremanetan IT laguntza zerbitzuarekin.';

  @override
  String get manualPartitioningWarningBody =>
      'Probatu beste zerbait. Horrez gain, <a href=\"\">errore-txosten bat bidal</a> dezakezu.';
}
