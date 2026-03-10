// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class UbuntuBootstrapLocalizationsSk extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Inštalátor Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'Nainštalovať $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automatická inštalácia';

  @override
  String get autoinstallDirectHeader => 'Importovať súbor autoinštalácie';

  @override
  String get autoinstallDirectUrlLabel =>
      'Zadajte URL súboru pre autoinštaláciu:';

  @override
  String get autoinstallDirectFileLabel => 'Alebo vyberte miestny súbor:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Vybrať súbor...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Vymazať súbor';

  @override
  String get autoinstallDirectFilePickerTitle => 'Zvoľte súbor';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Súbory YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importovať';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Súbor autoinštalácie nie je dostupný';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Skontrolujte, či je URL správna, otestujte svoje internetové pripojenie alebo to skúste neskôr.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Neplatná URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Skontrolujte správnosť URL alebo vyberte miestny súbor.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Neplatný súbor autoinštalácie';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Skontrolujte súbor alebo vyberte iný.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Súbor autoinštalácie nie je čitateľný';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Skontrolujte oprávnenia alebo vyberte iný súbor.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Neznáma chyba';

  @override
  String get autoinstallTitle => 'Typ inštalácie';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Ako by ste chceli nainštalovať $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'Zadajte autoinstall.yaml URL alebo cestu k miestnemu súboru:';

  @override
  String get autoinstallInteractiveOption => 'Interaktívna inštalácia';

  @override
  String get autoinstallInteractiveDescription =>
      'Pre používateľov, ktorí chcú prejsť inštaláciou krok za krokom.';

  @override
  String get autoinstallDirectOption => 'Automaticky so súborom autoinštalácie';

  @override
  String get autoinstallDirectDescription =>
      'Pre skúsených používateľov, ktorí používajú autoinstall.yaml na konzistentné a opakovateľné nastavenie systému.';

  @override
  String get autoinstallLandscapeOption => 'Automaticky pomocou Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Pre organizácie, ktoré poskytujú súbor autoinštalácie cez Landscape.';

  @override
  String get autoinstallErrorMessage =>
      'A command in the autoinstall file failed to run during installation.';

  @override
  String get autoinstallErrorInstructions =>
      'You will need to restart the installation. Check the autoinstall file, choose a different installation type, or contact your IT support.';

  @override
  String get changeButtonText => 'Zmeniť';

  @override
  String get quitButtonText => 'Ukončiť inštaláciu';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Vitajte v $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Pripravuje sa $DISTRO…';
  }

  @override
  String get warningLabel => 'Upozornenie:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Vyskúšať alebo nainštalovať $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Čo chcete urobiť s $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Opraviť inštaláciu';

  @override
  String get tryOrInstallRepairDescription =>
      'Oprava preinštaluje všetok softvér bez zásahu do dokumentov alebo nastavení.';

  @override
  String tryOption(String RELEASE) {
    return 'Vyskúšať $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Môžete si vyskúšať $RELEASE bez zmien v počítači.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Nainštalovať $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Nainštalujte $RELEASE popri (alebo namiesto) vašom aktuálnom operačnom systéme. Nemalo by to trvať príliš dlho.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Možno si budete chcieť prečítať <a href=\"$url\">poznámky k vydaniu</a>.';
  }

  @override
  String get rstTitle => 'Zistené RST';

  @override
  String get rstHeader =>
      'Ak chcete pokračovať v inštalácii, musíte vypnúť RST';

  @override
  String get rstDisable =>
      'Váš počítač používa Intel RST (Rapid Storage Technology). RST môžete zakázať buď:';

  @override
  String get rstDisableWindows =>
      'Vo Windowse, ak používate nastavenie duálneho spúšťania s Windowsom';

  @override
  String get rstDisableBios => 'V nastaveniach BIOSu';

  @override
  String rstInstructions(String url) {
    return 'Pre inštrukcie naskenujte QR kód na inom zariadení alebo navštívte: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Nastaviť Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'Rozhodli ste sa nainštalovať ovládač od tretej strany. Na to je potrebné vypnúť Secure Boot.\nTo urobíte vytvorením kľúča zabezpečenia a jeho následným zadaním po reštarte systému.';

  @override
  String get configureSecureBootOption => 'Nastaviť Secure Boot';

  @override
  String get chooseSecurityKey => 'Vyberte bezpečnostný kľúč';

  @override
  String get confirmSecurityKey => 'Potvrďte bezpečnostný kľúč';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Zatiaľ neinštalujte softvér ovládača';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Je ho možné nainštalovať kedykoľvek neskôr pomocou nástroja Softvér a aktualizácie.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Je potrebné zadať bezpečnostný kľúč';

  @override
  String get secureBootSecurityKeysDontMatch =>
      'Bezpečnostné kľúče sa nezhodujú';

  @override
  String get showSecurityKey => 'Zobraziť';

  @override
  String get hideSecurityKey => 'Skryť';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplikácie';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'Aké aplikácie by ste chceli teraz nainštalovať?';

  @override
  String get codecsAndDriversPageTitle => 'Optimalizujte svoj počítač';

  @override
  String get codecsAndDriversPageDescription =>
      'Nainštalovať odporúčaný proprietárny softvér?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO sa štandardne dodáva bez proprietárneho softvéru. Inštalácia ďalšieho softvéru môže zlepšiť výkon vášho počítača.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Zistila sa grafická karta NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Pre najlepší výkon grafických kariet NVIDIA sa dôrazne odporúča nainštalovať ďalšie ovládače.';

  @override
  String get fullInstallationTitle => 'Rozšírený výber';

  @override
  String get fullInstallationSubtitle =>
      'Výber vhodný na offline použitie: kancelárske nástroje, pomôcky a webový prehliadač.';

  @override
  String get minimalInstallationTitle => 'Predvolený výber';

  @override
  String get minimalInstallationSubtitle =>
      'Len to najnutnejšie: webový prehliadač a základné nástroje.';

  @override
  String get otherOptions => 'Ďalšie možnosti';

  @override
  String get installThirdPartyTitle =>
      'Nainštalovať softvér tretích strán pre grafické čipy, Wi-Fi adaptéry a dodatočné multimediálne formáty';

  @override
  String get installThirdPartySubtitle =>
      'Tento softvér podlieha licenčným podmienkam, ktoré sú súčasťou jeho dokumentácie. Niektoré sú proprietárne.';

  @override
  String get installDriversTitle =>
      'Nainštalovať ovládače od tretích strán pre grafické čipy a Wi-Fi sieťové rozhrania';

  @override
  String get installDriversSubtitle => 'Vrátane ovládačov NVIDIA a podobných';

  @override
  String get installCodecsTitle =>
      'Stiahnuť a nainštalovať podporu pre ďalšie formáty médií';

  @override
  String get installCodecsSubtitle => 'Vrátane MP3, MP4, MOV a podobných';

  @override
  String get batteryWarning => 'Počítač nie je pripojený k zdroju napájania.';

  @override
  String get offlineWarning => 'Momentálne nie ste pripojení';

  @override
  String get choosePassphraseHeader => 'Vytvorte prístupovú frázu';

  @override
  String get choosePassphraseBody =>
      'Pri každom spustení počítača budete musieť zadať prístupovú frázu. Táto prístupová fráza sa líši od používateľského hesla.';

  @override
  String get choosePassphraseInfoHeader =>
      'Nezabudnite si uložiť prístupovú frázu';

  @override
  String get choosePassphraseInfoBody =>
      'Ak ju stratíte, prídete o všetky svoje údaje.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Uložte svoju prístupovú frázu a obnovovací kľúč na bezpečné miesto';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Ak stratíte svoju prístupovú frázu, prídete o všetky svoje údaje. Prístupová fráza nenahrádza obnovovací kľúč ani vaše používateľské heslo.';

  @override
  String get passphrasePageTitle => 'Šifrovanie';

  @override
  String get passphrasePageHeaderPassphrase => 'Nastavenie prístupovej frázy';

  @override
  String get passphrasePageHeaderPin => 'Nastavenie šifrovacieho PINu';

  @override
  String get passphrasePageBodyPassphrase =>
      'Pri každom spustení počítača budete musieť zadať prístupovú frázu. Táto prístupová fráza sa líši od používateľského hesla. Neskôr ju budete môcť zmeniť, ale nie vypnúť. Ak zabudnete prístupovú frázu, môžete znova získať prístup k disku pomocou obnovovacieho kľúča.';

  @override
  String get passphrasePageBodyPin =>
      'PIN budete musieť zadať pri každom spustení počítača. Tento PIN sa líši od používateľského hesla. Neskôr ho budete môcť zmeniť, ale nie vypnúť. Ak zabudnete PIN, môžete znova získať prístup k disku pomocou obnovovacieho kľúča.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Prístupová fráza';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Potvrďte prístupovú frázu';

  @override
  String get passphrasePageRequiredPassphrase =>
      'Je potrebné zadať prístupovú frázu';

  @override
  String get passphrasePageMismatchPassphrase =>
      'Prístupové frázy sa nezhodujú';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Potvrďte PIN';

  @override
  String get passphrasePageRequiredPin => 'Je potrebné zadať PIN';

  @override
  String get passphrasePageMismatchPin => 'PINy sa nezhodujú';

  @override
  String get passphraseTypePassphraseTileTitle => 'Vyžadovať prístupovú frázu';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Najvyššia úroveň zabezpečenia. Pri každom spustení počítača budete musieť zadať dlhšiu prístupovú frázu.';

  @override
  String get passphraseTypePinTileTitle => 'Vyžadovať PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Vyššia úroveň zabezpečenia. Pri každom spustení počítača budete musieť zadať číselný PIN.';

  @override
  String get passphraseTypeNoneTileTitle => 'Odomknúť disk automaticky';

  @override
  String get passphraseTypePageHeader => 'Dodatočné zabezpečenie';

  @override
  String get passphraseTypePageBody =>
      'Predvolene disk odomkne modul Trusted Platform Module (TPM) počas spustenia systému. Môžete si však zvoliť aj ďalšie možnosti na lepšiu ochranu údajov.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Slabá prístupová fráza, vytvorte dlhšiu alebo zložitejšiu';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Priemerná prístupová fráza, pre lepšiu bezpečnosť ju vytvorte dlhšiu alebo zložitejšiu';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Silná prístupová fráza';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Slabý PIN, zvoľte dlhší alebo menej predvídateľný';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Priemerný PIN, pre lepšiu bezpečnosť zvoľte dlhší alebo menej predvídateľný';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN je dostatočne dlhý';

  @override
  String get installationTypeTitle => 'Nastavenie disku';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Ako chcete nainštalovať $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Na tomto počítači sa už nachádza $os. Čo chcete urobiť?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Na tomto počítači sa už nachádzajú $os1 a $os2. Čo chcete urobiť?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Na tomto počítači sa v súčasnosti nachádza viacero operačných systémov. Čo chcete urobiť?';

  @override
  String get installationTypeNoOSDetected =>
      'Na tomto počítači sa teraz nezistil žiadny operačný systém. Čo chcete urobiť?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Vymazať disk a nainštalovať $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Všetky údaje a oddiely na disku budú vymazané, vrátane operačných systémov.';

  @override
  String get installationTypeAdvancedLabel => 'Rozšírené možnosti';

  @override
  String get installationTypeAdvancedTitle => 'Šifrovanie a súborový systém';

  @override
  String get installationTypeExperimental => 'Experimentálne';

  @override
  String get installationTypeNone => 'Bez šifrovania';

  @override
  String get installationTypeNoneInfo =>
      'Štandardný súborový systém bez šifrovania.';

  @override
  String get installationTypeNoneSelected => 'Nič nevybrané';

  @override
  String get installationTypeLVM => 'Použiť LVM bez šifrovania';

  @override
  String get installationTypeLVMSelected => 'Vybrané LVM';

  @override
  String get installationTypeLVMEncryption => 'Šifrovať prístupovou frázou';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'Pri každom zapnutí počítača bude potrebné zadať prístupovú frázu. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'Toto používa LVM s LUKS šifrovaním.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'Vybrané LVM a šifrovanie';

  @override
  String get installationTypeEncryptInfo =>
      'V nasledujúcom kroku si zvolíte bezpečnostný kľúč.';

  @override
  String get installationTypeZFS => 'Použiť ZFS bez šifrovania';

  @override
  String get installationTypeZFSEncryption =>
      'Šifrovať prístupovou frázou v ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Natívne šifrovanie so ZFS. Budete musieť zadať prístupovú frázu zakaždým, keď zapnete počítač.';

  @override
  String get installationTypeZFSSelected => 'Vybrané ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'Vybrané ZFS a šifrovanie';

  @override
  String get installationTypeTPM => 'Použiť hardvérové šifrovanie';

  @override
  String get installationTypeTPMInfoResolute =>
      'Disk sa počas spúšťania odomkne automaticky.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Nie je dostupné na tomto počítači.';

  @override
  String get installationTypeTPMSelected => 'Vybrané TPM';

  @override
  String installationTypeReinstall(String os) {
    return 'Vymazať $os a preinštalovať';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Upozornenie:</font> Týmto vymažete všetky aplikácie, dokumenty, fotografie, hudbu a ostatné súbory v rámci $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Nainštalovať $product vedľa $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Nainštalovať $product vedľa $os1 a $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Nainštalovať $product vedľa existujúcich operačných systémov';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Nainštalovať $product vedľa ostatných oddielov';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Vyberte oddiel na zmenu veľkosti a vytvorte priestor pre $product. Operačný systém si budete môcť vybrať pri spustení počítača.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Vymazať $os a nainštalovať $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Všetky súbory a údaje z aktuálnej inštalácie $os budú nenávratne vymazané.';
  }

  @override
  String get installationTypeManual => 'Manuálna inštalácia';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Pre skúsených používateľov, ktorí si chcú nastaviť disk podľa vlastných potrieb.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Vymazať disk a nainštalovať $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Začnite odznova na vybranom disku.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Vybrať jednotku:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Vybrať oddiel:';

  @override
  String get selectGuidedStorageInfoLabel => 'Bude použitý celý disk:';

  @override
  String get selectGuidedStorageInstallNow => 'Nainštalovať teraz';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Vyberte, kde sa má nainštalovať $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Prideľte miesto na disku potiahnutím rozdeľovača nižšie:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num menších oddielov je skrytých. Ak chcete mať nad procesom väčšiu kontrolu, použite <a href=\"$url\">nástroj pre pokročilú správu oddielov</a>';
  }

  @override
  String get installAlongsideResizePartition => 'Zmeniť veľkosť oddielu';

  @override
  String get installAlongsideAllocateSpace => 'Prideliť priestor';

  @override
  String get installAlongsideFiles => 'Súbory';

  @override
  String get installAlongsidePartition => 'Oddiel:';

  @override
  String get installAlongsideSize => 'Veľkosť:';

  @override
  String get installAlongsideAvailable => 'K dispozícii:';

  @override
  String get allocateDiskSpace => 'Manuálne rozdelenie';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Prípojné body musia začínať znakom „/“';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Prípojné body nemôžu obsahovať medzery';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format nie je podporovaným súborovým systémom pre $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Zariadenie';

  @override
  String get diskHeadersType => 'Typ';

  @override
  String get diskHeadersMountPoint => 'Prípojný bod';

  @override
  String get diskHeadersSize => 'Veľkosť';

  @override
  String get diskHeadersUsed => 'Využité';

  @override
  String get diskHeadersSystem => 'Systém';

  @override
  String get diskHeadersFormat => 'Formátovať';

  @override
  String get freeDiskSpace => 'Voľné miesto';

  @override
  String get newPartitionTable => 'Nová tabuľka oddielov';

  @override
  String get newPartitionTableConfirmationTitle => 'Nový prázdny oddiel';

  @override
  String get newPartitionTableConfirmationMessage =>
      'Vytvorením novej tabuľky oddielov na celom zariadení sa odstránia všetky existujúce oddiely. Túto operáciu je možné v tomto kroku ešte vrátiť späť.';

  @override
  String get tooManyPrimaryPartitions => 'Príliš veľa primárnych oddielov';

  @override
  String get partitionLimitReached => 'Dosiahnutý limit';

  @override
  String get bootLoaderDevice => 'Zariadenie na inštaláciu zavádzača systému';

  @override
  String get partitionCreateTitle => 'Vytvoriť oddiel';

  @override
  String get partitionEditTitle => 'Upraviť oddiel';

  @override
  String get partitionSizeLabel => 'Veľkosť:';

  @override
  String get partitionTypeLabel => 'Typ nového oddielu:';

  @override
  String get partitionTypePrimary => 'Primárny';

  @override
  String get partitionTypeLogical => 'Logický';

  @override
  String get partitionLocationLabel => 'Umiestnenie nového oddielu:';

  @override
  String get partitionLocationBeginning => 'Začiatok tohto priestoru';

  @override
  String get partitionLocationEnd => 'Koniec tohto priestoru';

  @override
  String get partitionFormatLabel => 'Použité ako:';

  @override
  String get partitionFormatNone => 'Ponechať nenaformátované';

  @override
  String partitionFormatKeep(String format) {
    return 'Nechať naformátované ako $format';
  }

  @override
  String get partitionErase => 'Naformátovať oddiel';

  @override
  String get partitionMountPointLabel => 'Prípojný bod:';

  @override
  String get confirmPageTitle => 'Pripravené na inštaláciu';

  @override
  String get confirmHeader => 'Skontrolujte svoje voľby';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Žiadne';

  @override
  String get confirmDevicesTitle => 'Zariadenia';

  @override
  String get confirmEntryApplications => 'Aplikácie';

  @override
  String get confirmEntryDiskSetup => 'Typ inštalácie';

  @override
  String get confirmEntryDiskEncryption => 'Šifrovanie disku';

  @override
  String get confirmEntryInstallationDisk => 'Inštalačný disk';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietárny softvér';

  @override
  String get confirmSectionGeneralTitle => 'Všeobecné';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Zabezpečenie a ďalšie';

  @override
  String get confirmPartitionsTitle => 'Oddiely';

  @override
  String get confirmPartitionTables =>
      'Tabuľky oddielov na nasledujúcich zariadeniach sa zmenili:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodeky';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kodeky a ovládače';

  @override
  String get confirmProprietarySoftwareDrivers => 'Ovládače';

  @override
  String get confirmInstallButton => 'Nainštalovať';

  @override
  String get confirmTableErased => 'Vymazané';

  @override
  String get confirmTableUnchanged => 'Nezmenené';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Zmenené z $oldsize na $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Vytvorené, formátované ako $format, použité pre $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formátované ako $format, použité pre $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Použité pre $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formátované ako $format';
  }

  @override
  String get installationCompleteTitle => 'Inštalácia je dokončená';

  @override
  String readyToUse(String system) {
    return '$system je nainštalované a pripravené na použitie';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** bolo skopírované na disk';
  }

  @override
  String restartInto(String system) {
    return 'Reštartovať do $system';
  }

  @override
  String get restartWarningBody =>
      'Reštartujte počítač na dokončenie inštalácie alebo pokračujte v skúšaní.\nZmeny vykonané počas skúšania sa neuložia.';

  @override
  String get rebootToConfigureWarning =>
      'Ak chcete pokračovať v procese inštalácie, musíte reštartovať počítač.';

  @override
  String get shutdown => 'Vypnúť';

  @override
  String get restartNow => 'Reštartovať teraz';

  @override
  String get continueTesting => 'Pokračovať v skúšaní';

  @override
  String get bitlockerInfoTitle => 'Zistený BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'Jeden alebo viacero oddielov je šifrovaných pomocou BitLockeru.';

  @override
  String get bitlockerInfoDisable =>
      'Pre inštaláciu vedľa Windowsu vypnite BitLocker v systéme Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows môže po inštalácii pri spustení požadovať obnovovacie kľúče.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Pre inštrukcie navštívte <a href=\"$url\">sprievodcu BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Môžete prísť o všetky svoje údaje bez obnovovacích kľúčov BitLocker';

  @override
  String get restartComputer => 'Reštartovať počítač';

  @override
  String get restartComputerTitle => 'Reštartovať počítač?';

  @override
  String get restartInstaller => 'Restart installer';

  @override
  String get restartIntoWindows => 'Reštartovať do Windows';

  @override
  String get restartIntoWindowsTitle => 'Reštartovať do Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Naozaj chcete reštartovať počítač? Inštaláciu $DISTRO budete musieť neskôr znova spustiť, aby ste dokončili inštaláciu $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Vitajte v $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'K dispozícii:';

  @override
  String get installationSlidesIncluded => 'Obsiahnuté:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Rýchle, slobodné a plné nových funkcií';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Najnovšia verzia $DISTRO uľahčuje používanie počítača viac ako kedykoľvek predtým.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Či už ste vývojár, tvorca, hráč alebo správca, nájdete tu nové nástroje zvyšujúce vašu produktivitu a vylepšujúce váš dojem z používania $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Všetky aplikácie, ktoré potrebujete';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Inštalujte, spravujte a aktualizujte svoje aplikácie v Ubuntu Software, ktorý obsahuje tisíce aplikácií zo Snap Store aj z archívu balíčkov $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Vyvíjajte s najlepším open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO je ideálne prostredie na vývoj aplikácií a webov, dátovú vedu, umelú inteligenciu a strojové učenie, ako aj devops a správu systémov. Každé vydanie $DISTRO obsahuje najnovšie vývojové nástroje a podporuje všetky hlavné vývojové prostredia (IDE).';
  }

  @override
  String get installationSlidesCreativityTitle => 'Buďte tvorivejší';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Ak ste animátor, dizajnér, tvorca videí alebo vývojár hier, svoje pracovné postupy môžete ľahko preniesť na $DISTRO vďaka podpore softvéru a aplikácií, ktoré spĺňajú open source a priemyselné štandardy.';
  }

  @override
  String get installationSlidesGamingTitle => 'Skvelé na hranie hier';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO podporuje najnovšie ovládače NVIDIA a Mesa, ktoré zlepšujú výkon a kompatibilitu. Tisíce hier pre Windows fungujú výborne na $DISTRO prostredníctvom aplikácií ako Steam, bez potreby ďalšej konfigurácie.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Súkromné a bezpečné';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO poskytuje všetky nástroje potrebné na ochranu súkromia a bezpečné používanie internetu. Vďaka vstavanej bráne firewall, podpore VPN a rade aplikácií zameraných na ochranu súkromia máte svoje údaje plne pod kontrolou.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Všetky LTS vydania $DISTRO dostávajú bezpečnostné aktualizácie počas piatich rokov, s možnosťou predĺženia na desať rokov vďaka predplatnému Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Zvýšte svoju produktivitu';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop obsahuje LibreOffice, balík open source aplikácií kompatibilných s Microsoft Office pre dokumenty, tabuľky a prezentácie. K dispozícii sú aj obľúbené nástroje na spoluprácu.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Prístupnosť pre každého';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'V srdci filozofie $DISTRO je myšlienka, že počítače sú pre všetkých. Vďaka pokročilým nástrojom prístupnosti a možnosti zmeniť jazyk, farby a veľkosť textu rozhrania, $DISTRO robí používanie počítača jednoduché – nech už ste ktokoľvek a žijete kdekoľvek.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Čítačka obrazovky Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Podpora jazykov';

  @override
  String get installationSlidesSupportTitle => 'Pomoc a podpora';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Oficiálna dokumentácia $DISTRO je k dispozícii online aj cez ikonu Pomocník v doku.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Web Ask Ubuntu pokrýva široké spektrum otázok a odpovedí. Na fóre Ubuntu Discourse nájdete návody a diskusie pre nových aj skúsených používateľov.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Pre firemných používateľov Canonical poskytuje komerčnú podporu, vďaka ktorej je jednoduché nasadiť a spravovať Ubuntu v pracovnom prostredí.';

  @override
  String get installationSlidesSupportResources => 'Užitočné zdroje:';

  @override
  String get installationSlidesSupportDocumentation => 'Oficiálna dokumentácia';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Podpora 24/7 na podnikovej úrovni s Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Ďalší snímok';

  @override
  String get previousSlideSemanticLabel => 'Predchádzajúci snímok';

  @override
  String get playSlideshowSemanticLabel => 'Spustiť prezentáciu';

  @override
  String get pauseSlideshowSemanticLabel => 'Pozastaviť prezentáciu';

  @override
  String get toggleLogsSemanticLabel =>
      'Prepínať zobrazenie inštalačných záznamov';

  @override
  String get copyingFiles => 'Kopírovanie súborov…';

  @override
  String get installingSystem => 'Inštalácia systému…';

  @override
  String get configuringSystem => 'Nastavovanie systému…';

  @override
  String get installationFailed => 'Inštalácia sa nepodarila';

  @override
  String get notEnoughDiskSpaceTitle => 'Nedostatočný priestor na disku';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Nedostatok miesta na disku pre inštaláciu $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Vybraný disk nemá dostatok miesta na inštaláciu $DISTRO. Ukončite inštalátor, uvoľnite miesto alebo vyberte iný disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'K dispozícii:';

  @override
  String get notEnoughDiskSpaceRequired => 'Vyžadované:';

  @override
  String get refreshPageTitle => 'K dispozícii je aktualizácia';

  @override
  String get refreshHeader => 'Pre inštalátor je k dispozícii aktualizácia';

  @override
  String get refreshUpdateNow => 'Aktualizovať teraz';

  @override
  String get refreshInfo =>
      'Aktualizujte na najnovšiu verziu pre lepšiu spoľahlivosť a viac funkcií.';

  @override
  String get refreshReady => 'Aktualizácia je pripravená';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Aktuálne používaná verzia $snap je $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Aktualizovať na verziu $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Aktuálne používaná verzia $version je najnovšia.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Aktualizuje sa $snap...';
  }

  @override
  String get refreshRestart =>
      'Ak chcete pokračovať, prosím, zatvorte inštalátor a spustite ho znova';

  @override
  String get refreshCloseLabel => 'Zatvoriť inštalátor';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Kontrolujú sa predpoklady pre $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Obnovuje sa $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Kontroluje sa opätovná aktualizácia $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Pripravuje sa $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Sťahuje sa $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Overuje sa $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Pripája sa $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Zastavujú sa služby $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Odstraňujú sa aliasy $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Odpája sa $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Aktualizujú sa položky $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Aktualizuje sa príkazový riadok jadra $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopírujú sa údaje $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Nastavujú sa bezpečnostné profily $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Prepája sa $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Pripájajú sa zástrčky a sloty $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Nastavujú sa automatické aliasy $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Nastavujú sa aliasy $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Spúšťajú sa služby $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Čistí sa $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Obnovovací kľúč';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Dôležité';

  @override
  String get recoveryKeyHeader => 'Uložte svoj obnovovací kľúč';

  @override
  String get recoveryKeyInfoHeader =>
      'Bez obnovovacieho kľúča môžete prísť o všetky svoje údaje';

  @override
  String get recoveryKeyTextFieldLabel => 'Obnovovací kľúč';

  @override
  String get recoveryKeyStorageAdvice =>
      'Obnovovací kľúč budete potrebovať, ak dešifrovanie pri spustení zlyhá. Bez neho stratíte prístup ku všetkým údajom. Uložte si ho na bezpečné miesto, napríklad do správcu hesiel.';

  @override
  String get recoveryKeyConfirmation =>
      'Uložil(a) som svoj obnovovací kľúč na bezpečné miesto';

  @override
  String get recoveryKeyLinkLabel => 'Zistiť viac';

  @override
  String get recoveryKeySaveToFileLabel => 'Uložiť do súboru';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Zobraziť QR kód';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop – Obnovovací kľúč';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Naskenujte QR kód, skopírujte obnovovací kľúč a uložte ho na bezpečné miesto, napríklad do správcu hesiel. Môžete si tiež vytvoriť snímku obrazovky na neskoršie použitie.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Skopírované do schránky';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Súbor s obnovovacím kľúčom nebol uložený';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Súbor s obnovovacím kľúčom sa nedá uložiť do dočasného priečinka';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Neznáma chyba';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Nemáte oprávnenie zapisovať do tohto priečinka. Skúste iné umiestnenie alebo použite inú metódu.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Skúste iné umiestnenie, napríklad vymeniteľnú jednotku, alebo použite inú metódu.';

  @override
  String get recoveryKeyFilePickerTitle => 'Uložiť súbor obnovovacieho kľúča';

  @override
  String get recoveryKeyFilePickerFilter => 'Textové súbory';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Naskenujte QR kód alebo zadajte kód nižšie na <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automatická inštalácia';

  @override
  String get landscapeHeader => 'Prihláste sa do Landscape';

  @override
  String get landscapeDomainHeader => 'Zadajte doménu Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Landscape doména (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Zadajte doménu Landscape vašej organizácie na prihlásenie a získanie súboru na automatickú inštaláciu. FQDN vám môže poskytnúť vaše IT oddelenie.';

  @override
  String get landscapeDomainTextField => 'Doména Landscape (FQDN)';

  @override
  String get next => 'Ďalej';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Neplatná doména, prosím, skontrolujte ju alebo kontaktujte vaše IT oddelenie';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Pripojte sa na internet, aby ste mohli pokračovať';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internet je potrebný na získanie súboru na automatickú inštaláciu z Landscape';

  @override
  String get landscapeCodeExpiredWarning =>
      'Kód vypršal, prosím, skúste to znova';

  @override
  String get landscapeLoginFailedWarning =>
      'Prihlásenie zlyhalo, prosím, skúste to znova';

  @override
  String get landscapeErrorPageTitle =>
      'Automatická inštalácia nie je dostupná pre váš účet';

  @override
  String get landscapeErrorPageBody =>
      'Kontaktujte svoju IT podporu alebo vyskúšajte inú možnosť inštalácie.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Chybový kód: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu bude nainštalované podľa nastavení určených vašou organizáciou';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Nižšie si môžete skontrolovať súbor autoinštalácie importovaný z Landscape.';

  @override
  String get successIconSemanticLabel => 'Úspech';

  @override
  String get errorIconSemanticLabel => 'Chyba';

  @override
  String get closeIconSemanticLabel => 'Zavrieť';

  @override
  String get maximizeIconSemanticLabel => 'Maximalizovať';

  @override
  String get minimizeIconSemanticLabel => 'Minimalizovať';

  @override
  String get tpmActionPageTitle =>
      'Hardvérom podporované šifrovanie sa nepodarilo zapnúť';

  @override
  String get tpmActionBadgeLabel => 'Vyžaduje sa akcia';

  @override
  String get tpmActionDetailsLabel => 'Technické podrobnosti';

  @override
  String get tpmActionConfirmLabel => 'Potvrdiť';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'Riešenie $n: $text';
  }

  @override
  String tpmActionSingleSolutionLabel(String text) {
    return 'Riešenie: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel =>
      'Zistiť viac o hardvérovo podporovanom šifrovaní';

  @override
  String get tpmActionErrorSupportLabel =>
      'Vyskúšajte riešenia uvedené nižšie, kontaktujte IT podporu alebo zvoľte inú metódu šifrovania.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Skúste riešenie uvedené nižšie, kontaktujte IT podporu alebo zvoľte inú metódu šifrovania.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Kontaktujte IT podporu alebo zvoľte inú metódu šifrovania.';

  @override
  String get tpmActionErrorKindInternal => 'Interná chyba.';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Vyžaduje sa vypnutie.';

  @override
  String get tpmActionErrorKindRebootRequired => 'Vyžaduje sa reštart.';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'Neočakávaná akcia.';

  @override
  String get tpmActionErrorKindMissingArgument => 'Chýbajúci argument.';

  @override
  String get tpmActionErrorKindInvalidArgument => 'Neplatný argument.';

  @override
  String get tpmActionErrorKindActionFailed => 'Akcia zlyhala.';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'Aktuálne prostredie je virtuálny stroj.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'Tento počítač používa starší firmvér (legacy BIOS), ktorý nie je kompatibilný s touto metódou šifrovania.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'Vyskytol sa problém s firmvérom tohto počítača.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'Tento počítač nemá potrebný bezpečnostný hardvér (TPM 2.0) pre túto metódu šifrovania.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'TPM na tomto počítači je vypnuté.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'TPM na tomto počítači už používa iný systém alebo aplikácia.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'TPM na tomto počítači je momentálne uzamknutý.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'TPM na tomto počítači nemá k dispozícii dostatok úložného priestoru.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'Tento počítač nie je kompatibilný so šifrovaním podporovaným hardvérom.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'Ladenie UEFI je zapnuté.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'Tento počítač nemá požadovanú bezpečnostnú funkciu (ochranu DMA).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'Tento počítač nemá požadovanú bezpečnostnú funkciu (IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'V bezpečnostnej konfigurácii tohto počítača sa vyskytol problém.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Pri spúšťaní systému beží softvér, ktorý môže zabrániť bezpečnému pripojeniu k TPM tohto počítača.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Absolute Persistence Module je v tomto počítači zapnutý.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Secure Boot je na tomto počítači vypnutý alebo nie je nastavený v režime „deployed“.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Niektoré certifikáty, ktoré overujú softvér v tomto počítači, sú zastarané alebo používajú slabú ochranu.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'Tento počítač používa manuálny zoznam povolených položiek (allowlist) na overovanie softvéru pri štarte systému.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Prítomné doplnkové ovládače.';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'Vyskytol sa problém s TPM na tomto počítači.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'Vyskytol sa problém s firmvérom tohto počítača.';

  @override
  String get tpmActionFixActionReboot => 'Reštartovať';

  @override
  String get tpmActionFixActionShutdown => 'Vypnúť';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Reštartovať do nastavení firmvéru';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'Ak sa nastavenia firmvéru nenačítajú automaticky, reštartujte počítač a počas spúšťania opakovane stláčajte kláves pre vstup do nastavení (zvyčajne F2, F10 alebo Delete).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Zapnite ochranu DMA manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Vymažte TPM manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Zapnite Secure Boot manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Zapnite IOMMU manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Zapnite PCR banky manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Zapnite TPM manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Vymažte TPM manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Vymažte TPM manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Vypnite modul Absolute Persistence manuálne';

  @override
  String get tpmActionFixActionContactOem => 'Kontaktovať OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Kontaktovať dodávateľa OS';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Zapnite TPM po reštarte';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Po reštarte zapnite a vymažte TPM';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Vymažte TPM po reštarte';

  @override
  String get tpmActionFixActionClearTpm => 'Vymazať TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignorovať';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Reštartujte počítač, aby sa dokončili predchádzajúce akcie.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Reštartovanie počítača môže problém vyriešiť.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Vypnite počítač, aby sa dokončili predchádzajúce akcie.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'Toto môžete vykonať v nastaveniach firmvéru vášho počítača.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'Toto možno budete môcť vykonať v nastaveniach firmvéru vášho počítača. Podrobnosti nájdete v dokumentácii výrobcu procesora.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Skontrolujte, či je režim Secure Boot nastavený na „deployed“.';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'Táto funkcia môže byť označená ako „Virtualization Technology“, „VT-d“ alebo „AMD‑Vi“.';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Ignorovanie tohto problému môže viesť k menej bezpečnej inštalácii.';

  @override
  String get tpmActionRestartLabel => 'Reštartovať';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Reštartovať a zapnúť TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Reštartovať a vymazať TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignorovať a pokračovať';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Vymazanie TPM odstráni všetky šifrovacie kľúče';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'Stratíte prístup ku všetkým údajom na šifrovaných diskoch, pre ktoré nemáte obnovovacie kľúče. Taktiež to naruší ďalšie funkcie závislé od TPM, ako napríklad autentifikáciu a certifikáty.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'Chápem dôsledky vymazania TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'Po reštarte môžete byť požiadaní o potvrdenie tejto akcie.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Potom budete musieť spustiť inštaláciu od začiatku.';

  @override
  String get tpmActionErrorTitle => 'Toto riešenie zlyhalo';

  @override
  String get tpmActionErrorDescription =>
      'Vyskúšajte iné riešenie alebo kontaktujte IT podporu.';

  @override
  String get manualPartitioningWarningBody =>
      'Skúste niečo iné. Môžete tiež <a href=\"\">odoslať chybové hlásenie</a>.';
}
