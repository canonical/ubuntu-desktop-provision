// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class UbuntuBootstrapLocalizationsSk extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'Inštalátor plochy Ubuntu';

  @override
  String windowTitle(String RELEASE) {
    return 'Nainštalovať $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Automatická inštalácia';

  @override
  String get autoinstallDirectHeader => 'Načítať súbor autoinštalácie';

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
      'Skontrolujte správnosť URL, overte internetové pripojenie alebo to skúste neskôr.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'Neplatná URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'Skontrolujte, či je URL správna, alebo vyberte miestny súbor.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'Neplatný súbor autoinštalácie';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'Skontrolujte súbor alebo zadajte iný.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'Súbor autoinštalácie nie je čitateľný';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'Skontrolujte svoje oprávnenia alebo poskytnite iný súbor.';

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
      'Pre používateľov, ktorí chcú byť prevedení inštaláciou krok za krokom.';

  @override
  String get autoinstallDirectOption => 'Automaticky so súborom autoinštalácie';

  @override
  String get autoinstallDirectDescription =>
      'Pre skúsených používateľov, ktorí používajú autoinstall.yaml na zabezpečenie konzistentných a opakovateľných nastavení systému.';

  @override
  String get autoinstallLandscapeOption => 'Automaticky pomocou Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'Pre používateľov v organizáciách, ktoré poskytujú súbor automatickej inštalácie cez Landscape.';

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
      'Opravou preinštalujete všetok nainštalovaný softvér bez toho, aby sa to dotklo dokumentov alebo nastavení.';

  @override
  String tryOption(String RELEASE) {
    return 'Vyskúšať $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Môžete vyskúšať $RELEASE bez vykonania zmien vo vašom počítači.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Nainštalovať $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Nainštalujte $RELEASE spoločne z (alebo namiesto) vášho operačného systému. Nemalo by to trvať dlho.';
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
      'Váš počítač používa technológiu Intel RST (Rapid Storage Technology). RST môžete zakázať buď:';

  @override
  String get rstDisableWindows =>
      'Vo Windowse, ak používate nastavenie duálneho spúšťania s Windowsom';

  @override
  String get rstDisableBios => 'Alebo v nastaveniach BIOSu';

  @override
  String rstInstructions(String url) {
    return 'Pre inštrukcie naskenujte QR kód na inom zariadení alebo navštívte: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Nastaviť Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'Vybrali ste nainštalovať ovládač hardvéru, pochádzajúci od tretej strany. Aby to bolo možné, je potrebné vypnúť Secure Boot.\nTo urobíte vytvorením kľúča zabezpečenia a jeho následným zadaním po reštarte systému.';

  @override
  String get configureSecureBootOption => 'Nastaviť Secure Boot';

  @override
  String get chooseSecurityKey => 'Vyberte bezpečnostný kľúč';

  @override
  String get confirmSecurityKey => 'Zopakujte zadanie bezpečnostného kľúča';

  @override
  String get dontInstallDriverSoftwareNow =>
      'Zatiaľ neinštalujte softvér ovládača';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'Je ho možné nainštalovať kedykoľvek neskôr pomocou nástroja Softvér a aktualizácie.';

  @override
  String get configureSecureBootSecurityKeyRequired =>
      'Je potrebné zadať kľúč zabezpečenia';

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
      'Výber vhodný pre režim off-line kancelárske nástroje, pomôcky a webový prehliadač.';

  @override
  String get minimalInstallationTitle => 'Predvolený výber';

  @override
  String get minimalInstallationSubtitle =>
      'Len to najnutnejšie, webový prehliadač a základné nástroje.';

  @override
  String get otherOptions => 'Ďalšie možnosti';

  @override
  String get installThirdPartyTitle =>
      'Nainštalovať ovládače tretích strán pre grafické čipy a adaptéry bezdrôtových Wi-Fi sietí, ako aj dodatočné kodeky multimédií';

  @override
  String get installThirdPartySubtitle =>
      'Tento softvér podlieha licenčným podmienkam, ktoré sú súčasťou jeho dokumentácie. Niektoré sú proprietárne.';

  @override
  String get installDriversTitle =>
      'Nainštalovať ovládače od tretích strán pre grafické čipy a Wi-Fi sieťové rozhrania';

  @override
  String get installDriversSubtitle =>
      'Vrátane ovládačov NVIDIA a ďalších ostatných';

  @override
  String get installCodecsTitle =>
      'Stiahnuť a nainštalovať podporu pre ďalšie formáty médií';

  @override
  String get installCodecsSubtitle =>
      'Vrátane MP3, MP4, MOV a ďalších ostatných';

  @override
  String get batteryWarning => 'Počítač nie je pripojený k zdroju napájania.';

  @override
  String get offlineWarning => 'V tejto chvíli nie ste pripojení';

  @override
  String get choosePassphraseHeader => 'Vytvorenie prístupovej frázy';

  @override
  String get choosePassphraseBody =>
      'Pri každom zapnutí počítača budete musieť zadať prístupovú frázu. Táto prístupová fráza sa líši od hesla používateľa.';

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
  String get passphrasePageHeaderPassphrase => 'Nastavenie šifrovacej frázy';

  @override
  String get passphrasePageHeaderPin => 'Nastavenie šifrovacieho PIN kódu';

  @override
  String get passphrasePageBodyPassphrase =>
      'Pri každom zapnutí počítača budete musieť zadať prístupovú frázu. Táto prístupová fráza sa líši od hesla používateľa. Neskôr ju budete môcť zmeniť ale nie zakázať. Ak zabudnete prístupovú frázu, môžete znova získať prístup k disku pomocou kľúča obnovy.';

  @override
  String get passphrasePageBodyPin =>
      'PIN kód budete musieť zadať pri každom zapnutí počítača. Tento kód PIN sa líši od hesla používateľa. Neskôr ho budete môcť zmeniť, ale nie zakázať. Ak zabudnete kód PIN, môžete znova získať prístup k disku pomocou kľúča obnovy.';

  @override
  String get passphrasePageChoosePassphraseHint => 'Prístupová fráza';

  @override
  String get passphrasePageConfirmPassphraseHint =>
      'Zopakujte zadanie prístupovej frázy';

  @override
  String get passphrasePageRequiredPassphrase =>
      'Je potrebné zadať prístupovú frázu';

  @override
  String get passphrasePageMismatchPassphrase =>
      'Prístupové frázy sa nezhodujú';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'Zopakujte zadanie PIN kódu';

  @override
  String get passphrasePageRequiredPin => 'Je potrebné zadať PIN kód';

  @override
  String get passphrasePageMismatchPin => 'PIN kódy sa nezhodujú';

  @override
  String get passphraseTypePassphraseTileTitle => 'Vyžadovať prístupovú frázu';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'Najbezpečnejšie. Budete musieť zadať dlhšiu prístupovú frázu zakaždým, keď zapnete počítač.';

  @override
  String get passphraseTypePinTileTitle => 'Vyžadovať PIN kód';

  @override
  String get passphraseTypePinTileSubTitle =>
      'Bezpečnejšie. Budete musieť zadať číselný PIN zakaždým, keď zapnete počítač.';

  @override
  String get passphraseTypeNoneTileTitle => 'Odomknúť disk automaticky';

  @override
  String get passphraseTypePageHeader => 'Dodatočné zabezpečenie';

  @override
  String get passphraseTypePageBody =>
      'Predvolene modul Trusted Platform Module (TPM) v počítači odomkne disk počas spustenia systému. Máte však aj ďalšie možnosti, ako lepšie ochrániť svoje údaje.';

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
  String get installationTypeAdvancedLabel => 'Zobraziť rozšírené možnosti...';

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
  String get installationTypeLVMEncryptionInfo =>
      'Budete musieť zadať prístupovú frázu zakaždým, keď zapnete počítač. Používa sa šifrovanie LUKS s LVM.';

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
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Prečítajte si o šifrovaní TPM</a>, než si vyberiete túto možnosť. Možno nebude fungovať s vaším hardvérom alebo budúcimi verziami $DISTRO.';
  }

  @override
  String get installationTypeTPMSelected => 'Vybrané TPM';

  @override
  String installationTypeReinstall(String os) {
    return 'Vymazať $os a preinštalovať';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">UPOZORNENIE:</font> Týmto vymažete všetky aplikácie, dokumenty, fotky, hudbu a všetky ostatné súbory, nachádzajúce sa v rámci $os.';
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
    return 'Vyberte oddiel na zmenu veľkosti a vytvorte priestor pre $product. Operačný systém si môžete vybrať počas spustenia.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Vymazať $os a nainštalovať $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Všetky súbory a údaje z existujúcej inštalácie $os budú trvalo vymazané.';
  }

  @override
  String get installationTypeManual => 'Manuálna inštalácia';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Pre skúsených používateľov, ktorí hľadajú prispôsobené nastavenia disku.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Vymazať disk a nainštalovať $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo =>
      'Začnite od začiatku na vybranom disku.';

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
    return '$num menších oddielov je skrytých. Pokiaľ potrebujete mať nad procesom viac kontroly, použite <a href=\"$url\">nástroj pre pokročilú správu oddielov</a>';
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
      'Vytvorenie novej tabuľky oddielov na celom zariadení z neho odoberie všetky existujúce oddiely. V prípade potreby je možné v tomto kroku ešte túto operáciu vziať späť.';

  @override
  String get tooManyPrimaryPartitions => 'Príliš veľa primárnych oddielov';

  @override
  String get partitionLimitReached => 'Dosiahnutý limit';

  @override
  String get bootLoaderDevice =>
      'Zariadenie na ktoré nainštalovať zavádzač systému';

  @override
  String get partitionCreateTitle => 'Vytvoriť oddiel';

  @override
  String get partitionEditTitle => 'Upraviť oddiel';

  @override
  String get partitionSizeLabel => 'Veľkosť:';

  @override
  String get partitionTypeLabel => 'Zadajte typ pre nový oddiel:';

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
      'Budú zmenené tabuľky rozdelenia na oddiely nasledujúcich zariadení:';

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
  String get confirmInstallButton => 'Inštalácia';

  @override
  String get confirmTableErased => 'Vymazané';

  @override
  String get confirmTableUnchanged => 'Nezmenené';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Veľkosť zmenená z $oldsize na $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Vytvorené a formátované ako $format použité pre $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formátované ako $format použité pre $mountpoint';
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
      'Reštartujte na dokončenie inštalácie alebo pokračujte v skúšaní.\nZmeny, ktoré vykonáte, sa neuložia.';

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
  String get restartIntoWindows => 'Reštartovať do Windows';

  @override
  String get restartIntoWindowsTitle => 'Reštartovať do Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Naozaj chcete váš počítač reštartovať? Ak potom budete chcieť dokončiť inštaláciu $DISTRO, bude potrebné znova spustiť inštaláciu $DISTRO.';
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
    return 'Či už ste vývojári, tvorcovia, hráči alebo správcovia, nájdete tu nové nástroje zvyšujúce vašu produktivitu a vylepšujúce váš dojem z používania $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle =>
      'Všetky aplikácie ktoré potrebujete';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Inštalujte, spravujte a aktualizujte vami používané aplikácie v Ubuntu Software, obsahujúceho tisíce aplikácií ako zo Snap Store, tak z archívu balíčkov $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'Vyvíjajte s najlepším open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO je ideálne prostredie pre vývoj aplikácií či webov, dátovú vedu a umelú inteligenciu / strojové učenie, rovnako tak pre devops a správu systémov. Každé vydanie $DISTRO obsahuje najnovšie sady potrebných nástrojov a podporuje všetky hlavné integrované vývojárske prostredia.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Buďte tvorivejší';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Ak ste animátormi, dizajnérmi, tvorcami videí či vývojármi hier, je ľahké preniesť svoje pracovné postupy na $DISTRO vďaka podpore softvéru a aplikácií, ktoré patria k open source a priemyselným štandardom.';
  }

  @override
  String get installationSlidesGamingTitle => 'Skvelé na hranie hier';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO podporuje najnovšie ovládače od NVIDIA a Mesa, čo zlepšuje výkon a kompatibilitu. Tisíce hier pre Windows skvele fungujú na $DISTRO prostredníctvom aplikácií ako je Steam, bez potreby niečo ďalej nastavovať.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Súkromné a bezpečné';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO poskytuje všetky nástroje, ktoré sú potrebné na ochranu súkromia a bezpečné používanie internetu. Vďaka vstavanej bráne firewall, podpore VPN a rade aplikácií zameraných na ochranu súkromia máte svoje údaje plne pod kontrolou.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Všetky $DISTRO LTS vydania dostávajú po dobu piatich rokov opravy zabezpečenia s tým, že ich je možné predĺžiť na desať rokov s predplatným Ubuntu Pro.';
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
    return 'V srdci filozofie $DISTRO je myšlienka, že počítače sú pre všetkých. Vďaka pokročilým nástrojom na sprístupnenie hendikepovaným a možnosti zmeniť jazyk, farby a veľkosť textu rozhrania, $DISTRO robí používanie počítača jednoduché – nech už ste ktokoľvek a žijete kdekoľvek.';
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
      'Web Ask Ubuntu pokrýva celú škálu otázok a odpovedí, ďalej na fóre Ubuntu Discourse sú k dispozícii návody a diskusie pre nových aj skúsených používateľov.';

  @override
  String get installationSlidesSupportEnterprise =>
      'Pre firemných používateľov Canonical poskytuje komerčnú podporu, vďaka ktorej je ľahké zaviesť a spravovať Ubuntu na pracovisku.';

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
    return 'Vybratý disk nemá dostatok miesta na inštaláciu $DISTRO. Ukončite inštalátor, aby ste uvoľnili miesto alebo vyberte iný disk.';
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
      'Aktualizujte na najnovšiu verziu pre vyššiu spoľahlivosť a viac funkcií.';

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
      'Ak chcete pokračovať, zatvorte prosím inštalátor a znova ho spustite';

  @override
  String get refreshCloseLabel => 'Zatvoriť inštalátor';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Kontrolujú sa súčasti $snap...';
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
    return 'Odstraňuje sa alias $snap...';
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
      'Tento obnovovací kľúč budete potrebovať, ak dešifrovanie pri štarte zlyhá. Bez tohto kľúča stratíte prístup ku všetkým svojim údajom. Uložte si ho na bezpečné miesto, napríklad do správcu hesiel.';

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
      'Naskenujte QR kód na skopírovanie obnovovacieho kľúča a uložte ho na bezpečné miesto, napríklad do správcu hesiel. Môžete si tiež vytvoriť snímku obrazovky na neskoršie použitie.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'Skopírované do schránky';

  @override
  String get recoveryKeyExceptionFileSystemTitle =>
      'Súbor s obnovovacím kľúčom nebol uložený';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'Súbor s obnovovacím kľúčom sa nedá uložiť na dočasné miesto';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'Neznáma chyba';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'Nemáte povolenie zapisovať do tohto priečinka. Skúste iné umiestnenie alebo použite inú metódu.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'Skúste uložiť na iné miesto, napríklad na vymeniteľný disk, alebo vyberte inú metódu.';

  @override
  String get recoveryKeyFilePickerTitle => 'Uložiť súbor kľúča';

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
      'Neplatná doména, prosím skontrolujte ju alebo kontaktujte vaše IT oddelenie';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'Pripojte sa na internet, aby ste mohli pokračovať';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'Internet je potrebný na získanie súboru na automatickú inštaláciu z Landscape';

  @override
  String get landscapeCodeExpiredWarning =>
      'Kód vypršal, prosím skúste to znova';

  @override
  String get landscapeLoginFailedWarning =>
      'Prihlásenie zlyhalo, prosím skúste to znova';

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
  String get tpmActionErrorKindRunningInVm => 'Running In VM';

  @override
  String get tpmActionErrorKindSystemNotEfi => 'System Not EFI';

  @override
  String get tpmActionErrorKindEfiVariableAccess => 'EFI Variable Access';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'No Suitable TPM2 Device';

  @override
  String get tpmActionErrorKindTpmDeviceFailure => 'TPM Device Failure';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled => 'TPM Device Disabled';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned => 'TPM Hierarchies Owned';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'TPM Device Lockout Locked Out';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'Insufficient TPM Storage';

  @override
  String get tpmActionErrorKindNoSuitablePcrBank => 'NoSuitable PCR Bank';

  @override
  String get tpmActionErrorKindMeasuredBoot => 'Measured Boot';

  @override
  String get tpmActionErrorKindTpmCommandFailed => 'TPM Command Failed';

  @override
  String get tpmActionErrorKindInvalidTpmResponse => 'Invalid TPM Response';

  @override
  String get tpmActionErrorKindTpmCommunication => 'TPM Communication';

  @override
  String get tpmActionErrorKindUnsupportedPlatform => 'Unsupported Platform';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled => 'UEFI Debugging Enabled';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'Insufficient DMA Protection';

  @override
  String get tpmActionErrorKindNoKernelIommu => 'No Kernel IOMMU';

  @override
  String get tpmActionErrorKindHostSecurity => 'Host Security';

  @override
  String get tpmActionErrorKindPcrUnusable => 'PCR Unusable';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'Sys Prep Applications Present';

  @override
  String get tpmActionErrorKindAbsolutePresent => 'Absolute Present';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Invalid SecureBoot Mode';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'Weak SecureBoot Algorithm Detected';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'Pre OS Secure Boot Auth By Enrolled Digests';

  @override
  String get tpmActionErrorKindAddonDriversPresent => 'Addon Drivers Present';

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
  String get tpmActionFixActionContactOem => 'Contact OEM';

  @override
  String get tpmActionFixActionContactOsVendor => 'Contact OS Vendor';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'Enable TPM Via Firmware';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'Enable And Clear TPM Via Firmware';

  @override
  String get tpmActionFixActionClearTpmViaFirmware => 'Clear TPM Via Firmware';

  @override
  String get tpmActionFixActionClearTpm => 'Clear TPM';

  @override
  String get tpmActionFixActionProceed => 'Ignore';

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
  String get tpmActionErrorTitle => 'This solution failed';

  @override
  String get tpmActionErrorDescription =>
      'Try a different solution or contact IT support';

  @override
  String get manualPartitioningWarningBody =>
      'Try something else. You may also <a href=\"\">send an error report</a>.';
}
