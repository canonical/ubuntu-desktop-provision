// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class UbuntuInitLocalizationsVi extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get welcomePageTitle => 'Chào mừng';

  @override
  String welcomePageHeader(String distro) {
    return 'Chào mừng tới $distro';
  }

  @override
  String get welcomeWhatsNew => 'CÓ GÌ MỚI?';

  @override
  String get welcomeStartTitle => 'A streamlined start';

  @override
  String get welcomeStartSubtitle => 'Hỗ trợ trải nghiệm cài đặt gọn gàng hơn.';

  @override
  String get welcomeStoreTitle => 'App Store với diện mạo mới';

  @override
  String get welcomeStoreSubtitle => 'Tìm kiếm phần mềm yêu thích của bạn chưa bao giờ dễ dàng hơn.';

  @override
  String get welcomeSecurityTitle => 'Bảo mật được tăng cường';

  @override
  String get welcomeSecuritySubtitle => 'Các tùy chọn mới cho mã hóa bằng phần cứng hoặc ZTS.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Xem nhật ký thay đổi</a>';
  }

  @override
  String get telemetryPageTitle => 'Thu thập dữ liệu';

  @override
  String telemetryHeader(String distro) {
    return 'Giúp cải thiện $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Chia sẻ dữ liệu ẩn danh với $distro để chúng tôi có thể cải thiện trải nghiệm của bạn.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Có, chia sẻ dữ liệu hệ thống với đội ngũ $distro';
  }

  @override
  String get telemetryLabelOff => 'Không, không chia sẻ dữ liệu gì hết';

  @override
  String get telemetryReportLabel => 'Show the first report';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'Hợp pháp';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => 'Dịch vụ định vị';

  @override
  String get privacyLocationTitle => 'Bật dịch vụ định vị?';

  @override
  String get privacyLocationSubtitle => 'Cho phép các ứng dụng biết vị trí địa lý của bạn.\nBạn có thể thay đổi điều này bất cứ lúc nào trong Cài đặt hệ thống.';

  @override
  String get privacyLocationEnable => 'Dịch vụ định vị';

  @override
  String get privacyPolicyLink => 'Data Privacy';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Magic attach with this code at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Attach this machine';

  @override
  String get ubuntuProOrAddTokenManually => 'or add a token manually';

  @override
  String get ubuntuProTokenTextfieldHint => 'Token';

  @override
  String get ubuntuProSubscriptionDescription => 'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Always free for personal use. 30-days trial for enterprises. <a href=\"https://$url\">Learn more</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Attach';

  @override
  String get ubuntuProTokenAttachError => 'Invalid token';

  @override
  String get ubuntuProTokenAttachSucess => 'Valid token';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Invalid token, retry';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Skip for now';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'You can always enable Ubuntu Pro later via the Software & Updates application.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Enable Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro is now enabled in this machine';

  @override
  String get ubuntuProSucessAttachDescription => 'You can manage your Pro services in the Software & Updates application.';
}
