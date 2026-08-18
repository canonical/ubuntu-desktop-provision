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
    return 'Inštalácia $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automatizovaná inštalácia';

  @override
  String get autoinstallDirectHeader =>
      'Importovať súbor automatickej inštalácie';

  @override
  String get autoinstallDirectUrlLabel =>
      'Môžete zadať URL adresu súboru automatickej inštalácie:';

  @override
  String get autoinstallDirectFileLabel => 'Alebo vyberte lokálny súbor:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Vybrať súbor...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Vymazať súbor';

  @override
  String get autoinstallDirectFilePickerTitle => 'Vybrať súbor';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Súbory YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Importovať';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'Súbor automatickej inštalácie nie je dostupný';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Skontrolujte, či je URL adresa správna, otestujte svoje internetové pripojenie alebo skúste neskôr.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Neplatná URL adresa';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Skontrolujte, či je URL adresa správna, alebo vyberte lokálny súbor.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Neplatný súbor automatickej inštalácie';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Skontrolujte súbor alebo poskytnite iný.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Súbor automatickej inštalácie nie je čitateľný';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Skontrolujte svoje oprávnenia alebo poskytnite iný súbor.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Neznáma chyba';

  @override
  String get autoinstallTitle => 'Typ inštalácie';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Ako chcete nainštalovať $DISTRO?';
  }

  @override
  String get autoinstallInstructions =>
      'Zadajte URL adresu alebo cestu k lokálnemu súboru autoinstall.yaml:';

  @override
  String get autoinstallInteractiveOption => 'Interaktívna inštalácia';

  @override
  String get autoinstallInteractiveDescription =>
      'Pre používateľov, ktorí chcú byť sprevádzaní krok za krokom počas inštalácie.';

  @override
  String get autoinstallDirectOption =>
      'Automatizovaná s súborom automatickej inštalácie';

  @override
  String get autoinstallDirectDescription =>
      'Pre pokročilých používateľov, ktorí majú súbor autoinstall.yaml na konzistentné a opakovateľné nastavenie systému.';

  @override
  String get autoinstallLandscapeOption => 'Automatizovaná s Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Pre používateľov v organizáciách, ktoré poskytujú súbor automatickej inštalácie prostredníctvom Landscape.';

  @override
  String get autoinstallErrorMessage =>
      'Príkaz v súbore automatickej inštalácie zlyhal počas inštalácie.';

  @override
  String get autoinstallGenericErrorMessage =>
      'Inštalácia nemôže pokračovať s poskytnutým súborom automatickej inštalácie.';

  @override
  String get autoinstallValidationErrorMessage =>
      'V poskytnutom súbore automatickej inštalácie sa vyskytol problém.';

  @override
  String get autoinstallCloudInitSchemaValidationErrorMessage =>
      'V používateľských údajoch cloud-init uvedených v súbore automatickej inštalácie sa vyskytol problém.';

  @override
  String get autoinstallErrorInstructions =>
      'Budete musieť reštartovať inštaláciu. Skontrolujte súbor automatickej inštalácie, vyberte iný typ inštalácie alebo kontaktujte svoju IT podporu.';

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
    return 'Príprava $DISTRO…';
  }

  @override
  String get warningLabel => 'Upozornenie:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Vyskúšať alebo nainštalovať $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Čo chcete robiť s $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Opraviť inštaláciu';

  @override
  String get tryOrInstallRepairDescription =>
      'Oprava preinštaluje všetok nainštalovaný softvér bez zásahu do dokumentov alebo nastavení.';

  @override
  String tryOption(String RELEASE) {
    return 'Vyskúšať $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Môžete vyskúšať $RELEASE bez akýchkoľvek zmien vo vašom počítači.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Nainštalovať $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Nainštalujte $RELEASE vedľa (alebo namiesto) vášho aktuálneho operačného systému. Toto by nemalo trvať príliš dlho.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Možno si budete chcieť prečítať <a href=\"$url\">poznámky k vydaniu</a>.';
  }

  @override
  String get rstTitle => 'Zistené RST';

  @override
  String get rstHeader =>
      'Musíte vypnúť RST, aby ste mohli pokračovať v inštalácii';

  @override
  String get rstDisable =>
      'Váš počítač používa Intel RST (Rýchla technológia úložiska). RST môžete vypnúť buď v:';

  @override
  String get rstDisableWindows => 'Windows, ak používate dual boot s Windows';

  @override
  String get rstDisableBios => 'Nastaveniach BIOS';

  @override
  String rstInstructions(String url) {
    return 'Pre inštrukcie naskenujte QR kód na inom zariadení alebo navštívte: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Konfigurovať Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'Vybrali ste si inštaláciu softvéru tretích strán pre ovládače. To vyžaduje vypnutie Secure Boot.\nNa to musíte teraz vybrať bezpečnostný kľúč a zadať ho pri reštarte systému.';

  @override
  String get configureSecureBootOption => 'Konfigurovať Secure Boot';

  @override
  String get chooseSecurityKey => 'Vybrať bezpečnostný kľúč';

  @override
  String get confirmSecurityKey => 'Potvrdiť bezpečnostný kľúč';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Nainštalovať softvér ovládačov teraz';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Môžete ho nainštalovať neskôr z Softvér a aktualizácie.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Je vyžadovaný bezpečnostný kľúč';

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
      'Ktoré aplikácie chcete nainštalovať ako prvé?';

  @override
  String get codecsAndDriversPageTitle => 'Optimalizovať váš počítač';

  @override
  String get codecsAndDriversPageDescription =>
      'Nainštalovať odporúčaný proprietárny softvér?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO predvolene neobsahuje žiadny proprietárny softvér. Inštalácia ďalšieho softvéru môže zlepšiť výkon vášho počítača.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Zistená grafická karta NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'Pre najlepší výkon grafických kariet NVIDIA sa dôrazne odporúča inštalácia ďalších ovládačov.';

  @override
  String get fullInstallationTitle => 'Rozšírený výber';

  @override
  String get fullInstallationSubtitle =>
      'Výber kancelárskych nástrojov, utilít a webového prehliadača vhodný aj pre offline použitie.';

  @override
  String get minimalInstallationTitle => 'Predvolený výber';

  @override
  String get minimalInstallationSubtitle =>
      'Len to najpodstatnejšie, webové prehliadač a základné utility.';

  @override
  String get otherOptions => 'Ďalšie možnosti';

  @override
  String get installThirdPartyTitle =>
      'Nainštalovať softvér tretích strán pre grafiku a Wi-Fi hardvér, ako aj ďalšie mediálne formáty';

  @override
  String get installThirdPartySubtitle =>
      'Tento softvér podlieha licenčným podmienkam uvedeným v jeho dokumentácii. Niektoré sú proprietárne.';

  @override
  String get installDriversTitle =>
      'Nainštalovať softvér tretích strán pre grafiku a Wi-Fi hardvér';

  @override
  String get installDriversSubtitle =>
      'Vrátane, ale nie len ovládačov NVIDIA a podobných';

  @override
  String get installCodecsTitle =>
      'Stiahnuť a nainštalovať podporu pre ďalšie mediálne formáty';

  @override
  String get installCodecsSubtitle =>
      'Vrátane, ale nie len MP3, MP4, MOV a podobných';

  @override
  String get batteryWarning => 'Počítač nie je pripojený k zdroju napájania.';

  @override
  String get offlineWarning => 'Momentálne ste offline';

  @override
  String get choosePassphraseHeader => 'Vytvoriť prístupovú frázu';

  @override
  String get choosePassphraseBody =>
      'Prístupovú frázu budete musieť zadať pri každom zapnutí počítača. Táto fráza sa líši od vášho používateľského hesla.';

  @override
  String get choosePassphraseInfoHeader =>
      'Uistite sa, že ste si uložili svoju prístupovú frázu';

  @override
  String get choosePassphraseInfoBody =>
      'Ak ju stratíte, prídete o všetky svoje dáta.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Uložte svoju prístupovú frázu a kľúč na obnovenie na bezpečné miesto';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Ak stratíte svoju prístupovú frázu, prídete o všetky svoje dáta. Fráza nenahrádza kľúč na obnovenie ani vaše používateľské heslo.';

  @override
  String get passphrasePageTitle => 'Šifrovanie';

  @override
  String get passphrasePageHeaderPassphrase => 'Nastaviť šifrovaciu frázu';

  @override
  String get passphrasePageHeaderPin => 'Nastaviť šifrovací PIN';

  @override
  String get passphrasePageBodyPassphrase =>
      'Pri každom spustení počítača budete musieť zadať prístupovú frázu. Táto prístupová fráza sa líši od hesla vášho používateľského účtu. Neskôr ju môžete zmeniť v Centre zabezpečenia.';

  @override
  String get passphrasePageBodyPin =>
      'Pri každom spustení počítača budete musieť zadať PIN. Tento PIN sa líši od hesla vášho používateľského účtu. Neskôr ho môžete zmeniť v Centre zabezpečenia.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Prístupová fráza';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Potvrdiť prístupovú frázu';

  @override
  String get passphrasePageRequiredPassphrase =>
      'Je vyžadovaná prístupová fráza';

  @override
  String get passphrasePageMismatchPassphrase =>
      'Prístupové frázy sa nezhodujú';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Potvrdiť PIN';

  @override
  String get passphrasePageRequiredPin => 'Je vyžadovaný PIN';

  @override
  String get passphrasePageMismatchPin => 'PINy sa nezhodujú';

  @override
  String get passphraseTypePassphraseTileTitle =>
      'Vyžadovať prístupovú frázu pri spustení';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Najbezpečnejšie. Pri každom zapnutí počítača budete musieť zadať dlhšiu prístupovú frázu.';

  @override
  String get passphraseTypePinTileTitle => 'Vyžadovať PIN pri spustení';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Bezpečnejšie. Pri každom zapnutí počítača budete musieť zadať číselný PIN.';

  @override
  String get passphraseTypeNoneTileTitle => 'Odomknúť disk automaticky';

  @override
  String get passphraseTypePageHeader => 'Dodatočná bezpečnosť';

  @override
  String get passphraseTypePageBody =>
      'Predvolene sa disk pri spustení odomkne automaticky. Na zvýšenie ochrany svojich údajov môžete využiť aj ďalšie možnosti.';

  @override
  String get passphraseTypePageBodyAuthRequired =>
      'Hardvérovo podporované šifrovanie vyžaduje dodatočné bezpečnostné prvky v tomto počítači.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Slabá prístupová fráza, urobte ju dlhšiu alebo zložitejšiu';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Priemerná prístupová fráza, urobte ju dlhšiu alebo zložitejšiu pre lepšiu bezpečnosť';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Silná prístupová fráza';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Slabý PIN, urobte ho dlhší alebo menej predvídateľný';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Priemerný PIN, urobte ho dlhší alebo menej predvídateľný pre lepšiu bezpečnosť';

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
    return 'Tento počítač momentálne má nainštalovaný $os. Čo chcete robiť?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Tento počítač momentálne má nainštalovaný $os1 a $os2. Čo chcete robiť?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Tento počítač momentálne má nainštalovaných viacero operačných systémov. Čo chcete robiť?';

  @override
  String get installationTypeNoOSDetected =>
      'Tento počítač momentálne nemá zistený žiadny operačný systém. Čo chcete robiť?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Vymazať disk a nainštalovať $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Všetky dáta a oddiely na disku budú vymazané, vrátane operačných systémov.';

  @override
  String get installationTypeAdvancedLabel => 'Pokročilé možnosti';

  @override
  String get installationTypeAdvancedTitle => 'Šifrovanie a súborový systém';

  @override
  String get installationTypeExperimental => 'Experimentálne';

  @override
  String get installationTypeNone => 'Žiadne šifrovanie';

  @override
  String get installationTypeNoneInfo =>
      'Štandardný súborový systém bez šifrovania.';

  @override
  String get installationTypeNoneSelected => 'Nevybrané';

  @override
  String get installationTypeLVM => 'Použiť LVM bez šifrovania';

  @override
  String get installationTypeLVMSelected => 'Vybrané LVM';

  @override
  String get installationTypeLVMEncryption =>
      'Šifrovať pomocou prístupovej frázy';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'Prístupovú frázu budete musieť zadať pri každom zapnutí počítača. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'Toto používa LVM so šifrovaním LUKS.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'Vybrané LVM a šifrovanie';

  @override
  String get installationTypeEncryptInfo =>
      'Bezpečnostný kľúč si vyberiete v ďalšom kroku.';

  @override
  String get installationTypeZFS => 'Použiť ZFS bez šifrovania';

  @override
  String get installationTypeZFSEncryption =>
      'Šifrovať prístupovou frázou pomocou ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Natívne šifrovanie so ZFS. Prístupovú frázu budete musieť zadať pri každom zapnutí počítača.';

  @override
  String get installationTypeZFSSelected => 'Vybrané ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'Vybrané ZFS a šifrovanie';

  @override
  String get installationTypeTPM => 'Použiť šifrovanie podporované hardvérom';

  @override
  String get installationTypeTPMInfoResolute =>
      'Disk sa odomkne automaticky pri spustení.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'Na tomto počítači nie je k dispozícii.';

  @override
  String get installationTypeTPMSelected => 'Vybrané TPM';

  @override
  String installationTypeReinstall(String os) {
    return 'Vymazať $os a preinštalovať';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Upozornenie:</font> Toto vymaže všetky vaše programy, dokumenty, fotografie, hudbu a ďalšie súbory $os.';
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
    return 'Nainštalovať $product vedľa iných oddielov';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Vyberte oddiel na zmenu veľkosti a vytvorenie miesta pre $product. Operačný systém si môžete vybrať pri spúšťaní.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Vymazať $os a nainštalovať $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Všetky súbory a dáta z existujúcej inštalácie $os budú trvalo vymazané.';
  }

  @override
  String get installationTypeManual => 'Manuálna inštalácia';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Pre pokročilých používateľov hľadajúcich prispôsobené nastavenia disku.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Vymazať disk a nainštalovať $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Začať odznova na vybranom disku.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Vybrať disk:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Vybrať oddiel:';

  @override
  String get selectGuidedStorageInfoLabel => 'Celý disk bude použitý:';

  @override
  String get selectGuidedStorageInstallNow => 'Nainštalovať teraz';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Vyberte miesto inštalácie $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Rozdeliť priestor disku posunutím deliča nižšie:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num menších oddielov je skrytých, pre viac kontroly použite <a href=\"$url\">pokročilý nástroj na správu oddielov</a>';
  }

  @override
  String get installAlongsideResizePartition => 'Zmeniť veľkosť oddielu';

  @override
  String get installAlongsideAllocateSpace => 'Vyhradiť priestor';

  @override
  String get installAlongsideFiles => 'Súbory';

  @override
  String get installAlongsidePartition => 'Oddiel:';

  @override
  String get installAlongsideSize => 'Veľkosť:';

  @override
  String get installAlongsideAvailable => 'Dostupné:';

  @override
  String get allocateDiskSpace => 'Manuálne rozdelenie';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Body pripojenia musia začínať znakom \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Body pripojenia nemôžu obsahovať medzery';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format nie je podporovaný súborový systém pre $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Zariadenie';

  @override
  String get diskHeadersType => 'Typ';

  @override
  String get diskHeadersMountPoint => 'Bod pripojenia';

  @override
  String get diskHeadersSize => 'Veľkosť';

  @override
  String get diskHeadersUsed => 'Použité';

  @override
  String get diskHeadersSystem => 'Systém';

  @override
  String get diskHeadersFormat => 'Formát';

  @override
  String get freeDiskSpace => 'Voľné miesto';

  @override
  String get newPartitionTable => 'Nová tabuľka oddielov';

  @override
  String get newPartitionTableConfirmationTitle => 'Nový prázdny oddiel';

  @override
  String get newPartitionTableConfirmationMessage =>
      'Vytvorenie novej tabuľky oddielov na celom zariadení odstráni všetky jeho aktuálne oddiely. Túto operáciu je možné v prípade potreby vrátiť späť.';

  @override
  String get tooManyPrimaryPartitions => 'Príliš veľa primárnych oddielov';

  @override
  String get partitionLimitReached => 'Dosiahnutý limit';

  @override
  String get bootLoaderDevice => 'Zariadenie pre inštaláciu zavádzača';

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
  String get partitionFormatLabel => 'Použiť ako:';

  @override
  String get partitionFormatNone => 'Nechať neformátovaný';

  @override
  String partitionFormatKeep(String format) {
    return 'Nechať naformátovaný ako $format';
  }

  @override
  String get partitionErase => 'Naformátovať oddiel';

  @override
  String get partitionMountPointLabel => 'Bod pripojenia:';

  @override
  String get confirmPageTitle => 'Pripravené na inštaláciu';

  @override
  String get confirmHeader => 'Skontrolujte svoje výbery';

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
  String get confirmSectionSecurityAndMoreTitle => 'Bezpečnosť a ďalšie';

  @override
  String get confirmPartitionsTitle => 'Oddiely';

  @override
  String get confirmPartitionTables =>
      'Tabuľky oddielov nasledujúcich zariadení sú zmenené:';

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
    return 'Zmenená veľkosť z $oldsize na $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Vytvorené a naformátované ako $format použité pre $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Naformátované ako $format použité pre $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Použité pre $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Naformátované ako $format';
  }

  @override
  String get installationCompleteTitle => 'Inštalácia dokončená';

  @override
  String readyToUse(String system) {
    return '$system je nainštalované a pripravené na použitie';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** bol skopírovaný na disk';
  }

  @override
  String restartInto(String system) {
    return 'Reštartovať do $system';
  }

  @override
  String get restartWarningBody =>
      'Reštartujte na dokončenie inštalácie alebo pokračujte v testovaní.\nŽiadne zmeny, ktoré urobíte, nebudú uložené.';

  @override
  String get rebootToConfigureWarning =>
      'Musíte reštartovať počítač, aby ste mohli pokračovať v procese inštalácie.';

  @override
  String get shutdown => 'Vypnúť';

  @override
  String get restartNow => 'Reštartovať teraz';

  @override
  String get continueTesting => 'Pokračovať v testovaní';

  @override
  String get bitlockerInfoTitle => 'Zistené BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'Jeden alebo viac oddielov je zašifrovaných pomocou BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'Na inštaláciu vedľa Windows vypnite BitLocker vo Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows môže po inštalácii vyžadovať kľúče na obnovenie pri spúšťaní.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Pre inštrukcie navštívte <a href=\"$url\">príručku BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Môžete prísť o všetky dáta bez kľúčov na obnovenie BitLocker';

  @override
  String get restartComputer => 'Reštartovať počítač';

  @override
  String get restartComputerTitle => 'Reštartovať počítač?';

  @override
  String get restartInstaller => 'Reštartovať inštalátor';

  @override
  String get restartIntoWindows => 'Reštartovať do Windows';

  @override
  String get restartIntoWindowsTitle => 'Reštartovať do Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Ste si istí, že chcete reštartovať počítač? Budete musieť neskôr reštartovať inštaláciu $DISTRO na dokončenie inštalácie $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Vitajte v $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Dostupné:';

  @override
  String get installationSlidesIncluded => 'Zahrnuté:';

  @override
  String get installationSlidesWelcomeTitle =>
      'Rýchle, zadarmo a plné nových funkcií';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Najnovšia verzia $DISTRO robí používanie počítača jednoduchším než kedykoľvek predtým.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Či už ste vývojár, tvorca, hráč alebo administrátor, nájdete tu nové nástroje, ktoré zvýšia vašu produktivitu a obohatia vaše zážitky v $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Všetky aplikácie, ktoré potrebujete';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Inštalujte, spravujte a aktualizujte všetky vaše aplikácie v Ubuntu Software, vrátane tisícov aplikácií z Obchodu Snap a archívu $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Vývoj s tým najlepším z open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO je ideálnou pracovnou stanicou pre vývoj aplikácií alebo webových stránok, dátovú vedu a AI/ML, ako aj pre devops a administráciu. Každé vydanie $DISTRO obsahuje najnovšie toolchainy a podporuje všetky hlavné IDE.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Zlepšite svoju kreativitu';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Ak ste animátor, dizajnér, tvorca videa alebo vývojár hier, je ľahké preniesť vaše pracovné postupy do $DISTRO s podporou open source a softvéru a aplikácií priemyselného štandardu.';
  }

  @override
  String get installationSlidesGamingTitle => 'Skvelé na hranie hier';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO podporuje najnovšie ovládače NVIDIA a Mesa na zlepšenie výkonu a kompatibility. Tisíce titulov z Windows sa skvele hrajú na $DISTRO prostredníctvom aplikácií ako Steam bez ďalšej konfigurácie.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Súkromné a bezpečné';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO poskytuje všetky nástroje, ktoré potrebujete na udržanie súkromia a bezpečnosti online. So zabudovaným firewallom a podporou VPN a radom aplikácií zameraných na súkromie, aby ste mali plnú kontrolu nad vašimi dátami.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Všetky vydania LTS $DISTRO prichádzajú s piatimi rokmi bezpečnostných záplat zahrnutých, predlžovaných na desať rokov s predplatným Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Zvýšte svoju produktivitu';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop zahŕňa LibreOffice, sadu open source aplikácií kompatibilných s Microsoft Office pre dokumenty, tabuľky a prezentácie. Dostupné sú aj populárne nástroje na spoluprácu.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Prístup pre každého';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'V srdci filozofie $DISTRO je presvedčenie, že počítače sú pre každého. So špičkovými nástrojmi dostupnosti a možnosťami zmeny jazyka, farieb a veľkosti textu, $DISTRO robí používanie počítača jednoduchým - kdekoľvek a kýmkoľvek.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Čítačka obrazovky Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Podpora jazykov';

  @override
  String get installationSlidesSupportTitle => 'Pomoc a podpora';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Oficiálna dokumentácia $DISTRO je dostupná online aj prostredníctvom ikony Pomocník v doku.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu pokrýva rad otázok a odpovedí a Ubuntu Discourse poskytuje návody a diskusie pre nových aj skúsených používateľov.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Pre podnikových používateľov Canonical poskytuje komerčnú podporu na uľahčenie onboardingu a bezpečnej správy Ubuntu v pracovnom prostredí.';

  @override
  String get installationSlidesSupportResources => 'Užitočné zdroje:';

  @override
  String get installationSlidesSupportDocumentation => 'Oficiálna dokumentácia';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Podniková podpora 24/7 s Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Ďalší snímok';

  @override
  String get previousSlideSemanticLabel => 'Predchádzajúci snímok';

  @override
  String get playSlideshowSemanticLabel => 'Prehrať ukážku';

  @override
  String get pauseSlideshowSemanticLabel => 'Pozastaviť ukážku';

  @override
  String get toggleLogsSemanticLabel => 'Prepnúť inštalačné protokoly';

  @override
  String get copyingFiles => 'Kopírovanie súborov…';

  @override
  String get installingSystem => 'Inštalácia systému…';

  @override
  String get configuringSystem => 'Nastavovanie systému…';

  @override
  String get installationFailed => 'Inštalácia zlyhala';

  @override
  String get notEnoughDiskSpaceTitle => 'Nedostatok miesta na disku';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Nedostatok miesta na disku na inštaláciu $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Vybraný disk nemá dostatok miesta na inštaláciu $DISTRO. Ukončite inštalátor a uvoľnite miesto alebo vyberte iný disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Dostupné:';

  @override
  String get notEnoughDiskSpaceRequired => 'Vyžadované:';

  @override
  String get refreshPageTitle => 'Aktualizácia dostupná';

  @override
  String get refreshHeader => 'Je dostupná aktualizácia pre inštalátor';

  @override
  String get refreshUpdateNow => 'Aktualizovať teraz';

  @override
  String get refreshInfo =>
      'Aktualizujte na najnovšiu verziu pre lepšiu spoľahlivosť a viac funkcií.';

  @override
  String get refreshReady => 'Aktualizácia pripravená';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Aktuálna verzia $snap je $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Aktualizovať na verziu $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Aktuálna verzia $version je aktuálna.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Aktualizácia $snap...';
  }

  @override
  String get refreshRestart =>
      'Prosím, zatvorte inštalátor a reštartujte ho na pokračovanie';

  @override
  String get refreshCloseLabel => 'Zatvoriť inštalátor';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Zabezpečovanie predpokladov $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Obnovovanie $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Kontrola re-aktualizácie $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Príprava $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Sťahovanie $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Validácia $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Pripájanie $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Zastavovanie služieb $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Odstraňovanie aliasov $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Odpájanie $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Aktualizácia zdrojov $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Aktualizácia príkazového riadku jadra $snap...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopírovanie dát $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Nastavovanie bezpečnostných profilov $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Pripájanie $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Pripájanie zásuviek a slotov $snap...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Nastavovanie automatických aliasov $snap...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Nastavovanie aliasov $snap...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Spúšťanie služieb $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Čistenie $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Kľúč na obnovenie';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Dôležité';

  @override
  String get recoveryKeyHeader => 'Uložte svoj kľúč na obnovenie';

  @override
  String get recoveryKeyInfoHeader =>
      'Bez kľúča na obnovenie môžete prísť o všetky svoje dáta';

  @override
  String get recoveryKeyTextFieldLabel => 'Kľúč na obnovenie';

  @override
  String get recoveryKeyStorageAdvice =>
      'Tento kľúč na obnovenie budete musieť poskytnúť, ak dešifrovanie zlyhá pri spustení. Bez kľúča stratíte prístup ku všetkým svojim dátam. Uložte ho na bezpečné miesto, napríklad do správcu hesiel.';

  @override
  String get recoveryKeyConfirmation =>
      'Uložil som svoj kľúč na obnovenie na bezpečné miesto';

  @override
  String get recoveryKeyLinkLabel => 'Zistiť viac';

  @override
  String get recoveryKeySaveToFileLabel => 'Uložiť do súboru';

  @override
  String get recoveryKeyShowQrCodeLabel => 'Zobraziť QR kód';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - Kľúč na obnovenie';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'Naskenujte QR kód na skopírovanie kľúča na obnovenie a uloženie ho na bezpečné miesto, napríklad do správcu hesiel. Môžete si ho tiež vyfotiť na neskoršie použitie.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Skopírované do schránky';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Súbor kľúča na obnovenie nebol uložený';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Súbor kľúča na obnovenie nemožno uložiť do dočasného umiestnenia';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Neznáma chyba';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Nemáte oprávnenie na zápis do tohto priečinka. Skúste iné umiestnenie alebo použite inú metódu.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Skúste iné umiestnenie, napríklad vymeniteľný disk, alebo použite inú metódu.';

  @override
  String get recoveryKeyFilePickerTitle => 'Uložiť súbor kľúča na obnovenie';

  @override
  String get recoveryKeyFilePickerFilter => 'Textové súbory';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Naskenujte QR kód alebo zadajte nižšie uvedený kód na <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Automatizovaná inštalácia';

  @override
  String get landscapeHeader => 'Prihlásiť sa do Landscape';

  @override
  String get landscapeDomainHeader => 'Zadajte doménu Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Doména Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Poskytnite doménu Landscape vašej organizácie na prihlásenie a získanie súboru automatickej inštalácie. FQDN získate od vašej IT podpory.';

  @override
  String get landscapeDomainTextField => 'Doména Landscape (FQDN)';

  @override
  String get next => 'Ďalej';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Neplatná doména, skontrolujte alebo kontaktujte vašu IT podporu';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Pripojte sa na internet na pokračovanie';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Na získanie súboru automatickej inštalácie z Landscape je potrebný internet';

  @override
  String get landscapeCodeExpiredWarning => 'Kód vypršal, skúste to znova';

  @override
  String get landscapeLoginFailedWarning =>
      'Prihlásenie zlyhalo, skúste to znova';

  @override
  String get landscapeErrorPageTitle =>
      'Automatizovaná inštalácia nie je dostupná pre váš účet';

  @override
  String get landscapeErrorPageBody =>
      'Kontaktujte vašu IT podporu alebo skúste inú možnosť inštalácie.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Kód chyby: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu sa nainštaluje s konfiguráciou poskytnutou vašou organizáciou';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'Nižšie si môžete skontrolovať súbor automatickej inštalácie importovaný z Landscape.';

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
      'Šifrovanie podporované hardvérom sa nepodarilo povoliť';

  @override
  String get tpmActionPageTitleActionable =>
      'Vyskytol sa problém so šifrovaním podporovaným hardvérom';

  @override
  String get tpmActionBadgeLabel => 'Vyžaduje sa akcia';

  @override
  String get tpmActionDetailsLabel => 'Technické detaily';

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
      'Zistiť viac o šifrovaní podporovanom hardvérom';

  @override
  String get tpmActionErrorSupportLabel =>
      'Skúste nižšie uvedené riešenia, kontaktujte IT podporu alebo vyberte inú metódu šifrovania.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Skúste nižšie uvedené riešenie, kontaktujte IT podporu alebo vyberte inú metódu šifrovania.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Kontaktujte IT podporu alebo vyberte inú metódu šifrovania.';

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
      'Existuje problém s firmvérom tohto počítača.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'Tento počítač nemá požadovaný bezpečnostný hardvér (TPM 2.0) pre túto metódu šifrovania.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'TPM tohto počítača je vypnuté.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'TPM tohto počítača je už používané iným systémom alebo aplikáciou.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'TPM tohto počítača je momentálne zamknuté.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'TPM tohto počítača nemá dostatok dostupného úložiska.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'Tento počítač nie je kompatibilný so šifrovaním podporovaným hardvérom.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'Ladenie UEFI je povolené.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'Tento počítač postráda požadovanú bezpečnostnú funkciu (ochrana DMA).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'Tento počítač postráda požadovanú bezpečnostnú funkciu (IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'Existuje problém s bezpečnostnou konfiguráciou tohto počítača.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Pri spúšťaní beží softvér, ktorý môže brániť bezpečnému pripojeniu s TPM počítača.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Modul Absolute Persistence je v tomto počítači povolený.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Secure boot je v tomto počítači vypnutý alebo nie je nastavený v nasadzovanom režime.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Niektoré certifikáty overujúce softvér v tomto počítači sú zastarané alebo používajú slabú ochranu.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'Tento počítač používa manuálny zoznam povolených položiek na overenie softvéru pri spúšťaní.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Sú prítomné doplnkové ovládače.';

  @override
  String get tpmActionErrorKindNoHardwareRootOfTrust =>
      'Tento počítač postráda požadovanú bezpečnostnú funkciu (hardvérový koreň dôvery).';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'Existuje problém s TPM tohto počítača.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'Existuje problém s firmvérom tohto počítača.';

  @override
  String get tpmActionFixActionReboot => 'Reštartovať';

  @override
  String get tpmActionFixActionShutdown => 'Vypnúť';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Reštartovať do nastavení firmvéru';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'Ak sa nastavenia firmvéru nenačítajú automaticky, reštartujte a počas spúšťania opakovane stláčajte kláves nastavení (bežne F2, F10 alebo Delete).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'Povoliť ochranu DMA manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'Vymazať TPM manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'Povoliť secure boot manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'Povoliť IOMMU manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'Povoliť banky PCR manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'Povoliť TPM manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'Vymazať TPM manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'Vymazať TPM manuálne';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'Vypnúť modul Absolute Persistence manuálne';

  @override
  String get tpmActionFixActionContactOem => 'Kontaktovať OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Kontaktovať výrobcu OS';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Povoliť TPM pri reštarte';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Povoliť a vymazať TPM pri reštarte';

  @override
  String get tpmActionFixActionClearTpmViaFirmware =>
      'Vymazať TPM pri reštarte';

  @override
  String get tpmActionFixActionClearTpm => 'Vymazať TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignorovať';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Reštartujte počítač na dokončenie predchádzajúcich akcií.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Reštartovanie počítača môže vyriešiť problém.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Vypnite počítač na dokončenie predchádzajúcich akcií.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'Môžete to urobiť v nastaveniach firmvéru vášho počítača.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'Možno to urobíte v nastaveniach firmvéru vášho počítača. Pre usmernenie skontrolujte dokumentáciu výrobcu CPU.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Skontrolujte, či je secure boot mode nastavený na \"deployed\".';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'Táto funkcia môže byť označená ako \"Virtualization Technology\", \"VT-d\" alebo \"AMD-V\".';

  @override
  String get tpmActionFixActionProceedDescription =>
      'Ignorovanie tohto problému môže viesť k menej bezpečnej inštalácii.';

  @override
  String get tpmActionRestartLabel => 'Reštartovať';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'Reštartovať a povoliť TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'Reštartovať a vymazať TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'Ignorovať a pokračovať';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'Vymazanie TPM vymaže všetky šifrovacie kľúče';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'Stratíte prístup ku všetkým dátam na šifrovaných diskoch, pre ktoré nemáte kľúče na obnovenie. Tým sa tiež prerušia iné funkcie závislé od TPM, ako je autentifikácia a certifikáty.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'Rozumiem dôsledkom vymazania TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'Pri reštarte vás môžu požiadať o potvrdenie tejto akcie.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Potom budete musieť začať inštaláciu znova.';

  @override
  String get tpmActionErrorTitle => 'Toto riešenie zlyhalo';

  @override
  String get tpmActionErrorDescription =>
      'Skúste iné riešenie alebo kontaktujte IT podporu.';

  @override
  String get manualPartitioningWarningBody =>
      'Skúste niečo iné. Môžete tiež <a href=\"\">odoslať hlásenie o chybe</a>.';

  @override
  String stepIndicatorLabel(int CURRENT_STEP, int TOTAL_STEPS) {
    return 'Krok $CURRENT_STEP z $TOTAL_STEPS';
  }
}
