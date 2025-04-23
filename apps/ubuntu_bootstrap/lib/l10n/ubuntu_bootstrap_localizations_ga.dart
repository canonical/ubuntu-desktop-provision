// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class UbuntuBootstrapLocalizationsGa extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get appTitle => 'Suiteálaí Deisce Ubuntu';

  @override
  String windowTitle(String RELEASE) {
    return 'Suiteáil $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'Suiteáil uathoibrithe';

  @override
  String get autoinstallDirectHeader => 'Iompórtáil comhad a shuiteáil uathoibríoch';

  @override
  String get autoinstallDirectUrlLabel => 'Is féidir leat URL an chomhaid uathshuiteála a chur isteach:';

  @override
  String get autoinstallDirectFileLabel => 'Nó roghnaigh comhad áitiúil:';

  @override
  String get autoinstallDirectFileButtonLabel => 'Roghnaigh comhad...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'Glan an comhad';

  @override
  String get autoinstallDirectFilePickerTitle => 'Roghnaigh comhad';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'Comhaid YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'Iompórtáil';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Níl an comhad uathshuiteála inrochtana';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Seiceáil go bhfuil an URL i gceart, déan do nasc idirlín a thástáil, nó bain triail eile as ar ball.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'URL neamhbhailí';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Seiceáil go bhfuil an URL ceart nó roghnaigh comhad áitiúil.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Comhad uathshuiteála neamhbhailí';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Seiceáil an comhad nó cuir ceann eile ar fáil.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Níl an comhad uathshuiteála inléite';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Seiceáil do cheadanna nó cuir comhad eile ar fáil.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'Earráid anaithnid';

  @override
  String get autoinstallTitle => 'Cineál suiteála';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'Conas ba mhaith leat ${DISTRO}a shuiteáil?';
  }

  @override
  String get autoinstallInstructions => 'Iontráil URL autoinstall.yaml nó cosán comhaid logánta:';

  @override
  String get autoinstallInteractiveOption => 'Suiteáil idirghníomhach';

  @override
  String get autoinstallInteractiveDescription => 'D\'úsáideoirí ar mian leo a bheith treoraithe céim ar chéim tríd an tsuiteáil.';

  @override
  String get autoinstallDirectOption => 'Uathoibríoch le comhad uathshuiteála';

  @override
  String get autoinstallDirectDescription => 'Le haghaidh úsáideoirí ardleibhéil a bhfuil autoinstall.yaml le haghaidh socruithe córais comhsheasmhach agus in-athdhéanta.';

  @override
  String get autoinstallLandscapeOption => 'Uathoibrithe le Tírdhreach';

  @override
  String get autoinstallLandscapeDescription => 'D’úsáideoirí in eagraíochtaí a sholáthraíonn comhad uathshuiteála trí Landscape.';

  @override
  String get changeButtonText => 'Athrú';

  @override
  String get quitButtonText => 'Scoir den tsuiteáil';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'Fáilte go $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'Ag ullmhú $DISTRO…';
  }

  @override
  String get warningLabel => 'Rabhadh:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'Bain triail as nó suiteáil $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'Cad ba mhaith leat a dhéanamh le $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'Suiteáil deisiúcháin';

  @override
  String get tryOrInstallRepairDescription => 'Beidh deisiú reinstall gach bogearraí suiteáilte gan teagmháil doiciméid nó suímh.';

  @override
  String tryOption(String RELEASE) {
    return 'Bain triail as $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'Is féidir leat triail a bhaint as $RELEASE gan aon athruithe a dhéanamh ar do ríomhaire.';
  }

  @override
  String installOption(String RELEASE) {
    return 'Suiteáil $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Suiteáil $RELEASE in éineacht (nó in ionad) do chóras oibriúcháin reatha. Níor cheart go dtógfadh sé seo rófhada.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'B\'fhéidir gur mhaith leat na <a href=\"$url\">nótaí eisithe a léamh</a>.';
  }

  @override
  String get rstTitle => 'Braitheadh RST';

  @override
  String get rstHeader => 'Ní mór duit RST a dhíchumasú chun leanúint leis an tsuiteáil';

  @override
  String get rstDisable => 'Úsáideann do ríomhaire Intel RST (Teicneolaíocht Stórála Mear). Is féidir leat RST a dhíchumasú ceachtar i:';

  @override
  String get rstDisableWindows => 'Windows, má tá tú ag baint úsáide as socrú tosaithe dé le Windows';

  @override
  String get rstDisableBios => 'Socruithe BIOS';

  @override
  String rstInstructions(String url) {
    return 'Le treoracha a fháil, scanadh an cód QR ar ghléas eile nó tabhair cuairt ar: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Cumraigh Tosaithe Slán';

  @override
  String get configureSecureBootDescription => 'Roghnaigh tú bogearraí tiománaí tríú páirtí a shuiteáil. Éilíonn sé seo Tosaithe Slán a chasadh as.\nChun seo a dhéanamh, ní mór duit eochair slándála a roghnú anois, agus é a chur isteach nuair a thosaíonn an córas.';

  @override
  String get configureSecureBootOption => 'Cumraigh Tosaithe Slán';

  @override
  String get chooseSecurityKey => 'Roghnaigh eochair slándála';

  @override
  String get confirmSecurityKey => 'Deimhnigh an eochair slándála';

  @override
  String get dontInstallDriverSoftwareNow => 'Ná suiteáil na bogearraí tiománaí anois';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'Is féidir leat é a shuiteáil níos déanaí ó Bogearraí & Nuashonruithe.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Tá eochair shlándála de dhíth';

  @override
  String get secureBootSecurityKeysDontMatch => 'Ní mheaitseálann eochracha slándála';

  @override
  String get showSecurityKey => 'Taispeáin';

  @override
  String get hideSecurityKey => 'Folaigh';

  @override
  String get updatesOtherSoftwarePageTitle => 'Iarratais';

  @override
  String get updatesOtherSoftwarePageDescription => 'Cad iad na feidhmchláir ar mhaith leat a shuiteáil chun tosú leo?';

  @override
  String get codecsAndDriversPageTitle => 'Optamaigh do ríomhaire';

  @override
  String get codecsAndDriversPageDescription => 'Suiteáil bogearraí dílseánaigh molta?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO longa gan aon bhogearraí dílseánaigh de réir réamhshocraithe. D\'fhéadfadh suiteáil bogearraí breise feidhmíocht do ríomhaire a fheabhsú.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'Braitheadh cárta grafaicí NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody => 'Maidir leis an bhfeidhmíocht is fearr de chártaí grafacha NVIDIA, moltar go láidir tiománaithe breise a shuiteáil.';

  @override
  String get fullInstallationTitle => 'Roghnúchán breisithe';

  @override
  String get fullInstallationSubtitle => 'Rogha as líne d\'uirlisí oifige, fóntais agus brabhsálaí gréasáin.';

  @override
  String get minimalInstallationTitle => 'Roghnú réamhshocraithe';

  @override
  String get minimalInstallationSubtitle => 'Díreach na essentials, brabhsálaí gréasáin agus fóntais bhunúsacha.';

  @override
  String get otherOptions => 'Roghanna eile';

  @override
  String get installThirdPartyTitle => 'Suiteáil bogearraí tríú páirtí le haghaidh grafaicí agus crua-earraí Wi-Fi, chomh maith le formáidí meáin breise';

  @override
  String get installThirdPartySubtitle => 'Tá an bogearraí seo faoi réir téarmaí ceadúnais san áireamh lena dhoiciméadú. Tá cuid acu dílsithe.';

  @override
  String get installDriversTitle => 'Suiteáil bogearraí tríú páirtí le haghaidh grafaicí agus crua-earraí Wi-Fi';

  @override
  String get installDriversSubtitle => 'Lena n-áirítear tiománaithe NVIDIA agus tiománaithe';

  @override
  String get installCodecsTitle => 'Íoslódáil agus suiteáil tacaíocht le haghaidh formáidí meáin breise';

  @override
  String get installCodecsSubtitle => 'Lena n-áirítear MP3, MP4, MOV agus';

  @override
  String get batteryWarning => 'Níl an ríomhaire plugáilte isteach i bhfoinse cumhachta.';

  @override
  String get offlineWarning => 'Tá tú as líne faoi láthair';

  @override
  String get choosePassphraseTitle => 'Pasfhrása diosca';

  @override
  String get choosePassphraseHeader => 'Cruthaigh pasfhrása';

  @override
  String get choosePassphraseBody => 'Teastaíonn pasfhrása uait chun do chomhaid a chriptiú. Iarrfar ort do phasfhrása gach uair a chasann tú ar do ríomhaire.';

  @override
  String get choosePassphraseHint => 'Roghnaigh pasfhrása';

  @override
  String get choosePassphraseConfirmHint => 'Deimhnigh an pasfhrása';

  @override
  String get choosePassphraseRequired => 'Tá pasfhrása de dhíth';

  @override
  String get choosePassphraseMismatch => 'Ní mheaitseálann na pasfhrásaí';

  @override
  String get choosePassphraseInfoHeader => 'Stóráil do phasfhrása áit éigin sábháilte';

  @override
  String get choosePassphraseInfoBody => 'Má chailleann tú do phasfhrása, caillfidh tú do shonraí go léir.';

  @override
  String get chooseOptionalPassphraseHeader => 'Cruthaigh pasfhrása (roghnach)';

  @override
  String get chooseOptionalPassphraseBody => 'Is féidir le pasfhrása cabhrú le do shonraí a chosaint fiú má chuirtear isteach ar do chrua-earraí. Beidh ort an pasfhrása a chur isteach gach uair a chasann tú ar do ríomhaire. Ní bheidh tú in ann é a bhaint níos déanaí';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Stóráil do phasfhocal agus eochair athshlánaithe áit éigin sábháilte';

  @override
  String get chooseOptionalPassphraseInfoBody => 'Má chailleann tú do phasfhrása, caillfidh tú do shonraí go léir. Ní thagann an pasfhrása in ionad na heochrach athshlánaithe ná do phasfhocal úsáideora.';

  @override
  String get createPassphrase => 'Cruthaigh pasfhrása';

  @override
  String get confirmPassphrase => 'Deimhnigh an pasfhrása';

  @override
  String get installationTypeTitle => 'Socrú diosca';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'Conas is mian leat ${DISTRO}a shuiteáil?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'Tá $os ar an ríomhaire seo faoi láthair. Céard ar mhaith leat a dhéanamh?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'Tá $os1 agus $os2 ar an ríomhaire seo faoi láthair. Céard ar mhaith leat a dhéanamh?';
  }

  @override
  String get installationTypeMultiOSDetected => 'Tá córais oibriúcháin éagsúla ar an ríomhaire seo faoi láthair. Céard ar mhaith leat a dhéanamh?';

  @override
  String get installationTypeNoOSDetected => 'Níl aon chórais oibriúcháin aimsithe ag an ríomhaire seo faoi láthair. Céard ar mhaith leat a dhéanamh?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Léirscrios diosca agus suiteáil $DISTRO';
  }

  @override
  String get installationTypeEraseInfo => 'Scriosfar na sonraí agus na landairí go léir ar an diosca, lena n-áirítear córais oibriúcháin.';

  @override
  String get installationTypeAdvancedLabel => 'Taispeáin ardroghanna...';

  @override
  String get installationTypeAdvancedTitle => 'Criptiú agus córas comhaid';

  @override
  String get installationTypeExperimental => 'Turgnamhach';

  @override
  String get installationTypeNone => 'Gan criptiú';

  @override
  String get installationTypeNoneInfo => 'Córas comhad caighdeánach gan criptiú.';

  @override
  String get installationTypeNoneSelected => 'Níl aon cheann roghnaithe';

  @override
  String get installationTypeLVM => 'Bain úsáid as LVM gan criptiú';

  @override
  String get installationTypeLVMSelected => 'LVM roghnaithe';

  @override
  String get installationTypeLVMEncryption => 'Criptigh le pasfhrása';

  @override
  String get installationTypeLVMEncryptionInfo => 'Beidh ort pasfhrása a chur isteach gach uair a chuireann tú do ríomhaire ar siúl. Úsáideann sé seo criptiú LUKS le LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM agus criptiú roghnaithe';

  @override
  String get installationTypeEncryptInfo => 'Roghnóidh tú eochair slándála sa chéad chéim eile.';

  @override
  String get installationTypeZFS => 'Bain úsáid as ZFS gan criptiú';

  @override
  String get installationTypeZFSEncryption => 'Criptigh le pasfhrása ag baint úsáide as ZFS';

  @override
  String get installationTypeZFSEncryptionInfo => 'Criptiú dúchasach le ZFS. Beidh ort pasfhrása a chur isteach gach uair a chuireann tú do ríomhaire ar siúl.';

  @override
  String get installationTypeZFSSelected => 'ZFS roghnaithe';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS agus criptiú roghnaithe';

  @override
  String get installationTypeTPM => 'Bain úsáid as criptiúchán crua-earraí';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Léigh faoi chriptiú TPM</a> sula roghnaíonn tú an rogha seo. Seans nach n-oibreoidh sé seo le do chrua-earraí nó le heisiúintí $DISTRO amach anseo.';
  }

  @override
  String get installationTypeTPMSelected => 'TPM roghnaithe';

  @override
  String installationTypeReinstall(String os) {
    return 'Léirscrios $os agus reinstall';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Rabhadh:</font> Scriosfaidh sé seo do ríomhchláir, doiciméid, grianghraif, ceol agus comhaid ar bith eile $os.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Suiteáil $product in éineacht le $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Suiteáil $product in éineacht le $os1 agus $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Suiteáil $product taobh le córais oibriúcháin atá ann cheana';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Suiteáil $product in éineacht le deighiltí eile';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Roghnaigh deighilt chun méid a athrú agus spás a chruthú do $product. Is féidir leat do chóras oibriúcháin a roghnú le linn tosaithe.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Scrios $os agus suiteáil $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'Scriosfar go buan gach comhad agus sonraí ón suiteáil $os atá ann cheana féin.';
  }

  @override
  String get installationTypeManual => 'Suiteáil láimhe';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'D\'úsáideoirí chun cinn ag lorg socruithe diosca saincheaptha.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Léirscrios diosca agus suiteáil $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'Tosaigh ón tús ar do dhiosca roghnaithe.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'Roghnaigh tiomántán:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'Roghnaigh laindéal:';

  @override
  String get selectGuidedStorageInfoLabel => 'Úsáidfear an diosca iomlán:';

  @override
  String get selectGuidedStorageInstallNow => 'Suiteáil anois';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Roghnaigh cá háit le $DISTRO a shuiteáil';
  }

  @override
  String get installAlongsideSpaceDivider => 'Leithdháileadh spás tiomána tríd an roinnteoir a tharraingt thíos:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return 'Tá $num deighiltí níos lú i bhfolach, bain úsáid as an <a href=\"$url\">uirlis ardroinnte</a> le haghaidh tuilleadh rialaithe';
  }

  @override
  String get installAlongsideResizePartition => 'Athraigh méid na críochdheighilte';

  @override
  String get installAlongsideAllocateSpace => 'Spás a leithdháileadh';

  @override
  String get installAlongsideFiles => 'Comhaid';

  @override
  String get installAlongsidePartition => 'Críochdheighilt:';

  @override
  String get installAlongsideSize => 'Méid:';

  @override
  String get installAlongsideAvailable => 'Ar fáil:';

  @override
  String get allocateDiskSpace => 'Deighilt láimhe';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Ní mór pointí Mount tús a chur le \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Ní féidir spásanna a bheith i bpointí feistithe';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(String mountpoint, String format) {
    return 'Ní córas comhaid tacaithe é $format do $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'Gléas';

  @override
  String get diskHeadersType => 'Cineál';

  @override
  String get diskHeadersMountPoint => 'Pointe feistithe';

  @override
  String get diskHeadersSize => 'Méid';

  @override
  String get diskHeadersUsed => 'Úsáidte';

  @override
  String get diskHeadersSystem => 'Córas';

  @override
  String get diskHeadersFormat => 'Formáid';

  @override
  String get freeDiskSpace => 'Spás saor in aisce';

  @override
  String get newPartitionTable => 'Tábla nua críochdheighilte';

  @override
  String get newPartitionTableConfirmationTitle => 'Críochdheighilt fholamh nua';

  @override
  String get newPartitionTableConfirmationMessage => 'Beidh Cruthú tábla laindéal nua ar gléas ar fad a bhaint gach ceann de na Deighiltí atá ann faoi láthair. Is féidir an oibríocht seo a chealú más gá.';

  @override
  String get tooManyPrimaryPartitions => 'An iomarca críochdheighiltí bunscoile';

  @override
  String get partitionLimitReached => 'Teorainn bainte amach';

  @override
  String get bootLoaderDevice => 'Gléas le haghaidh suiteáil loader tosaithe';

  @override
  String get partitionCreateTitle => 'Cruthaigh críochdheighilt';

  @override
  String get partitionEditTitle => 'Cuir críochdheighilt in eagar';

  @override
  String get partitionSizeLabel => 'Méid:';

  @override
  String get partitionTypeLabel => 'Cineál don laindéal nua:';

  @override
  String get partitionTypePrimary => 'Bunscoileanna';

  @override
  String get partitionTypeLogical => 'Loighciúil';

  @override
  String get partitionLocationLabel => 'Suíomh don chríochdheighilt nua:';

  @override
  String get partitionLocationBeginning => 'Tús an spáis seo';

  @override
  String get partitionLocationEnd => 'Deireadh an spáis seo';

  @override
  String get partitionFormatLabel => 'Úsáidte mar:';

  @override
  String get partitionFormatNone => 'Fág gan fhoirm';

  @override
  String partitionFormatKeep(String format) {
    return 'Fág formáidithe mar $format';
  }

  @override
  String get partitionErase => 'Formáidigh an laindéal';

  @override
  String get partitionMountPointLabel => 'Pointe gléasta:';

  @override
  String get confirmPageTitle => 'Réidh le suiteáil';

  @override
  String get confirmHeader => 'Déan athbhreithniú ar do chuid roghanna';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPMName';

  @override
  String get confirmDiskEncryptionNone => 'Ceann ar bith';

  @override
  String get confirmDevicesTitle => 'Gléasanna';

  @override
  String get confirmEntryApplications => 'Iarratais';

  @override
  String get confirmEntryDiskSetup => 'Cineál a shuiteáil';

  @override
  String get confirmEntryDiskEncryption => 'Criptiú diosca';

  @override
  String get confirmEntryInstallationDisk => 'Diosca suiteála';

  @override
  String get confirmEntryProprietarySoftware => 'Bogearraí dílseánaigh';

  @override
  String get confirmSectionGeneralTitle => 'Ginearálta';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'Slándáil & tuilleadh';

  @override
  String get confirmPartitionsTitle => 'Deighiltí';

  @override
  String get confirmPartitionTables => 'Athraítear táblaí críochdheighilte na ngléasanna seo a leanas:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'CodecsName';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs agus tiománaithe';

  @override
  String get confirmProprietarySoftwareDrivers => 'Tiománaithe';

  @override
  String get confirmInstallButton => 'Suiteáil';

  @override
  String get confirmTableErased => 'Scriosta';

  @override
  String get confirmTableUnchanged => 'Gan athrú';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Athmhéadaithe ó $oldsize go $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Cruthaithe agus formáidithe mar $format a úsáidtear le haghaidh $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formáidithe mar $format a úsáidtear le haghaidh $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Úsáidte le haghaidh $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formáidithe mar $format';
  }

  @override
  String get installationCompleteTitle => 'Suiteáil curtha i gcrích';

  @override
  String readyToUse(String system) {
    return 'Tá $system suiteáilte agus réidh le húsáid';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** cóipeáladh chuig an diosca';
  }

  @override
  String restartInto(String system) {
    return 'Atosaigh i $system';
  }

  @override
  String get restartWarningBody => 'Atosaigh chun an tsuiteáil a chríochnú nó leanúint ar aghaidh leis an tástáil.\nNí shábhálfar aon athruithe a dhéanann tú.';

  @override
  String get rebootToConfigureWarning => 'Caithfidh tú an ríomhaire a atosú chun leanúint leis an bpróiseas suiteála.';

  @override
  String get shutdown => 'Múch';

  @override
  String get restartNow => 'Atosaigh anois';

  @override
  String get continueTesting => 'Leanúint ar aghaidh leis an tástáil';

  @override
  String get bitlockerInfoTitle => 'Braitheadh BitLocker';

  @override
  String get bitlockerInfoDescription => 'Tá deighilt amháin nó níos mó criptithe le BitLocker.';

  @override
  String get bitlockerInfoDisable => 'Chun é a shuiteáil taobh le Windows, díchumasaigh BitLocker i Windows.';

  @override
  String get bitlockerInfoRecovery => 'Féadfaidh Windows eochracha athshlánaithe a iarraidh ar an tosaithe tar éis na suiteála.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'Le treoracha a fháil, tabhair cuairt ar an <a href=\"$url\">Treoir BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'Seans go gcaillfidh tú do shonraí go léir gan eochracha athshlánaithe BitLocker';

  @override
  String get restartComputer => 'Atosaigh ríomhaire';

  @override
  String get restartComputerTitle => 'Atosaigh ríomhaire?';

  @override
  String get restartIntoWindows => 'Atosaigh isteach Windows';

  @override
  String get restartIntoWindowsTitle => 'Atosaigh i Windows?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'An bhfuil tú cinnte go bhfuil fonn ort do ríomhaire a atosú? Beidh ort an tsuiteáil $DISTRO a atosú níos déanaí chun suiteáil $DISTRO a chríochnú.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'Fáilte go $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'Ar fáil:';

  @override
  String get installationSlidesIncluded => 'San áireamh:';

  @override
  String get installationSlidesWelcomeTitle => 'Fast, saor in aisce agus lán de ghnéithe nua';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'Déanann an leagan is déanaí de $DISTRO ríomhaireacht níos éasca ná riamh.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Cibé an forbróir, cruthaitheoir, gamer nó riarthóir tú gheobhaidh tú uirlisí nua chun do tháirgiúlacht a fheabhsú agus do thaithí i ${RELEASE}a fheabhsú.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'Na hiarratais go léir a theastaíonn uait';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Suiteáil, bainistigh agus nuashonraigh do chuid feidhmchlár go léir i mBogearraí Ubuntu, lena n-áirítear na mílte feidhmchlár ón Snap Store agus ón gcartlann $DISTRO araon.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Forbairt leis an chuid is fearr de fhoinse oscailte';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return 'Is é $DISTRO an stáisiún oibre idéalach d\'fhorbairt app nó gréasáin, eolaíocht sonraí agus AI / ML chomh maith le devops agus riarachán. Cuimsíonn gach eisiúint $DISTRO na huirlisí is déanaí agus tacaíonn sé le gach IDEs mór.';
  }

  @override
  String get installationSlidesCreativityTitle => 'Feabhas a chur ar do chruthaitheacht';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'Más beochantóir, dearthóir, cruthaitheoir físe nó forbróir cluiche tú tá sé éasca do shreabhadh oibre a thabhairt chuig $DISTRO le tacaíocht do bhogearraí agus feidhmchláir caighdeánacha foinse oscailte agus tionscail.';
  }

  @override
  String get installationSlidesGamingTitle => 'Iontach do chearrbhachas';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return 'Tacaíonn $DISTRO leis na tiománaithe NVIDIA agus Mesa is déanaí chun feidhmíocht agus comhoiriúnacht a fheabhsú. Imríonn na mílte teideal Windows go hiontach ar $DISTRO trí fheidhmchláir cosúil le Gaile gan aon chumraíocht bhreise.';
  }

  @override
  String get installationSlidesSecurityTitle => 'Príobháideach agus slán';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return 'Soláthraíonn $DISTRO na huirlisí go léir a theastaíonn uait chun fanacht príobháideach agus slán ar líne. Le tacaíocht balla dóiteáin agus VPN tógtha agus a lán feidhmchlár atá dírithe ar phríobháideachas chun a chinntiú go bhfuil smacht iomlán agat ar do chuid sonraí.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'Tagann gach eisiúint LTS $DISTRO le cúig bliana de phaisteáil slándála san áireamh, ag síneadh go deich mbliana le síntiús Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Cumhacht suas do tháirgiúlacht';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Áirítear ar an deasc LibreOffice, sraith feidhmchlár foinse oscailte comhoiriúnach Microsoft Office do dhoiciméid, scarbhileoga agus cur i láthair. Tá uirlisí comhoibrithe coitianta ar fáil freisin.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'Rochtain do gach duine';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'I gcroílár na fealsúnachta $DISTRO tá an creideamh go bhfuil ríomhaireacht do gach duine. Le huirlisí inrochtaineachta chun cinn agus roghanna chun teanga, dathanna agus méid téacs a athrú, déanann $DISTRO ríomhaireacht éasca - cibé duine agus cibé áit a bhfuil tú.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'Léitheoir Scáileáin Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'Tacaíocht teanga';

  @override
  String get installationSlidesSupportTitle => 'Cabhair agus tacaíocht';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'Tá an doiciméadú oifigiúil $DISTRO ar fáil ar líne agus tríd an deilbhín Cabhair sa duga.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Clúdaíonn Ask Ubuntu raon ceisteanna agus freagraí agus soláthraíonn Dioscúrsa Ubuntu treoracha agus plé d\'úsáideoirí nua agus a bhfuil taithí acu.';

  @override
  String get installationSlidesSupportEnterprise => 'D\'úsáideoirí fiontair soláthraíonn Canonical tacaíocht tráchtála chun é a dhéanamh éasca le dul ar bord agus Ubuntu a bhainistiú go daingean san ionad oibre.';

  @override
  String get installationSlidesSupportResources => 'Acmhainní cabhracha:';

  @override
  String get installationSlidesSupportDocumentation => 'Doiciméid oifigiúla';

  @override
  String get installationSlidesSupportUbuntuPro => 'Tacaíocht fiontar-grád 24 / 7 le Ubuntu Pro';

  @override
  String get copyingFiles => 'Comhaid á gcóipeáil…';

  @override
  String get installingSystem => 'An córas á shuiteáil…';

  @override
  String get configuringSystem => 'An córas á bhunú…';

  @override
  String get installationFailed => 'Theip ar shuiteáil';

  @override
  String get notEnoughDiskSpaceTitle => 'Níl go leor spás diosca ann';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Níl go leor spás diosca le suiteáil $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'Níl go leor spáis diosca ag an diosca roghnaithe chun $DISTRO a shuiteáil. Scoir den suiteálaí chun spás a chur ar fáil nó roghnaigh diosca eile.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'Ar fáil:';

  @override
  String get notEnoughDiskSpaceRequired => 'De Dhíth:';

  @override
  String get refreshPageTitle => 'Nuashonrú ar fáil';

  @override
  String get refreshHeader => 'Tá nuashonrú ar fáil don suiteálaí';

  @override
  String get refreshUpdateNow => 'Nuashonraigh anois';

  @override
  String get refreshInfo => 'Nuashonrú ar an leagan is déanaí le haghaidh iontaofacht níos fearr agus gnéithe níos mó.';

  @override
  String get refreshReady => 'Nuashonraigh réidh';

  @override
  String refreshCurrent(String snap, String version) {
    return 'Is é $version an leagan $snap reatha.';
  }

  @override
  String refreshInstall(String version) {
    return 'Nuashonrú go leagan $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'Tá an leagan reatha $version cothrom le dáta.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snapá nuashonrú...';
  }

  @override
  String get refreshRestart => 'Dún an suiteálaí agus athsheoladh chun leanúint ar aghaidh';

  @override
  String get refreshCloseLabel => 'Dún an suiteálaí';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'Réamhriachtanais $snap a chinntiú...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'Athnuachan $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'Seiceáil $snap ath-athnuachan...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'Ag ullmhú $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'Ag íosluchtú $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'Ag bailíochtú $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'Gléasta $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'Ag stopadh seirbhísí $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'Ailiasanna $snap á mbaint...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'Ag dínascadh $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'Sócmhainní $snap á nuashonrú...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Líne ordaithe eithne $snap á nuashonrú...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'Sonraí $snap á gcóipeáil...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Próifílí slándála $snap á mbunú...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'Ag nascadh $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Plocóidí agus sliotáin $snap á nascadh...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Ailiasanna uathoibríocha $snap á socrú...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Ailiasanna $snap á mbunú...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'Seirbhísí $snap á thosú...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'Ag glanadh suas $snap...';
  }

  @override
  String get recoveryKeyTitle => 'Eochair aisghabhála TPM';

  @override
  String get recoveryKeyHeader => 'Faigh eochair athshlánaithe';

  @override
  String get recoveryKeyInfoHeader => 'Seans go gcaillfidh tú do shonraí go léir gan eochair athshlánaithe';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Faigh eochair athshlánaithe chomh luath agus a logálann tú isteach i $distro den chéad uair agus stóráil áit éigin sábháilte í.';
  }

  @override
  String get recoveryKeyCommand => 'Chun eochair athshlánaithe a fháil, cuir an tsuiteáil i gcrích, atosaigh do ríomhaire, agus rith an t-ordú seo sa teirminéal:';

  @override
  String get recoveryKeyStorageAdvice => 'Stóráil an eochair athshlánaithe áit éigin sábháilte. Úsáid é chun an diosca a dhíchriptiú i gcás athruithe córais áirithe. Mar shampla, b\'fhéidir go mbeadh sé ag teastáil uait má athraíonn tú na comhpháirteanna i do ríomhaire nó má nuashonraíonn tú firmware.';

  @override
  String get recoveryKeyConfirmation => 'Tuigim go mb\'fhéidir go gcaillfidh mé mo chuid sonraí go léir mura bhfuil eochair athshlánaithe agam';

  @override
  String get recoveryKeyLinkLabel => 'Learn more';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'Scan an cód QR nó cuir isteach an cód thíos ag <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'Suiteáil uathoibrithe';

  @override
  String get landscapeHeader => 'Logáil isteach ar an Tírdhreach';

  @override
  String get landscapeDomainHeader => 'Cuir isteach fearann Tírdhreacha (FQDN)';

  @override
  String get landscapeDomainHintText => 'Fearann tírdhreacha (FQDN)';

  @override
  String get landscapeDomainInstructions => 'Cuir fearann Tírdhreacha d’eagraíochta ar fáil chun logáil isteach agus chun comhad uathshuiteála a fháil. Is féidir leat an FQDN a fháil ó do thacaíocht TF.';

  @override
  String get landscapeDomainTextField => 'Fearann tírdhreacha (FQDN)';

  @override
  String get next => 'Ar aghaidh';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Fearann neamhbhailí, seiceáil le do thoil nó déan teagmháil le do thacaíocht TF';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Ceangail leis an idirlíon chun leanúint ar aghaidh';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'Tá gá leis an Idirlíon chun an comhad uathshuiteála a fháil ó Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Chuaigh an cód in éag, bain triail eile as';

  @override
  String get landscapeLoginFailedWarning => 'Theip ar logáil isteach, bain triail eile as';

  @override
  String get landscapeErrorPageTitle => 'Níl suiteáil uathoibrithe ar fáil le do chuntas';

  @override
  String get landscapeErrorPageBody => 'Déan teagmháil le do thacaíocht TF nó bain triail as rogha suiteála eile.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Cód earráide: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle => 'Suiteáilfidh Ubuntu leis an gcumraíocht a sholáthraíonn d\'eagraíocht';

  @override
  String get landscapeConfirmPageSuccessInfoContent => 'Is féidir leat athbhreithniú a dhéanamh ar an gcomhad uathshuiteála a allmhairítear ó Landscape thíos.';
}
