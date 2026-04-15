// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class UbuntuBootstrapLocalizationsLo extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get appTitle => 'ຕົວຕິດຕັ້ງ Ubuntu Desktop';

  @override
  String windowTitle(String RELEASE) {
    return 'ຕິດຕັ້ງ $RELEASE';
  }

  @override
  String get autoinstallDirectTitle => 'ການຕິດຕັ້ງແບບອັດຕະໂນມັດ';

  @override
  String get autoinstallDirectHeader => 'ນຳເຂົ້າໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດ';

  @override
  String get autoinstallDirectUrlLabel =>
      'ທ່ານສາມາດປ້ອນ URL ຂອງໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດ:';

  @override
  String get autoinstallDirectFileLabel => 'ຫຼື ເລືອກໄຟລ໌ໃນເຄື່ອງ:';

  @override
  String get autoinstallDirectFileButtonLabel => 'ເລືອກໄຟລ໌...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'ລ້າງໄຟລ໌';

  @override
  String get autoinstallDirectFilePickerTitle => 'ເລືອກໄຟລ໌';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'ໄຟລ໌ YAML';

  @override
  String get autoinstallDirectImportButtonLabel => 'ນຳເຂົ້າ';

  @override
  String get autoinstallDirectErrorNetworkTitle =>
      'ບໍ່ສາມາດເຂົ້າເຖິງໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດໄດ້';

  @override
  String get autoinstallDirectErrorNetworkBody =>
      'ກວດເບິ່ງວ່າ URL ຖືກຕ້ອງ, ທົດສອບການເຊື່ອມຕໍ່ອິນເຕີເນັດຂອງທ່ານ ຫຼື ລອງໃໝ່ພາຍຫຼັງ.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'URL ບໍ່ຖືກຕ້ອງ';

  @override
  String get autoinstallDirectErrorInvalidUrlBody =>
      'ກວດເບິ່ງວ່າ URL ຖືກຕ້ອງ ຫຼື ເລືອກໄຟລ໌ໃນເຄື່ອງ.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle =>
      'ໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດບໍ່ຖືກຕ້ອງ';

  @override
  String get autoinstallDirectErrorInvalidContentBody =>
      'ກວດເບິ່ງໄຟລ໌ ຫຼື ໃຊ້ໄຟລ໌ອື່ນ.';

  @override
  String get autoinstallDirectErrorFileSystemTitle =>
      'ບໍ່ສາມາດອ່ານໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດໄດ້';

  @override
  String get autoinstallDirectErrorFileSystemBody =>
      'ກວດເບິ່ງສິດຂອງທ່ານ ຫຼື ໃຊ້ໄຟລ໌ອື່ນ.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'ເກີດຂໍ້ຜິດພາດທີ່ບໍ່ຮູ້ຈັກ';

  @override
  String get autoinstallTitle => 'ປະເພດຂອງການຕິດຕັ້ງ';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'ທ່ານຕ້ອງການຕິດຕັ້ງ $DISTRO ແນວໃດ?';
  }

  @override
  String get autoinstallInstructions =>
      'ປ້ອນ URL ຂອງ autoinstall.yaml ຫຼື ທີ່ຢູ່ໄຟລ໌ໃນເຄື່ອງ:';

  @override
  String get autoinstallInteractiveOption => 'ການຕິດຕັ້ງແບບໂຕ້ຕອບ';

  @override
  String get autoinstallInteractiveDescription =>
      'ສຳລັບຜູ້ໃຊ້ທີ່ຕ້ອງການຄຳແນະນຳເທື່ອລະຂັ້ນຕອນໃນການຕິດຕັ້ງ.';

  @override
  String get autoinstallDirectOption => 'ອັດຕະໂນມັດດ້ວຍໄຟລ໌ autoinstall';

  @override
  String get autoinstallDirectDescription =>
      'ສຳລັບຜູ້ໃຊ້ຂັ້ນສູງທີ່ມີ autoinstall.yaml ເພື່ອການຕິດຕັ້ງລະບົບທີ່ສອດຄ່ອງ ແລະ ເຮັດຊ້ຳໄດ້.';

  @override
  String get autoinstallLandscapeOption => 'ອັດຕະໂນມັດດ້ວຍ Landscape';

  @override
  String get autoinstallLandscapeDescription =>
      'ສຳລັບຜູ້ໃຊ້ໃນອົງກອນທີ່ໃຫ້ບໍລິການໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດຜ່ານ Landscape.';

  @override
  String get autoinstallErrorMessage =>
      'ຄຳສັ່ງໃນໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດເຮັດວຽກລົ້ມເຫຼວໃນລະຫວ່າງການຕິດຕັ້ງ.';

  @override
  String get autoinstallErrorInstructions =>
      'ທ່ານຈະຕ້ອງໄດ້ເລີ່ມການຕິດຕັ້ງໃໝ່. ກວດສອບໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດ, ເລືອກຮູບແບບການຕິດຕັ້ງແບບອື່ນ ຫຼື ຕິດຕໍ່ຝ່າຍສະໜັບສະໜູນໄອທີຂອງທ່ານ.';

  @override
  String get changeButtonText => 'ປ່ຽນ';

  @override
  String get quitButtonText => 'ອອກຈາກການຕິດຕັ້ງ';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'ຍິນດີຕ້ອນຮັບສູ່ $DISTRO';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'ກຳລັງກະກຽມ $DISTRO…';
  }

  @override
  String get warningLabel => 'ຄຳເຕືອນ:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'ທົດລອງໃຊ້ ຫຼື ຕິດຕັ້ງ $DISTRO';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'ທ່ານຕ້ອງການເຮັດຫຍັງກັບ $DISTRO?';
  }

  @override
  String get tryOrInstallRepairOption => 'ສ້ອມແປງການຕິດຕັ້ງ';

  @override
  String get tryOrInstallRepairDescription =>
      'ການສ້ອມແປງຈະຕິດຕັ້ງຊອບແວທັງໝົດຄືນໃໝ່ ໂດຍບໍ່ສົ່ງຜົນກະທົບຕໍ່ເອກະສານ ຫຼື ການຕັ້ງຄ່າຕ່າງໆ.';

  @override
  String tryOption(String RELEASE) {
    return 'ທົດລອງໃຊ້ $RELEASE';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'ທ່ານສາມາດທົດລອງໃຊ້ $RELEASE ໂດຍບໍ່ຕ້ອງປ່ຽນແປງຂໍ້ມູນໃດໆໃນຄອມພິວເຕີຂອງທ່ານ.';
  }

  @override
  String installOption(String RELEASE) {
    return 'ຕິດຕັ້ງ $RELEASE';
  }

  @override
  String installDescription(String RELEASE) {
    return 'ຕິດຕັ້ງ $RELEASE ຄຽງຄູ່ (ຫຼື ແທນທີ່) ລະບົບປະຕິບັດການປະຈຸບັນຂອງທ່ານ. ຂັ້ນຕອນນີ້ຈະໃຊ້ເວລາບໍ່ດົນ.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'ທ່ານອາດຈະຕ້ອງການອ່ານ <a href=\"$url\">ໝາຍເຫດການປ່ອຍ</a>.';
  }

  @override
  String get rstTitle => 'ກວດພົບ RST';

  @override
  String get rstHeader => 'ທ່ານຕ້ອງປິດ RST ເພື່ອສືບຕໍ່ການຕິດຕັ້ງ';

  @override
  String get rstDisable =>
      'ຄອມພິວເຕີຂອງທ່ານໃຊ້ Intel RST (Rapid Storage Technology). ທ່ານສາມາດປິດ RST ໄດ້ໃນ:';

  @override
  String get rstDisableWindows =>
      'Windows, ຖ້າຫາກທ່ານໃຊ້ລະບົບ dual boot ຄຽງຄູ່ກັບ Windows';

  @override
  String get rstDisableBios => 'ການຕັ້ງຄ່າ BIOS';

  @override
  String rstInstructions(String url) {
    return 'ສຳລັບຄຳແນະນຳ, ໃຫ້ສະແກນ QR code ໃນອຸປະກອນອື່ນ ຫຼື ເຂົ້າໄປທີ່: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'ຕັ້ງຄ່າ Secure Boot';

  @override
  String get configureSecureBootDescription =>
      'ທ່ານໄດ້ເລືອກຕິດຕັ້ງໄດຣເວີຈາກພາກສ່ວນທີສາມ. ສິ່ງນີ້ຮຽກຮ້ອງໃຫ້ປິດ Secure Boot.\nເພື່ອເຮັດສິ່ງນີ້, ທ່ານຕ້ອງເລືອກຄີຄວາມປອດໄພໃນຕອນນີ້, ແລະ ປ້ອນມັນໃສ່ເມື່ອລະບົບເລີ່ມຕົ້ນໃໝ່.';

  @override
  String get configureSecureBootOption => 'ຕັ້ງຄ່າ Secure Boot';

  @override
  String get chooseSecurityKey => 'ເລືອກຄີຄວາມປອດໄພ';

  @override
  String get confirmSecurityKey => 'ຢືນຢັນຄີຄວາມປອດໄພ';

  @override
  String get dontInstallDriverSoftwareNow => 'ຍັງບໍ່ຕ້ອງຕິດຕັ້ງໄດຣເວີໃນຕອນນີ້';

  @override
  String get dontInstallDriverSoftwareNowDescription =>
      'ທ່ານສາມາດຕິດຕັ້ງມັນພາຍຫຼັງໄດ້ຈາກ Software & Updates.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'ຕ້ອງການຄີຄວາມປອດໄພ';

  @override
  String get secureBootSecurityKeysDontMatch => 'ຄີຄວາມປອດໄພບໍ່ກົງກັນ';

  @override
  String get showSecurityKey => 'ສະແດງ';

  @override
  String get hideSecurityKey => 'ເຊື່ອງ';

  @override
  String get updatesOtherSoftwarePageTitle => 'ແອັບພລິເຄຊັນ';

  @override
  String get updatesOtherSoftwarePageDescription =>
      'ທ່ານຕ້ອງການຕິດຕັ້ງແອັບໃດແດ່ເພື່ອເລີ່ມຕົ້ນ?';

  @override
  String get codecsAndDriversPageTitle => 'ປັບປຸງຄອມພິວເຕີຂອງທ່ານ';

  @override
  String get codecsAndDriversPageDescription =>
      'ຕິດຕັ້ງຊອບແວທີ່ເປັນກຳມະສິດ (proprietary) ທີ່ແນະນຳບໍ່?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return '$DISTRO ບໍ່ໄດ້ມາພ້ອມກັບຊອບແວທີ່ເປັນກຳມະສິດໂດຍຄ່າເລີ່ມຕົ້ນ. ການຕິດຕັ້ງ ຊອບແວເພີ່ມເຕີມອາດຊ່ວຍປັບປຸງປະສິດທິພາບຄອມພິວເຕີຂອງທ່ານໄດ້.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'ກວດພົບກາດຈໍ NVIDIA';

  @override
  String get codecsAndDriversNvidiaBody =>
      'ເພື່ອປະສິດທິພາບທີ່ດີທີ່ສຸດຂອງກາດຈໍ NVIDIA, ແນະນຳຢ່າງຍິ່ງໃຫ້ຕິດຕັ້ງ ໄດຣເວີເພີ່ມເຕີມ.';

  @override
  String get fullInstallationTitle => 'ການເລືອກແບບຂະຫຍາຍ';

  @override
  String get fullInstallationSubtitle =>
      'ຊຸດເຄື່ອງມືສຳນັກງານ, ຢູທິລິຕີ້ ແລະ ເວັບບຣາວເຊີ ທີ່ເໝາະກັບການໃຊ້ງານແບບອອບໄລນ໌.';

  @override
  String get minimalInstallationTitle => 'ການເລືອກແບບມາດຕະຖານ';

  @override
  String get minimalInstallationSubtitle =>
      'ສະເພາະສິ່ງທີ່ຈຳເປັນ, ເວັບບຣາວເຊີ ແລະ ຢູທິລິຕີ້ພື້ນຖານ.';

  @override
  String get otherOptions => 'ຕົວເລືອກອື່ນໆ';

  @override
  String get installThirdPartyTitle =>
      'ຕິດຕັ້ງຊອບແວຈາກພາກສ່ວນທີສາມສຳລັບກາດຈໍ ແລະ ຮາດແວ Wi-Fi, ລວມທັງ ຮູບແບບມີເດຍເພີ່ມເຕີມ';

  @override
  String get installThirdPartySubtitle =>
      'ຊອບແວນີ້ຂຶ້ນກັບເງື່ອນໄຂໃບອະນຸຍາດທີ່ລວມຢູ່ໃນເອກະສານຂອງມັນ. ບາງອັນເປັນກຳມະສິດສະເພາະ.';

  @override
  String get installDriversTitle =>
      'ຕິດຕັ້ງຊອບແວພາກສ່ວນທີສາມສຳລັບກາດຈໍ ແລະ ຮາດແວ Wi-Fi';

  @override
  String get installDriversSubtitle =>
      'ລວມເຖິງແຕ່ບໍ່ຈຳກັດພຽງໄດຣເວີ NVIDIA ແລະ ສິ່ງທີ່ຄ້າຍຄືກັນ';

  @override
  String get installCodecsTitle =>
      'ດາວໂຫຼດ ແລະ ຕິດຕັ້ງສ່ວນຮອງຮັບສຳລັບຮູບແບບມີເດຍເພີ່ມເຕີມ';

  @override
  String get installCodecsSubtitle =>
      'ລວມເຖິງແຕ່ບໍ່ຈຳກັດພຽງ MP3, MP4, MOV ແລະ ສິ່ງທີ່ຄ້າຍຄືກັນ';

  @override
  String get batteryWarning => 'ຄອມພິວເຕີບໍ່ໄດ້ສຽບສາຍສາກ.';

  @override
  String get offlineWarning => 'ຕອນນີ້ທ່ານກຳລັງອອບໄລນ໌ຢູ່';

  @override
  String get choosePassphraseHeader => 'ສ້າງວະລີຜ່ານ (Passphrase)';

  @override
  String get choosePassphraseBody =>
      'ທ່ານຈະຕ້ອງປ້ອນວະລີຜ່ານຂອງທ່ານທຸກຄັ້ງທີ່ເປີດຄອມພິວເຕີ. ວະລີຜ່ານນີ້ແຕກຕ່າງຈາກລະຫັດຜ່ານຜູ້ໃຊ້ (User password) ຂອງທ່ານ.';

  @override
  String get choosePassphraseInfoHeader =>
      'ກະລຸນາບັນທຶກວະລີຜ່ານຂອງທ່ານໄວ້ໃຫ້ດີ';

  @override
  String get choosePassphraseInfoBody =>
      'ຖ້າທ່ານເຮັດມັນເສຍ, ທ່ານຈະສູນເສຍຂໍ້ມູນທັງໝົດ.';

  @override
  String get chooseOptionalPassphraseInfoHeader =>
      'ເກັບວະລີຜ່ານ ແລະ ຄີກູ້ຄືນຂອງທ່ານໄວ້ໃນບ່ອນທີ່ປອດໄພ';

  @override
  String get chooseOptionalPassphraseInfoBody =>
      'ຖ້າທ່ານເຮັດວະລີຜ່ານເສຍ, ທ່ານຈະສູນເສຍຂໍ້ມູນທັງໝົດ. ວະລີຜ່ານ ບໍ່ໄດ້ທົດແທນຄີກູ້ຄືນ ຫຼື ລະຫັດຜ່ານຜູ້ໃຊ້ຂອງທ່ານ.';

  @override
  String get passphrasePageTitle => 'ການເຂົ້າລະຫັດ';

  @override
  String get passphrasePageHeaderPassphrase => 'ຕັ້ງຄ່າວະລີຜ່ານການເຂົ້າລະຫັດ';

  @override
  String get passphrasePageHeaderPin => 'ຕັ້ງຄ່າ PIN ການເຂົ້າລະຫັດ';

  @override
  String get passphrasePageBodyPassphrase =>
      'ທ່ານຈະຕ້ອງປ້ອນວະລີຜ່ານທຸກຄັ້ງທີ່ເປີດຄອມພິວເຕີ. ວະລີຜ່ານນີ້ຕ່າງຈາກລະຫັດຜ່ານຜູ້ໃຊ້ຂອງທ່ານ. ທ່ານສາມາດປ່ຽນມັນພາຍຫຼັງໄດ້, ແຕ່ບໍ່ສາມາດປິດການໃຊ້ງານມັນໄດ້. ຖ້າທ່ານລືມວະລີຜ່ານ, ທ່ານສາມາດເຂົ້າເຖິງດິດຄືນໄດ້ໂດຍການໃຊ້ຄີກູ້ຄືນ.';

  @override
  String get passphrasePageBodyPin =>
      'ທ່ານຈະຕ້ອງປ້ອນ PIN ທຸກຄັ້ງທີ່ເປີດຄອມພິວເຕີ. PIN ນີ້ຕ່າງຈາກລະຫັດຜ່ານຜູ້ໃຊ້ຂອງທ່ານ. ທ່ານສາມາດປ່ຽນມັນພາຍຫຼັງໄດ້, ແຕ່ບໍ່ສາມາດປິດການໃຊ້ງານມັນໄດ້. ຖ້າທ່ານລືມ PIN, ທ່ານສາມາດເຂົ້າເຖິງດິດຄືນໄດ້ໂດຍການໃຊ້ຄີກູ້ຄືນ.';

  @override
  String get passphrasePageChoosePassphraseHint => 'ວະລີຜ່ານ';

  @override
  String get passphrasePageConfirmPassphraseHint => 'ຢືນຢັນວະລີຜ່ານ';

  @override
  String get passphrasePageRequiredPassphrase => 'ຈຳເປັນຕ້ອງມີວະລີຜ່ານ';

  @override
  String get passphrasePageMismatchPassphrase => 'ວະລີຜ່ານບໍ່ກົງກັນ';

  @override
  String get passphrasePageChoosePinHint => 'PIN';

  @override
  String get passphrasePageConfirmPinHint => 'ຢືນຢັນ PIN';

  @override
  String get passphrasePageRequiredPin => 'ຈຳເປັນຕ້ອງມີ PIN';

  @override
  String get passphrasePageMismatchPin => 'PIN ບໍ່ກົງກັນ';

  @override
  String get passphraseTypePassphraseTileTitle => 'ຕ້ອງການວະລີຜ່ານ';

  @override
  String get passphraseTypePassphraseTileSubTitle =>
      'ປອດໄພທີ່ສຸດ. ທ່ານຈະຕ້ອງປ້ອນວະລີຜ່ານທີ່ຍາວກວ່າທຸກຄັ້ງທີ່ທ່ານເປີດຄອມພິວເຕີ.';

  @override
  String get passphraseTypePinTileTitle => 'ຕ້ອງການ PIN';

  @override
  String get passphraseTypePinTileSubTitle =>
      'ປອດໄພກວ່າ. ທ່ານຈະຕ້ອງປ້ອນລະຫັດ PIN ຕົວເລກທຸກຄັ້ງທີ່ທ່ານເປີດຄອມພິວເຕີ.';

  @override
  String get passphraseTypeNoneTileTitle => 'ປົດລັອກດິດໂດຍອັດຕະໂນມັດ';

  @override
  String get passphraseTypePageHeader => 'ຄວາມປອດໄພເພີ່ມເຕີມ';

  @override
  String get passphraseTypePageBody =>
      'ໂດຍຄ່າເລີ່ມຕົ້ນ, Trusted Platform Module (TPM) ຂອງຄອມພິວເຕີຈະປົດລັອກ ດິດໃນລະຫວ່າງການເລີ່ມຕົ້ນ. ທ່ານຍັງມີທາງເລືອກໃນການປົກປ້ອງຂໍ້ມູນຂອງທ່ານເພີ່ມເຕີມ.';

  @override
  String get passphrasePagePassphraseEntropyBelowMin =>
      'ວະລີຜ່ານອ່ອນແອ, ກະລຸນາເຮັດໃຫ້ຍາວກວ່າ ຫຼື ຊັບຊ້ອນກວ່ານີ້';

  @override
  String get passphrasePagePassphraseEntropyBelowOptimal =>
      'ວະລີຜ່ານພໍໃຊ້ໄດ້, ເຮັດໃຫ້ຍາວກວ່າ ຫຼື ຊັບຊ້ອນກວ່ານີ້ເພື່ອຄວາມປອດໄພທີ່ດີກວ່າ';

  @override
  String get passphrasePagePassphraseEntropyOptimal => 'ວະລີຜ່ານທີ່ແຂງແກ່ນ';

  @override
  String get passphrasePagePinEntropyBelowMin =>
      'PIN ອ່ອນແອ, ເຮັດໃຫ້ຍາວກວ່າ ຫຼື ຄາດເດົາໄດ້ຍາກຂຶ້ນ';

  @override
  String get passphrasePagePinEntropyBelowOptimal =>
      'PIN ພໍໃຊ້ໄດ້, ເຮັດໃຫ້ຍາວກວ່າ ຫຼື ຄາດເດົາໄດ້ຍາກຂຶ້ນເພື່ອຄວາມປອດໄພທີ່ດີກວ່າ';

  @override
  String get passphrasePagePinEntropyOptimal => 'PIN ຍາວພຽງພໍແລ້ວ';

  @override
  String get installationTypeTitle => 'ການຕັ້ງຄ່າດິດ';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'ທ່ານຕ້ອງການຕິດຕັ້ງ $DISTRO ແນວໃດ?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'ຄອມພິວເຕີນີ້ມີ $os ຢູ່ແລ້ວ. ທ່ານຕ້ອງການເຮັດຫຍັງ?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'ຄອມພິວເຕີນີ້ມີ $os1 ແລະ $os2 ຢູ່ແລ້ວ. ທ່ານຕ້ອງການເຮັດຫຍັງ?';
  }

  @override
  String get installationTypeMultiOSDetected =>
      'ຄອມພິວເຕີນີ້ມີຫຼາຍລະບົບປະຕິບັດການຢູ່ແລ້ວ. ທ່ານຕ້ອງການເຮັດຫຍັງ?';

  @override
  String get installationTypeNoOSDetected =>
      'ຄອມພິວເຕີນີ້ບໍ່ມີລະບົບປະຕິບັດການທີ່ກວດພົບ. ທ່ານຕ້ອງການເຮັດຫຍັງ?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'ລຶບຂໍ້ມູນໃນດິດ ແລະ ຕິດຕັ້ງ $DISTRO';
  }

  @override
  String get installationTypeEraseInfo =>
      'ຂໍ້ມູນ ແລະ ພາທິຊັນທັງໝົດໃນດິດຈະຖືກລຶບ, ລວມທັງລະບົບປະຕິບັດການຕ່າງໆ.';

  @override
  String get installationTypeAdvancedLabel => 'ຕົວເລືອກຂັ້ນສູງ';

  @override
  String get installationTypeAdvancedTitle => 'ການເຂົ້າລະຫັດ ແລະ ລະບົບໄຟລ໌';

  @override
  String get installationTypeExperimental => 'ທົດລອງ';

  @override
  String get installationTypeNone => 'ບໍ່ມີການເຂົ້າລະຫັດ';

  @override
  String get installationTypeNoneInfo =>
      'ລະບົບໄຟລ໌ມາດຕະຖານທີ່ບໍ່ມີການເຂົ້າລະຫັດ.';

  @override
  String get installationTypeNoneSelected => 'ບໍ່ໄດ້ເລືອກອັນໃດ';

  @override
  String get installationTypeLVM => 'ໃຊ້ LVM ໂດຍບໍ່ມີການເຂົ້າລະຫັດ';

  @override
  String get installationTypeLVMSelected => 'ເລືອກ LVM ແລ້ວ';

  @override
  String get installationTypeLVMEncryption => 'ເຂົ້າລະຫັດດ້ວຍວະລີຜ່ານ';

  @override
  String installationTypeLVMEncryptionInfoResolute(String advancedHint) {
    return 'ທ່ານຈະຕ້ອງໄດ້ປ້ອນລະຫັດຜ່ານທຸກໆຄັ້ງທີ່ທ່ານເປີດຄອມພິວເຕີຂອງທ່ານ. $advancedHint';
  }

  @override
  String get installationTypeLVMEncryptionInfo2 =>
      'ນີ້ແມ່ນການໃຊ້ LVM ທີ່ມີການເຂົ້າລະຫັດ LUKS.';

  @override
  String get installationTypeLVMEncryptionSelected =>
      'ເລືອກ LVM ແລະ ການເຂົ້າລະຫັດແລ້ວ';

  @override
  String get installationTypeEncryptInfo =>
      'ທ່ານຈະຕ້ອງເລືອກຄີຄວາມປອດໄພໃນຂັ້ນຕອນຕໍ່ໄປ.';

  @override
  String get installationTypeZFS => 'ໃຊ້ ZFS ໂດຍບໍ່ມີການເຂົ້າລະຫັດ';

  @override
  String get installationTypeZFSEncryption =>
      'ເຂົ້າລະຫັດດ້ວຍວະລີຜ່ານໂດຍໃຊ້ ZFS';

  @override
  String get installationTypeZFSEncryptionInfo =>
      'ການເຂົ້າລະຫັດແບບ Native ດ້ວຍ ZFS. ທ່ານຈະຕ້ອງປ້ອນວະລີຜ່ານທຸກຄັ້ງ ທີ່ທ່ານເປີດຄອມພິວເຕີ.';

  @override
  String get installationTypeZFSSelected => 'ເລືອກ ZFS ແລ້ວ';

  @override
  String get installationTypeZFSEncryptionSelected =>
      'ເລືອກ ZFS ແລະ ການເຂົ້າລະຫັດແລ້ວ';

  @override
  String get installationTypeTPM => 'ໃຊ້ການເຂົ້າລະຫັດທີ່ຮອງຮັບໂດຍຮາດແວ';

  @override
  String get installationTypeTPMInfoResolute =>
      'ດິສກ໌ຈະຖືກປົດລັອກໂດຍອັດຕະໂນມັດໃນລະຫວ່າງການເລີ່ມຕົ້ນລະບົບ.';

  @override
  String get installationTypeTPMInfoUnavailable =>
      'ບໍ່ມີໃຫ້ໃຊ້ໃນຄອມພິວເຕີເຄື່ອງນີ້.';

  @override
  String get installationTypeTPMSelected => 'ເລືອກ TPM ແລ້ວ';

  @override
  String installationTypeReinstall(String os) {
    return 'ລຶບ $os ແລະ ຕິດຕັ້ງໃໝ່';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">ຄຳເຕືອນ:</font> ສິ່ງນີ້ຈະລຶບໂປຣແກຣມ, ເອກະສານ, ຮູບພາບ, ເພງ ແລະ ໄຟລ໌ອື່ນໆທັງໝົດໃນ $os ຂອງທ່ານ.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'ຕິດຕັ້ງ $product ຄຽງຄູ່ກັບ $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'ຕິດຕັ້ງ $product ຄຽງຄູ່ກັບ $os1 ແລະ $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'ຕິດຕັ້ງ $product ຄຽງຄູ່ກັບລະບົບປະຕິບັດການທີ່ມີຢູ່';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'ຕິດຕັ້ງ $product ຄຽງຄູ່ກັບພາທິຊັນອື່ນໆ';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'ເລືອກພາທິຊັນເພື່ອປັບຂະໜາດ ແລະ ສ້າງພື້ນທີ່ສຳລັບ $product. ທ່ານສາມາດເລືອກ ລະບົບປະຕິບັດການຂອງທ່ານໄດ້ໃນຕອນບູດເຄື່ອງ.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'ລຶບ $os ແລະ ຕິດຕັ້ງ $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'ໄຟລ໌ ແລະ ຂໍ້ມູນທັງໝົດຈາກການຕິດຕັ້ງ $os ທີ່ມີຢູ່ຈະຖືກລຶບຖິ້ມຢ່າງຖາວອນ.';
  }

  @override
  String get installationTypeManual => 'ການຕິດຕັ້ງແບບກຳນົດເອງ';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'ສຳລັບຜູ້ໃຊ້ຂັ້ນສູງທີ່ຕ້ອງການປັບແຕ່ງການຕັ້ງຄ່າດິດເອງ.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'ລຶບຂໍ້ມູນໃນດິດ ແລະ ຕິດຕັ້ງ $DISTRO';
  }

  @override
  String get selectGuidedStorageInfo => 'ເລີ່ມຕົ້ນໃໝ່ທັງໝົດໃນດິດທີ່ທ່ານເລືອກ.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'ເລືອກໄດຣຟ໌:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'ເລືອກພາທິຊັນ:';

  @override
  String get selectGuidedStorageInfoLabel => 'ຈະໃຊ້ພື້ນທີ່ດິດທັງໝົດ:';

  @override
  String get selectGuidedStorageInstallNow => 'ຕິດຕັ້ງດຽວນີ້';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'ເລືອກບ່ອນທີ່ຈະຕິດຕັ້ງ $DISTRO';
  }

  @override
  String get installAlongsideSpaceDivider =>
      'ຈັດສັນພື້ນທີ່ໄດຣຟ໌ໂດຍການລາກຕົວແບ່ງຂ້າງລຸ່ມນີ້:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num ພາທິຊັນຂະໜາດນ້ອຍຖືກເຊື່ອງໄວ້, ໃຫ້ໃຊ້ <a href=\"$url\">ເຄື່ອງມືຈັດການພາທິຊັນຂັ້ນສູງ</a> ເພື່ອການຄວບຄຸມທີ່ຫຼາຍຂຶ້ນ';
  }

  @override
  String get installAlongsideResizePartition => 'ປັບຂະໜາດພາທິຊັນ';

  @override
  String get installAlongsideAllocateSpace => 'ຈັດສັນພື້ນທີ່';

  @override
  String get installAlongsideFiles => 'ໄຟລ໌';

  @override
  String get installAlongsidePartition => 'ພາທິຊັນ:';

  @override
  String get installAlongsideSize => 'ຂະໜາດ:';

  @override
  String get installAlongsideAvailable => 'ຫວ່າງ:';

  @override
  String get allocateDiskSpace => 'ການແບ່ງພາທິຊັນດ້ວຍຕົນເອງ';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash =>
      'ຈຸດເຊື່ອມຕໍ່ (Mount point) ຕ້ອງເລີ່ມຕົ້ນດ້ວຍ \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace =>
      'ຈຸດເຊື່ອມຕໍ່ (Mount point) ບໍ່ສາມາດມີຍະຫວ່າງ';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(
      String mountpoint, String format) {
    return '$format ບໍ່ແມ່ນລະບົບໄຟລ໌ທີ່ຮອງຮັບສຳລັບ $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'ອຸປະກອນ';

  @override
  String get diskHeadersType => 'ປະເພດ';

  @override
  String get diskHeadersMountPoint => 'ຈຸດເຊື່ອມຕໍ່ (Mount point)';

  @override
  String get diskHeadersSize => 'ຂະໜາດ';

  @override
  String get diskHeadersUsed => 'ໃຊ້ໄປ';

  @override
  String get diskHeadersSystem => 'ລະບົບ';

  @override
  String get diskHeadersFormat => 'ຟໍແມັດ';

  @override
  String get freeDiskSpace => 'ພື້ນທີ່ຫວ່າງ';

  @override
  String get newPartitionTable => 'ຕາຕະລາງພາທິຊັນໃໝ່';

  @override
  String get newPartitionTableConfirmationTitle => 'ພາທິຊັນຫວ່າງເປົ່າໃໝ່';

  @override
  String get newPartitionTableConfirmationMessage =>
      'ການສ້າງຕາຕະລາງພາທິຊັນໃໝ່ໃນອຸປະກອນທັງໝົດຈະລຶບພາທິຊັນປະຈຸບັນທັງໝົດອອກ. ການດຳເນີນການນີ້ສາມາດຍົກເລີກໄດ້ຖ້າຈຳເປັນ.';

  @override
  String get tooManyPrimaryPartitions => 'ມີພາທິຊັນຫຼັກ (Primary) ຫຼາຍເກີນໄປ';

  @override
  String get partitionLimitReached => 'ຮອດຂີດຈຳກັດແລ້ວ';

  @override
  String get bootLoaderDevice => 'ອຸປະກອນສຳລັບຕິດຕັ້ງ boot loader';

  @override
  String get partitionCreateTitle => 'ສ້າງພາທິຊັນ';

  @override
  String get partitionEditTitle => 'ແກ້ໄຂພາທິຊັນ';

  @override
  String get partitionSizeLabel => 'ຂະໜາດ:';

  @override
  String get partitionTypeLabel => 'ປະເພດສຳລັບພາທິຊັນໃໝ່:';

  @override
  String get partitionTypePrimary => 'ຫຼັກ (Primary)';

  @override
  String get partitionTypeLogical => 'ໂລຈິກ (Logical)';

  @override
  String get partitionLocationLabel => 'ຕຳແໜ່ງສຳລັບພາທິຊັນໃໝ່:';

  @override
  String get partitionLocationBeginning => 'ຈຸດເລີ່ມຕົ້ນຂອງພື້ນທີ່ນີ້';

  @override
  String get partitionLocationEnd => 'ຈຸດສິ້ນສຸດຂອງພື້ນທີ່ນີ້';

  @override
  String get partitionFormatLabel => 'ໃຊ້ເປັນ:';

  @override
  String get partitionFormatNone => 'ປ່ອຍໄວ້ໂດຍບໍ່ຟໍແມັດ';

  @override
  String partitionFormatKeep(String format) {
    return 'ປ່ອຍໃຫ້ຟໍແມັດເປັນ $format';
  }

  @override
  String get partitionErase => 'ຟໍແມັດພາທິຊັນ';

  @override
  String get partitionMountPointLabel => 'ຈຸດເຊື່ອມຕໍ່ (Mount point):';

  @override
  String get confirmPageTitle => 'ພ້ອມທີ່ຈະຕິດຕັ້ງ';

  @override
  String get confirmHeader => 'ກວດເບິ່ງການເລືອກຂອງທ່ານ';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'ບໍ່ມີ';

  @override
  String get confirmDevicesTitle => 'ອຸປະກອນ';

  @override
  String get confirmEntryApplications => 'ແອັບພລິເຄຊັນ';

  @override
  String get confirmEntryDiskSetup => 'ປະເພດຂອງການຕິດຕັ້ງ';

  @override
  String get confirmEntryDiskEncryption => 'ການເຂົ້າລະຫັດດິດ';

  @override
  String get confirmEntryInstallationDisk => 'ດິດຕິດຕັ້ງ';

  @override
  String get confirmEntryProprietarySoftware =>
      'ຊອບແວທີ່ເປັນກຳມະສິດ (Proprietary software)';

  @override
  String get confirmSectionGeneralTitle => 'ທົ່ວໄປ';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'ຄວາມປອດໄພ ແລະ ອື່ນໆ';

  @override
  String get confirmPartitionsTitle => 'ພາທິຊັນ';

  @override
  String get confirmPartitionTables =>
      'ຕາຕະລາງພາທິຊັນຂອງອຸປະກອນຕໍ່ໄປນີ້ຈະຖືກປ່ຽນແປງ:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'ຕົວຖອດລະຫັດ';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'Codecs ແລະ ໄດຣເວີ';

  @override
  String get confirmProprietarySoftwareDrivers => 'ໄດຣເວີ';

  @override
  String get confirmInstallButton => 'ຕິດຕັ້ງ';

  @override
  String get confirmTableErased => 'ຖືກລຶບ';

  @override
  String get confirmTableUnchanged => 'ບໍ່ປ່ຽນແປງ';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'ປັບຂະໜາດຈາກ $oldsize ເປັນ $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'ສ້າງ ແລະ ຟໍແມັດເປັນ $format ໃຊ້ສຳລັບ $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'ຟໍແມັດເປັນ $format ໃຊ້ສຳລັບ $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'ໃຊ້ສຳລັບ $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'ຟໍແມັດເປັນ $format';
  }

  @override
  String get installationCompleteTitle => 'ການຕິດຕັ້ງສຳເລັດ';

  @override
  String readyToUse(String system) {
    return '$system ໄດ້ຮັບການຕິດຕັ້ງ ແລະ ພ້ອມໃຊ້ງານແລ້ວ';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** ຖືກຄັດລອກໄປໃສ່ດິດແລ້ວ';
  }

  @override
  String restartInto(String system) {
    return 'ຣີສະຕາດເຂົ້າສູ່ $system';
  }

  @override
  String get restartWarningBody =>
      'ຣີສະຕາດເພື່ອເຮັດໃຫ້ການຕິດຕັ້ງສຳເລັດ ຫຼື ສືບຕໍ່ທົດລອງໃຊ້.\nການປ່ຽນແປງໃດໆທີ່ທ່ານເຮັດຈະບໍ່ຖືກບັນທຶກ.';

  @override
  String get rebootToConfigureWarning =>
      'ທ່ານຕ້ອງຣີສະຕາດຄອມພິວເຕີເພື່ອສືບຕໍ່ຂັ້ນຕອນການຕິດຕັ້ງ.';

  @override
  String get shutdown => 'ປິດເຄື່ອງ';

  @override
  String get restartNow => 'ຣີສະຕາດດຽວນີ້';

  @override
  String get continueTesting => 'ສືບຕໍ່ທົດລອງໃຊ້';

  @override
  String get bitlockerInfoTitle => 'ກວດພົບ BitLocker';

  @override
  String get bitlockerInfoDescription =>
      'ໜຶ່ງ ຫຼື ຫຼາຍພາທິຊັນຖືກເຂົ້າລະຫັດດ້ວຍ BitLocker.';

  @override
  String get bitlockerInfoDisable =>
      'ເພື່ອຕິດຕັ້ງຄຽງຄູ່ກັບ Windows, ໃຫ້ປິດ BitLocker ໃນ Windows.';

  @override
  String get bitlockerInfoRecovery =>
      'Windows ອາດຈະຮ້ອງຂໍຄີກູ້ຄືນຕອນບູດເຄື່ອງຫຼັງການຕິດຕັ້ງ.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'ສຳລັບຄຳແນະນຳ, ເຂົ້າໄປທີ່ <a href=\"$url\">ຄູ່ມື BitLocker</a>.';
  }

  @override
  String get bitlockerWarningTitle =>
      'ທ່ານອາດຈະສູນເສຍຂໍ້ມູນທັງໝົດຫາກບໍ່ມີຄີກູ້ຄືນ BitLocker';

  @override
  String get restartComputer => 'ຣີສະຕາດຄອມພິວເຕີ';

  @override
  String get restartComputerTitle => 'ຣີສະຕາດຄອມພິວເຕີບໍ່?';

  @override
  String get restartInstaller => 'ເລີ່ມຕົວຕິດຕັ້ງໃໝ່';

  @override
  String get restartIntoWindows => 'ຣີສະຕາດເຂົ້າສູ່ Windows';

  @override
  String get restartIntoWindowsTitle => 'ຣີສະຕາດເຂົ້າສູ່ Windows ບໍ່?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການຣີສະຕາດຄອມພິວເຕີຂອງທ່ານ? ທ່ານຈະຕ້ອງເລີ່ມການຕິດຕັ້ງ $DISTRO ໃໝ່ໃນພາຍຫຼັງເພື່ອໃຫ້ການຕິດຕັ້ງ $DISTRO ສຳເລັດ.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'ຍິນດີຕ້ອນຮັບສູ່ $RELEASE';
  }

  @override
  String get installationSlidesAvailable => 'ສາມາດໃຊ້ໄດ້:';

  @override
  String get installationSlidesIncluded => 'ລວມມີ:';

  @override
  String get installationSlidesWelcomeTitle =>
      'ໄວ, ຟຣີ ແລະ ເຕັມໄປດ້ວຍຄຸນສົມບັດໃໝ່';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'ເວີຊັນລ່າສຸດຂອງ $DISTRO ເຮັດໃຫ້ການໃຊ້ຄອມພິວເຕີງ່າຍຂຶ້ນກວ່າເກົ່າ.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'ບໍ່ວ່າທ່ານຈະເປັນນັກພັດທະນາ, ຜູ້ສ້າງສັນຜົນງານ, ເກມເມີ ຫຼື ຜູ້ເບິ່ງແຍງລະບົບ ທ່ານຈະພົບກັບ ເຄື່ອງມືໃໝ່ໆເພື່ອປັບປຸງປະສິດທິພາບການເຮັດວຽກ ແລະ ຍົກລະດັບປະສົບການຂອງທ່ານໃນ $RELEASE.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'ທຸກແອັບພລິເຄຊັນທີ່ທ່ານຕ້ອງການ';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'ຕິດຕັ້ງ, ຈັດການ ແລະ ອັບເດດແອັບຂອງທ່ານທັງໝົດໃນ Ubuntu Software, ລວມທັງ ແອັບພລິເຄຊັນຫຼາຍພັນລາຍການຈາກທັງ Snap Store ແລະ $DISTRO archive.';
  }

  @override
  String get installationSlidesDevelopmentTitle =>
      'ພັດທະນາດ້ວຍສິ່ງທີ່ດີທີ່ສຸດຂອງໂອເພນຊອດ (Open Source)';

  @override
  String installationSlidesDevelopmentBody(String DISTRO, Object OS) {
    return '$DISTRO ເປັນເວີກສະເຕຊັນທີ່ເໝາະສົມທີ່ສຸດສຳລັບການພັດທະນາແອັບ ຫຼື ເວັບ, ວິທະຍາສາດຂໍ້ມູນ ແລະ AI/ML ລວມທັງ devops ແລະ ການບໍລິຫານຈັດການ. ທຸກໆການປ່ອຍລຸ້ນຂອງ $DISTRO ຈະລວມມີ toolchains ລ່າສຸດ ແລະ ຮອງຮັບ IDEs ຫຼັກທັງໝົດ.';
  }

  @override
  String get installationSlidesCreativityTitle =>
      'ເສີມສ້າງຄວາມຄິດສ້າງສັນຂອງທ່ານ';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'ຖ້າທ່ານເປັນນັກເຮັດອະນິເມຊັນ, ນັກອອກແບບ, ຜູ້ສ້າງວິດີໂອ ຫຼື ນັກພັດທະນາເກມ ມັນງ່າຍ ທີ່ຈະນຳຂັ້ນຕອນການເຮັດວຽກຂອງທ່ານມາສູ່ $DISTRO ດ້ວຍການຮອງຮັບຊອບແວ ແລະ ແອັບພລິເຄຊັນ ມາດຕະຖານອຸດສາຫະກຳ ແລະ ໂອເພນຊອດ.';
  }

  @override
  String get installationSlidesGamingTitle => 'ຍອດຢ້ຽມສຳລັບການຫຼິ້ນເກມ';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return '$DISTRO ຮອງຮັບໄດຣເວີ NVIDIA ແລະ Mesa ລ່າສຸດເພື່ອປັບປຸງປະສິດທິພາບ ແລະ ຄວາມເຂົ້າກັນໄດ້. ເກມ Windows ຫຼາຍພັນເກມສາມາດຫຼິ້ນໄດ້ດີໃນ $DISTRO ຜ່ານ ແອັບພລິເຄຊັນເຊັ່ນ Steam ໂດຍບໍ່ຕ້ອງຕັ້ງຄ່າເພີ່ມເຕີມ.';
  }

  @override
  String get installationSlidesSecurityTitle => 'ສ່ວນຕົວ ແລະ ປອດໄພ';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return '$DISTRO ໃຫ້ເຄື່ອງມືທັງໝົດທີ່ທ່ານຕ້ອງການເພື່ອຄວາມເປັນສ່ວນຕົວ ແລະ ຄວາມປອດໄພ ໃນໂລກອອນໄລນ໌. ດ້ວຍ firewall ໃນຕົວ ແລະ ການຮອງຮັບ VPN ພ້ອມທັງແອັບພລິເຄຊັນ ທີ່ເນັ້ນຄວາມເປັນສ່ວນຕົວ ເພື່ອຮັບປະກັນວ່າທ່ານສາມາດຄວບຄຸມຂໍ້ມູນຂອງທ່ານໄດ້ຢ່າງເຕັມທີ່.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return '$DISTRO LTS ທຸກລຸ້ນມາພ້ອມກັບການແກ້ໄຂຄວາມປອດໄພ (security patching) ເປັນເວລາຫ້າປີ, ແລະ ຂະຫຍາຍເປັນສິບປີດ້ວຍການສະໝັກໃຊ້ Ubuntu Pro.';
  }

  @override
  String get installationSlidesProductivityTitle =>
      'ເພີ່ມພະລັງໃຫ້ກັບປະສິດທິພາບການເຮັດວຽກຂອງທ່ານ';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return '$DISTRO Desktop ປະກອບມີ LibreOffice, ຊຸດແອັບພລິເຄຊັນໂອເພນຊອດທີ່ເຂົ້າກັນໄດ້ກັບ Microsoft Office ສຳລັບເອກະສານ, ສະເປຣດຊີດ ແລະ ການນຳສະເໜີ. ເຄື່ອງມືການເຮັດວຽກຮ່ວມກັນທີ່ນິຍົມກໍ່ມີໃຫ້ໃຊ້ເຊັ່ນກັນ.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'ການເຂົ້າເຖິງສຳລັບທຸກຄົນ';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'ຫົວໃຈຂອງປັດຊະຍາ $DISTRO ແມ່ນຄວາມເຊື່ອທີ່ວ່າຄອມພິວເຕີມີໄວ້ສຳລັບທຸກຄົນ. ດ້ວຍເຄື່ອງມືຊ່ວຍການເຂົ້າເຖິງຂັ້ນສູງ ແລະ ຕົວເລືອກໃນການປ່ຽນພາສາ, ສີ ແລະ ຂະໜາດຕົວໜັງສື, $DISTRO ເຮັດໃຫ້ການໃຊ້ຄອມພິວເຕີເປັນເລື່ອງງ່າຍ - ບໍ່ວ່າທ່ານຈະເປັນໃຜ ຫຼື ຢູ່ໃສກໍຕາມ.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'ຕົວອ່ານໜ້າຈໍ Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'ການຮອງຮັບພາສາ';

  @override
  String get installationSlidesSupportTitle =>
      'ຄວາມຊ່ວຍເຫຼືອ ແລະ ການສະໜັບສະໜູນ';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'ເອກະສານ $DISTRO ຢ່າງເປັນທາງການມີໃຫ້ທັງທາງອອນໄລນ໌ ແລະ ຜ່ານໄອຄອນ Help ໃນແຖບ dock.';
  }

  @override
  String get installationSlidesSupportCommunity =>
      'Ask Ubuntu ກວມເອົາຄຳຖາມ ແລະ ຄຳຕອບທີ່ຫຼາກຫຼາຍ ແລະ Ubuntu Discourse ໃຫ້ຄຳແນະນຳ ແລະ ການສົນທະນາສຳລັບຜູ້ໃຊ້ໃໝ່ ແລະ ຜູ້ທີ່ມີປະສົບການ.';

  @override
  String get installationSlidesSupportEnterprise =>
      'ສຳລັບຜູ້ໃຊ້ອົງກອນ Canonical ໃຫ້ການສະໜັບສະໜູນທາງການຄ້າ ເພື່ອເຮັດໃຫ້ງ່າຍ ຕໍ່ການນຳໃຊ້ ແລະ ຈັດການ Ubuntu ຢ່າງປອດໄພໃນບ່ອນເຮັດວຽກ.';

  @override
  String get installationSlidesSupportResources => 'ແຫຼ່ງຂໍ້ມູນທີ່ເປັນປະໂຫຍດ:';

  @override
  String get installationSlidesSupportDocumentation => 'ເອກະສານຢ່າງເປັນທາງການ';

  @override
  String get installationSlidesSupportUbuntuPro =>
      'ການສະໜັບສະໜູນລະດັບອົງກອນຕະຫຼອດ 24/7 ດ້ວຍ Ubuntu Pro';

  @override
  String get nextSlideSemanticLabel => 'ສະໄລ້ຖັດໄປ';

  @override
  String get previousSlideSemanticLabel => 'ສະໄລ້ກ່ອນໜ້າ';

  @override
  String get playSlideshowSemanticLabel => 'ຫຼິ້ນສະໄລ້ໂຊ';

  @override
  String get pauseSlideshowSemanticLabel => 'ຢຸດສະໄລ້ໂຊຊົ່ວຄາວ';

  @override
  String get toggleLogsSemanticLabel => 'ເປີດ/ປິດ ບັນທຶກການຕິດຕັ້ງ';

  @override
  String get copyingFiles => 'ກຳລັງຄັດລອກໄຟລ໌…';

  @override
  String get installingSystem => 'ກຳລັງຕິດຕັ້ງລະບົບ…';

  @override
  String get configuringSystem => 'ກຳລັງຕັ້ງຄ່າລະບົບ…';

  @override
  String get installationFailed => 'ການຕິດຕັ້ງລົ້ມເຫຼວ';

  @override
  String get notEnoughDiskSpaceTitle => 'ພື້ນທີ່ດິດບໍ່ພຽງພໍ';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'ພື້ນທີ່ດິດບໍ່ພຽງພໍທີ່ຈະຕິດຕັ້ງ $DISTRO';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'ດິດທີ່ເລືອກມີພື້ນທີ່ບໍ່ພຽງພໍທີ່ຈະຕິດຕັ້ງ $DISTRO. ອອກຈາກຕົວຕິດຕັ້ງ ເພື່ອສ້າງພື້ນທີ່ຫວ່າງ ຫຼື ເລືອກດິດອື່ນ.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'ຫວ່າງ:';

  @override
  String get notEnoughDiskSpaceRequired => 'ຕ້ອງການ:';

  @override
  String get refreshPageTitle => 'ມີອັບເດດໃໝ່';

  @override
  String get refreshHeader => 'ມີອັບເດດສຳລັບຕົວຕິດຕັ້ງ';

  @override
  String get refreshUpdateNow => 'ອັບເດດດຽວນີ້';

  @override
  String get refreshInfo =>
      'ອັບເດດເປັນເວີຊັນລ່າສຸດເພື່ອປັບປຸງຄວາມຫມັ້ນຄົງ ແລະ ຄຸນສົມບັດເພີ່ມເຕີມ.';

  @override
  String get refreshReady => 'ອັບເດດພ້ອມແລ້ວ';

  @override
  String refreshCurrent(String snap, String version) {
    return 'ເວີຊັນ $snap ປະຈຸບັນແມ່ນ $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'ອັບເດດເປັນເວີຊັນ $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'ເວີຊັນປະຈຸບັນ $version ເປັນລຸ້ນລ່າສຸດແລ້ວ.';
  }

  @override
  String refreshUpdating(String snap) {
    return 'ກຳລັງອັບເດດ $snap...';
  }

  @override
  String get refreshRestart => 'ກະລຸນາປິດຕົວຕິດຕັ້ງ ແລະ ເປີດໃໝ່ເພື່ອສືບຕໍ່';

  @override
  String get refreshCloseLabel => 'ປິດຕົວຕິດຕັ້ງ';

  @override
  String refreshSnapPrerequisites(String snap) {
    return 'ກຳລັງກວດສອບເງື່ອນໄຂເບື້ອງຕົ້ນຂອງ $snap...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return 'ກຳລັງຣີເຟຣຊ $snap...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return 'ກຳລັງກວດສອບການຣີເຟຣຊຊ້ຳຂອງ $snap...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return 'ກຳລັງກະກຽມ $snap...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return 'ກຳລັງດາວໂຫຼດ $snap...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return 'ກຳລັງກວດສອບຄວາມຖືກຕ້ອງຂອງ $snap...';
  }

  @override
  String refreshSnapMount(String snap) {
    return 'ກຳລັງ Mount $snap...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return 'ກຳລັງຢຸດບໍລິການ $snap...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return 'ກຳລັງລຶບ aliases ຂອງ $snap...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return 'ກຳລັງ Unlink $snap...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return 'ກຳລັງອັບເດດ assets ຂອງ $snap...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'ກຳລັງອັບເດດ $snap kernel command line...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return 'ກຳລັງຄັດລອກຂໍ້ມູນ $snap...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'ກຳລັງຕັ້ງຄ່າໂປຣໄຟລ໌ຄວາມປອດໄພຂອງ $snap...';
  }

  @override
  String refreshSnapLink(String snap) {
    return 'ກຳລັງ Linking $snap...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'ກຳລັງເຊື່ອມຕໍ່ $snap plugs ແລະ slots...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'ກຳລັງຕັ້ງຄ່າ $snap aliases ອັດຕະໂນມັດ...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'ກຳລັງຕັ້ງຄ່າ $snap aliases...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return 'ກຳລັງເລີ່ມບໍລິການ $snap...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return 'ກຳລັງທຳຄວາມສະອາດ $snap...';
  }

  @override
  String get recoveryKeyTitle => 'ຄີກູ້ຄືນ';

  @override
  String get recoveryKeyTitleBadgeLabel => 'ສຳຄັນ';

  @override
  String get recoveryKeyHeader => 'ບັນທຶກຄີກູ້ຄືນຂອງທ່ານ';

  @override
  String get recoveryKeyInfoHeader =>
      'ທ່ານອາດຈະສູນເສຍຂໍ້ມູນທັງໝົດຫາກບໍ່ມີຄີກູ້ຄືນ';

  @override
  String get recoveryKeyTextFieldLabel => 'ຄີກູ້ຄືນ';

  @override
  String get recoveryKeyStorageAdvice =>
      'ທ່ານຈະຕ້ອງໃຊ້ຄີກູ້ຄືນນີ້ຖ້າການຖອດລະຫັດລົ້ມເຫຼວໃນລະຫວ່າງການເລີ່ມຕົ້ນ. ຫາກບໍ່ມີຄີ, ທ່ານຈະສູນເສຍການເຂົ້າເຖິງຂໍ້ມູນທັງໝົດຂອງທ່ານ. ບັນທຶກມັນໄວ້ໃນບ່ອນທີ່ປອດໄພ, ເຊັ່ນ: ໂປຣແກຣມຈັດການລະຫັດຜ່ານ.';

  @override
  String get recoveryKeyConfirmation =>
      'ຂ້ອຍໄດ້ບັນທຶກຄີກູ້ຄືນຂອງຂ້ອຍໄວ້ໃນບ່ອນທີ່ປອດໄພແລ້ວ';

  @override
  String get recoveryKeyLinkLabel => 'ຮຽນຮູ້ເພີ່ມເຕີມ';

  @override
  String get recoveryKeySaveToFileLabel => 'ບັນທຶກລົງໄຟລ໌';

  @override
  String get recoveryKeyShowQrCodeLabel => 'ສະແດງ QR code';

  @override
  String recoveryKeyQrDialogTitle(String DISTRO) {
    return '$DISTRO Desktop - ຄີກູ້ຄືນ';
  }

  @override
  String get recoveryKeyQrDialogBody =>
      'ສະແກນ QR code ເພື່ອຄັດລອກຄີກູ້ຄືນ ແລະ ບັນທຶກໄວ້ໃນບ່ອນທີ່ປອດໄພ, ເຊັ່ນ: ໂປຣແກຣມຈັດການລະຫັດຜ່ານ. ທ່ານຍັງສາມາດຖ່າຍຮູບໄວ້ໃຊ້ພາຍຫຼັງໄດ້.';

  @override
  String get recoveryKeyClipboardNotifiaction => 'ຄັດລອກໄປທີ່ຄລິບບອດແລ້ວ';

  @override
  String get recoveryKeyExceptionFileSystemTitle => 'ບໍ່ໄດ້ບັນທຶກໄຟລ໌ຄີກູ້ຄືນ';

  @override
  String get recoveryKeyExceptionDisallowedPathTitle =>
      'ບໍ່ສາມາດບັນທຶກໄຟລ໌ຄີກູ້ຄືນໃນບ່ອນຊົ່ວຄາວໄດ້';

  @override
  String get recoveryKeyExceptionUnknownTitle => 'ຂໍ້ຜິດພາດທີ່ບໍ່ຮູ້ຈັກ';

  @override
  String get recoveryKeyExceptionFileSystemBody =>
      'ທ່ານບໍ່ໄດ້ຮັບອະນຸຍາດໃຫ້ຂຽນລົງໃນໂຟນເດີນັ້ນ. ລອງປ່ຽນບ່ອນໃໝ່ ຫຼື ໃຊ້ອີກວິທີໜຶ່ງ.';

  @override
  String get recoveryKeyExceptionDisallowedPathBody =>
      'ລອງປ່ຽນບ່ອນໃໝ່, ເຊັ່ນ: ໄດຣຟ໌ທີ່ຖອດໄດ້, ຫຼື ໃຊ້ອີກວິທີໜຶ່ງ.';

  @override
  String get recoveryKeyFilePickerTitle => 'ບັນທຶກໄຟລ໌ຄີກູ້ຄືນ';

  @override
  String get recoveryKeyFilePickerFilter => 'ໄຟລ໌ຂໍ້ຄວາມ';

  @override
  String landscapeMagicAttachInstructions(String url) {
    return 'ສະແກນ QR code ຫຼື ປ້ອນລະຫັດຂ້າງລຸ່ມນີ້ທີ່ <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'ການຕິດຕັ້ງແບບອັດຕະໂນມັດ';

  @override
  String get landscapeHeader => 'ເຂົ້າສູ່ລະບົບ Landscape';

  @override
  String get landscapeDomainHeader => 'ປ້ອນໂດເມນ Landscape (FQDN)';

  @override
  String get landscapeDomainHintText => 'ໂດເມນ Landscape (FQDN)';

  @override
  String get landscapeDomainInstructions =>
      'ລະບຸໂດເມນ Landscape ຂອງອົງກອນທ່ານເພື່ອເຂົ້າສູ່ລະບົບ ແລະ ດຶງໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດ. ທ່ານສາມາດຂໍ FQDN ໄດ້ຈາກຝ່າຍຊ່ວຍເຫຼືອດ້ານ IT ຂອງທ່ານ.';

  @override
  String get landscapeDomainTextField => 'ໂດເມນ Landscape (FQDN)';

  @override
  String get next => 'ຕໍ່ໄປ';

  @override
  String get landscapeDomainInvalidDomainWarning =>
      'ໂດເມນບໍ່ຖືກຕ້ອງ, ກະລຸນາກວດສອບ ຫຼື ຕິດຕໍ່ຝ່າຍຊ່ວຍເຫຼືອດ້ານ IT ຂອງທ່ານ';

  @override
  String get landscapeDomainNoInternetTitleWarning =>
      'ເຊື່ອມຕໍ່ອິນເຕີເນັດເພື່ອສືບຕໍ່';

  @override
  String get landscapeDomainNoInternetDescriptionWarning =>
      'ຕ້ອງການອິນເຕີເນັດເພື່ອດຶງໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດຈາກ Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'ລະຫັດໝົດອາຍຸ, ກະລຸນາລອງໃໝ່ອີກຄັ້ງ';

  @override
  String get landscapeLoginFailedWarning =>
      'ການເຂົ້າສູ່ລະບົບລົ້ມເຫຼວ, ກະລຸນາລອງໃໝ່ອີກຄັ້ງ';

  @override
  String get landscapeErrorPageTitle =>
      'ການຕິດຕັ້ງແບບອັດຕະໂນມັດບໍ່ສາມາດໃຊ້ໄດ້ກັບບັນຊີຂອງທ່ານ';

  @override
  String get landscapeErrorPageBody =>
      'ຕິດຕໍ່ຝ່າຍຊ່ວຍເຫຼືອດ້ານ IT ຂອງທ່ານ ຫຼື ລອງຕົວເລືອກການຕິດຕັ້ງອື່ນ.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'ລະຫັດຂໍ້ຜິດພາດ: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle =>
      'Ubuntu ຈະຕິດຕັ້ງດ້ວຍການຕັ້ງຄ່າທີ່ອົງກອນຂອງທ່ານສະໜອງໃຫ້';

  @override
  String get landscapeConfirmPageSuccessInfoContent =>
      'ທ່ານສາມາດກວດເບິ່ງໄຟລ໌ຕິດຕັ້ງອັດຕະໂນມັດທີ່ນຳເຂົ້າມາຈາກ Landscape ໄດ້ຢູ່ດ້ານລຸ່ມ.';

  @override
  String get successIconSemanticLabel => 'ສຳເລັດ';

  @override
  String get errorIconSemanticLabel => 'ຜິດພາດ';

  @override
  String get closeIconSemanticLabel => 'ປິດ';

  @override
  String get maximizeIconSemanticLabel => 'ຂະຫຍາຍໃຫຍ່ສຸດ';

  @override
  String get minimizeIconSemanticLabel => 'ຫຍໍ້ລົງ';

  @override
  String get tpmActionPageTitle =>
      'ບໍ່ສາມາດເປີດໃຊ້ງານການເຂົ້າລະຫັດທີ່ຮອງຮັບໂດຍຮາດແວໄດ້';

  @override
  String get tpmActionBadgeLabel => 'ຈຳເປັນຕ້ອງມີການດຳເນີນການ';

  @override
  String get tpmActionDetailsLabel => 'ລາຍລະອຽດທາງເຕັກນິກ';

  @override
  String get tpmActionConfirmLabel => 'ຢືນຢັນ';

  @override
  String tpmActionSolutionLabel(int n, String text) {
    return 'ວິທີແກ້ໄຂ $n: $text';
  }

  @override
  String tpmActionSingleSolutionLabel(String text) {
    return 'ວິທີແກ້ໄຂ: $text';
  }

  @override
  String get tpmActionDocumentationLinkLabel =>
      'ຮຽນຮູ້ເພີ່ມເຕີມກ່ຽວກັບການເຂົ້າລະຫັດທີ່ຮອງຮັບດ້ວຍຮາດແວ';

  @override
  String get tpmActionErrorSupportLabel =>
      'ລອງວິທີແກ້ໄຂຂ້າງລຸ່ມນີ້, ຕິດຕໍ່ຝ່າຍຊ່ວຍເຫຼືອດ້ານ IT, ຫຼື ເລືອກວິທີການເຂົ້າລະຫັດແບບອື່ນ.';

  @override
  String get tpmActionErrorSupportSingleLabel =>
      'ລອງວິທີແກ້ໄຂຂ້າງລຸ່ມນີ້, ຕິດຕໍ່ຝ່າຍສະໜັບສະໜູນໄອທີ ຫຼື ເລືອກວິທີການເຂົ້າລະຫັດແບບອື່ນ.';

  @override
  String get tpmActionErrorSupportNoActionLabel =>
      'ຕິດຕໍ່ຝ່າຍຊ່ວຍເຫຼືອດ້ານ IT, ຫຼື ເລືອກວິທີການເຂົ້າລະຫັດແບບອື່ນ.';

  @override
  String get tpmActionErrorKindInternal => 'ເກີດຂໍ້ຜິດພາດພາຍໃນ.';

  @override
  String get tpmActionErrorKindShutdownRequired => 'ຈຳເປັນຕ້ອງປິດເຄື່ອງ.';

  @override
  String get tpmActionErrorKindRebootRequired => 'ຈຳເປັນຕ້ອງເລີ່ມລະບົບໃໝ່.';

  @override
  String get tpmActionErrorKindUnexpectedAction => 'ການກະທຳທີ່ບໍ່ຄາດຄິດ.';

  @override
  String get tpmActionErrorKindMissingArgument => 'ຂາດອາກິວເມນ.';

  @override
  String get tpmActionErrorKindInvalidArgument => 'ອາກິວເມນບໍ່ຖືກຕ້ອງ.';

  @override
  String get tpmActionErrorKindActionFailed => 'ການດຳເນີນການລົ້ມເຫຼວ.';

  @override
  String get tpmActionErrorKindRunningInVm =>
      'ສະພາບແວດລ້ອມໃນປັດຈຸບັນແມ່ນເຄື່ອງສະເໝືອນ.';

  @override
  String get tpmActionErrorKindSystemNotEfi =>
      'ຄອມພິວເຕີເຄື່ອງນີ້ກຳລັງໃຊ້ເຟີມແວລຸ້ນເກົ່າ (BIOS ແບບເກົ່າ) ທີ່ບໍ່ຮອງຮັບກັບວິທີການເຂົ້າລະຫັດນີ້.';

  @override
  String get tpmActionErrorKindEfiVariableAccess =>
      'ມີບັນຫາກັບເຟີມແວຂອງຄອມພິວເຕີເຄື່ອງນີ້.';

  @override
  String get tpmActionErrorKindNoSuitableTpm2Device =>
      'ຄອມພິວເຕີນີ້ບໍ່ມີຮາດແວດ້ານຄວາມປອດໄພທີ່ຈຳເປັນ (TPM 2.0) ສຳລັບວິທີການເຂົ້າລະຫັດນີ້.';

  @override
  String get tpmActionErrorKindTpmDeviceDisabled =>
      'TPM ຂອງຄອມພິວເຕີເຄື່ອງນີ້ຖືກປິດໃຊ້ງານ.';

  @override
  String get tpmActionErrorKindTpmHierarchiesOwned =>
      'TPM ຂອງຄອມພິວເຕີເຄື່ອງນີ້ ຖືກນຳໃຊ້ໂດຍລະບົບ ຫຼື ແອັບພລິເຄຊັນອື່ນຢູ່ແລ້ວ.';

  @override
  String get tpmActionErrorKindTpmDeviceLockoutLockedOut =>
      'TPM ຂອງຄອມພິວເຕີເຄື່ອງນີ້ຖືກລັອກຢູ່.';

  @override
  String get tpmActionErrorKindInsufficientTpmStorage =>
      'TPM ຂອງຄອມພິວເຕີເຄື່ອງນີ້ມີພື້ນທີ່ຈັດເກັບບໍ່ພຽງພໍ.';

  @override
  String get tpmActionErrorKindUnsupportedPlatform =>
      'ຄອມພິວເຕີເຄື່ອງນີ້ບໍ່ຮອງຮັບການເຂົ້າລະຫັດທີ່ຮອງຮັບດ້ວຍຮາດແວ.';

  @override
  String get tpmActionErrorKindUefiDebuggingEnabled =>
      'ເປີດການແກ້ໄຂຈຸດບົກຜ່ອງ UEFI ແລ້ວ.';

  @override
  String get tpmActionErrorKindInsufficientDmaProtection =>
      'ຄອມພິວເຕີເຄື່ອງນີ້ຂາດຄຸນສົມບັດຄວາມປອດໄພທີ່ຈຳເປັນ (ການປ້ອງກັນ DMA).';

  @override
  String get tpmActionErrorKindNoKernelIommu =>
      'ຄອມພິວເຕີເຄື່ອງນີ້ຂາດຄຸນສົມບັດດ້ານຄວາມປອດໄພທີ່ຈຳເປັນ (IOMMU).';

  @override
  String get tpmActionErrorKindHostSecurity =>
      'ມີບັນຫາກັບການຕັ້ງຄ່າຄວາມປອດໄພຂອງຄອມພິວເຕີນີ້.';

  @override
  String get tpmActionErrorKindSysPrepApplicationsPresent =>
      'ມີຊອບແວທີ່ກຳລັງເຮັດວຽກໃນຕອນເລີ່ມຕົ້ນລະບົບ ເຊິ່ງອາດຈະຂັດຂວາງການເຊື່ອມຕໍ່ທີ່ປອດໄພກັບ TPM ຂອງຄອມພິວເຕີ.';

  @override
  String get tpmActionErrorKindAbsolutePresent =>
      'Absolute Persistence Module ຖືກເປີດນຳໃຊ້ໃນຄອມພິວເຕີນີ້.';

  @override
  String get tpmActionErrorKindInvalidSecureBootMode =>
      'Secure boot ຖືກປິດໃຊ້ງານຢູ່ໃນຄອມພິວເຕີນີ້ ຫຼື ບໍ່ໄດ້ຖືກຕັ້ງຢູ່ໃນໂໝດນຳໃຊ້.';

  @override
  String get tpmActionErrorKindWeakSecureBootAlgorithmDetected =>
      'ໃບຢັ້ງຢືນບາງອັນທີ່ໃຊ້ກວດສອບຊອບແວໃນຄອມພິວເຕີເຄື່ອງນີ້ ແມ່ນລ້າສະໄໝ ຫຼື ໃຊ້ການປ້ອງກັນທີ່ອ່ອນແອ.';

  @override
  String get tpmActionErrorKindPreOsSecureBootAuthByEnrolledDigests =>
      'ຄອມພິວເຕີເຄື່ອງນີ້ກຳລັງໃຊ້ລາຍການອະນຸຍາດແບບຈັດການດ້ວຍຕົນເອງ ເພື່ອກວດສອບຊອບແວໃນຕອນເລີ່ມເຄື່ອງ.';

  @override
  String get tpmActionErrorKindAddonDriversPresent => 'ມີໄດເວີສ່ວນເສີມຢູ່.';

  @override
  String get tpmActionErrorKindGenericTpm =>
      'ມີບັນຫາກັບ TPM ຂອງຄອມພິວເຕີເຄື່ອງນີ້.';

  @override
  String get tpmActionErrorKindGenericFirmware =>
      'ມີບັນຫາກັບເຟີມແວຂອງຄອມພິວເຕີເຄື່ອງນີ້.';

  @override
  String get tpmActionFixActionReboot => 'ຣີສະຕາດ';

  @override
  String get tpmActionFixActionShutdown => 'ປິດເຄື່ອງ';

  @override
  String get tpmActionFixActionRebootToFwSettings =>
      'ຣີສະຕາດເຂົ້າສູ່ການຕັ້ງຄ່າເຟີມແວ';

  @override
  String get tpmActionFixActionRebootToFwSettingsInstructions =>
      'ຖ້າຫາກການຕັ້ງຄ່າເຟີມແວບໍ່ໂຫຼດຂຶ້ນມາໂດຍອັດຕະໂນມັດ, ໃຫ້ເລີ່ມລະບົບໃໝ່ ແລະ ກົດປຸ່ມຕັ້ງຄ່າຊ້ຳໆ ໃນລະຫວ່າງການເລີ່ມຕົ້ນລະບົບ (ໂດຍທົ່ວໄປແມ່ນ F2, F10 ຫຼື Delete).';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientDmaProtection =>
      'ເປີດໃຊ້ການປົກປ້ອງ DMA ດ້ວຍຕົນເອງ';

  @override
  String get tpmActionFixActionRebootToFwSettingsInsufficientTpmStorage =>
      'ລ້າງຄ່າ TPM ດ້ວຍຕົນເອງ';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootMode =>
      'ເປີດໃຊ້ secure boot ດ້ວຍຕົນເອງ';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommu =>
      'ເປີດນຳໃຊ້ IOMMU ດ້ວຍຕົນເອງ.';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoSuitablePcrBank =>
      'ເປີດໃຊ້ PCR banks ດ້ວຍຕົນເອງ';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceDisabled =>
      'ເປີດໃຊ້ TPM ດ້ວຍຕົນເອງ';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmDeviceLockoutLockedOut =>
      'ລ້າງຄ່າ TPM ດ້ວຍຕົນເອງ';

  @override
  String get tpmActionFixActionRebootToFwSettingsTpmHierarchiesOwned =>
      'ລ້າງຄ່າ TPM ດ້ວຍຕົນເອງ';

  @override
  String get tpmActionFixActionRebootToFwSettingsAbsolutePresent =>
      'ປິດນຳໃຊ້ Absolute Persistence Module ດ້ວຍຕົນເອງ';

  @override
  String get tpmActionFixActionContactOem => 'ຕິດຕໍ່ OEM';

  @override
  String get tpmActionFixActionContactOsVendor =>
      'ຕິດຕໍ່ຜູ້ສະໜອງລະບົບປະຕິບັດການ';

  @override
  String get tpmActionFixActionEnableTpmViaFirmware =>
      'ເປີດນຳໃຊ້ TPM ເມື່ອເລີ່ມລະບົບໃໝ່';

  @override
  String get tpmActionFixActionEnableAndClearTpmViaFirmware =>
      'ເປີດນຳໃຊ້ ແລະ ລ້າງ TPM ເມື່ອເລີ່ມລະບົບໃໝ່';

  @override
  String get tpmActionFixActionClearTpmViaFirmware =>
      'ລ້າງ TPM ເມື່ອເລີ່ມລະບົບໃໝ່';

  @override
  String get tpmActionFixActionClearTpm => 'ລ້າງຄ່າ TPM';

  @override
  String get tpmActionFixActionProceed => 'ຂ້າມ';

  @override
  String get tpmActionFixActionRebootDescription =>
      'ເລີ່ມລະບົບໃໝ່ເພື່ອໃຫ້ການດຳເນີນການກ່ອນໜ້ານີ້ສຳເລັດ.';

  @override
  String get tpmActionFixActionRebootTpmDeviceFailureDescription =>
      'ການເລີ່ມຄອມພິວເຕີໃໝ່ອາດຈະແກ້ໄຂບັນຫາໄດ້.';

  @override
  String get tpmActionFixActionShutdownDescription =>
      'ປິດຄອມພິວເຕີເພື່ອໃຫ້ການດຳເນີນການກ່ອນໜ້ານີ້ສຳເລັດ.';

  @override
  String get tpmActionFixActionRebootToFwSettingsDescription =>
      'ທ່ານສາມາດເຮັດສິ່ງນີ້ໄດ້ໃນການຕັ້ງຄ່າເຟີມແວຂອງຄອມພິວເຕີຂອງທ່ານ.';

  @override
  String get tpmActionFixActionRebootToFwSettingsWithDocsDescription =>
      'ທ່ານອາດຈະສາມາດເຮັດສິ່ງນີ້ໄດ້ໃນການຕັ້ງຄ່າເຟີມແວຂອງຄອມພິວເຕີຂອງທ່ານ. ກວດເບິ່ງເອກະສານຄູ່ມືຂອງຜູ້ຜະລິດຊີພີຢູສຳລັບຄຳແນະນຳ.';

  @override
  String get tpmActionFixActionRebootToFwSettingsInvalidSecureBootModeHint =>
      'ກວດເບິ່ງວ່າໂໝດບູດແບບປອດໄພຖືກຕັ້ງເປັນ \"deployed\".';

  @override
  String get tpmActionFixActionRebootToFwSettingsNoKernelIommuHint =>
      'ຄຸນສົມບັດນີ້ອາດຈະຖືກເອີ້ນວ່າ \"Virtualization Technology\", \"VT-d\" ຫຼື \"AMD-Vi\".';

  @override
  String get tpmActionFixActionProceedDescription =>
      'ການລະເລີຍບັນຫານີ້ອາດຈະເຮັດໃຫ້ການຕິດຕັ້ງມີຄວາມປອດໄພໜ້ອຍລົງ.';

  @override
  String get tpmActionRestartLabel => 'ຣີສະຕາດ';

  @override
  String get tpmActionRestartAndEnableTpmLabel => 'ຣີສະຕາດ ແລະ ເປີດໃຊ້ TPM';

  @override
  String get tpmActionRestartAndClearTpmLabel => 'ຣີສະຕາດ ແລະ ລ້າງຄ່າ TPM';

  @override
  String get tpmActionIgnoreAndContinueLabel => 'ຂ້າມ ແລະ ສືບຕໍ່';

  @override
  String get tpmActionFixActionClearTpmWarningTitle =>
      'ການລ້າງຄ່າ TPM ຈະລຶບຄີການເຂົ້າລະຫັດທັງໝົດ';

  @override
  String get tpmActionFixActionClearTpmWarningBody =>
      'ທ່ານຈະສູນເສຍການເຂົ້າເຖິງຂໍ້ມູນທັງໝົດໃນໄດຣຟ໌ທີ່ເຂົ້າລະຫັດໄວ້ ເຊິ່ງທ່ານບໍ່ມີຄີກູ້ຄືນ. ມັນຍັງຈະສົ່ງຜົນກະທົບຕໍ່ຄຸນສົມບັດອື່ນໆທີ່ຂຶ້ນກັບ TPM ເຊັ່ນ: ການຢືນຢັນຕົວຕົນ ແລະ ໃບຮັບຮອງ.';

  @override
  String get tpmActionFixActionClearTpmConfirmationLabel =>
      'ຂ້ອຍເຂົ້າໃຈຜົນທີ່ຕາມມາຂອງການລ້າງຄ່າ TPM';

  @override
  String get tpmActionFixActionCaveatConfirm =>
      'ທ່ານອາດຈະຖືກຂໍໃຫ້ຢືນຢັນການດຳເນີນການນີ້ເມື່ອເລີ່ມລະບົບໃໝ່.';

  @override
  String get tpmActionFixActionCaveatRetry =>
      'ຈາກນັ້ນ ທ່ານຈະຕ້ອງໄດ້ເລີ່ມການຕິດຕັ້ງຄືນໃໝ່.';

  @override
  String get tpmActionErrorTitle => 'ວິທີແກ້ໄຂນີ້ລົ້ມເຫຼວ';

  @override
  String get tpmActionErrorDescription =>
      'ລອງໃຊ້ວິທີແກ້ໄຂອື່ນ ຫຼື ຕິດຕໍ່ພາກສ່ວນຊ່ວຍເຫຼືອດ້ານໄອທີ.';

  @override
  String get manualPartitioningWarningBody =>
      'ລອງວິທີອື່ນເບິ່ງ. ທ່ານຍັງສາມາດ <a href=\"\">ສົ່ງລາຍງານຂໍ້ຜິດພາດ</a>.';
}
