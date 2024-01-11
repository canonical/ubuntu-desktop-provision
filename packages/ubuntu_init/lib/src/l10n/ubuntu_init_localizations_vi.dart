import 'ubuntu_init_localizations.dart';

/// The translations for Vietnamese (`vi`).
class UbuntuInitLocalizationsVi extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String loadingPageTitle(Object DISTRO) {
    return 'Welcome to $DISTRO';
  }

  @override
  String loadingHeader(Object DISTRO) {
    return 'Preparing $DISTRO…';
  }

  @override
  String get welcomePageTitle => 'Chào mừng';

  @override
  String welcomePageHeader(Object distro) {
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
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Xem nhật ký thay đổi</a>';
  }

  @override
  String get telemetryPageTitle => 'Thu thập dữ liệu';

  @override
  String telemetryHeader(Object distro) {
    return 'Giúp cải thiện $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Chia sẻ dữ liệu ẩn danh với $distro để chúng tôi có thể cải thiện trải nghiệm của bạn.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Có, chia sẻ dữ liệu hệ thống với đội ngũ $distro';
  }

  @override
  String get telemetryLabelOff => 'Không, không chia sẻ dữ liệu gì hết';

  @override
  String get telemetryReportLabel => 'Reporting details';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'Hợp pháp';

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
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
