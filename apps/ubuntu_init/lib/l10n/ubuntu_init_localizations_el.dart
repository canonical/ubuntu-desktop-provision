// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class UbuntuInitLocalizationsEl extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get welcomePageTitle => 'Καλώς Ήρθατε';

  @override
  String welcomePageHeader(String distro) {
    return 'Καλώς Ήρθατε στο $distro';
  }

  @override
  String get welcomeWhatsNew => 'Τι νέο υπάρχει?';

  @override
  String get welcomeStartTitle => 'A streamlined start';

  @override
  String get welcomeStartSubtitle =>
      'Υποστηρίζοντας μια καθαρότερη εμπειρία χρήστη.';

  @override
  String get welcomeStoreTitle => 'Νέα εμφάνιση Κέντρου Λογισμικού';

  @override
  String get welcomeStoreSubtitle =>
      'Δεν ήταν πότε πιο εύκολο να βρείτε το αγαπημένο σας λογισμικό.';

  @override
  String get welcomeSecurityTitle => 'Προχωρημένη Ασφάλεια';

  @override
  String get welcomeSecuritySubtitle =>
      'New options for hardware-backed or ZFS encryption.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">View changelog</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemetry';

  @override
  String telemetryHeader(String distro) {
    return 'Help improve $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Help us improve $distro by sharing your system data with us. This includes things like your machine model, installed software and the location you chose for your timezone.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Ναι,μοιραστείτε δεδομένα συστήματος με την ομάδα $distro';
  }

  @override
  String get telemetryLabelOff => 'Όχι,δεν μοιράζεστε δεδομένα συστήματος';

  @override
  String get telemetryReportLabel => 'Δείξε πρώτη αναφορά';

  @override
  String get telemetryReportTitle => 'Reporting details';

  @override
  String get telemetryLegalLabel => 'Νομική λεπτομέρεια';

  @override
  String get telemetryCollectError => 'Failed to collect telemetry data';

  @override
  String get privacyPageTitle => 'Υπηρεσίες τοποθεσίας';

  @override
  String get privacyLocationTitle => 'Ενεργοποίηση υπηρεσιών τοποθεσίας?';

  @override
  String get privacyLocationSubtitle =>
      'Let applications know your geographical location.\nYou can change this anytime in System Settings.';

  @override
  String get privacyLocationEnable => 'Υπηρεσία τοποθεσίας';

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
  String get ubuntuProSubscriptionDescription =>
      'Get the most comprehensive subscription for open-source software security';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Πάντα δωρεάν για προσωπική χρήση.30 ημέρες για επιχειρήσεις.<a href=\"https://$url\">Μάθετε περισσότερα</a>';
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
  String get ubuntuProOnBoardingSkipForNow => 'Παράλειψη για τώρα';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Μπορείτε πάντα να ενεργοποιήσετε το Ubuntu-Pro αργότερα στην Λογισμικό και Ενημερώσεις εφαρμογή.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Ενεργοποίηση Ubuntu-Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Attach this machine to an Ubuntu Pro subscription for security updates on a wider range of packages, until 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro είναι τώρα ενεργοποιημένο σε αυτό το μηχάνημα';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Μπορείτε να κάνετε διαχείριση της Pro υπηρεσίας στην Λογισμικό και Ενημερώσεις εφαρμογή.';

  @override
  String get successIconSemanticLabel => 'Success';
}
