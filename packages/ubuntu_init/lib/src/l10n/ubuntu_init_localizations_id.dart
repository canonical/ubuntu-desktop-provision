import 'ubuntu_init_localizations.dart';

/// The translations for Indonesian (`id`).
class UbuntuInitLocalizationsId extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get welcomePageTitle => 'Selamat Datang';

  @override
  String welcomePageHeader(Object distro) {
    return 'Selamat datang di $distro';
  }

  @override
  String get welcomeWhatsNew => 'APA YANG BARU?';

  @override
  String get welcomeStartTitle => 'Awal yang dirampingkan';

  @override
  String get welcomeStartSubtitle => 'Mendukung pengalaman penyiapan yang lebih bersih.';

  @override
  String get welcomeStoreTitle => 'Tampilan baru App Store';

  @override
  String get welcomeStoreSubtitle => 'Tidak pernah lebih mudah untuk menemukan perangkat lunak favorit Anda.';

  @override
  String get welcomeSecurityTitle => 'Keamanan yang ditingkatkan';

  @override
  String get welcomeSecuritySubtitle => 'New options for hardware-backed or ZFS encryption.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">View changelog</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetry';

  @override
  String telemetryHeader(Object distro) {
    return 'Help improve $distro';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Share data anonymously with $distro so we can improve your experience.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Yes, share system data with the $distro team';
  }

  @override
  String get telemetryLabelOff => 'No, don\'t share system data';

  @override
  String get telemetryReportLabel => 'Reporting details';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'Legal';

  @override
  String get privacyPageTitle => 'Location services';

  @override
  String get privacyLocationTitle => 'Enable location services?';

  @override
  String get privacyLocationSubtitle => 'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'Location services';

  @override
  String get privacyPolicyLink => 'Data Privacy';

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';
}
