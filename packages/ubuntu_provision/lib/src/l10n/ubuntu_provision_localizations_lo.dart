// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_provision_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class UbuntuProvisionLocalizationsLo extends UbuntuProvisionLocalizations {
  UbuntuProvisionLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get accessibilityPageTitle => 'ການເຂົ້າເຖິງ';

  @override
  String accessibilityPageHeader(String DISTRO) {
    return 'ການເຂົ້າເຖິງໃນ $DISTRO';
  }

  @override
  String accessibilityPageBody(String DISTRO) {
    return 'ປັບແຕ່ງ $DISTRO ຕາມຄວາມຕ້ອງການຂອງທ່ານກ່ອນທີ່ທ່ານຈະຕັ້ງຄ່າ. ທ່ານສາມາດປ່ຽນແປງພວກມັນໄດ້ໃນພາຍຫຼັງໃນແອັບການຕັ້ງຄ່າ.';
  }

  @override
  String get accessibilitySeeingLabel => 'ການເບິ່ງເຫັນ';

  @override
  String get accessibilityHearingLabel => 'ການໄດ້ຍິນ';

  @override
  String get accessibilityTypingLabel => 'ການພິມ';

  @override
  String get accessibilityPointingLabel => 'ການຊີ້ ແລະ ການຄລິກ';

  @override
  String get accessibilityZoomLabel => 'ຂະຫຍາຍ';

  @override
  String get accessibilityHighContrastLabel => 'ຄວາມຕັດກັນສູງ';

  @override
  String get accessibilityLargeTextLabel => 'ຕົວໜັງສືຂະໜາດໃຫຍ່';

  @override
  String get accessibilityReduceAnimationLabel => 'ຫຼຸດຜ່ອນການເຄື່ອນໄຫວ';

  @override
  String get accessibilityScreenReaderLabel => 'ໂປຣແກຣມອ່ານໜ້າຈໍ';

  @override
  String get accessibilityVisualAlertsLabel => 'ການແຈ້ງເຕືອນແບບພາບ';

  @override
  String get accessibilityStickKeysLabel => 'ປຸ່ມກົດຄ້າງ';

  @override
  String get accessibilitySlowKeysLabel => 'ປຸ່ມກົດຊ້າ';

  @override
  String get accessibilityMouseKeysLabel => 'ປຸ່ມບັງຄັບເມົາສ໌';

  @override
  String get accessibilityDesktopZoomLabel => 'ການຂະຫຍາຍໜ້າຈໍ';

  @override
  String get errorPageTitle => 'ມີບາງຢ່າງຜິດພາດ';

  @override
  String get errorPageUnexpected =>
      'ຂໍອະໄພ, ພວກເຮົາບໍ່ແນ່ໃຈວ່າຂໍ້ຜິດພາດແມ່ນຫຍັງ. ທ່ານສາມາດລອງເລີ່ມຄອມພິວເຕີຂອງທ່ານໃໝ່ ແລະ ເລີ່ມຂະບວນການຕິດຕັ້ງໃໝ່ອີກຄັ້ງ. ທ່ານຍັງສາມາດ <a>ລາຍງານບັນຫາ</a> ໄດ້.';

  @override
  String errorPageUbuntuBug(String SNAP) {
    return 'ເພື່ອສົ່ງລາຍງານຂໍ້ຜິດພາດແບບອັດຕະໂນມັດ ລວມທັງຂໍ້ມູນດີບັກທີ່ກ່ຽວຂ້ອງ, ກະລຸນາແລ່ນຄຳສັ່ງ <pre>sudo ubuntu-bug $SNAP</pre> ໃນເທີມິນຽນ (terminal), ຫຼື ຈາກຄອນໂຊນຄຳສັ່ງ (Alt+F2).';
  }

  @override
  String get errorPageShowLog => 'ສະແດງບັນທຶກ';

  @override
  String get errorPageHideLog => 'ເຊື່ອງບັນທຶກ';

  @override
  String get errorPageTechnicalDetails => 'ລາຍລະອຽດດ້ານເຕັກນິກ';

  @override
  String get restart => 'ເລີ່ມລະບົບໃໝ່';

  @override
  String get close => 'ປິດ';

  @override
  String get timezonePageTitle => 'ເລືອກເຂດເວລາຂອງທ່ານ';

  @override
  String get timezoneLocationLabel => 'ສະຖານທີ່';

  @override
  String get timezoneTimezoneLabel => 'ເຂດເວລາ';

  @override
  String get keyboardTitle => 'ຮູບແບບແປ້ນພິມ';

  @override
  String get keyboardHeader => 'ເລືອກຮູບແບບແປ້ນພິມຂອງທ່ານ';

  @override
  String get keyboardTestHint => 'ພິມໃສ່ບ່ອນນີ້ເພື່ອທົດສອບແປ້ນພິມຂອງທ່ານ';

  @override
  String get keyboardDetectTitle => 'ກວດຫາຮູບແບບແປ້ນພິມ';

  @override
  String get keyboardDetectButton => 'ກວດຫາ';

  @override
  String get keyboardVariantLabel => 'ເລືອກແບບຍ່ອຍຂອງແປ້ນພິມຂອງທ່ານ:';

  @override
  String get keyboardPressKeyLabel => 'ກະລຸນາກົດປຸ່ມໃດໜຶ່ງດັ່ງຕໍ່ໄປນີ້:';

  @override
  String get keyboardKeyPresentLabel =>
      'ມີປຸ່ມດັ່ງຕໍ່ໄປນີ້ຢູ່ເທິງແປ້ນພິມຂອງທ່ານບໍ່?';

  @override
  String get themePageTitle => 'ເລືອກຮູບແບບຕີມຂອງທ່ານ';

  @override
  String get themePageHeader =>
      'ທ່ານສາມາດປ່ຽນແປງສິ່ງນີ້ພາຍຫຼັງໄດ້ສະເໝີໃນການຕັ້ງຄ່າຮູບໂສມ.';

  @override
  String get themeDark => 'ມືດ';

  @override
  String get themeLight => 'ແຈ້ງ';

  @override
  String localePageTitle(String DISTRO) {
    return 'ຍິນດີຕ້ອນຮັບສູ່ $DISTRO';
  }

  @override
  String get localeHeader => 'ເລືອກພາສາຂອງທ່ານ:';

  @override
  String get identityPageTitle => 'ສ້າງບັນຊີຂອງທ່ານ';

  @override
  String get identityAutoLogin => 'ເຂົ້າສູ່ລະບົບໂດຍອັດຕະໂນມັດ';

  @override
  String get identityRequirePassword =>
      'ຕ້ອງໃຊ້ລະຫັດຜ່ານຂອງຂ້ອຍເພື່ອເຂົ້າສູ່ລະບົບ';

  @override
  String get identityRealNameLabel => 'ຊື່ຂອງທ່ານ';

  @override
  String get identityRealNameRequired => 'ຈຳເປັນຕ້ອງໃສ່ຊື່';

  @override
  String get identityRealNameTooLong => 'ຊື່ນັ້ນຍາວເກີນໄປ.';

  @override
  String get identityHostnameLabel => 'ຊື່ຄອມພິວເຕີຂອງທ່ານ';

  @override
  String get identityHostnameInfo =>
      'ຊື່ທີ່ມັນໃຊ້ເວລາຕິດຕໍ່ສື່ສານກັບຄອມພິວເຕີເຄື່ອງອື່ນ.';

  @override
  String get identityHostnameRequired => 'ຈຳເປັນຕ້ອງໃສ່ຊື່ຄອມພິວເຕີ';

  @override
  String get identityHostnameTooLong => 'ຊື່ຄອມພິວເຕີນັ້ນຍາວເກີນໄປ.';

  @override
  String get identityInvalidHostname => 'ຊື່ຄອມພິວເຕີບໍ່ຖືກຕ້ອງ';

  @override
  String get identityUsernameLabel => 'ຊື່ຜູ້ໃຊ້ຂອງທ່ານ';

  @override
  String get identityUsernameRequired => 'ຈຳເປັນຕ້ອງໃສ່ຊື່ຜູ້ໃຊ້';

  @override
  String get identityInvalidUsername => 'ຊື່ຜູ້ໃຊ້ບໍ່ຖືກຕ້ອງ';

  @override
  String get identityUsernameInUse => 'ມີຊື່ຜູ້ໃຊ້ນັ້ນຢູ່ແລ້ວ.';

  @override
  String get identityUsernameSystemReserved =>
      'ຊື່ນັ້ນຖືກສະຫງວນໄວ້ສຳລັບການນຳໃຊ້ຂອງລະບົບ.';

  @override
  String get identityUsernameTooLong => 'ຊື່ນັ້ນຍາວເກີນໄປ.';

  @override
  String get identityUsernameInvalidChars => 'ຊື່ນັ້ນມີຕົວອັກສອນທີ່ບໍ່ຖືກຕ້ອງ.';

  @override
  String get identityPasswordLabel => 'ລະຫັດຜ່ານ';

  @override
  String get identityPasswordRequired => 'ຈຳເປັນຕ້ອງໃສ່ລະຫັດຜ່ານ';

  @override
  String get identityConfirmPasswordLabel => 'ຢືນຢັນລະຫັດຜ່ານ';

  @override
  String get identityPasswordMismatch => 'ລະຫັດຜ່ານບໍ່ກົງກັນ';

  @override
  String get identityPasswordShow => 'ສະແດງ';

  @override
  String get identityPasswordHide => 'ເຊື່ອງ';

  @override
  String get identityActiveDirectoryOption => 'ໃຊ້ Active Directory';

  @override
  String get identityActiveDirectoryInfo =>
      'ທ່ານຈະຕ້ອງປ້ອນໂດເມນ ແລະ ລາຍລະອຽດອື່ນໆໃນຂັ້ນຕອນຕໍ່ໄປ.';

  @override
  String get activeDirectoryTitle => 'ເຂົ້າສູ່ລະບົບ Active Directory';

  @override
  String get activeDirectoryHeader => 'ເຂົ້າສູ່ລະບົບ Active Directory ບໍ່?';

  @override
  String activeDirectoryInfo(String DISTRO) {
    return '$DISTRO ຖືກອອກແບບມາໃຫ້ເຊື່ອມຕໍ່ກັບ Active Directory ໄດ້ຢ່າງລຽບງ່າຍ ເພື່ອການບໍລິຫານຈັດການທີ່ງ່າຍຂຶ້ນ.';
  }

  @override
  String get activeDirectoryTestConnection => 'ທົດສອບການເຊື່ອມຕໍ່ໂດເມນ';

  @override
  String get activeDirectoryDomainLabel => 'ໂດເມນ';

  @override
  String get activeDirectoryDomainEmpty => 'ຈຳເປັນ';

  @override
  String get activeDirectoryDomainTooLong => 'ຍາວເກີນໄປ';

  @override
  String get activeDirectoryDomainInvalidChars => 'ຕົວອັກສອນບໍ່ຖືກຕ້ອງ';

  @override
  String get activeDirectoryDomainStartDot => 'ຂຶ້ນຕົ້ນດ້ວຍຈຸດ (.)';

  @override
  String get activeDirectoryDomainEndDot => 'ລົງທ້າຍດ້ວຍຈຸດ (.)';

  @override
  String get activeDirectoryDomainStartHyphen => 'ຂຶ້ນຕົ້ນດ້ວຍຂີດ (-)';

  @override
  String get activeDirectoryDomainEndHyphen => 'ລົງທ້າຍດ້ວຍຂີດ (-)';

  @override
  String get activeDirectoryDomainMultipleDots =>
      'ມີຈຸດຕໍ່ເນື່ອງກັນຫຼາຍຈຸດ (..)';

  @override
  String get activeDirectoryDomainNotFound => 'ບໍ່ພົບໂດເມນ';

  @override
  String get activeDirectoryAdminLabel => 'ຜູ້ໃຊ້ເຂົ້າຮ່ວມໂດເມນ';

  @override
  String get activeDirectoryAdminEmpty => 'ຈຳເປັນ';

  @override
  String get activeDirectoryAdminInvalidChars => 'ຕົວອັກສອນບໍ່ຖືກຕ້ອງ';

  @override
  String get activeDirectoryPasswordLabel => 'ລະຫັດຜ່ານ';

  @override
  String get activeDirectoryPasswordEmpty => 'ຈຳເປັນ';

  @override
  String get activeDirectoryErrorTitle =>
      'ເກີດຂໍ້ຜິດພາດໃນການຕັ້ງຄ່າການເຊື່ອມຕໍ່ກັບ Active Directory';

  @override
  String get activeDirectoryErrorMessage =>
      'ຂໍອະໄພ, ບໍ່ສາມາດຕັ້ງຄ່າ Active Directory ໄດ້ໃນຂະນະນີ້. ເມື່ອລະບົບຂອງທ່ານພ້ອມໃຊ້ງານແລ້ວ, ໃຫ້ເຂົ້າໄປທີ່ <a href=\"https://help.ubuntu.com/activedirectory\">help.ubuntu.com/activedirectory</a> ເພື່ອຂໍຄວາມຊ່ວຍເຫຼືອ.';

  @override
  String get networkPageTitle => 'ການເຊື່ອມຕໍ່ອິນເຕີເນັດ';

  @override
  String get networkPageHeader => 'ເຊື່ອມຕໍ່ກັບອິນເຕີເນັດ';

  @override
  String get networkPageBody =>
      'ການເຊື່ອມຕໍ່ອິນເຕີເນັດຈະຊ່ວຍປັບປຸງການຕິດຕັ້ງຂອງທ່ານ ດ້ວຍການກວດສອບຄວາມເຂົ້າກັນໄດ້ ແລະ ແພັກເກັດຊອບແວເພີ່ມເຕີມ.';

  @override
  String get networkWiredOption => 'ໃຊ້ການເຊື່ອມຕໍ່ແບບມີສາຍ';

  @override
  String get networkWiredNone => 'ກວດບໍ່ພົບການເຊື່ອມຕໍ່ແບບມີສາຍ';

  @override
  String get networkWiredOff => 'ການເຊື່ອມຕໍ່ແບບມີສາຍຖືກປິດຢູ່';

  @override
  String get networkWiredDisabled =>
      'ເພື່ອໃຊ້ອິນເຕີເນັດຜ່ານສາຍ (Ethernet) ໃນຄອມພິວເຕີນີ້, ຕ້ອງເປີດການເຊື່ອມຕໍ່ແບບມີສາຍກ່ອນ';

  @override
  String get networkWiredEnable => 'ເປີດໃຊ້ແບບມີສາຍ';

  @override
  String get networkWifiOption => 'ເຊື່ອມຕໍ່ກັບເຄືອຂ່າຍ Wi-Fi';

  @override
  String get networkWifiOff => 'ເຄືອຂ່າຍໄຮ້ສາຍຖືກປິດໃຊ້ງານ';

  @override
  String get networkWifiNone => 'ກວດບໍ່ພົບອຸປະກອນ Wi-Fi';

  @override
  String get networkWifiDisabled =>
      'ເພື່ອໃຊ້ Wi-Fi ໃນຄອມພິວເຕີນີ້, ຕ້ອງເປີດການເຊື່ອມຕໍ່ເຄືອຂ່າຍໄຮ້ສາຍກ່ອນ';

  @override
  String get networkWifiEnable => 'ເປີດໃຊ້ Wi-Fi';

  @override
  String get networkHiddenWifiOption =>
      'ເຊື່ອມຕໍ່ກັບເຄືອຂ່າຍ Wi-Fi ທີ່ເຊື່ອງຢູ່';

  @override
  String get networkHiddenWifiNameLabel => 'ຊື່ເຄືອຂ່າຍ';

  @override
  String get networkHiddenWifiNameRequired => 'ຈຳເປັນຕ້ອງໃສ່ຊື່ເຄືອຂ່າຍ';

  @override
  String get networkNoneOption => 'ບໍ່ຕ້ອງເຊື່ອມຕໍ່ກັບອິນເຕີເນັດ';

  @override
  String get eulaPageTitle => 'ຂໍ້ຕົກລົງໃບອະນຸຍາດ';

  @override
  String get eulaReviewTerms => 'ກວດເບິ່ງເງື່ອນໄຂໃບອະນຸຍາດ';

  @override
  String get eulaReadAndAcceptTerms =>
      'ເພື່ອສືບຕໍ່ການຕັ້ງຄ່າເຄື່ອງນີ້, ທ່ານຕ້ອງອ່ານ ແລະ ຍອມຮັບເງື່ອນໄຂຂອງຂໍ້ຕົກລົງໃບອະນຸຍາດ.';

  @override
  String get eulaAcceptTerms => 'ຂ້າພະເຈົ້າໄດ້ອ່ານ ແລະ ຍອມຮັບເງື່ອນໄຂເຫຼົ່ານີ້';

  @override
  String get successIconSemanticLabel => 'ສຳເລັດ';

  @override
  String get closeIconSemanticLabel => 'ປິດ';

  @override
  String get maximizeIconSemanticLabel => 'ຂະຫຍາຍໃຫຍ່ສຸດ';

  @override
  String get minimizeIconSemanticLabel => 'ຫຍໍ້ລົງ';

  @override
  String get expandIconSemanticLabel => 'ຂະຫຍາຍອອກ';

  @override
  String get collapseIconSemanticLabel => 'ຫຍໍ້ເຂົ້າ';
}
