import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class UbuntuBootstrapLocalizationsHu extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Ubuntu asztali telepítő';

  @override
  String windowTitle(String RELEASE) {
    return 'A(z) $RELEASE telepítése';
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
  String get autoinstallDirectFilePickerTitle => 'Choose file';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML files';

  @override
  String get autoinstallDirectImportButtonLabel => 'Import';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Autoinstall file is not reachable';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Please check the URL is correct, check your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Invalid URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Please check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Please check or provide a different file.';

  @override
  String get autoinstallDirectErrorInvalidContentFileSystemTitle => 'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorInvalidContentFileSystemBody => 'Please check your permissions or provide a different file.';

  @override
  String get autoinstallTitle => 'Telepítés típusa';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Hogyan szeretne telepíteni a(z) $DISTRO disztribúciót?';
  }

  @override
  String get autoinstallInstructions => 'Adja meg az autoinstall.yaml URL-jét vagy helyi fájlútvonalát:';

  @override
  String get autoinstallInteractiveOption => 'Interaktív telepítés';

  @override
  String get autoinstallInteractiveDescription => 'Olyan felhasználóknak, akik lépésről lépésre történő végigvezetéssel szeretnének telepíteni.';

  @override
  String get autoinstallAutomatedOption => 'Automatizált telepítés';

  @override
  String get autoinstallAutomatedDescription => 'Gyakorlottabb felhasználóknak, akik autoinstall.yaml fájllal rendelkeznek a következetes és megismételhető rendszerbeállításokhoz.';

  @override
  String get changeButtonText => 'Változtatás';

  @override
  String get quitButtonText => 'Kilépés a telepítésből';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Üdvözli a(z) $DISTRO!';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'A(z) $DISTRO előkészítése…';
  }

  @override
  String get warningLabel => 'Figyelmeztetés:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'A(z) $DISTRO kipróbálása vagy telepítése';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Mit szeretne tenni a(z) $DISTRO disztribúcióval?';
  }

  @override
  String get tryOrInstallRepairOption => 'Telepítés javítása';

  @override
  String get tryOrInstallRepairDescription => 'A javítás újratelepíti az összes telepített szoftvert, anélkül hogy a dokumentumokat vagy a beállításokat érintené.';

  @override
  String tryOption(String RELEASE) {
    return 'A(z) $RELEASE kipróbálása';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'A(z) $RELEASE kipróbálható anélkül, hogy bármilyen változtatást végezne a számítógépén.';
  }

  @override
  String installOption(String RELEASE) {
    return 'A(z) $RELEASE telepítése';
  }

  @override
  String installDescription(String RELEASE) {
    return 'A(z) $RELEASE telepítése a jelenlegi operációs rendszere mellé (vagy helyett). Ez nem fog túl sokáig tartani.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Érdemes lehet elolvasni a <a href=\"$url\">kiadási megjegyzéseket</a>.';
  }

  @override
  String get rstTitle => 'RST észlelhető';

  @override
  String get rstHeader => 'Az RST kikapcsolása a folytatáshoz';

  @override
  String rstDescription(String DISTRO) {
    return 'Ez a számítógép Intel RST (Rapid Storage Technology – gyors tárolótechnológia) technológiát használ. Ki kell kapcsolnia az RST-t a Windowsban a(z) $DISTRO telepítése előtt.';
  }

  @override
  String rstInstructions(String url) {
    return 'Az utasításokért olvassa le a QR-kódot egy másik eszközön, vagy látogassa meg ezt az oldalt: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Biztonságos rendszerindítás beállítása';

  @override
  String get configureSecureBootDescription => 'Úgy döntött, hogy harmadik féltől származó illesztőprogramot telepít. Ez a biztonságos rendszerindítás kikapcsolását igényli.\nEhhez most választania kell egy biztonsági kulcsot, és a rendszer újraindításakor meg kell adnia azt.';

  @override
  String get configureSecureBootOption => 'Biztonságos rendszerindítás beállítása';

  @override
  String get chooseSecurityKey => 'Biztonsági kulcs választása';

  @override
  String get confirmSecurityKey => 'A biztonsági kulcs megerősítése';

  @override
  String get dontInstallDriverSoftwareNow => 'Ne telepítse most az illesztőprogramot';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Később a Szoftver és frissítések menüpontból telepítheti.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Biztonsági kulcs szükséges';

  @override
  String get secureBootSecurityKeysDontMatch => 'A biztonsági kulcsok nem egyeznek';

  @override
  String get showSecurityKey => 'Megjelenítés';

  @override
  String get hideSecurityKey => 'Elrejtés';

  @override
  String get updatesOtherSoftwarePageTitle => 'Alkalmazások';

  @override
  String get updatesOtherSoftwarePageDescription => 'Milyen alkalmazásokat szeretne telepíteni a kezdéshez?';

  @override
  String get codecsAndDriversPageTitle => 'A számítógép optimalizálása';

  @override
  String get codecsAndDriversPageDescription => 'Telepíti az ajánlott tulajdonosi szoftvereket?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'A(z) $DISTRO alapértelmezetten tulajdonosi szoftverek nélkül érkezik. További szoftverek telepítése javíthatja a számítógép teljesítményét.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA grafikus kártya észlelhető';

  @override
  String get codecsAndDriversNvidiaBody => 'Az NVIDIA grafikus kártyák legjobb teljesítményéhez erősen ajánlott további illesztőprogramok telepítése.';

  @override
  String get fullInstallationTitle => 'Kibővített választás';

  @override
  String get fullInstallationSubtitle => 'Internetkapcsolat nélkül is használható irodai eszközök, segédprogramok és webböngésző.';

  @override
  String get minimalInstallationTitle => 'Alapértelmezett választás';

  @override
  String get minimalInstallationSubtitle => 'Csak a legszükségesebbek, webböngésző és alapvető segédprogramok.';

  @override
  String get otherOptions => 'Egyéb lehetőségek';

  @override
  String get installThirdPartyTitle => 'Harmadik féltől származó szoftverek grafikus és Wi-Fi-hardverekhez, valamint további médiaformátumok telepítése';

  @override
  String get installThirdPartySubtitle => 'Erre a szoftverre a dokumentációjában szereplő licencfeltételek vonatkoznak. Néhányuk kereskedelmi forgalomban kapható tulajdonosi szoftver.';

  @override
  String get installDriversTitle => 'Harmadik féltől származó szoftverek telepítése grafikus és Wi-Fi-hardverekhez';

  @override
  String get installDriversSubtitle => 'Beleértve, de nem kizárólagosan az NVIDIA illesztőprogramokat és hasonlókat';

  @override
  String get installCodecsTitle => 'További médiaformátumok támogatásának letöltése és telepítése';

  @override
  String get installCodecsSubtitle => 'Beleértve, de nem kizárólagosan az MP3, MP4, MOV és hasonló formátumokat';

  @override
  String get batteryWarning => 'A számítógép nincs csatlakoztatva az áramforráshoz.';

  @override
  String get offlineWarning => 'Jelenleg kapcsolat nélkül van';

  @override
  String get choosePassphraseTitle => 'Lemez jelmondata';

  @override
  String get choosePassphraseHeader => 'Jelmondat létrehozása';

  @override
  String get choosePassphraseBody => 'Jelmondatra van szüksége a fájlok titkosításához. A számítógép bekapcsolásakor minden alkalommal meg kell adnia a jelmondatot.';

  @override
  String get choosePassphraseHint => 'Jelmondat kiválasztása';

  @override
  String get choosePassphraseConfirmHint => 'A jelmondat megerősítése';

  @override
  String get choosePassphraseRequired => 'A jelmondat megadása kötelező';

  @override
  String get choosePassphraseMismatch => 'A jelmondatok nem egyeznek';

  @override
  String get choosePassphraseInfoHeader => 'Győződjön meg arról, hogy elmentette-e a jelmondatot';

  @override
  String get choosePassphraseInfoBody => 'Ha elveszíti a jelmondatot, elveszíti az összes adatát.';

  @override
  String get createPassphrase => 'Jelmondat létrehozása';

  @override
  String get confirmPassphrase => 'A jelmondat megerősítése';

  @override
  String get installationTypeTitle => 'Lemez beállítása';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Hogyan szeretne telepíteni a(z) $DISTRO disztribúciót?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Ezen a számítógépen jelenleg $os van. Mit szeretne tenni?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Ezen a számítógépen jelenleg $os1 és $os2 van. Mit szeretne tenni?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Ezen a számítógépen jelenleg több operációs rendszer van. Mit szeretne tenni?';

  @override
  String get installationTypeNoOSDetected => 'Ezen a számítógépen jelenleg nincs felismert operációs rendszer. Mit szeretne tenni?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Lemez törlése és a(z) $DISTRO telepítése';
  }

  @override
  String get installationTypeEraseInfo => 'Kezdés a nulláról a kiválasztott lemezen.';

  @override
  String get installationTypeAdvancedLabel => 'Speciális funkciók…';

  @override
  String get installationTypeAdvancedTitle => 'Speciális funkciók';

  @override
  String get installationTypeExperimental => 'Kísérleti';

  @override
  String get installationTypeNone => 'Nincs';

  @override
  String get installationTypeNoneSelected => 'Nincs kiválasztva';

  @override
  String get installationTypeLVM => 'LVM használata';

  @override
  String get installationTypeLVMSelected => 'LVM kiválasztva';

  @override
  String get installationTypeLVMEncryption => 'LVM és titkosítás használata';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM és titkosítás kiválasztva';

  @override
  String get installationTypeEncryptInfo => 'Biztonsági kulcsot a következő lépésben fog választani.';

  @override
  String get installationTypeZFS => 'Lemez törlése és ZFS használata';

  @override
  String get installationTypeZFSEncryption => 'Lemez törlése és ZFS használata titkosítással';

  @override
  String get installationTypeZFSSelected => 'ZFS kiválasztva';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS és titkosítás kiválasztva';

  @override
  String get installationTypeTPM => 'Hardveresen támogatott teljes lemeztitkosítás engedélyezése';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Ez egy kísérleti funkció. Előfordulhat, hogy nem működik az Ön hardverével vagy a jövőbeli $DISTRO kiadásokkal. <a href=\"$url\">Olvasson a TPM-titkosításról</a>, mielőtt ezt a lehetőséget választja.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM kiválasztva';

  @override
  String installationTypeReinstall(String os) {
    return 'A(z) $os törlése és újratelepítés';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Figyelmeztetés:</font> ez törölni fogja az összes $os programot, dokumentumot, fényképet, zenét és minden más fájlt.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'A(z) $product telepítése a(z) $os mellé';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'A(z) $product telepítése a(z) $os1 és $os2 mellé';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'A(z) $product telepítése melléjük';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'A(z) $product telepítése más partíciók mellé';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Kiválaszthatja az operációs rendszert a rendszerindítás során.';
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
  String get installationTypeManual => 'Kézi telepítés';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Gyakorlottabb felhasználóknak, akik személyre szabott lemezbeállításokat keresnek.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Lemez törlése és a(z) $DISTRO telepítése';
  }

  @override
  String get selectGuidedStorageInfo => 'Kezdés a nulláról a kiválasztott lemezen.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Meghajtó kiválasztása:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Partíció kiválasztása:';

  @override
  String get selectGuidedStorageInfoLabel => 'A teljes lemez felhasználásra kerül:';

  @override
  String get selectGuidedStorageInstallNow => 'Telepítés most';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'A(z) $DISTRO telepítési helyének kiválasztása';
  }

  @override
  String get installAlongsideSpaceDivider => 'Meghajtóterület lefoglalása az alábbi osztóvonal húzásával:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num kisebb partíció el van rejtve, használja a <a href=\"$url\">speciális particionáló eszközt</a> a jobb szabályozáshoz';
  }

  @override
  String get installAlongsideResizePartition => 'Partíció átméretezése';

  @override
  String get installAlongsideAllocateSpace => 'Hely lefoglalása';

  @override
  String get installAlongsideFiles => 'Fájlok';

  @override
  String get installAlongsidePartition => 'Partíció:';

  @override
  String get installAlongsideSize => 'Méret:';

  @override
  String get installAlongsideAvailable => 'Elérhető:';

  @override
  String get allocateDiskSpace => 'Kézi particionálás';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'A csatolási pontoknak „/” karakterrel kell kezdődniük';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'A csatolási pontok nem tartalmazhatnak szóközöket';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Eszköz';

  @override
  String get diskHeadersType => 'Típus';

  @override
  String get diskHeadersMountPoint => 'Csatolási pont';

  @override
  String get diskHeadersSize => 'Méret';

  @override
  String get diskHeadersUsed => 'Használva';

  @override
  String get diskHeadersSystem => 'Rendszer';

  @override
  String get diskHeadersFormat => 'Formázás';

  @override
  String get freeDiskSpace => 'Szabad hely';

  @override
  String get newPartitionTable => 'Új partíciós tábla';

  @override
  String get newPartitionTableConfirmationTitle => 'Új üres partíció';

  @override
  String get newPartitionTableConfirmationMessage => 'Egy új partíciós tábla létrehozása egy teljes eszközön eltávolítja az összes jelenlegi partíciót. Ez a művelet visszavonható, ha szükséges.';

  @override
  String get tooManyPrimaryPartitions => 'Túl sok elsődleges partíció';

  @override
  String get partitionLimitReached => 'Korlát elérve';

  @override
  String get bootLoaderDevice => 'Eszköz a rendszertöltő telepítéséhez';

  @override
  String get partitionCreateTitle => 'Partíció létrehozása';

  @override
  String get partitionEditTitle => 'Partíció szerkesztése';

  @override
  String get partitionSizeLabel => 'Méret:';

  @override
  String get partitionTypeLabel => 'Az új partíció típusa:';

  @override
  String get partitionTypePrimary => 'Elsődleges';

  @override
  String get partitionTypeLogical => 'Logikai';

  @override
  String get partitionLocationLabel => 'Az új partíció helye:';

  @override
  String get partitionLocationBeginning => 'A hely kezdete';

  @override
  String get partitionLocationEnd => 'A hely vége';

  @override
  String get partitionFormatLabel => 'Használva mint:';

  @override
  String get partitionFormatNone => 'Formázatlanul hagyás';

  @override
  String partitionFormatKeep(String format) {
    return '$format formátumra formázva hagyás';
  }

  @override
  String get partitionErase => 'A partíció formázása';

  @override
  String get partitionMountPointLabel => 'Csatolási pont:';

  @override
  String get confirmPageTitle => 'Telepítésre kész';

  @override
  String get confirmHeader => 'Választások áttekintése';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Nincs';

  @override
  String get confirmDevicesTitle => 'Eszközök';

  @override
  String get confirmEntryApplications => 'Alkalmazások';

  @override
  String get confirmEntryDiskSetup => 'Lemez beállítása';

  @override
  String get confirmEntryDiskEncryption => 'Lemez titkosítása';

  @override
  String get confirmEntryInstallationDisk => 'Telepítési lemez';

  @override
  String get confirmEntryProprietarySoftware => 'Tulajdonosi szoftver';

  @override
  String get confirmSectionGeneralTitle => 'Általános';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Biztonság és egyebek';

  @override
  String get confirmPartitionsTitle => 'Partíciók';

  @override
  String get confirmPartitionTables => 'A következő eszközök partíciós táblái változnak meg:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'A következő partícióváltoztatások kerülnek alkalmazásra:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return '<b>$sysname</b> partíció átméretezve <b>$oldsize</b> méretről <b>$newsize</b> méretre';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return '<b>$sysname</b> partíció <b>$format</b> formátumra formázva, <b>$mount</b> helyre csatolva';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return '<b>$sysname</b> partíció <b>$format</b> formátumra formázva';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return '<b>$sysname</b> partíció <b>$mount</b> helyre csatolva';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return '<b>$sysname</b> partíció létrehozva';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodekek';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kodekek és illesztőprogramok';

  @override
  String get confirmProprietarySoftwareDrivers => 'Illesztőprogramok';

  @override
  String get confirmInstallButton => 'Telepítés';

  @override
  String get installationCompleteTitle => 'A telepítés befejeződött';

  @override
  String readyToUse(String system) {
    return 'A(z) $system telepítve van és használatra kész';
  }

  @override
  String rebootToConfigure(String system) {
    return 'A(z) **$system** a lemezre lett másolva';
  }

  @override
  String restartInto(String system) {
    return 'Újraindítás és $system használata';
  }

  @override
  String get restartWarningBody => 'Indítsa újra a telepítés befejezéséhez vagy folytassa a kipróbálást.\nAz elvégzett változtatások nem kerülnek mentésre.';

  @override
  String get rebootToConfigureWarning => 'Újra kell indítania a számítógépet a telepítési folyamat folytatásához.';

  @override
  String get shutdown => 'Leállítás';

  @override
  String get restartNow => 'Újraindítás most';

  @override
  String get continueTesting => 'Kipróbálás folytatása';

  @override
  String get bitlockerTitle => 'A BitLocker engedélyezve van';

  @override
  String get bitlockerHeader => 'A BitLocker kikapcsolása a folytatáshoz';

  @override
  String bitlockerDescription(String option) {
    return 'Ez a számítógép Windows BitLocker titkosítást használ.\nWindowst kell használnia a szabad terület létrehozásához, vagy menjen vissza, és válassza a(z) „$option” lehetőséget a folytatáshoz.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Az utasításokért olvassa le a QR-kódot egy másik eszközön vagy látogassa meg ezt az oldalt: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Újraindítás és Windows használata';

  @override
  String get restartIntoWindowsTitle => 'Újraindítja a számítógépet Windows használatával?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Biztosan újra szeretné indítani a számítógépet? Később újra kell majd indítania a(z) $DISTRO telepítését a(z) $DISTRO telepítésének befejezéséhez.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Üdvözli a(z) $RELEASE!';
  }

  @override
  String get installationSlidesAvailable => 'Elérhető:';

  @override
  String get installationSlidesIncluded => 'Tartalmazott:';

  @override
  String get installationSlidesWelcomeTitle => 'Gyors, ingyenes és tele új funkciókkal';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'A(z) $DISTRO legújabb verziója minden eddiginél könnyebbé teszi a számítástechnikát.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Legyen akár fejlesztő, alkotó, játékos vagy rendszergazda, a(z) $RELEASE új eszközöket nyújt Önnek a termelékenység és a felhasználói élmény javításához.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Minden alkalmazás, amire szüksége van';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Telepítse, kezelje és frissítse az Ubuntu szoftverben található összes alkalmazást, beleértve a Snap alkalmazásboltból és a(z) $DISTRO archívumából származó több ezer alkalmazást is.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Fejlesszen a nyílt forráskód legjobbjaival';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return 'A(z) $DISTRO ideális munkaállomás az alkalmazás- vagy webfejlesztéshez, az adattudományhoz és a mesterséges intelligenciához vagy gépi tanuláshoz, valamint a fejlesztésekhez és az adminisztrációhoz. Minden $DISTRO kiadás a legújabb eszközláncokat tartalmazza, és támogatja az összes főbb integrált fejlesztőkörnyezetet.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Növelje a kreativitását';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Ha Ön animátor, tervező, videókészítő vagy játékfejlesztő, akkor könnyedén áthozhatja a munkafolyamatait a nyílt forráskódú és az iparági szabványokat használó szoftverek és alkalmazások támogatásával rendelkező $DISTRO rendszerbe.';
  }

  @override
  String get installationSlidesGamingTitle => 'Nagyszerű a játékokhoz';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return 'A(z) $DISTRO támogatja a legújabb NVIDIA és Mesa illesztőprogramokat a teljesítmény és a kompatibilitás javítása érdekében. A(z) $DISTRO további beállítások nélkül is remekül futtatja a Windowsra írt játékok ezreit az olyan alkalmazásokon keresztül, mint például a Steam.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Személyes és biztonságos';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return 'A(z) $DISTRO minden olyan eszközt biztosít, amelyre szüksége van ahhoz, hogy tiszteletben tartsák a magánéletét és biztonságban legyen az interneten. Beépített tűzfallal és VPN-támogatással, valamint az adatvédelemre összpontosító rengeteg alkalmazással érkezik annak biztosításához, hogy az adatai felett teljes ellenőrzést gyakorolhasson.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Az összes $DISTRO LTS kiadás öt évre szóló biztonsági javítást tartalmaz, ami Ubuntu Pro előfizetéssel tíz évre növelhető.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Növelje a termelékenységét';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return 'A(z) $DISTRO asztali változatában megtalálható a LibreOffice, a Microsoft Office-szal kompatibilis, nyílt forráskódú alkalmazáscsomag dokumentumokhoz, táblázatokhoz és prezentációkhoz. Népszerű együttműködési eszközök is rendelkezésre állnak.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Hozzáférés mindenkinek';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'A(z) $DISTRO filozófiájának középpontjában az a meggyőződés áll, hogy a számítástechnika mindenkié. A fejlett akadálymentesítési eszközökkel, valamint a nyelv, a színek és a szövegméret megváltoztatásának lehetőségeivel a(z) $DISTRO egyszerűvé teszi a számítástechnikát – bárki és bárhol is legyen.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Orca képernyőolvasó';

  @override
  String get installationSlidesAccessibilityLanguages => 'Nyelvi támogatás';

  @override
  String get installationSlidesSupportTitle => 'Súgó és támogatás';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'A hivatalos $DISTRO dokumentáció az interneten és az alkalmazásindítóban lévő Súgó ikonon keresztül is elérhető.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Az Ask Ubuntu a kérdések és válaszok széles skáláját lefedi, az Ubuntu Discourse pedig útmutatókat és beszélgetési lehetőségeket nyújt új és tapasztalt felhasználók számára.';

  @override
  String get installationSlidesSupportEnterprise => 'Vállalati felhasználóknak a Canonical kereskedelmi támogatást nyújt, hogy megkönnyítse az Ubuntu bevezetését és biztonságos kezelését a munkahelyen.';

  @override
  String get installationSlidesSupportResources => 'Hasznos erőforrások:';

  @override
  String get installationSlidesSupportDocumentation => 'Hivatalos dokumentáció';

  @override
  String get installationSlidesSupportUbuntuPro => 'Vállalati szintű 24/7 támogatás Ubuntu Pro előfizetéssel';

  @override
  String get copyingFiles => 'Fájlok másolása…';

  @override
  String get installingSystem => 'A rendszer telepítése…';

  @override
  String get configuringSystem => 'A rendszer beállítása…';

  @override
  String get installationFailed => 'A telepítés sikertelen';

  @override
  String get notEnoughDiskSpaceTitle => 'Nincs elegendő lemezterület';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Nincs elegendő lemezterület a(z) $DISTRO telepítéséhez';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'A kiválasztott lemezen nincs elegendő lemezterület a(z) $DISTRO telepítéséhez. Lépjen ki a telepítőből, hogy elérhetővé tegye a helyet, vagy válasszon másik lemezt.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Elérhető:';

  @override
  String get notEnoughDiskSpaceRequired => 'Szükséges:';

  @override
  String get refreshPageTitle => 'Frissítés érhető el';

  @override
  String get refreshHeader => 'Frissítés érhető el a telepítőhöz';

  @override
  String get refreshUpdateNow => 'Frissítés most';

  @override
  String get refreshInfo => 'Frissítsen a legújabb verzióra a nagyobb megbízhatóság és több funkció érdekében.';

  @override
  String get refreshReady => 'A frissítés kész';

  @override
  String refreshCurrent(String snap, String version) {
    return 'A jelenlegi $snap verzió $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Frissítés a(z) $version verzióra';
  }

  @override
  String refreshUpToDate(String version) {
    return 'A jelenlegi $version verzió naprakész.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'A(z) $snap frissítése…';
  }

  @override
  String get refreshRestart => 'Zárja be a telepítőt, és indítsa újra a folytatáshoz';

  @override
  String get refreshCloseLabel => 'Telepítő bezárása';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'A(z) $snap előfeltételeinek biztosítása…';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'A(z) $snap frissítése…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'A(z) $snap újrafrissítésének ellenőrzése…';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'A(z) $snap előkészítése…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'A(z) $snap letöltése…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'A(z) $snap ellenőrzése…';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'A(z) $snap csatolása…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'A(z) $snap szolgáltatásainak leállítása…';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'A(z) $snap álnevek eltávolítása…';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'A(z) $snap hozzákapcsolásának megszüntetése…';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'A(z) $snap eszközeinek frissítése…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'A(z) $snap rendszermag parancssorának frissítése…';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'A(z) $snap adatainak másolása…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'A(z) $snap biztonsági profiljainak beállítása…';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'A(z) $snap hozzákapcsolása…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'A(z) $snap csatlakozóinak és foglalatainak kapcsolódása…';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Automatikus $snap álnevek beállítása…';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'A(z) $snap álneveinek beállítása…';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'A(z) $snap szolgáltatásainak indítása…';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'A(z) $snap tisztítása…';
  }

  @override
  String get recoveryKeyTitle => 'TPM helyreállítási kulcs';

  @override
  String get recoveryKeyCommand => 'A helyreállítási kulcsot a telepítés után érheti el a következő paranccsal:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Figyelmeztetés:</font> ha elveszíti ezt a biztonsági kulcsot, akkor az összes adat elvész. Ha szükséges, írja le a kulcsot, és tartsa valahol máshol egy biztonságos helyen.';
  }
}
