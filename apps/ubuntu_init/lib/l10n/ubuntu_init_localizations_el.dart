// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class UbuntuInitLocalizationsEl extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get welcomePageTitle => 'Καλώς ορίσατε';

  @override
  String welcomePageHeader(String distro) {
    return 'Καλώς ορίσατε στο $distro';
  }

  @override
  String get welcomeWhatsNew => 'ΤΙ ΝΕΟ ΥΠΑΡΧΕΙ;';

  @override
  String get welcomeStartTitle => 'Μια απλοποιημένη εκκίνηση';

  @override
  String get welcomeStartSubtitle =>
      'Υποστηρίζοντας μια πιο καθαρή εμπειρία εγκατάστασης.';

  @override
  String get welcomeStoreTitle => 'Νέα εμφάνιση για το Κέντρο εφαρμογών';

  @override
  String get welcomeStoreSubtitle =>
      'Ποτέ δεν ήταν ευκολότερο να βρείτε το αγαπημένο σας λογισμικό.';

  @override
  String get welcomeSecurityTitle => 'Ενισχυμένη ασφάλεια';

  @override
  String get welcomeSecuritySubtitle =>
      'Νέες επιλογές για κρυπτογράφηση μέσω υλικού (hardware-backed) ή ZFS.';

  @override
  String welcomeChangelogLabel(String url) {
    return '<a href=\"$url\">Προβολή αρχείου αλλαγών</a>';
  }

  @override
  String get telemetryPageTitle => 'Τηλεμετρία';

  @override
  String telemetryHeader(String distro) {
    return 'Βοηθήστε στη βελτίωση του $distro';
  }

  @override
  String telemetryDescription(String distro) {
    return 'Βοηθήστε μας να βελτιώσουμε το $distro μοιραζόμενοι μαζί μας τα δεδομένα του συστήματός σας. Αυτά περιλαμβάνουν στοιχεία όπως το μοντέλο του υπολογιστή σας, το εγκατεστημένο λογισμικό και την τοποθεσία που επιλέξατε για τη ζώνη ώρας σας.';
  }

  @override
  String telemetryLabelOn(String distro) {
    return 'Ναι, κοινοποίηση δεδομένων συστήματος στην ομάδα του $distro';
  }

  @override
  String get telemetryLabelOff =>
      'Όχι, να μη γίνει κοινοποίηση δεδομένων συστήματος';

  @override
  String get telemetryReportLabel => 'Εμφάνιση της πρώτης αναφοράς';

  @override
  String get telemetryReportTitle => 'Λεπτομέρειες αναφοράς';

  @override
  String get telemetryLegalLabel => 'Νομική σημείωση';

  @override
  String get telemetryCollectError => 'Αποτυχία συλλογής δεδομένων τηλεμετρίας';

  @override
  String get privacyPageTitle => 'Υπηρεσίες τοποθεσίας';

  @override
  String get privacyLocationTitle => 'Ενεργοποίηση υπηρεσιών τοποθεσίας;';

  @override
  String get privacyLocationSubtitle =>
      'Επιτρέψτε στις εφαρμογές να γνωρίζουν τη γεωγραφική σας τοποθεσία.\nΜπορείτε να το αλλάξετε αυτό ανά πάσα στιγμή στις Ρυθμίσεις συστήματος.';

  @override
  String get privacyLocationEnable => 'Υπηρεσίες τοποθεσίας';

  @override
  String get privacyPolicyLink => 'Προστασία προσωπικών δεδομένων';

  @override
  String ubuntuProMagicAttachInstructions(String url) {
    return 'Μαγική σύνδεση με αυτόν τον κώδικα στο <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Σύνδεση αυτού του μηχανήματος';

  @override
  String get ubuntuProOrAddTokenManually =>
      'ή προσθέστε ένα διακριτικό (token) μη αυτόματα';

  @override
  String get ubuntuProTokenTextfieldHint => 'Διακριτικό';

  @override
  String get ubuntuProSubscriptionDescription =>
      'Αποκτήστε την πιο ολοκληρωμένη συνδρομή για την ασφάλεια λογισμικού ανοιχτού κώδικα';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(String url) {
    return 'Πάντα δωρεάν για προσωπική χρήση. Δοκιμαστική περίοδος 30 ημερών για επιχειρήσεις. <a href=\"https://$url\">Μάθετε περισσότερα</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Σύνδεση';

  @override
  String get ubuntuProTokenAttachError => 'Μη έγκυρο διακριτικό';

  @override
  String get ubuntuProTokenAttachSucess => 'Έγκυρο διακριτικό';

  @override
  String get ubuntuProTokenAttachErrorVariant =>
      'Μη έγκυρο διακριτικό, προσπαθήστε ξανά';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Παράλειψη για τώρα';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription =>
      'Μπορείτε πάντα να ενεργοποιήσετε το Ubuntu-Pro αργότερα στην εφαρμογή «Λογισμικό και Ενημερώσεις».';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro =>
      'Ενεργοποίηση του Ubuntu-Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription =>
      'Συνδέστε αυτό το μηχάνημα σε μια συνδρομή Ubuntu Pro για ενημερώσεις ασφαλείας σε ένα ευρύτερο φάσμα πακέτων, έως το 2032.';

  @override
  String get ubuntuProSucessAttachHeader =>
      'Ubuntu Pro είναι τώρα ενεργοποιημένο σε αυτό το μηχάνημα';

  @override
  String get ubuntuProSucessAttachDescription =>
      'Μπορείτε να κάνετε διαχείριση της Pro υπηρεσίας στην εφαρμογή «Λογισμικό και Ενημερώσεις».';

  @override
  String get successIconSemanticLabel => 'Επιτυχία';

  @override
  String get closeIconSemanticLabel => 'Κλείσιμο';

  @override
  String get maximizeIconSemanticLabel => 'Μεγιστοποίηση';

  @override
  String get minimizeIconSemanticLabel => 'Ελαχιστοποίηση';
}
