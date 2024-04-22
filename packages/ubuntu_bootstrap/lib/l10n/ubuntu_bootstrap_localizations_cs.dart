import 'ubuntu_bootstrap_localizations.dart';

/// The translations for Czech (`cs`).
class UbuntuBootstrapLocalizationsCs extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Instalátor Ubuntu pro osobní počítače';

  @override
  String windowTitle(String RELEASE) {
    return 'Nainstalovat $RELEASE';
  }

  @override
  String get autoinstallTitle => 'Typ instalace';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Jak chcete nainstalovat $DISTRO?';
  }

  @override
  String get autoinstallInstructions => 'Zadejte adresu URL autoinstall.yaml:';

  @override
  String get autoinstallInteractiveOption => 'Interaktivní instalace';

  @override
  String get autoinstallInteractiveDescription => 'Pro uživatele, kteří chtějí být krok za krokem provedeni instalací.';

  @override
  String get autoinstallAutomatedOption => 'Automatická instalace';

  @override
  String get autoinstallAutomatedDescription => 'Pro pokročilé uživatele, kteří mají soubor autoinstall.yaml pro konzistentní a opakovatelné nastavení systému.';

  @override
  String get changeButtonText => 'Změnit';

  @override
  String get quitButtonText => 'Opustit instalaci';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Vítejte v $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Připravuje se $DISTRO…';
  }

  @override
  String get warningLabel => 'Varování:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Vyzkoušet nebo nainstalovat $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Co chcete dělat s $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Opravit instalaci';

  @override
  String get tryOrInstallRepairDescription => 'Oprava přeinstaluje veškerý doposud nainstalovaný software, ale zachová data a nastavení uživatele.';

  @override
  String tryOption(String RELEASE) {
    return 'Vyzkoušet $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Můžete si vyzkoušet $RELEASE aniž by se v počítači cokoli měnilo.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Nainstalovat $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Nainstalovat $RELEASE vedle (nebo namísto) stávajícího operačního systému. Mělo by být hned hotové.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'Nejspíš si budete chtít přečíst <a href=\"$url\">poznámky k vydání</a>.';
  }

  @override
  String get rstTitle => 'RST je zapnuté';

  @override
  String get rstHeader => 'Aby bylo možné pokračovat, vypněte RST';

  @override
  String rstDescription(String DISTRO) {
    return 'Na tomto počítači je zapnutá technologie Intel RST (Rapit Storage Technology). Aby bylo možné Ubuntu nainstalovat, je třeba ve Windows funkci RST vypnout.';
  }

  @override
  String rstInstructions(String url) {
    return 'Ohledně pokynů naskenujte QR kód na jiném zařízení (třeba telefonu) nebo jděte na: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Nastavit Secure Boot';

  @override
  String get configureSecureBootDescription => 'Zvolili jste nainstalovat ovladač hardware, pocházející od třetí strany. Aby to bylo možné,\nje zapotřebí vypnout Secure Boot. To uděláte vytvořením klíče zabezpečení a jeho\nnásledným zadáním po restartu systému.';

  @override
  String get configureSecureBootOption => 'Nastavit Secure Boot';

  @override
  String get chooseSecurityKey => 'Zvolte si klíč zabezpečení';

  @override
  String get confirmSecurityKey => 'Zopakujte zadání klíče zabezpečení (prevence překlepu)';

  @override
  String get dontInstallDriverSoftwareNow => 'Nyní ovladač ještě neinstalovat';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Je možné ho nainstalovat kdykoli později pomocí nástroje „Software a aktualizace“.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Je třeba zadat klíč zabezpečení';

  @override
  String get secureBootSecurityKeysDontMatch => 'Do každé z kolonek pro klíč zabezpečení jste napsali něco jiného';

  @override
  String get showSecurityKey => 'Zobrazit klíč zabezpečení';

  @override
  String get hideSecurityKey => 'Skrýt';

  @override
  String get updatesOtherSoftwarePageTitle => 'Aplikace a aktualizace';

  @override
  String get updatesOtherSoftwarePageDescription => 'Které aplikace chcete mít hned od začátku nainstalované?';

  @override
  String get codecsAndDriversPageTitle => 'Optimalizovat váš počítač';

  @override
  String get codecsAndDriversPageDescription => 'Instalovat doporučený proprietární software?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO se standardně dodává bez proprietárního softwaru. Instalace dalšího softwaru může zlepšit výkon vašeho počítače.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Byla zjištěna grafická karta NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody => 'Pro nejlepší výkon grafických karet NVIDIA se důrazně doporučuje nainstalovat dodatečné ovladače.';

  @override
  String get fullInstallationTitle => 'Plná instalace';

  @override
  String get fullInstallationSubtitle => 'Výběr kancelářských a jiných nástrojů, webový prohlížeč a hry.';

  @override
  String get minimalInstallationTitle => 'Výchozí instalace';

  @override
  String get minimalInstallationSubtitle => 'Pouze nezbytné, webový prohlížeč a základní nástroje.';

  @override
  String get otherOptions => 'Další možnosti';

  @override
  String get installThirdPartyTitle => 'Nainstalovat ovladače třetích stran pro grafické čipy a adaptéry bezdrátových (Wi-Fi) sítí, stejně tak dodatečné kodeky multimédií';

  @override
  String get installThirdPartySubtitle => 'Tento software je předmětem licenčních ujednání, obsažených v dokumentaci k němu. Některý je proprietární.';

  @override
  String get installDriversTitle => 'Nainstalovat ovladače od třetích stran pro grafické čipy a Wi-Fi síťová rozhraní';

  @override
  String get installDriversSubtitle => 'Tyto ovladače jsou předmětem licenčních ujednání obsažených v dokumentaci k nim. Jsou proprietárními.';

  @override
  String get installCodecsTitle => 'Stáhnout a nainstalovat podporu pro další formáty médií';

  @override
  String get installCodecsSubtitle => 'Tento software je předmětem licenčních ujednání obsažených v dokumentaci k němu. Některé jsou proprietární.';

  @override
  String get batteryWarning => 'Počítač není připojen ke zdroji napájení.';

  @override
  String get offlineWarning => 'V tu chvíli nejste připojení k Internetu';

  @override
  String get choosePassphraseTitle => 'Přístupové heslo disku';

  @override
  String get choosePassphraseHeader => 'Vytvořit přístupové heslo';

  @override
  String get choosePassphraseBody => 'K šifrování souborů potřebujete přístupové heslo. Při každém zapnutí počítače budete vyzváni k zadání tohoto hesla.';

  @override
  String get choosePassphraseHint => 'Vybrat přístupové heslo';

  @override
  String get choosePassphraseConfirmHint => 'Potvrdit přístupové heslo';

  @override
  String get choosePassphraseRequired => 'Je vyžadováno přístupové heslo';

  @override
  String get choosePassphraseMismatch => 'Přístupová hesla se neshodují';

  @override
  String get choosePassphraseInfoHeader => 'Ujistěte se, že jste si uložili své přístupové heslo';

  @override
  String get choosePassphraseInfoBody => 'Pokud ztratíte přístupové heslo, ztratíte všechna svá data.';

  @override
  String get createPassphrase => 'Vytvořit přístupové heslo';

  @override
  String get confirmPassphrase => 'Potvrdit přístupové heslo';

  @override
  String get installationTypeTitle => 'Nastavení disku';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Jak chcete nainstalovat $DISTRO?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Na tomto počítači se už nachází $os. Co si přejete udělat?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Na tomto počítači se už nacházejí $os1 a $os2. Co si přejete udělat?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Na tomto počítači se v současnosti nachází vícero operačních systémů. Co si přejete udělat?';

  @override
  String get installationTypeNoOSDetected => 'Na tomto počítači nyní nebyl zjištěn žádný operační systém. Co si přejete udělat?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Vymazat disk a nainstalovat $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Začít od začátku na zvoleném disku.';

  @override
  String get installationTypeAdvancedLabel => 'Pokročilé funkce…';

  @override
  String get installationTypeAdvancedTitle => 'Pokročilé funkce';

  @override
  String get installationTypeExperimental => 'Experimentální';

  @override
  String get installationTypeNone => 'Žádné';

  @override
  String get installationTypeNoneSelected => 'Nic nevybráno';

  @override
  String get installationTypeLVM => 'Použít LVM';

  @override
  String get installationTypeLVMSelected => 'Vybráno LVM';

  @override
  String get installationTypeLVMEncryption => 'Použít LVM a šifrování';

  @override
  String get installationTypeLVMEncryptionSelected => 'Vybráno LVM a šifrování';

  @override
  String get installationTypeEncryptInfo => 'V následujícím kroku si zvolíte šifrovací klíč.';

  @override
  String get installationTypeZFS => 'EXPERIMENTÁLNÍ: Vymazat disk a použít souborový systém ZFS';

  @override
  String get installationTypeZFSEncryption => 'Vymazat disk a použít ZFS se šifrováním';

  @override
  String get installationTypeZFSSelected => 'Vybráno ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'Vybráno ZFS a šifrování';

  @override
  String get installationTypeTPM => 'EXPERIMENTÁLNÍ: zapnout na hardware založené šifrování celého disku';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return 'Toto je experimentální funkce. Nemusí fungovat s vaším hardwarem nebo v budoucích vydáních $DISTRO. Než zvolíte tuto možnost, <a href=\"$url\">přečtěte si o šifrování TPM</a>.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM vybráno';

  @override
  String installationTypeReinstall(String os) {
    return 'Vymazat $os a přeinstalovat';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">VAROVÁNÍ:</font> Toto smaže veškeré aplikace, dokumenty, fotky, hudbu (a všechny ostatní soubory), nacházející se v rámci $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Nainstalovat $product vedle $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Nainstalovat $product vedle $os1 a $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Nainstalovat $product vedle nich';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Nainstalovat $product vedle ostatních oddílů';
  }

  @override
  String get installationTypeAlongsideInfo => 'Dokumenty, hudba a ostatní osobní soubory zůstanou zachovány. Pokaždé, když počítač spustíte z vypnutého stavu (tedy nikoli uspání), budete si moci zvolit který operační systém spustit.';

  @override
  String get installationTypeManual => 'Ruční rozdělení na oddíly';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'Pro pokročilé uživatele, kteří hledají přizpůsobené nastavení disků.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Vymazat disk a nainstalovat $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Začněte od začátku na zvoleném disku.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Vyberte disk:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Vyberte oddíl:';

  @override
  String get selectGuidedStorageInfoLabel => 'Bude použit celý disk:';

  @override
  String get selectGuidedStorageInstallNow => 'Nainstalovat nyní';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Vyberte, kam nainstalovat $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider => 'Přidělte prostor na jednotce posunutím dělítka níže:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num menších oddílů skryto. Pokud potřebujete mít nad procesem více kontroly, použijte <a href=\"$url\">nástroj pro pokročilou správu oddílů</a>';
  }

  @override
  String get installAlongsideResizePartition => 'Změnit velikost oddílu';

  @override
  String get installAlongsideAllocateSpace => 'Přidělit prostor';

  @override
  String get installAlongsideFiles => 'Soubory';

  @override
  String get installAlongsidePartition => 'Oddíl:';

  @override
  String get installAlongsideSize => 'Velikost:';

  @override
  String get installAlongsideAvailable => 'K dispozici:';

  @override
  String get allocateDiskSpace => 'Ruční rozdělení';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Je třeba, aby přípojné body začínaly na „/“ (dopředné lomítko)';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Přípojné body nemohou obsahovat mezery';

  @override
  String get diskHeadersDevice => 'Zařízení';

  @override
  String get diskHeadersType => 'Typ';

  @override
  String get diskHeadersMountPoint => 'Přípojný bod';

  @override
  String get diskHeadersSize => 'Velikost';

  @override
  String get diskHeadersUsed => 'Využito';

  @override
  String get diskHeadersSystem => 'Systém';

  @override
  String get diskHeadersFormat => 'Formátovat';

  @override
  String get freeDiskSpace => 'Volné místo';

  @override
  String get newPartitionTable => 'Nová tabulka rozdělení na oddíly';

  @override
  String get newPartitionTableConfirmationTitle => 'Nový prázdný oddíl';

  @override
  String get newPartitionTableConfirmationMessage => 'Vytvoření nové tabulky oddílů na celém zařízení z něj odebere veškeré stávající oddíly. V případě potřeby lze v tomto kroku ještě tuto operaci vzít zpět (ovšem po zapsání změn už pak ne).';

  @override
  String get tooManyPrimaryPartitions => 'Příliš mnoho primárních oddílů';

  @override
  String get partitionLimitReached => 'Dosaženo limitu';

  @override
  String get bootLoaderDevice => 'Zařízení na které nainstalovat zavaděč systému';

  @override
  String get partitionCreateTitle => 'Vytvořit oddíl';

  @override
  String get partitionEditTitle => 'Upravit oddíl';

  @override
  String get partitionSizeLabel => 'Velikost:';

  @override
  String get partitionTypeLabel => 'Zadejte typ pro nový oddíl:';

  @override
  String get partitionTypePrimary => 'Primární';

  @override
  String get partitionTypeLogical => 'Logický';

  @override
  String get partitionLocationLabel => 'Umístění nového oddílu:';

  @override
  String get partitionLocationBeginning => 'Začátek tohoto prostoru';

  @override
  String get partitionLocationEnd => 'Konec tohoto prostoru';

  @override
  String get partitionFormatLabel => 'Použito jako:';

  @override
  String get partitionFormatNone => 'Ponechat nenaformátované';

  @override
  String partitionFormatKeep(String format) {
    return 'Ponechat naformátované jako $format';
  }

  @override
  String get partitionErase => 'Naformátovat oddíl';

  @override
  String get partitionMountPointLabel => 'Přípojný bod:';

  @override
  String get confirmPageTitle => 'Připraveno k instalaci';

  @override
  String get confirmHeader => 'Pokud budete pokračovat, níže uvedené změny budou zapsány na disky. Další změny pak můžete udělat ručně.';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'Žádné';

  @override
  String get confirmDevicesTitle => 'Zařízení';

  @override
  String get confirmEntryApplications => 'Aplikace';

  @override
  String get confirmEntryDiskSetup => 'Nastavení disku';

  @override
  String get confirmEntryDiskEncryption => 'Šifrování disku';

  @override
  String get confirmEntryInstallationDisk => 'Instalační disk';

  @override
  String get confirmEntryProprietarySoftware => 'Proprietární software';

  @override
  String get confirmSectionGeneralTitle => 'Obecné';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Bezpečnost a další';

  @override
  String get confirmPartitionsTitle => 'Oddíly';

  @override
  String get confirmPartitionTables => 'Budou změněny tabulky rozdělení na oddíly následujících zařízení:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmPartitionChanges => 'Budou provedeny následující změny na oddílech:';

  @override
  String confirmPartitionResize(String sysname, String oldsize, String newsize) {
    return 'velikost oddílu <b>$sysname</b> změněna z <b>$oldsize</b> na <b>$newsize</b>';
  }

  @override
  String confirmPartitionFormatMount(String sysname, String format, String mount) {
    return 'oddíl <b>$sysname</b> naformátovaný jako <b>$format</b> použit pro <b>$mount</b>';
  }

  @override
  String confirmPartitionFormat(String sysname, String format) {
    return 'oddíl <b>$sysname</b> naformátován jako <b>$format</b>';
  }

  @override
  String confirmPartitionMount(String sysname, String mount) {
    return 'oddíl <b>$sysname</b> použit pro <b>$mount</b>';
  }

  @override
  String confirmPartitionCreate(String sysname) {
    return 'oddíl <b>$sysname</b> vytvořen';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'Kodeky';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Kodeky a ovladače';

  @override
  String get confirmProprietarySoftwareDrivers => 'Ovladače';

  @override
  String get confirmInstallButton => 'Instalace';

  @override
  String get installationCompleteTitle => 'Instalace dokončena';

  @override
  String readyToUse(String system) {
    return '$system je nainstalované a připravené k použití';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** byl zkopírován na disk';
  }

  @override
  String restartInto(String system) {
    return 'Restartovat do $system';
  }

  @override
  String get restartWarningBody => 'Restartujte pro dokončení instalace nebo pokračujte v testování.\nŽádné změny, které provedete, nebudou uloženy.';

  @override
  String get rebootToConfigureWarning => 'Chcete-li pokračovat v procesu instalace, musíte počítač restartovat.';

  @override
  String get shutdown => 'Vypnout';

  @override
  String get restartNow => 'Restartovat nyní';

  @override
  String get continueTesting => 'Pokračovat ve zkoušení';

  @override
  String get bitlockerTitle => 'BitLocker je zapnutý';

  @override
  String get bitlockerHeader => 'Aby bylo možné pokračovat, vypněte BitLocker';

  @override
  String bitlockerDescription(String option) {
    return 'Na tomto počítači je používáno šifrování nástrojem Windows BitLocker.\nAby bylo možné pokračovat, je třeba pomocí Windows udělat volné místo nebo zvolit \'$option\'.';
  }

  @override
  String bitlockerInstructions(String url) {
    return 'Ohledně pokynů naskenujte QR kód na jiném zařízení (třeba telefonu) nebo jděte na: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get restartIntoWindows => 'Restartovat do Windows';

  @override
  String get restartIntoWindowsTitle => 'Restartovat do Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Opravdu chcete váš počítač restartovat? Pokud poté budete chtít dokončit instalaci $DISTRO, bude třeba znovu spustit instalaci $DISTRO.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Vítejte v $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'K dispozici:';

  @override
  String get installationSlidesIncluded => 'Obsaženo:';

  @override
  String get installationSlidesWelcomeTitle => 'Rychlé, svobodné a plné nových funkcí';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Nejnovější verze $DISTRO usnadňuje používání počítače víc než kdy dříve.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Ať už jste vývojáři, tvůrci, hráči či správci, naleznete zde nové nástroje zvyšující vaši produktivitu a vylepšující váš dojem z používání $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Všechny aplikace které potřebujete';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Instalujte, spravujte a aktualizujte vámi používané aplikace v Ubuntu Software, obsahujícího tisíce aplikací jak ze Snap Store, tak z archivu balíčků $DISTRO.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Vyvíjejte s nejlepším open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return '$DISTRO je ideální prostředí pro vývoj aplikací či webů, datovou vědu a umělou inteligenci / strojové učení, stejně tak pro devops a správu systémů. Každé vydání $DISTRO obsahuje nejnovější sady potřebných nástrojů a podporuje všechna hlavní integrovaná vývojářská prostředí.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Buďte tvořivější';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Poku jste animátory, designéry, tvůrci videí či vývojáři her, je snadné přenést své pracovní postupy na $DISTRO díky podpoře software a aplikací, které patří k open source a oborovým standardům.';
  }

  @override
  String get installationSlidesGamingTitle => 'Skvělé pro hraní her';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO podporuje nejnovější ovladače od NVIDIA (to stejné ty z Mesa), což zlepšuje výkon a kompatibilitu. Tisíce her pro Windows skvěle fungují na $DISTRO prostřednictvím aplikací jako je Steam, bez potřeby něco dále nastavovat.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Soukromé a bezpečné';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO poskytuje veškeré nástroje které jsou zapotřebí pro ochranu soukromí a bezpečné používání Internetu. Díky vestavěné bráně firewall, podpoře VPN a řadě aplikací zaměřených na ochranu soukromí máte svá data plně pod kontrolou.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Všechna $DISTRO LTS vydání dostávají po dobu pěti let opravy zabezpečení s tím, že je možné prodloužit na deset let předplatným Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Zvyšte svou produktivitu';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop obsahuje LibreOffice – sadu open source aplikaci, kompatibilní s Microsoft Office pro dokumenty, tabulky a prezentace. Jsou též k dispozici oblíbené nástroje pro spolupráci.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Přístupnost pro každého';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'V srdci filozofie $DISTRO je myšlenka, že počítače jsou pro všechny. Díky pokročilým nástrojům pro zpřístupnění hendikepovaným a možnosti změnit jazyk, barvy a velikost textu rozhraní, $DISTRO činí používání počítače snadné – ať už jste kdokoli a žijete kdekoli.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Čtečka obrazovky Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Podpora jazyků';

  @override
  String get installationSlidesSupportTitle => 'Nápověda a podpora';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Oficiální dokumentace k $DISTRO je k dispozici jak online, tak přes ikonu Nápověda na panelu.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Web Ask Ubuntu pokrývá celou škálu otázek a odpovědí, dále na fóru Ubuntu Discourse jsou k dispozici návody a diskuze pro nové i pokročilé uživatele.';

  @override
  String get installationSlidesSupportEnterprise => 'Pro firemní uživatele Canonical poskytuje komerční podporu, díky které je snadné zavést a spravovat Ubuntu na pracovišti.';

  @override
  String get installationSlidesSupportResources => 'Užitečné zdroje:';

  @override
  String get installationSlidesSupportDocumentation => 'Oficiální dokumentace';

  @override
  String get installationSlidesSupportUbuntuPro => 'Podpora 24/7 na podnikové úrovni s Ubuntu Pro';

  @override
  String get copyingFiles => 'Kopírování souborů…';

  @override
  String get installingSystem => 'Instalace systému…';

  @override
  String get configuringSystem => 'Nastavování systému…';

  @override
  String get installationFailed => 'Instalace se nezdařila';

  @override
  String get notEnoughDiskSpaceTitle => 'Nedostatek místa na disku';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Nedostatek místa na disku pro instalaci $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Vybraný disk nemá dostatek místa pro instalaci $DISTRO. Ukončete instalační program, abyste uvolnili místo, nebo vyberte jiný disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'K dispozici:';

  @override
  String get notEnoughDiskSpaceRequired => 'Vyžadováno:';

  @override
  String get refreshPageTitle => 'Je k dispozici aktualizace';

  @override
  String get refreshHeader => 'Pro instalační program je k dispozici aktualizace';

  @override
  String get refreshUpdateNow => 'Aktualizovat nyní';

  @override
  String get refreshInfo => 'Aktualizujte na nejnovější verzi pro lepší spolehlivost a více funkcí.';

  @override
  String get refreshReady => 'Aktualizace je připravena';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Stávající verze $snap je $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Aktualizovat na verzi $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Stávající verze $version je aktuální.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'Aktualizování $snap…';
  }

  @override
  String get refreshRestart => 'Instalátor ukončete a spusťte znovu kliknutím na Restartovat.';

  @override
  String get refreshCloseLabel => 'Zavřít instalační program';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Zajišťování závislostí pro $snap…';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Znovunačítání $snap…';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Zjišťování opětovného znovunačítání $snap…';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Příprava $snap…';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Stahování $snap…';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Ověřování $snap…';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Připojování $snap…';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Zastavování služeb $snap…';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Odebírání alternativních názvů $snap…';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Rušení odkazování na $snap…';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Aktualizace dat $snap…';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Aktualizace parametrů pro spouštění jádra systému $snap…';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Kopírování dat $snap…';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Nastavování profilů zabezpečení $snap…';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Napojování $snap…';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Připojování rozhraní a slotů $snap…';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Nastavování automatických alternativních názvů pro $snap…';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Nastavování alternativních názvů pro $snap…';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Start služeb $snap…';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Úklid $snap…';
  }

  @override
  String get recoveryKeyTitle => 'Obnovovací klíč k TPM';

  @override
  String get recoveryKeyCommand => 'Po dokončení instalace je možné si nechat obnovovací klíč zobrazit pomocí následujícího příkazu:';

  @override
  String recoveryKeyWarning(String color) {
    return '<font color=\"$color\">Varování:</font> Pokud klíč k zabezpečení ztratíte, budou veškerá data ztracena. Pokud vám to pomůže, šifrovací klíč si zapište na papír a ten si bezpečně uložte někam mimo počítač.';
  }

  @override
  String get validate => 'Ověřit';
}
