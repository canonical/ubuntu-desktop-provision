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
    return 'Inštalovať $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automatizovaná inštalácia';

  @override
  String get autoinstallDirectHeader => 'Importovať súbor autoinstall';

  @override
  String get autoinstallDirectUrlLabel =>
      'Môžete zadať URL súboru autoinstall:';

  @override
  String get autoinstallDirectFileLabel => 'Alebo vybrať lokálny súbor:';

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
      'Súbor autoinstall nie je dostupný';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'Skontrolujte správnosť URL, otestujte pripojenie na internet alebo to skúste neskôr.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Neplatná URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Skontrolujte správnosť URL alebo vyberte lokálny súbor.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Neplatný súbor autoinstall';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Skontrolujte súbor alebo poskytnite iný.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Súbor autoinstall nie je čitateľný';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Skontrolujte oprávnenia alebo poskytnite iný súbor.';

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
      'Zadajte URL autoinstall.yaml alebo cestu k lokálnemu súboru:';

  @override
  String get autoinstallInteractiveOption => 'Interaktívna inštalácia';

  @override
  String get autoinstallInteractiveDescription =>
      'Pre používateľov, ktorí chcú byť sprevádzaní inštaláciou krok za krokom.';

  @override
  String get autoinstallDirectOption => 'Automatizovaná so súborom autoinstall';

  @override
  String get autoinstallDirectDescription =>
      'Pre pokročilých používateľov, ktorí majú autoinstall.yaml pre konzistentné a opakovateľné nastavenia systému.';

  @override
  String get autoinstallLandscapeOption => 'Automatizovaná s Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Pre používateľov v organizáciách, ktoré poskytujú súbor autoinstall cez Landscape.';

  @override
  String get autoinstallErrorMessage =>
      'Príkaz v súbore autoinstall zlyhal počas inštalácie.';

  @override
  String get autoinstallGenericErrorMessage =>
      'Inštalácia nemôže pokračovať s poskytnutým súborom autoinstall.';

  @override
  String get autoinstallValidationErrorMessage =>
      'Vyskytol sa problém s poskytnutým súborom autoinstall.';

  @override
  String get autoinstallCloudInitSchemaValidationErrorMessage =>
      'Vyskytol sa problém s používateľskými údajmi cloud-init poskytnutými v súbore autoinstall.';

  @override
  String get autoinstallErrorInstructions =>
      'Budete musieť reštartovať inštaláciu. Skontrolujte súbor autoinstall, vyberte iný typ inštalácie alebo kontaktujte IT podporu.';

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
    return 'Čo chcete robiť s $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Opraviť inštaláciu';

  @override
  String get tryOrInstallRepairDescription =>
      'Oprava preinštaluje všetok nainštalovaný softvér bez ovplyvnenia dokumentov alebo nastavení.';

  @override
  String tryOption(String RELEASE) {
    return 'Vyskúšať $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Môžete vyskúšať $RELEASE bez vykonania akýchkoľvek zmien vo vašom počítači.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Nainštalovať $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Nainštalujte $RELEASE vedľa (alebo namiesto) vášho aktuálneho operačného systému. Nemalo by to trvať príliš dlho.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Možno si budete chcieť prečítať <a href=\"$url\">poznámky k vydaniu</a>.';
  }

  @override
  String get rstTitle => 'Zistený RST';

  @override
  String get rstHeader => 'Pre pokračovanie inštalácie musíte zakázať RST';

  @override
  String get rstDisable =>
      'Váš počítač používa Intel RST (Rapid Storage Technology). RST môžete zakázať buď v:';

  @override
  String get rstDisableWindows => 'Windows, ak používate duálny boot s Windows';

  @override
  String get rstDisableBios => 'Nastaveniach BIOS';

  @override
  String rstInstructions(String url) {
    return 'Pre pokyny nasnímajte QR kód na inom zariadení alebo navštívte: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Konfigurovať Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'Zvolili ste inštaláciu ovládačov tretích strán. Vyžaduje si to vypnutie Secure Boot.\nTeraz musíte zvoliť bezpečnostný kľúč a zadať ho pri reštarte systému.';

  @override
  String get configureSecureBootOption => 'Konfigurovať Secure Boot';

  @override
  String get chooseSecurityKey => 'Zvoliť bezpečnostný kľúč';

  @override
  String get confirmSecurityKey => 'Potvrdiť bezpečnostný kľúč';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Teraz neinštalovať softvér ovládačov';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Môžete ho nainštalovať neskôr z aplikácie Softvér a aktualizácie.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Bezpečnostný kľúč je povinný';

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
      'Aké aplikácie chcete nainštalovať na začiatok?';

  @override
  String get codecsAndDriversPageTitle => 'Optimalizovať váš počítač';

  @override
  String get codecsAndDriversPageDescription =>
      'Nainštalovať odporúčaný proprietárny softvér?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO sa dodáva bez proprietárneho softvéru. Inštalácia ďalšieho softvéru môže zlepšiť výkon vášho počítača.';
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
      'Výber kancelárskych nástrojov, utilít a webového prehliadača vhodný na offline použitie.';

  @override
  String get minimalInstallationTitle => 'Predvolený výber';

  @override
  String get minimalInstallationSubtitle =>
      'Len základ, webový prehliadač a základné utility.';

  @override
  String get otherOptions => 'Ďalšie možnosti';

  @override
  String get installThirdPartyTitle =>
      'Nainštalovať softvér tretích strán pre grafiku a Wi-Fi hardvér, ako aj ďalšie formáty médií';

  @override
  String get installThirdPartySubtitle =>
      'Tento softvér podlieha licenčným podmienkam uvedeným v jeho dokumentácii. Niektoré sú proprietárne.';

  @override
  String get installDriversTitle =>
      'Nainštalovať softvér tretích strán pre grafiku a Wi-Fi hardvér';

  @override
  String get installDriversSubtitle =>
      'Vrátane, ale nie výlučne, ovládačov NVIDIA a podobne';

  @override
  String get installCodecsTitle =>
      'Stiahnuť a nainštalovať podporu pre ďalšie formáty médií';

  @override
  String get installCodecsSubtitle =>
      'Vrátane, ale nie výlučne, MP3, MP4, MOV a podobne';

  @override
  String get batteryWarning => 'Počítač nie je pripojený k zdroju napájania.';

  @override
  String get offlineWarning => 'Momentálne ste offline';

  @override
  String get choosePassphraseHeader => 'Vytvoriť prístupovú frázu';

  @override
  String get choosePassphraseBody =>
      'Prístupovú frázu budete musieť zadať pri každom zapnutí počítača. Táto prístupová fráza je odlišná od vášho používateľského hesla.';

  @override
  String get choosePassphraseInfoHeader =>
      'Nezabudnite si uložiť prístupovú frázu';

  @override
  String get choosePassphraseInfoBody =>
      'Ak ju stratíte, stratíte všetky svoje údaje.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'Uložte svoju prístupovú frázu a kľúč na obnovenie na bezpečné miesto';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'Ak stratíte prístupovú frázu, stratíte všetky svoje údaje. Prístupová fráza nenahrádza kľúč na obnovenie ani vaše používateľské heslo.';

  @override
  String get passphrasePageTitle => 'Šifrovanie';

  @override
  String get passphrasePageHeaderPassphrase =>
      'Nastaviť šifrovaciu prístupovú frázu';

  @override
  String get passphrasePageHeaderPin => 'Nastaviť šifrovací PIN';

  @override
  String get passphrasePageBodyPassphrase =>
      'Prístupovú frázu budete musieť zadať pri každom spustení počítača. Táto prístupová fráza je odlišná od vášho používateľského hesla. Môžete ju neskôr zmeniť v Centre zabezpečenia.';

  @override
  String get passphrasePageBodyPin =>
      'PIN budete musieť zadať pri každom spustení počítača. Tento PIN je odlišný od vášho používateľského hesla. Môžete ho neskôr zmeniť v Centre zabezpečenia.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Prístupová fráza';

  @override
  String get passphrasePageConfirmPassphraseHint => 'Potvrdiť prístupovú frázu';

  @override
  String get passphrasePageRequiredPassphrase => 'Prístupová fráza je povinná';

  @override
  String get passphrasePageMismatchPassphrase =>
      'Prístupové frázy sa nezhodujú';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Potvrdiť PIN';

  @override
  String get passphrasePageRequiredPin => 'PIN je povinný';

  @override
  String get passphrasePageMismatchPin => 'PIN kódy sa nezhodujú';

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
  String get passphraseTypePageHeader => 'Ďalšie zabezpečenie';

  @override
  String get passphraseTypePageBody =>
      'Predvolene sa disk odomkne automaticky pri spustení. Máte tiež možnosti ďalšej ochrany vašich údajov.';

  @override
  String get passphraseTypePageBodyAuthRequired =>
      'Hardvérovo podporované šifrovanie vyžaduje v tomto počítači ďalšie zabezpečenie.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'Slabá prístupová fráza, urobte ju dlhšou alebo zložitejšou';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'Priemerná prístupová fráza, pre lepšie zabezpečenie ju urobte dlhšou alebo zložitejšou';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'Silná prístupová fráza';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'Slabý PIN, urobte ho dlhším alebo menej predvídateľným';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'Priemerný PIN, pre lepšie zabezpečenie ho urobte dlhším alebo menej predvídateľným';

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
    return 'Tento počítač má momentálne nainštalovaný $os. Čo by ste chceli robiť?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Tento počítač má momentálne nainštalovaný $os1 a $os2. Čo by ste chceli robiť?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'Tento počítač má momentálne nainštalovaných viacero operačných systémov. Čo by ste chceli robiť?';

  @override
  String get installationTypeNoOSDetected =>
      'V tomto počítači neboli zistené žiadne operačné systémy. Čo by ste chceli robiť?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Vymazať disk a nainštalovať $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'Všetky údaje a oddiely na disku budú vymazané, vrátane operačných systémov.';

  @override
  String get installationTypeAdvancedLabel => 'Pokročilé možnosti';

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
    return 'Pri každom zapnutí počítača budete musieť zadať prístupovú frázu. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'Používa sa LVM so šifrovaním LUKS.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'Vybrané LVM a šifrovanie';

  @override
  String get installationTypeEncryptInfo =>
      'V ďalšom kroku si nastavíte bezpečnostný kľúč.';

  @override
  String get installationTypeZFS => 'Použiť ZFS bez šifrovania';

  @override
  String get installationTypeZFSEncryption =>
      'Šifrovať prístupovou frázou pomocou ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'Natívne šifrovanie so ZFS. Pri každom zapnutí počítača budete musieť zadať prístupovú frázu.';

  @override
  String get installationTypeZFSSelected => 'Vybrané ZFS';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'Vybrané ZFS a šifrovanie';

  @override
  String get installationTypeTPM => 'Použiť hardvérovo podporované šifrovanie';

  @override
  String get installationTypeTPMInfoResolute =>
      'Disk sa automaticky odomkne počas spúšťania.';

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
    return '<font color=\"$color\">Upozornenie:</font> Týmto sa odstránia všetky vaše programy, dokumenty, fotky, hudba a akékoľvek ďalšie súbory $os.';
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
    return 'Vyberte oddiel, ktorého veľkosť chcete zmeniť a vytvoriť miesto pre $product. Operačný systém si môžete vybrať počas spúšťania.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Vymazať $os a nainštalovať $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Všetky súbory a údaje z existujúcej inštalácie $os budú trvalo odstránené.';
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
  String get selectGuidedStorageInfo =>
      'Začnite od začiatku na vybratom disku.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Vybrať jednotku:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Vybrať oddiel:';

  @override
  String get selectGuidedStorageInfoLabel => 'Použije sa celý disk:';

  @override
  String get selectGuidedStorageInstallNow => 'Nainštalovať teraz';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Vyberte, kam nainštalovať $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'Prideľte miesto na jednotke presunutím deliča nižšie:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num menších oddielov je skrytých, použite <a href=\"$url\">nástroj na pokročilé rozdelenie oddielov</a> pre väčšiu kontrolu';
  }

  @override
  String get installAlongsideResizePartition => 'Zmeniť veľkosť oddielu';

  @override
  String get installAlongsideAllocateSpace => 'Prideľte miesto';

  @override
  String get installAlongsideFiles => 'Súbory';

  @override
  String get installAlongsidePartition => 'Oddiel:';

  @override
  String get installAlongsideSize => 'Veľkosť:';

  @override
  String get installAlongsideAvailable => 'Dostupné:';

  @override
  String get allocateDiskSpace => 'Manuálne rozdelenie oddielov';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'Pripojovací bod musí začínať \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'Pripojovací bod nesmie obsahovať medzery';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format nie je podporovaný súborový systém pre $mountpoint';
  }

  @override
  String get allocateDiskSpaceBootMustBeExt4 =>
      '/boot musí byť pripojený na oddiel ext4';

  @override
  String get allocateDiskSpaceBootMustBeExt4Info =>
      'Použite oddiel ext4 pre / alebo vytvorte samostatný oddiel ext4 pre /boot';

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
      'Vytvorenie novej tabuľky oddielov na celom zariadení odstráni všetky jeho aktuálne oddiely. Táto operácia sa v prípade potreby dá vrátiť späť.';

  @override
  String get tooManyPrimaryPartitions => 'Príliš mnoho primárnych oddielov';

  @override
  String get partitionLimitReached => 'Limit dosiahnutý';

  @override
  String get bootLoaderDevice => 'Zariadenie pre inštaláciu zavádzača';

  @override
  String get partitionCreateTitle => 'Vytvoriť oddiel';

  @override
  String get partitionEditTitle => 'Upraviť oddiel';

  @override
  String get partitionSizeLabel => 'Veľkosť:';

  @override
  String get partitionTypeLabel => 'Typ pre nový oddiel:';

  @override
  String get partitionTypePrimary => 'Primárny';

  @override
  String get partitionTypeLogical => 'Logický';

  @override
  String get partitionLocationLabel => 'Umiestnenie pre nový oddiel:';

  @override
  String get partitionLocationBeginning => 'Začiatok priestoru';

  @override
  String get partitionLocationEnd => 'Koniec priestoru';

  @override
  String get partitionFormatLabel => 'Použiť ako:';

  @override
  String get partitionFormatNone => 'Nechať neformátované';

  @override
  String partitionFormatKeep(String format) {
    return 'Nechať naformátované ako $format';
  }

  @override
  String get partitionErase => 'Naformátovať oddiel';

  @override
  String get partitionMountPointLabel => 'Bod pripojenia:';

  @override
  String get confirmPageTitle => 'Pripravené na inštaláciu';

  @override
  String get confirmHeader => 'Skontrolujte vaše voľby';

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
    return '$system je nainštalovaný a pripravený na použitie';
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
      'Reštartujte pre dokončenie inštalácie alebo pokračujte v testovaní.\nAkékoľvek zmeny, ktoré vykonáte, nebudú uložené.';

  @override
  String get rebootToConfigureWarning =>
      'Pre pokračovanie v inštalačnom procese musíte reštartovať počítač.';

  @override
  String get shutdown => 'Vypnúť';

  @override
  String get restartNow => 'Reštartovať teraz';

  @override
  String get continueTesting => 'Pokračovať v testovaní';

  @override
  String get bitlockerInfoTitle => 'Zistený BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'Jeden alebo viacero oddielov je zašifrovaných pomocou BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'Pre inštaláciu vedľa Windows deaktivujte BitLocker vo Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows môže po inštalácii pri spustení vyžadovať kľúče na obnovenie.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Pre pokyny navštívte <a href=\"$url\">sprievodcu BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'Bez kľúčov na obnovenie BitLocker môžete stratiť všetky svoje údaje';

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
    return 'Naozaj chcete reštartovať svoj počítač? Neskôr budete musieť reštartovať inštaláciu $DISTRO, aby ste dokončili inštaláciu $DISTRO.';
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
      'Rýchle, bezplatné a plné nových funkcií';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Najnovšia verzia $DISTRO uľahčuje prácu s počítačom viac ako kedykoľvek predtým.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Či už ste vývojár, tvorca, hráč alebo správca, nájdete tu nové nástroje na zvýšenie vašej produktivity a zlepšenie práce s $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Všetky aplikácie, ktoré potrebujete';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Inštalujte, spravujte a aktualizujte všetky svoje aplikácie v Ubuntu Softvér, vrátane tisícov aplikácií z obchodu Snap Store aj z archívu $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Vyvíjajte s tým najlepším z open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO je ideálne prostredie pre vývoj aplikácií alebo webu, dátovú vedu a AI/ML, ako aj devops a správu. Každé vydanie $DISTRO obsahuje najnovšie nástroje a podporuje všetky hlavné IDE.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Zlepšite svoju kreativitu';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Ak ste animátor, dizajnér, tvorca videí alebo vývojár hier, je jednoduché preniesť svoje pracovné postupy do $DISTRO s podporou open source a odvetvovo štandardného softvéru a aplikácií.';
  }

  @override
  String get installationSlidesGamingTitle => 'Skvelé na hry';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO podporuje najnovšie ovládače NVIDIA a Mesa na zlepšenie výkonu a kompatibility. Tisíce titulov pre Windows skvelo fungujú na $DISTRO cez aplikácie ako Steam bez ďalšej konfigurácie.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Súkromné a bezpečné';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO poskytuje všetky nástroje, ktoré potrebujete na zachovanie súkromia a bezpečnosti online. S vstavanou podporou firewallu a VPN a množstvom aplikácií zameraných na súkromie, aby ste mali úplnú kontrolu nad svojimi údajmi.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Všetky verzie $DISTRO LTS majú zahrnuté 5-ročné bezpečnostné aktualizácie, čo sa s predplatným Ubuntu Pro predlžuje na desať rokov.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Zvýšte svoju produktivitu';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop zahŕňa LibreOffice, sadu open source aplikácií kompatibilných s Microsoft Office pre dokumenty, tabuľky a prezentácie. K dispozícii sú aj obľúbené nástroje na spoluprácu.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Prístup pre všetkých';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'V srdci filozofie $DISTRO je presvedčenie, že práca s počítačom je pre každého. S pokročilými nástrojmi dostupnosti a možnosťami zmeny jazyka, farieb a veľkosti textu $DISTRO uľahčuje prácu s počítačom - nech ste ktokoľvek a kdekoľvek.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Čítačka obrazovky Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Jazyková podpora';

  @override
  String get installationSlidesSupportTitle => 'Pomoc a podpora';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Oficiálna dokumentácia $DISTRO je dostupná online aj cez ikonu Pomoc v dokovacej lište.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu obsahuje množstvo otázok a odpovedí a Ubuntu Discourse poskytuje návody a diskusie pre nových aj skúsených používateľov.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Pre podnikových používateľov Canonical poskytuje komerčnú podporu, aby uľahčil nasadenie a bezpečnú správu Ubuntu na pracovisku.';

  @override
  String get installationSlidesSupportResources => 'Užitočné zdroje:';

  @override
  String get installationSlidesSupportDocumentation => 'Oficiálna dokumentácia';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'Podpora pre podniky 24/7 s Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'Ďalšia snímka';

  @override
  String get previousSlideSemanticLabel => 'Predchádzajúca snímka';

  @override
  String get playSlideshowSemanticLabel => 'Prehrať prezentáciu';

  @override
  String get pauseSlideshowSemanticLabel => 'Pozastaviť prezentáciu';

  @override
  String get toggleLogsSemanticLabel => 'Prepnúť záznamy inštalácie';

  @override
  String get copyingFiles => 'Kopírujú sa súbory…';

  @override
  String get installingSystem => 'Inštaluje sa systém…';

  @override
  String get configuringSystem => 'Nastavuje sa systém…';

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
    return 'Vybratý disk nemá dostatok miesta na inštaláciu $DISTRO. Ukončite inštalátor na uvoľnenie miesta alebo vyberte iný disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Dostupné:';

  @override
  String get notEnoughDiskSpaceRequired => 'Požadované:';

  @override
  String get refreshPageTitle => 'Dostupná aktualizácia';

  @override
  String get refreshHeader => 'Pre inštalátor je dostupná aktualizácia';

  @override
  String get refreshUpdateNow => 'Aktualizovať teraz';

  @override
  String get refreshInfo =>
      'Aktualizujte na najnovšiu verziu pre zlepšenú spoľahlivosť a viac funkcií.';

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
    return 'Verzia $version je aktuálna.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Aktualizuje sa $snap...';
  }

  @override
  String get refreshRestart =>
      'Zatvorte inštalátor a znova ho spustite, aby ste mohli pokračovať';

  @override
  String get refreshCloseLabel => 'Zatvoriť inštalátor';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Zabezpečujú sa požiadavky $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Obnovuje sa $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Kontroluje sa opätovné obnovenie $snap...';
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
    return 'Aktualizujú sa zdroje $snap...';
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
    return 'Pripája sa $snap...';
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
  String get recoveryKeyTitle => 'Kľúč na obnovenie';

  @override
  String get recoveryKeyTitleBadgeLabel => 'Dôležité';

  @override
  String get recoveryKeyHeader => 'Uložte si kľúč na obnovenie';

  @override
  String get recoveryKeyInfoHeader =>
      'Bez kľúča na obnovenie môžete stratiť všetky svoje údaje';

  @override
  String get recoveryKeyTextFieldLabel => 'Kľúč na obnovenie';

  @override
  String get recoveryKeyStorageAdvice =>
      'Tento kľúč na obnovenie budete musieť poskytnúť, ak dešifrovanie zlyhá počas spúšťania. Bez kľúča stratíte prístup ku všetkým svojim údajom. Uložte ho na bezpečné miesto, napríklad do správcu hesiel.';

  @override
  String get recoveryKeyConfirmation =>
      'Uložil som si kľúč na obnovenie na bezpečné miesto';

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
      'Naskenujte QR kód na skopírovanie kľúča na obnovenie a jeho uloženie na bezpečné miesto, napríklad do správcu hesiel. Môžete si ho aj odfotiť pre budúce použitie.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Skopírované do schránky';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Súbor obnovovacieho kľúča nebol uložený';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Súbor obnovovacieho kľúča nie je možné uložiť do dočasného umiestnenia';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Neznáma chyba';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Nemáte povolenie na zápis do tohto priečinka. Skúste iné umiestnenie alebo použite inú metódu.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Skúste iné umiestnenie, napríklad vymeniteľnú jednotku, alebo použite inú metódu.';

  @override
  String get recoveryKeyFilePickerTitle => 'Uložiť súbor obnovovacieho kľúča';

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
  String get landscapeDomainHeader => 'Zadať doménu Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'Doména Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'Poskytnite doménu Landscape vašej organizácie na prihlásenie a načítanie súboru autoinstall. FQDN môžete získať od vašej IT podpory.';

  @override
  String get landscapeDomainTextField => 'Doména Landscape (FQDN)';

  @override
  String get next => 'Ďalej';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'Neplatná doména, skontrolujte ju alebo kontaktujte vašu IT podporu';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Pre pokračovanie sa pripojte na internet';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Na načítanie súboru autoinstall z Landscape je potrebný internet';

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
      'Nižšie si môžete prezrieť súbor autoinstall importovaný z Landscape.';

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
      'Hardvérovo podporované šifrovanie sa nepodarilo povoliť';

  @override
  String get tpmActionPageTitleActionable =>
      'Vyskytol sa problém s hardvérovo podporovaným šifrovaním';

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
      'Vyskúšajte nižšie uvedené riešenia, kontaktujte IT podporu alebo vyberte inú metódu šifrovania.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'Vyskúšajte nižšie uvedené riešenie, kontaktujte IT podporu alebo vyberte inú metódu šifrovania.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'Kontaktujte IT podporu alebo vyberte inú metódu šifrovania.';

  @override
  String get tpmActionErrorKindInternal => 'Interná chyba.';

  @override
  String get tpmActionErrorKindShutdownRequired => 'Vyžaduje sa vypnutie.';

  @override
  String get tpmActionErrorKindRebootRequired => 'Vyžaduje sa reštartovanie.';

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
      'Tento počítač nemá požadovaný bezpečnostný hardvér (TPM 2.0) pre túto metódu šifrovania.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'TPM tohto počítača je deaktivované.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'TPM tohto počítača už používa iný systém alebo aplikácia.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'TPM tohto počítača je momentálne uzamknuté.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'TPM tohto počítača nemá dostatok dostupného úložiska.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'Tento počítač nie je kompatibilný s hardvérovo podporovaným šifrovaním.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'Ladenie UEFI je povolené.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'Tomuto počítaču chýba požadovaná bezpečnostná funkcia (ochrana DMA).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'Tomuto počítaču chýba požadovaná bezpečnostná funkcia (IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'Vyskytol sa problém s konfiguráciou zabezpečenia tohto počítača.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Pri spustení beží softvér, ktorý môže zabrániť bezpečnému pripojeniu k TPM počítača.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'V tomto počítači je povolený Absolute Persistence Module.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'V tomto počítači je vypnuté secure boot alebo nie je nastavené v režime nasadenia.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Niektoré certifikáty overujúce softvér v tomto počítači sú zastarané alebo používajú slabú ochranu.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'Tento počítač používa manuálny zoznam povolených na overenie softvéru pri spustení.';

  @override
  String get tpmActionErrorKindAddonDriversPresent =>
      'Sú prítomné doplnkové ovládače.';

  @override
  String get tpmActionErrorKindNoHardwareRootOfTrust =>
      'Tomuto počítaču chýba požadovaná bezpečnostná funkcia (hardvérový koreň dôvery).';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'Vyskytol sa problém s TPM tohto počítača.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'Vyskytol sa problém s firmvérom tohto počítača.';

  @override
  String get tpmActionFixActionReboot => 'Reštartovať';

  @override
  String get tpmActionFixActionShutdown => 'Vypnúť';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'Reštartovať do nastavení firmvéru';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'Ak sa nastavenia firmvéru nenačítajú automaticky, reštartujte a počas spúšťania opakovane stlačte kláves nastavení (bežne F2, F10 alebo Delete).';

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
      'Deaktivovať Absolute Persistence Module manuálne';

  @override
  String get tpmActionFixActionContactOem => 'Kontaktovať OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Kontaktovať dodávateľa OS';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Povoliť TPM pri reštartovaní';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Povoliť a vymazať TPM pri reštartovaní';

  @override
  String get tpmActionFixActionClearTpmViaFirmware =>
      'Vymazať TPM pri reštartovaní';

  @override
  String get tpmActionFixActionClearTpm => 'Vymazať TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignorovať';

  @override
  String get tpmActionFixActionRebootDescription =>
      'Reštartujte počítač na dokončenie predchádzajúcich akcií.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'Reštartovanie počítača môže problém vyriešiť.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'Vypnite počítač na dokončenie predchádzajúcich akcií.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'Môžete to urobiť v nastaveniach firmvéru vášho počítača.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'Možno to budete môcť urobiť v nastaveniach firmvéru vášho počítača. Pokyny nájdete v dokumentácii výrobcu CPU.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'Skontrolujte, či je režim secure boot nastavený na \"deployed\".';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'Táto funkcia môže byť označovaná ako \"Virtualization Technology\", \"VT-d\" alebo \"AMD-Vi\".';

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
      'Stratíte prístup ku všetkým údajom v šifrovaných jednotkách, pre ktoré nemáte kľúče na obnovenie. Naruší to aj ďalšie funkcie, ktoré závisia od TPM, ako je overovanie a certifikáty.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'Rozumiem dôsledkom vymazania TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'Pri reštartovaní môžete byť vyzvaní na potvrdenie tejto akcie.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'Potom budete musieť začať inštaláciu znova.';

  @override
  String get tpmActionErrorTitle => 'Toto riešenie zlyhalo';

  @override
  String get tpmActionErrorDescription =>
      'Vyskúšajte iné riešenie alebo kontaktujte IT podporu.';

  @override
  String get installationLogSemanticLabel => 'Záznam inštalácie';

  @override
  String get manualPartitioningWarningBody =>
      'Skúste niečo iné. Môžete tiež <a href=\"\">odoslať hlásenie o chybe</a>.';

  @override
  String get manualPartitioningBootMustBeExt4WarningTitle =>
      '/boot musí byť pripojený na oddiel ext4';

  @override
  String get manualPartitioningBootMustBeExt4WarningBody =>
      'Použite oddiel ext4 pre / alebo vytvorte samostatný oddiel ext4 pre /boot';

  @override
  String stepIndicatorLabel(int CURRENT_STEP, int TOTAL_STEPS) {
    return 'Krok $CURRENT_STEP z $TOTAL_STEPS';
  }
}
