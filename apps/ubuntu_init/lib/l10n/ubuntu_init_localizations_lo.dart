// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class UbuntuInitLocalizationsLo extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get welcomePageTitle => 'ຍິນດີຕ້ອນຮັບ';

  @override
  String welcomePageHeader(String distro) {
    return 'ຍິນດີຕ້ອນຮັບສູ່ $distro';
  }

  @override
  String get welcomeWhatsNew => 'ມີຫຍັງໃໝ່?';

  @override
  String get welcomeStartTitle => 'ການເລີ່ມຕົ້ນທີ່ລຽບງ່າຍ';

  @override
  String get welcomeStartSubtitle =>
      'ສະໜັບສະໜູນປະສົບການການຕິດຕັ້ງທີ່ສະອາດຕາກວ່າເກົ່າ.';

  @override
  String get welcomeStoreTitle => 'ຮູບໂສມໃໝ່ຂອງຮ້ານຄ້າແອັບ';

  @override
  String get welcomeStoreSubtitle => 'ຄົ້ນຫາຊອບແວທີ່ທ່ານມັກໄດ້ງ່າຍກວ່າທີ່ເຄີຍ.';

  @override
  String get welcomeSecurityTitle => 'ຍົກລະດັບຄວາມປອດໄພ';

  @override
  String get welcomeSecuritySubtitle =>
      'ຕົວເລືອກໃໝ່ສຳລັບການເຂົ້າລະຫັດທີ່ຮອງຮັບດ້ວຍຮາດແວ ຫຼື ZFS.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">ເບິ່ງບັນທຶກການປ່ຽນແປງ</a>';
  }

  @override
  String get telemetryPageTitle => 'ຂໍ້ມູນການນຳໃຊ້ (Telemetry)';

  @override
  String telemetryHeader(String distro) {
    return 'ຊ່ວຍປັບປຸງ $distro ໃຫ້ດີຂຶ້ນ';
  }

  @override
  String telemetryDescription(String distro) {
    return 'ຊ່ວຍພວກເຮົາປັບປຸງ $distro ໂດຍການແບ່ງປັນຂໍ້ມູນລະບົບຂອງທ່ານກັບພວກເຮົາ. ນີ້ລວມມີສິ່ງຕ່າງໆ ເຊັ່ນ: ລຸ້ນເຄື່ອງຂອງທ່ານ, ຊອບແວທີ່ຕິດຕັ້ງ ແລະ ທີ່ຕັ້ງທີ່ທ່ານເລືອກສຳລັບເຂດເວລາ.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'ຕົກລົງ, ແບ່ງປັນຂໍ້ມູນລະບົບກັບທີມງານ $distro';
  }

  @override
  String get telemetryLabelOff => 'ບໍ່, ບໍ່ຕ້ອງແບ່ງປັນຂໍ້ມູນລະບົບ';

  @override
  String get telemetryReportLabel => 'ສະແດງລາຍງານທຳອິດ';

  @override
  String get telemetryReportTitle => 'ລາຍລະອຽດການລາຍງານ';

  @override
  String get telemetryLegalLabel => 'ແຈ້ງເຕືອນທາງກົດໝາຍ';

  @override
  String get telemetryCollectError => 'ການເກັບກຳຂໍ້ມູນ Telemetry ລົ້ມເຫຼວ';

  @override
  String get privacyPageTitle => 'ບໍລິການລະບຸທີ່ຕັ້ງ';

  @override
  String get privacyLocationTitle => 'ເປີດນຳໃຊ້ບໍລິການລະບຸທີ່ຕັ້ງບໍ່?';

  @override
  String get privacyLocationSubtitle =>
      'ອະນຸຍາດໃຫ້ແອັບພລິເຄຊັນຮູ້ທີ່ຕັ້ງທາງພູມສາດຂອງທ່ານ.\nທ່ານສາມາດປ່ຽນແປງສິ່ງນີ້ໄດ້ທຸກເວລາໃນການຕັ້ງຄ່າລະບົບ.';

  @override
  String get privacyLocationEnable => 'ບໍລິການລະບຸທີ່ຕັ້ງ';

  @override
  String get privacyPolicyLink => 'ຄວາມເປັນສ່ວນຕົວຂອງຂໍ້ມູນ';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'ເຊື່ອມຕໍ່ແບບ Magic ດ້ວຍລະຫັດນີ້ທີ່ <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'ເຊື່ອມຕໍ່ເຄື່ອງນີ້';

  @override
  String get ubuntuProOrAddTokenManually => 'ຫຼື ເພີ່ມໂທເຄັນດ້ວຍໂຕເອງ';

  @override
  String get ubuntuProTokenTextfieldHint => 'ໂທເຄັນ';

  @override
  String get ubuntuProSubscriptionDescription =>
      'ຮັບການສະໝັກໃຊ້ທີ່ຄອບຄຸມທີ່ສຸດສຳລັບຄວາມປອດໄພຂອງຊອບແວໂອເພນຊອດ';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'ຟຣີສະເໝີສຳລັບການນຳໃຊ້ສ່ວນຕົວ. ທົດລອງໃຊ້ 30 ມື້ສຳລັບອົງກອນ. <a href=\"https://$url\">ຮຽນຮູ້ເພີ່ມເຕີມ</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'ເຊື່ອມຕໍ່';

  @override
  String get ubuntuProTokenAttachError => 'ໂທເຄັນບໍ່ຖືກຕ້ອງ';

  @override
  String get ubuntuProTokenAttachSucess => 'ໂທເຄັນຖືກຕ້ອງ';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'ໂທເຄັນບໍ່ຖືກຕ້ອງ, ລອງໃໝ່';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'ຂ້າມໄປກ່ອນ';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'ທ່ານສາມາດເປີດນຳໃຊ້ Ubuntu Pro ພາຍຫຼັງໄດ້ສະເໝີຜ່ານແອັບພລິເຄຊັນ Software & Updates.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'ເປີດນຳໃຊ້ Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'ເຊື່ອມຕໍ່ເຄື່ອງນີ້ໃສ່ການສະໝັກໃຊ້ Ubuntu Pro ເພື່ອຮັບການອັບເດດຄວາມປອດໄພສຳລັບແພັກເກັດທີ່ກວ້າງຂວາງກວ່າເກົ່າ, ຈົນເຖິງປີ 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'ຕອນນີ້ເປີດນຳໃຊ້ Ubuntu Pro ໃນເຄື່ອງນີ້ແລ້ວ';

  @override
  String get ubuntuProSucessAttachDescription =>
      'ທ່ານສາມາດຈັດການບໍລິການ Pro ຂອງທ່ານໄດ້ໃນແອັບພລິເຄຊັນ Software & Updates.';

  @override
  String get successIconSemanticLabel => 'ສຳເລັດ';

  @override
  String get closeIconSemanticLabel => 'ປິດ';

  @override
  String get maximizeIconSemanticLabel => 'ຂະຫຍາຍໃຫຍ່ສຸດ';

  @override
  String get minimizeIconSemanticLabel => 'ຫຍໍ້ລົງ';
}
