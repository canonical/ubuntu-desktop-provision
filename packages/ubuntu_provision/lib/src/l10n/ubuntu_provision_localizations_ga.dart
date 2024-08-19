import 'ubuntu_provision_localizations.dart';

/// The translations for Irish (`ga`).
class UbuntuProvisionLocalizationsGa extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get accessibilityPageTitle => 'Inrochtaineacht';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'Inrochtaineacht i $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'Saincheap $DISTRO le do chuid riachtanas sula gcuireann tú ar bun. Is féidir leat iad a athrú níos déanaí i Socruithe Córais.';
  }

  @override
  String get accessibilitySeeingLabel => 'Ag féachaint';

  @override
  String get accessibilityHearingLabel => 'Éisteacht';

  @override
  String get accessibilityTypingLabel => 'Clóscríobh';

  @override
  String get accessibilityPointingLabel => 'Pointeáil agus cliceáil';

  @override
  String get accessibilityZoomLabel => 'Súmáil';

  @override
  String get accessibilityHighContrastLabel => 'Ardchodarsnacht';

  @override
  String get accessibilityLargeTextLabel => 'Téacs mór';

  @override
  String get accessibilityReduceAnimationLabel => 'Laghdaigh beochan';

  @override
  String get accessibilityScreenReaderLabel => 'Léitheoir scáileáin';

  @override
  String get accessibilityVisualAlertsLabel => 'Foláirimh amhairc';

  @override
  String get accessibilityStickKeysLabel => 'Eochracha greamaitheacha';

  @override
  String get accessibilitySlowKeysLabel => 'Eochracha malla';

  @override
  String get accessibilityMouseKeysLabel => 'Eochracha luiche';

  @override
  String get accessibilityDesktopZoomLabel => 'Súmáil deisce';

  @override
  String get errorPageTitle => 'Chuaigh rud éigin mícheart';

  @override
  String get errorPageUnexpected => 'Tá brón orainn, ach níl muid cinnte cad é an earráid. Is féidir leat do ríomhaire a atosú agus an próiseas suiteála a thosú arís. Is féidir leat <a>an cheist a thuairisciú</a> freisin.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'Chun tuairisc fhabht uathoibrithe a sheoladh lena n-áirítear faisnéis dífhabhtaithe ábhartha, rith <pre>sudo ubuntu-bug $SNAP</pre> i teirminéal, nó ón gconsól ordaithe (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'Taispeáin logchomhad';

  @override
  String get errorPageHideLog => 'Folaigh logchomhad';

  @override
  String get restart => 'Tosaigh arís';

  @override
  String get close => 'Dún';

  @override
  String get timezonePageTitle => 'Roghnaigh do chrios ama';

  @override
  String get timezoneLocationLabel => 'Suíomh';

  @override
  String get timezoneTimezoneLabel => 'Crios ama';

  @override
  String get keyboardTitle => 'Leagan amach méarchláir';

  @override
  String get keyboardHeader => 'Roghnaigh do leagan amach méarchláir';

  @override
  String get keyboardTestHint => 'Scríobh anseo chun do mhéarchlár a tástáil';

  @override
  String get keyboardDetectTitle => 'Aimsigh leagan amach an méarchláir';

  @override
  String get keyboardDetectButton => 'Braith';

  @override
  String get keyboardVariantLabel => 'Roghnaigh leagan an mhéarchláir:';

  @override
  String get keyboardPressKeyLabel => 'Brúigh cheann de na heochracha se:';

  @override
  String get keyboardKeyPresentLabel => 'An bhfuil an eochair seo ann ar do mhéarchlár?';

  @override
  String get themePageTitle => 'Roghnaigh do théama';

  @override
  String get themePageHeader => 'Is féidir leat é seo a athrú i gcónaí níos déanaí sna socruithe láithris.';

  @override
  String get themeDark => 'Dorcha';

  @override
  String get themeLight => 'Solas';

  @override
  String localePageTitle(String DISTRO) {
    return 'Fáilte go $DISTRO';
  }

  @override
  String get localeHeader => 'Roghnaigh do theanga:';

  @override
  String get identityPageTitle => 'Cruthaigh do chuntas';

  @override
  String get identityAutoLogin => 'Logáil isteach go huathoibríoch';

  @override
  String get identityRequirePassword => 'Iarr ar mo phasfhocal logáil isteach';

  @override
  String get identityRealNameLabel => 'D\'ainm';

  @override
  String get identityRealNameRequired => 'Tá ainm ag teastáil';

  @override
  String get identityRealNameTooLong => 'Tá an t-ainm sin rófhada.';

  @override
  String get identityHostnameLabel => 'Ainm do ríomhaire';

  @override
  String get identityHostnameInfo => 'An t-ainm a úsáideann sé nuair a labhraíonn sé le ríomhairí eile.';

  @override
  String get identityHostnameRequired => 'Tá ainm ríomhaire de dhíth';

  @override
  String get identityHostnameTooLong => 'Tá an t-ainm ríomhaire sin rófhada.';

  @override
  String get identityInvalidHostname => 'Tá ainm an ríomhaire neamhbhailí';

  @override
  String get identityUsernameLabel => 'D\'ainm úsáideora';

  @override
  String get identityUsernameRequired => 'Tá ainm úsáideora de dhíth';

  @override
  String get identityInvalidUsername => 'Tá an t-ainm úsáideora neamhbhailí';

  @override
  String get identityUsernameInUse => 'Tá an t-ainm úsáideora sin ann cheana féin.';

  @override
  String get identityUsernameSystemReserved => 'Tá an t-ainm sin curtha in áirithe d\'úsáid an chórais.';

  @override
  String get identityUsernameTooLong => 'Tá an t-ainm sin rófhada.';

  @override
  String get identityUsernameInvalidChars => 'Tá carachtair neamhbhailí san ainm sin.';

  @override
  String get identityPasswordLabel => 'Pasfhocal';

  @override
  String get identityPasswordRequired => 'Tá pasfhocal de dhíth';

  @override
  String get identityConfirmPasswordLabel => 'Deimhnigh pasfhocal';

  @override
  String get identityPasswordMismatch => 'Ní mheaitseálann na pasfhocail';

  @override
  String get identityPasswordShow => 'Taispeáin';

  @override
  String get identityPasswordHide => 'Folaigh';

  @override
  String get identityActiveDirectoryOption => 'Úsáid Comhadlann Ghníomhach';

  @override
  String get identityActiveDirectoryInfo => 'Iontrálfaidh tú sonraí fearainn agus sonraí eile sa chéad chéim eile.';

  @override
  String get activeDirectoryTitle => 'Logáil isteach i Active Directory';

  @override
  String get activeDirectoryHeader => 'Logáil isteach i Active Directory?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return 'Tá $DISTRO deartha chun comhtháthú gan uaim le Active Directory le haghaidh riarachán níos éasca.';
  }

  @override
  String get activeDirectoryTestConnection => 'Nascacht fearainn tástála';

  @override
  String get activeDirectoryDomainLabel => 'Fearann';

  @override
  String get activeDirectoryDomainEmpty => 'Riachtanach';

  @override
  String get activeDirectoryDomainTooLong => 'Rófhada';

  @override
  String get activeDirectoryDomainInvalidChars => 'Carachtair neamhbhailí';

  @override
  String get activeDirectoryDomainStartDot => 'Tosaíonn sé le ponc (.)';

  @override
  String get activeDirectoryDomainEndDot => 'Críochnaíonn sé le ponc (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'Tosaíonn sé le fleiscín (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'Críochnaíonn sé le fleiscín (-)';

  @override
  String get activeDirectoryDomainMultipleDots => 'Tá poncanna seicheamhacha iolracha ann (..)';

  @override
  String get activeDirectoryDomainNotFound => 'Fearann gan aimsiú';

  @override
  String get activeDirectoryAdminLabel => 'Fearann páirt a ghlacadh úsáideoir';

  @override
  String get activeDirectoryAdminEmpty => 'Riachtanach';

  @override
  String get activeDirectoryAdminInvalidChars => 'Carachtair neamhbhailí';

  @override
  String get activeDirectoryPasswordLabel => 'Pasfhocal';

  @override
  String get activeDirectoryPasswordEmpty => 'Riachtanach';

  @override
  String get activeDirectoryErrorTitle => 'Earráid agus nasc le Active Directory á chumrú';

  @override
  String get activeDirectoryErrorMessage => 'Ár leithscéal, ní féidir Eolaire Gníomhach a shocrú faoi láthair. Nuair a bheidh do chóras curtha i bhfeidhm, tabhair cuairt ar <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> chun cabhair a fháil.';

  @override
  String get networkPageTitle => 'Nasc Idirlín';

  @override
  String get networkPageHeader => 'Ceangail leis an idirlíon';

  @override
  String get networkPageBody => 'Feabhsóidh nasc idirlín do shuiteáil le seiceáil comhoiriúnachta agus pacáistí bogearraí breise.';

  @override
  String get networkWiredOption => 'Úsáid nasc sreinge';

  @override
  String get networkWiredNone => 'Níor aimsíodh aon nasc sreinge';

  @override
  String get networkWiredOff => 'Tá nasc sreinge casta as';

  @override
  String get networkWiredDisabled => 'Chun Ethernet a úsáid ar an ríomhaire seo, ní mór nasc sreinge a chumasú';

  @override
  String get networkWiredEnable => 'Cumasaigh sreangú';

  @override
  String get networkWifiOption => 'Ceangail le líonra Wi-Fi';

  @override
  String get networkWifiOff => 'Líonrú gan sreang díchumasaithe';

  @override
  String get networkWifiNone => 'Níor aimsíodh aon ghléas Wi-Fi';

  @override
  String get networkWifiDisabled => 'Chun Wi-Fi a úsáid ar an ríomhaire seo, ní mór líonrú gan sreang a chumasú';

  @override
  String get networkWifiEnable => 'Cumasaigh Wi-Fi';

  @override
  String get networkHiddenWifiOption => 'Ceangail le líonra Wi-Fi i bhfolach';

  @override
  String get networkHiddenWifiNameLabel => 'Ainm an líonra';

  @override
  String get networkHiddenWifiNameRequired => 'Tá ainm líonra de dhíth';

  @override
  String get networkNoneOption => 'Ná ceangail leis an idirlíon';

  @override
  String get eulaPageTitle => 'Comhaontú ceadúnais';

  @override
  String get eulaReviewTerms => 'Athbhreithniú a dhéanamh ar théarmaí an cheadúnais';

  @override
  String get eulaReadAndAcceptTerms => 'Chun leanúint ar aghaidh ag bunú an mheaisín seo, ní mór duit téarmaí an chomhaontaithe ceadúnais a léamh agus glacadh leo.';

  @override
  String get eulaAcceptTerms => 'Léigh mé agus glacaim leis na téarmaí seo';
}
